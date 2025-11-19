@interface SmartDataModeRelay
+ (id)cellDataStatusToString:(unsigned __int8)a3;
+ (id)sharedInstance;
- (SmartDataModeRelay)init;
- (void)_updateCellDataStatus;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation SmartDataModeRelay

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SmartDataModeRelay sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

- (SmartDataModeRelay)init
{
  v13.receiver = self;
  v13.super_class = SmartDataModeRelay;
  v2 = [(SmartDataModeRelay *)&v13 init];
  if (v2)
  {
    v3 = [NetworkStateRelay getStateRelayFor:5];
    cellStateRelay = v2->_cellStateRelay;
    v2->_cellStateRelay = v3;

    v5 = v2->_cellStateRelay;
    if (v5)
    {
      [(CellularStateRelay *)v5 addObserver:v2 forKeyPath:@"ratSelectionIsNR" options:5 context:0];
    }

    else
    {
      v6 = systemSettingsLogHandle;
      if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "unable to get cell state relay", v12, 2u);
      }
    }

    v7 = +[SystemSettingsRelay defaultRelay];
    systemSettingsRelay = v2->_systemSettingsRelay;
    v2->_systemSettingsRelay = v7;

    v9 = v2->_systemSettingsRelay;
    if (v9)
    {
      [(SystemSettingsRelay *)v9 addObserver:v2 forKeyPath:@"smartDataModeEnabled" options:5 context:0];
    }

    else
    {
      v10 = systemSettingsLogHandle;
      if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "unable to get system settings relay", v12, 2u);
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  cellStateRelay = self->_cellStateRelay;
  if (cellStateRelay)
  {
    [(CellularStateRelay *)cellStateRelay removeObserver:self forKeyPath:@"ratSelectionIsNR"];
    v4 = self->_cellStateRelay;
  }

  else
  {
    v4 = 0;
  }

  self->_cellStateRelay = 0;

  systemSettingsRelay = self->_systemSettingsRelay;
  if (systemSettingsRelay)
  {
    [(SystemSettingsRelay *)systemSettingsRelay removeObserver:self forKeyPath:@"smartDataModeEnabled"];
    v6 = self->_systemSettingsRelay;
  }

  else
  {
    v6 = 0;
  }

  self->_systemSettingsRelay = 0;

  v7.receiver = self;
  v7.super_class = SmartDataModeRelay;
  [(SmartDataModeRelay *)&v7 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (self->_cellStateRelay == v10 && ([v9 isEqualToString:@"ratSelectionIsNR"] & 1) != 0 || self->_systemSettingsRelay == v10 && objc_msgSend(v9, "isEqualToString:", @"smartDataModeEnabled"))
  {
    v12 = systemSettingsLogHandle;
    if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "SDM: Change detected, updating smart data mode status", &v15, 2u);
    }

    [(SmartDataModeRelay *)self _updateCellDataStatus];
  }

  else
  {
    v13 = systemSettingsLogHandle;
    if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Got unexpected KVO update for keypath %@ of object %@", &v15, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateCellDataStatus
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = systemSettingsLogHandle;
  if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    systemSettingsRelay = self->_systemSettingsRelay;
    v5 = v3;
    v14 = 67109120;
    LODWORD(v15) = [(SystemSettingsRelay *)systemSettingsRelay smartDataModeEnabled];
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "SDM: SystemSettingsRelay.SDMEnabled: %hhd", &v14, 8u);
  }

  v6 = systemSettingsLogHandle;
  if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    cellStateRelay = self->_cellStateRelay;
    v8 = v6;
    v9 = [(CellularStateRelay *)cellStateRelay ratSelectionIsNR];
    v14 = 67109120;
    LODWORD(v15) = v9;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "SDM: _cellStateRelay.ratSelectionIsNR: %hhd", &v14, 8u);
  }

  if ([(SystemSettingsRelay *)self->_systemSettingsRelay smartDataModeEnabled])
  {
    v10 = 2;
  }

  else if ([(CellularStateRelay *)self->_cellStateRelay ratSelectionIsNR])
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  v11 = [SmartDataModeRelay cellDataStatusToString:v10];
  v12 = systemSettingsLogHandle;
  if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "SDM: SmartDataModeRelay updating status: %@", &v14, 0xCu);
  }

  [(SmartDataModeRelay *)self setCellDataStatus:v10];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __36__SmartDataModeRelay_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(SmartDataModeRelay);

  return MEMORY[0x2821F96F8]();
}

+ (id)cellDataStatusToString:(unsigned __int8)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_278989FB0 + (a3 - 1));
  }
}

@end