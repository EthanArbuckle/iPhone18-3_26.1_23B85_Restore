@interface BasebandFlowChecker
+ (id)sharedInstance;
- (BasebandFlowChecker)init;
- (void)_administrativeDisable;
- (void)_administrativeEnable;
- (void)activate;
- (void)flowDispositionChangeTo:(unsigned int)to flowIdentifier:(id)identifier ledger:(id)ledger snapshot:(id)snapshot;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setEnabled:(BOOL)enabled;
- (void)willPollFlows;
@end

@implementation BasebandFlowChecker

- (BasebandFlowChecker)init
{
  v9.receiver = self;
  v9.super_class = BasebandFlowChecker;
  v2 = [(BasebandFlowChecker *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 4) = 0;
    *(v2 + 24) = xmmword_232816C50;
    *(v2 + 5) = 0x3FC999999999999ALL;
    v4 = +[FlowOracle sharedInstance];
    flowOracle = v3->_flowOracle;
    v3->_flowOracle = v4;

    v6 = +[FlowRefreshScheduler sharedInstance];
    refreshScheduler = v3->_refreshScheduler;
    v3->_refreshScheduler = v6;
  }

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_enabled != enabled)
  {
    if (enabled)
    {
      if (!self->_informer)
      {
        v4 = +[BasebandFlowInformer sharedInstance];
        informer = self->_informer;
        self->_informer = v4;
      }

      self->_pollingCancelToken = [(FlowRefreshScheduler *)self->_refreshScheduler periodicRefreshDataUsageWithInterval:@"BasebandFlowChecker" maxStale:self->_pollInterval maxDelay:self->_pollMaxStale logAs:self->_pollMaxDelay];
      v6 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        pollingCancelToken = self->_pollingCancelToken;
        pollInterval = self->_pollInterval;
        v10 = 134218240;
        v11 = pollInterval;
        v12 = 2048;
        v13 = pollingCancelToken;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "BasebandFlowChecker new poll interval %.3f, new cancel token %lld", &v10, 0x16u);
      }
    }

    else
    {
      [(FlowRefreshScheduler *)self->_refreshScheduler cancelRefresh:self->_pollingCancelToken];
      self->_pollingCancelToken = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)flowDispositionChangeTo:(unsigned int)to flowIdentifier:(id)identifier ledger:(id)ledger snapshot:(id)snapshot
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  ledgerCopy = ledger;
  snapshotCopy = snapshot;
  reportedDisposition = [ledgerCopy reportedDisposition];
  if (reportedDisposition == to)
  {
    v14 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v25 = 138412802;
      v26 = identifierCopy;
      v27 = 1024;
      toCopy = to;
      v29 = 1024;
      toCopy6 = to;
      v15 = "BasebandFlowChecker flowClassificationChange no change on %@  %d -> %d";
LABEL_4:
      v16 = v14;
LABEL_5:
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, v15, &v25, 0x18u);
    }
  }

  else
  {
    v17 = reportedDisposition;
    if (([snapshotCopy interfaceCellular] & 1) == 0 && !objc_msgSend(snapshotCopy, "rxCellularBytes") && !objc_msgSend(snapshotCopy, "txCellularBytes"))
    {
      v14 = flowScrutinyLogHandle;
      if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_32;
      }

      v25 = 138412802;
      v26 = identifierCopy;
      v27 = 1024;
      toCopy = v17;
      v29 = 1024;
      toCopy6 = to;
      v15 = "BasebandFlowChecker non-cell flowClassificationChange %@  %d -> %d, new is reportable";
      goto LABEL_4;
    }

    v18 = v17 - 32;
    if (to - 32 > 2)
    {
      v21 = flowScrutinyLogHandle;
      if (v18 > 2)
      {
        if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_32;
        }

        v25 = 138412802;
        v26 = identifierCopy;
        v27 = 1024;
        toCopy = v17;
        v29 = 1024;
        toCopy6 = to;
        v15 = "BasebandFlowChecker flowClassificationChange %@  %d -> %d, nothing reportable";
        v16 = v21;
        goto LABEL_5;
      }

      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412802;
        v26 = identifierCopy;
        v27 = 1024;
        toCopy = v17;
        v29 = 1024;
        toCopy6 = to;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "BasebandFlowChecker flow stop for %@  %d -> %d", &v25, 0x18u);
      }

      [(BasebandFlowInformer *)self->_informer flowStop:identifierCopy];
    }

    else
    {
      if (v18 <= 2)
      {
        v19 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = identifierCopy;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "BasebandFlowChecker flow stop prior to change %@", &v25, 0xCu);
        }

        [(BasebandFlowInformer *)self->_informer flowStop:identifierCopy];
      }

      v20 = objc_alloc_init(BasebandFlowDigest);
      if ([(BasebandFlowDigest *)v20 primeFromSnapshot:snapshotCopy])
      {
        if (to == 34)
        {
          [(BasebandFlowDigest *)v20 setIsBalanced:1];
        }

        else if (to == 33)
        {
          [(BasebandFlowDigest *)v20 setIsUpload:1];
        }

        else
        {
          [(BasebandFlowDigest *)v20 setIsDownload:1];
        }

        [(BasebandFlowDigest *)v20 setIsElephant:1];
        v23 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138413058;
          v26 = identifierCopy;
          v27 = 1024;
          toCopy = v17;
          v29 = 1024;
          toCopy6 = to;
          v31 = 2112;
          v32 = snapshotCopy;
          _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "BasebandFlowChecker flow start for %@ %d -> %d %@", &v25, 0x22u);
        }

        [(BasebandFlowInformer *)self->_informer flowStart:identifierCopy digest:v20];
      }

      else
      {
        v22 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
        {
          v25 = 138412290;
          v26 = snapshotCopy;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "BasebandFlowChecker can't create digest from snapshot: %@", &v25, 0xCu);
        }
      }
    }
  }

