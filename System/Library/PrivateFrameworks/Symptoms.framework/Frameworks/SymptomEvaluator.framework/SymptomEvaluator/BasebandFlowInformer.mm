@interface BasebandFlowInformer
+ (BasebandFlowInformer)sharedInstance;
- (BOOL)flowStart:(id)a3 digest:(id)a4;
- (BOOL)flowStop:(id)a3;
- (BasebandFlowInformer)init;
- (id)getState;
- (void)_receiveIndication:(id)a3;
- (void)_relayMessage:(id)a3;
- (void)_resetOnError:(id)a3;
- (void)_sendSingleDigest:(id)a3;
- (void)currentDataSIMIdentifier:(id)a3;
- (void)receiveIndicationForTag:(unint64_t)a3 payload:(id)a4;
- (void)reset;
- (void)setEnableForcedViaSymptom:(BOOL)a3;
- (void)setEnabledViaBBIndication:(BOOL)a3;
- (void)setInformImmediate:(BOOL)a3;
- (void)trace:(const char *)a3 item:(id)a4;
@end

@implementation BasebandFlowInformer

- (BasebandFlowInformer)init
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = BasebandFlowInformer;
  v2 = [(BasebandFlowInformer *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_informImmediate = 1;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    flows = v3->_flows;
    v3->_flows = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pending = v3->_pending;
    v3->_pending = v6;

    v3->_maxFlowsPerBBMessage = 5;
    v8 = +[CoreTelephonyShim sharedInstance];
    [v8 addDelegate:v3];

    v9 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v3;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "BasebandFlowInformer created instance %p", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)receiveIndicationForTag:(unint64_t)a3 payload:(id)a4
{
  if (a3 == 1)
  {
    [(BasebandFlowInformer *)self _receiveIndication:a4];
  }
}

- (void)currentDataSIMIdentifier:(id)a3
{
  v4 = a3;
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "BasebandFlowInformer reset after currentDataSIMIdentifier indication", v6, 2u);
  }

  [(BasebandFlowInformer *)self trace:"dataSIMIdentifer" item:v4];
  [(BasebandFlowInformer *)self reset];
}

- (void)_relayMessage:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "BasebandFlowInformer relays message %@", &v8, 0xCu);
  }

  [(BasebandFlowInformer *)self trace:"relayMessage" item:v4];
  v6 = +[CoreTelephonyShim sharedInstance];
  [v6 sendTaggedInfo:1 payload:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_sendSingleDigest:(id)a3
{
  v4 = a3;
  if ([(BasebandFlowInformer *)self enabled])
  {
    LODWORD(v8) = 1;
    v7 = 1;
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&v7 length:12];
    v6 = [v4 encodedData];
    if (v6)
    {
      [v5 appendData:v6];
      [(BasebandFlowInformer *)self _relayMessage:v5];
    }
  }

  else
  {
    [(BasebandFlowInformer *)self trace:"sendSingleDigest" item:@"not-enabled"];
  }
}

- (void)_receiveIndication:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(BasebandFlowInformer *)self trace:"rxIndication" item:@"indication"];
  if ([v4 length] < 8)
  {
    v5 = @"Message too small";
    goto LABEL_7;
  }

  v6 = [v4 bytes];
  if (*v6 != 1)
  {
    v5 = @"Incorrect version number";
LABEL_7:
    v9 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      *v12 = v5;
      *&v12[8] = 2112;
      *&v12[10] = v4;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "BasebandFlowInformer _receiveIndication %@ %@", &v11, 0x16u);
    }

    goto LABEL_9;
  }

  [(BasebandFlowInformer *)self setEnabledViaBBIndication:v6[1] != 0];
  v7 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v11 = 67109378;
    *v12 = [(BasebandFlowInformer *)self enabledViaBBIndication];
    *&v12[4] = 2112;
    *&v12[6] = v4;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "BasebandFlowInformer enabled %d after %@", &v11, 0x12u);
  }

LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_resetOnError:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(BasebandFlowInformer *)self trace:"_resetOnError" item:v4];
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "BasebandFlowInformer reset on error %@", buf, 0xCu);
  }

  v17 = v4;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_flows;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
        {
          v12 = *(*(&v18 + 1) + 8 * i);
          flows = self->_flows;
          v14 = v11;
          v15 = [(NSMutableDictionary *)flows objectForKeyedSubscript:v12];
          *buf = 138412546;
          v23 = v12;
          v24 = 2112;
          v25 = v15;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "BasebandFlowInformer extant flow  %@ -> %@", buf, 0x16u);
        }
      }

      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }

  [(BasebandFlowInformer *)self reset];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)setEnableForcedViaSymptom:(BOOL)a3
{
  if (self->_enableForcedViaSymptom != a3)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:?];
    [(BasebandFlowInformer *)self trace:"enableForcedViaSymptom" item:v6];

    self->_enableForcedViaSymptom = a3;
    v7 = a3 || self->_enabledViaBBIndication;

    [(BasebandFlowInformer *)self setEnabled:v7];
  }
}

