@interface SSCellularSetupMultiSIMConnectingViewController
- (BOOL)_areAllPlansInTerminalState;
- (SSCellularSetupMultiSIMConnectingViewController)initWithPlanInfos:(id)a3 userEnablePlans:(id)a4 skip:(BOOL)a5;
- (id)accessoryViewForStatus:(id)a3;
- (void)prepare:(id)a3;
@end

@implementation SSCellularSetupMultiSIMConnectingViewController

- (SSCellularSetupMultiSIMConnectingViewController)initWithPlanInfos:(id)a3 userEnablePlans:(id)a4 skip:(BOOL)a5
{
  v7 = [a3 arrayByAddingObjectsFromArray:a4];
  self->_skip = a5;
  v10.receiver = self;
  v10.super_class = SSCellularSetupMultiSIMConnectingViewController;
  v8 = [(SSCellularSetupMultiSIMActivatingViewController *)&v10 initWithPlanInfos:v7];

  return v8;
}

- (void)prepare:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SSCellularSetupMultiSIMActivatingViewController *)self plans];
  v6 = [v5 count];

  if (v6 <= 1)
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(SSCellularSetupMultiSIMActivatingViewController *)self plans];
      v12 = 134218242;
      *v13 = [v8 count];
      *&v13[8] = 2080;
      *&v13[10] = "[SSCellularSetupMultiSIMConnectingViewController(TSSetupFlowItem) prepare:]";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "skip - count : %lu @%s", &v12, 0x16u);
    }

    goto LABEL_6;
  }

  if (self->_skip)
  {
LABEL_6:
    v4[2](v4, 0);
    goto LABEL_10;
  }

  v9 = [(SSCellularSetupMultiSIMConnectingViewController *)self _areAllPlansInTerminalState];
  v10 = _TSLogDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 67109378;
    *v13 = v9;
    *&v13[4] = 2080;
    *&v13[6] = "[SSCellularSetupMultiSIMConnectingViewController(TSSetupFlowItem) prepare:]";
    _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "all done ? %{BOOL}d @%s", &v12, 0x12u);
  }

  (v4)[2](v4, !v9);
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

- (id)accessoryViewForStatus:(id)a3
{
  v4 = a3;
  v5 = [v4 status];
  v6 = [v4 planItem];
  LOBYTE(v5) = [(SSCellularSetupMultiSIMActivatingViewController *)self isPlanInstalledAndNotEnabled:v5 item:v6];

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SSCellularSetupMultiSIMConnectingViewController;
    v7 = [(SSCellularSetupMultiSIMActivatingViewController *)&v9 accessoryViewForStatus:v4];
  }

  return v7;
}

- (BOOL)_areAllPlansInTerminalState
{
  v28 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [(SSCellularSetupMultiSIMActivatingViewController *)self plans];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        if (![v7 activatingState])
        {
          v9 = _TSLogDomain();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [v7 identifier];
            v11 = SSPlanTransferStatusAsString([v7 status]);
            v12 = [v7 phoneNumber];
            *buf = 138413058;
            v20 = v10;
            v21 = 2080;
            v22 = v11;
            v23 = 2112;
            v24 = v12;
            v25 = 2080;
            v26 = "[SSCellularSetupMultiSIMConnectingViewController(TSSetupFlowItem) _areAllPlansInTerminalState]";
            _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "not all plans with a completed state. %@ state: %s, mdn:%@ @%s", buf, 0x2Au);
          }

          v8 = 0;
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v27 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

@end