LABEL_32:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)willPollFlows
{
  v3 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "CellThroughputAdviser willPollFlows", v4, 2u);
  }

  self->_pollInProgress = 1;
  [(BasebandFlowInformer *)self->_informer setInformImmediate:0];
}

- (void)_administrativeEnable
{
  v3 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "BasebandFlowChecker: _administrativeEnable", v5, 2u);
  }

  v4 = +[FlowScrutinizer sharedInstance];
  [v4 addDelegate:self];
  [v4 expectedTransferScrutinyOnBehalfOf:@"BB" required:1];
  [v4 cellFlowScrutinyOnBehalfOf:@"BB" required:1];
  self->_pollingCancelToken = [(FlowRefreshScheduler *)self->_refreshScheduler periodicRefreshDataUsageWithInterval:@"BasebandFlowChecker" maxStale:self->_pollInterval maxDelay:1.0 logAs:1.0];
}

- (void)_administrativeDisable
{
  v3 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "BasebandFlowChecker: _administrativeDisable", v5, 2u);
  }

  v4 = +[FlowScrutinizer sharedInstance];
  [v4 removeDelegate:self];
  [v4 expectedTransferScrutinyOnBehalfOf:@"BB" required:0];
  [v4 cellFlowScrutinyOnBehalfOf:@"BB" required:0];
  if (self->_pollingCancelToken)
  {
    [(FlowRefreshScheduler *)self->_refreshScheduler cancelRefresh:?];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v27 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  changeCopy = change;
  v10 = [pathCopy isEqualToString:@"enabled"];
  v11 = flowScrutinyLogHandle;
  if (v10)
  {
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = changeCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "BasebandFlowChecker: keyPath: enabled, change: %@", buf, 0xCu);
    }

    v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = v12;
      bOOLValue = [v13 BOOLValue];
      queue = [(BasebandFlowChecker *)self queue];
      v16 = queue;
      if (bOOLValue)
      {
        v17 = v22;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v18 = __70__BasebandFlowChecker_observeValueForKeyPath_ofObject_change_context___block_invoke;
      }

      else
      {
        v17 = v21;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v18 = __70__BasebandFlowChecker_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      }

      v17[2] = v18;
      v17[3] = &unk_27898A0C8;
      v17[4] = self;
      dispatch_async(queue, v17);
    }

    else
    {
      v19 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v12;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "BasebandFlowChecker: keypath for enabled had bad format for new, %@", buf, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v24 = pathCopy;
    v25 = 2112;
    v26 = changeCopy;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "BasebandFlowChecker: unrecognized keyPath: %@, change: %@", buf, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)activate
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = +[BasebandFlowInformer sharedInstance];
  informer = self->_informer;
  self->_informer = v3;

  [(BasebandFlowInformer *)self->_informer addObserver:self forKeyPath:@"enabled" options:7 context:0];
  [(BasebandFlowInformer *)self->_informer reset];
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_informer;
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "BasebandFlowChecker: informer is %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__BasebandFlowChecker_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_21 != -1)
  {
    dispatch_once(&sharedInstance_pred_21, block);
  }

  v2 = sharedInstance_sharedInstance_21;

  return v2;
}

uint64_t __37__BasebandFlowChecker_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_21;
  sharedInstance_sharedInstance_21 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end