- (void)setEnabledViaBBIndication:(BOOL)a3
{
  if (self->_enabledViaBBIndication != a3)
  {
    v4 = a3;
    v6 = [MEMORY[0x277CCABB0] numberWithBool:?];
    [(BasebandFlowInformer *)self trace:"enabledViaBBIndication" item:v6];

    self->_enabledViaBBIndication = v4;
    v7 = self->_enableForcedViaSymptom || v4;

    [(BasebandFlowInformer *)self setEnabled:v7];
  }
}

- (void)setInformImmediate:(BOOL)a3
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_informImmediate != a3)
  {
    v3 = a3;
    v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
    [(BasebandFlowInformer *)self trace:"informImmediate" item:v5];

    v6 = [(NSMutableSet *)self->_pending count];
    if (v3)
    {
      v7 = v6;
      if (v6)
      {
        v20 = v3;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        obj = self->_pending;
        v8 = [(NSMutableSet *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = 0;
          v12 = *v25;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v24 + 1) + 8 * i);
              if (!v11)
              {
                maxFlowsPerBBMessage = self->_maxFlowsPerBBMessage;
                if (v7 >= maxFlowsPerBBMessage)
                {
                  v10 = self->_maxFlowsPerBBMessage;
                }

                else
                {
                  v10 = v7;
                }

                if (v7 >= maxFlowsPerBBMessage)
                {
                  v7 -= maxFlowsPerBBMessage;
                }

                else
                {
                  v7 = 0;
                }

                v22 = 1;
                v23 = v10;
                v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&v22 length:12];
              }

              v16 = [(NSMutableDictionary *)self->_flows objectForKeyedSubscript:v14];
              v17 = [v16 encodedData];
              if (!v17)
              {

                [(NSMutableDictionary *)self->_flows setObject:0 forKeyedSubscript:v14];
                goto LABEL_26;
              }

              v18 = v17;
              [v11 appendData:v17];
              if (([v16 active] & 1) == 0)
              {
                [(NSMutableDictionary *)self->_flows setObject:0 forKeyedSubscript:v14];
              }

              if (!--v10)
              {
                [(BasebandFlowInformer *)self _relayMessage:v11];

                v11 = 0;
              }
            }

            v9 = [(NSMutableSet *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        else
        {
LABEL_26:
          v11 = 0;
        }

        [(NSMutableSet *)self->_pending removeAllObjects];
        LOBYTE(v3) = v20;
      }
    }

    self->_informImmediate = v3;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)flowStart:(id)a3 digest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BasebandFlowInformer *)self enabled])
  {
    [v7 setActive:1];
    v8 = [(NSMutableDictionary *)self->_flows objectForKeyedSubscript:v6];

    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_flows objectForKeyedSubscript:v6];
      [v9 setActive:0];
      [(BasebandFlowInformer *)self trace:"flowStart item:clearing", v9];
      [(BasebandFlowInformer *)self _sendSingleDigest:v9];
    }

    if ([(NSMutableDictionary *)self->_flows count]>= 0x80)
    {
      [(BasebandFlowInformer *)self _resetOnError:@"Hit max flows"];
    }

    [(NSMutableDictionary *)self->_flows setObject:v7 forKeyedSubscript:v6];
    if (self->_informImmediate)
    {
      [(BasebandFlowInformer *)self trace:"flowStart item:sending", v7];
      [(BasebandFlowInformer *)self _sendSingleDigest:v7];
    }

    else
    {
      [(BasebandFlowInformer *)self trace:"flowStart item:pending", v7];
      [(NSMutableSet *)self->_pending addObject:v6];
    }
  }

  else
  {
    [(BasebandFlowInformer *)self trace:"flowStart item:not-enabled", v6];
  }

  return 1;
}

- (BOOL)flowStop:(id)a3
{
  v4 = a3;
  if (![(BasebandFlowInformer *)self enabled])
  {
    v7 = "flowStop,not-enabled";
LABEL_7:
    [(BasebandFlowInformer *)self trace:v7 item:v4];
    goto LABEL_10;
  }

  v5 = [(NSMutableDictionary *)self->_flows objectForKeyedSubscript:v4];

  if (!v5)
  {
    v7 = "flowStop,not-found";
    goto LABEL_7;
  }

  v6 = [(NSMutableDictionary *)self->_flows objectForKeyedSubscript:v4];
  [v6 setActive:0];
  if (self->_informImmediate)
  {
    [(BasebandFlowInformer *)self trace:"flowStop item:sending", v6];
    [(BasebandFlowInformer *)self _sendSingleDigest:v6];
    [(NSMutableDictionary *)self->_flows setObject:0 forKeyedSubscript:v4];
  }

  else
  {
    [(BasebandFlowInformer *)self trace:"flowStop item:pending", v6];
    [(NSMutableSet *)self->_pending addObject:v4];
  }

LABEL_10:
  return 1;
}

- (void)reset
{
  [(NSMutableDictionary *)self->_flows removeAllObjects];
  LODWORD(v5) = 0;
  v4 = 0x100000001;
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&v4 length:12];
  [(BasebandFlowInformer *)self trace:"reset" item:v3, v4, v5];
  [(BasebandFlowInformer *)self _relayMessage:v3];
}

- (void)trace:(const char *)a3 item:(id)a4
{
  v9 = a4;
  v6 = self->_traceEntries[self->_traceSeqno & 0x1F];
  if (!v6)
  {
    v6 = objc_alloc_init(BasebandFlowTraceEntry);
    objc_storeStrong(&self->_traceEntries[self->_traceSeqno & 0x1F], v6);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [(BasebandFlowTraceEntry *)v6 setTimestamp:?];
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = "<NULL>";
  }

  [(BasebandFlowTraceEntry *)v6 setName:v7];
  v8 = [v9 description];
  [(BasebandFlowTraceEntry *)v6 setItem:v8];

  ++self->_traceSeqno;
}

- (id)getState
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"BasebandFlowInformer enabled %d (indication %d symptom %d) immediate %d", -[BasebandFlowInformer enabled](self, "enabled"), -[BasebandFlowInformer enabledViaBBIndication](self, "enabledViaBBIndication"), -[BasebandFlowInformer enableForcedViaSymptom](self, "enableForcedViaSymptom"), -[BasebandFlowInformer informImmediate](self, "informImmediate")];
  [v3 addObject:v4];

  if ([(NSMutableDictionary *)self->_flows count])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v5 = self->_flows;
    v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v41;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v41 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v40 + 1) + 8 * i);
          v11 = objc_alloc(MEMORY[0x277CCACA8]);
          v12 = [(NSMutableDictionary *)self->_flows objectForKeyedSubscript:v10];
          v13 = [v11 initWithFormat:@"tracking flow %@ -> %@", v10, v12];
          [v3 addObject:v13];
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v7);
    }
  }

  if ([(NSMutableSet *)self->_pending count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = self->_pending;
    v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v37;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v36 + 1) + 8 * j);
          v20 = objc_alloc(MEMORY[0x277CCACA8]);
          v21 = [(NSMutableDictionary *)self->_flows objectForKeyedSubscript:v19];
          v22 = [v20 initWithFormat:@"pending flow %@ -> %@", v19, v21];
          [v3 addObject:v22];
        }

        v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v16);
    }
  }

  traceSeqno = self->_traceSeqno;
  if (traceSeqno >= 2)
  {
    v24 = traceSeqno <= 0x1F ? 0 : traceSeqno - 32;
    if (v24 <= (traceSeqno - 1))
    {
      traceEntries = self->_traceEntries;
      do
      {
        v26 = traceEntries[v24 & 0x1F];
        if (v26)
        {
          v27 = objc_alloc(MEMORY[0x277CCACA8]);
          [(BasebandFlowTraceEntry *)v26 timestamp];
          v29 = dateStringMillisecondsFromReferenceInterval(v28);
          v30 = [(BasebandFlowTraceEntry *)v26 name];
          v31 = [(BasebandFlowTraceEntry *)v26 item];
          if (v31)
          {
            self = [(BasebandFlowTraceEntry *)v26 item];
            v32 = self;
          }

          else
          {
            v32 = &stru_2847966D8;
          }

          v33 = [v27 initWithFormat:@"%@ %-26s %@", v29, v30, v32];
          [v3 addObject:v33];

          if (v31)
          {
          }
        }

        ++v24;
      }

      while (traceSeqno != v24);
    }
  }

  v34 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (BasebandFlowInformer)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__BasebandFlowInformer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_50 != -1)
  {
    dispatch_once(&sharedInstance_pred_50, block);
  }

  v2 = sharedInstance_sharedInstance_52;

  return v2;
}

uint64_t __38__BasebandFlowInformer_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_52;
  sharedInstance_sharedInstance_52 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end