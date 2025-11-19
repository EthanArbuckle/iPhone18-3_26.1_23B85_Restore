@interface CellularStateRelay
- (NSArray)networkSlicingStates;
- (id)extendedDescription;
- (void)setCellBandInfo:(int)a3;
- (void)setCellBandwidth:(int)a3;
- (void)setCellDualSimStatus:(unsigned __int8)a3;
- (void)setCellMCC:(int)a3;
- (void)setCellMNC:(int)a3;
- (void)setCellNonPreferredMCC:(int)a3;
- (void)setCellNonPreferredMNC:(int)a3;
- (void)setCellPID:(int)a3;
- (void)setCellRSRP:(int)a3;
- (void)setCellRrcConnected:(BOOL)a3;
- (void)setCellSNR:(double)a3;
- (void)setCellTAC:(int)a3;
- (void)setCellType:(id)a3;
- (void)setCellUARFCN:(int)a3;
- (void)setIsNonTerrestrialNetworkActive:(BOOL)a3;
- (void)setIsStewieActive:(BOOL)a3;
- (void)setNrFrequencyBand:(char)a3;
- (void)setRatSelectionIsNR:(BOOL)a3;
- (void)updateCellInfo:(id)a3;
@end

@implementation CellularStateRelay

- (NSArray)networkSlicingStates
{
  v3 = self->_networkSlicingStates;
  objc_sync_enter(v3);
  v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_networkSlicingStates];
  objc_sync_exit(v3);

  return v4;
}

- (id)extendedDescription
{
  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v21.receiver = self;
  v21.super_class = CellularStateRelay;
  v19 = [(NetworkStateRelay *)&v21 description];
  v18 = [NetworkAnalyticsEngine mapPowerCost:[(NetworkStateRelay *)self powerCostDL]];
  v17 = [NetworkAnalyticsEngine mapPowerCost:[(NetworkStateRelay *)self powerCostUL]];
  v16 = [(NetworkStateRelay *)self signalBars];
  v15 = [NetworkAnalyticsEngine mapRadioTechnology:[(NetworkStateRelay *)self radioTechnology]];
  v3 = [(CellularStateRelay *)self cellMNC];
  v4 = [(CellularStateRelay *)self cellMCC];
  v5 = [(CellularStateRelay *)self cellUARFCN];
  v6 = [(CellularStateRelay *)self cellPID];
  v7 = [(CellularStateRelay *)self cellBandInfo];
  v8 = [(CellularStateRelay *)self cellType];
  v9 = [(CellularStateRelay *)self cellBandwidth];
  v10 = [(CellularStateRelay *)self cellTAC];
  v11 = [(CellularStateRelay *)self cellRSRP];
  [(CellularStateRelay *)self cellSNR];
  v13 = [v20 initWithFormat:@"%@/pwrDL:%ld/pwrUL:%ld/signalBars:%d/ic:%ld/cellMNC:%d/cellMCC:%d/cellUARFCN=%d/cellPID=%d/cellBandInfo=%d/cellType=%@/cellBandwidth=%d/cellTAC=%d/cellRSRP=%d/cellSNR=%f"], v19, v18, v17, v16, v15, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);

  return v13;
}

- (void)updateCellInfo:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v45 objects:v65 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v46;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v46 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v45 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v33 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
              {
                v34 = v33;
                v35 = objc_opt_class();
                v36 = NSStringFromClass(v35);
                *buf = 138412546;
                *v50 = v36;
                *&v50[8] = 2112;
                v51 = v10;
                _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_ERROR, "Expected to find class NSDictionary, found class %@, %@", buf, 0x16u);
              }

              goto LABEL_42;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v45 objects:v65 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      if ([v5 count])
      {
        v11 = [v5 objectAtIndex:0];
        v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC38A0]];
        v13 = v12;
        if (v12)
        {
          -[CellularStateRelay setCellMCC:](self, "setCellMCC:", [v12 intValue]);
        }

        v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC38B0]];

        if (v14)
        {
          -[CellularStateRelay setCellMNC:](self, "setCellMNC:", [v14 intValue]);
        }

        v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3928]];

        if (v15)
        {
          -[CellularStateRelay setCellUARFCN:](self, "setCellUARFCN:", [v15 intValue]);
        }

        v16 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC38B8]];

        if (v16)
        {
          -[CellularStateRelay setCellPID:](self, "setCellPID:", [v16 intValue]);
        }

        v17 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3858]];

        if (v17)
        {
          -[CellularStateRelay setCellBandInfo:](self, "setCellBandInfo:", [v17 intValue]);
        }

        v18 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3880]];
        if (v18)
        {
          [(CellularStateRelay *)self setCellType:v18];
        }

        v19 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3860]];

        if (v19)
        {
          -[CellularStateRelay setCellBandwidth:](self, "setCellBandwidth:", [v19 intValue]);
        }

        v20 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3920]];

        if (v20)
        {
          -[CellularStateRelay setCellTAC:](self, "setCellTAC:", [v20 intValue]);
        }

        v21 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC38C0]];

        if (v21)
        {
          -[CellularStateRelay setCellRSRP:](self, "setCellRSRP:", [v21 intValue]);
        }

        v22 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3910]];

        if (v22)
        {
          [v22 doubleValue];
          [(CellularStateRelay *)self setCellSNR:?];
        }

        v23 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          log = v23;
          v43 = [(CellularStateRelay *)self cellMCC];
          v42 = [(CellularStateRelay *)self cellMNC];
          v41 = [(CellularStateRelay *)self cellUARFCN];
          v40 = [(CellularStateRelay *)self cellPID];
          v39 = [(CellularStateRelay *)self cellBandInfo];
          v24 = [(CellularStateRelay *)self cellType];
          v25 = [(CellularStateRelay *)self cellBandwidth];
          v26 = [(CellularStateRelay *)self cellTAC];
          v27 = [(CellularStateRelay *)self cellRSRP];
          [(CellularStateRelay *)self cellSNR];
          *buf = 67111426;
          *v50 = v43;
          *&v50[4] = 1024;
          *&v50[6] = v42;
          LOWORD(v51) = 1024;
          *(&v51 + 2) = v41;
          HIWORD(v51) = 1024;
          v52 = v40;
          v53 = 1024;
          v54 = v39;
          v55 = 2112;
          v56 = v24;
          v57 = 1024;
          v58 = v25;
          v59 = 1024;
          v60 = v26;
          v61 = 1024;
          v62 = v27;
          v63 = 2048;
          v64 = v28;
          _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "CT update cell info: mcc:%d/mnc=%d/uarfcn:%d/pid:%d/bandinfo:%d/type:%@/bandwidth:%d/tac:%d/rsrp:%d/snr:%f", buf, 0x46u);
        }
      }

      else
      {
        v38 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_ERROR, "Expected info to have count > 0", buf, 2u);
        }
      }

      goto LABEL_42;
    }

    v30 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v5 = v30;
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138412290;
      *v50 = v32;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Expected info to be an NSArray, received %@", buf, 0xCu);

LABEL_42:
    }
  }

  else
  {
    v29 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_ERROR, "Expected info to be non-nil", buf, 2u);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)setNrFrequencyBand:(char)a3
{
  if (self->_nrFrequencyBand != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"nrFrequencyBand"];
    self->_nrFrequencyBand = a3;
    [(CellularStateRelay *)self didChangeValueForKey:@"nrFrequencyBand"];
    v5 = [MEMORY[0x277D6B3E0] nwInterfaceTypeForNWFunctionalInterfaceType:{-[NetworkStateRelay functionalInterfaceType](self, "functionalInterfaceType")}];
    v6 = +[NetworkAnalyticsEngine sharedInstance];
    [v6 _createJournalRecordOfType:3 forInterface:v5 fromDict:0];
  }
}

- (void)setRatSelectionIsNR:(BOOL)a3
{
  if (self->_ratSelectionIsNR != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"ratSelectionIsNR"];
    self->_ratSelectionIsNR = a3;

    [(CellularStateRelay *)self didChangeValueForKey:@"ratSelectionIsNR"];
  }
}

- (void)setCellMNC:(int)a3
{
  if (self->_cellMNC != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellMNC"];
    self->_cellMNC = a3;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellMNC"];
  }
}

- (void)setCellMCC:(int)a3
{
  if (self->_cellMCC != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellMCC"];
    self->_cellMCC = a3;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellMCC"];
  }
}

- (void)setCellUARFCN:(int)a3
{
  if (self->_cellUARFCN != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellUARFCN"];
    self->_cellUARFCN = a3;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellUARFCN"];
  }
}

- (void)setCellPID:(int)a3
{
  if (self->_cellPID != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellPID"];
    self->_cellPID = a3;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellPID"];
  }
}

- (void)setCellBandInfo:(int)a3
{
  if (self->_cellBandInfo != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellBandInfo"];
    self->_cellBandInfo = a3;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellBandInfo"];
  }
}

- (void)setCellType:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToString:self->_cellType] & 1) == 0)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellType"];
    objc_storeStrong(&self->_cellType, a3);
    [(CellularStateRelay *)self didChangeValueForKey:@"cellType"];
  }
}

- (void)setCellBandwidth:(int)a3
{
  if (self->_cellBandwidth != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellBandwidth"];
    self->_cellBandwidth = a3;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellBandwidth"];
  }
}

- (void)setCellTAC:(int)a3
{
  if (self->_cellTAC != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellTAC"];
    self->_cellTAC = a3;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellTAC"];
  }
}

- (void)setCellRSRP:(int)a3
{
  if (self->_cellRSRP != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellRSRP"];
    self->_cellRSRP = a3;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellRSRP"];
  }
}

- (void)setCellSNR:(double)a3
{
  if (self->_cellSNR != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellSNR"];
    self->_cellSNR = a3;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellSNR"];
  }
}

- (void)setCellDualSimStatus:(unsigned __int8)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_7;
  }

  cellDualSimStatus = self->_cellDualSimStatus;
  if (cellDualSimStatus == a3)
  {
    goto LABEL_7;
  }

  if (a3 == 2 && (cellDualSimStatus & 0xFFFFFFFD) != 0)
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = self->_cellDualSimStatus;
      v10[0] = 67109120;
      v10[1] = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Rejecting dual SIM status update to 'SupportedButUnknown' from current status %d", v10, 8u);
    }

LABEL_7:
    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  [(CellularStateRelay *)self willChangeValueForKey:@"cellDualSimStatus"];
  self->_cellDualSimStatus = a3;
  v9 = *MEMORY[0x277D85DE8];

  [(CellularStateRelay *)self didChangeValueForKey:@"cellDualSimStatus"];
}

- (void)setCellNonPreferredMNC:(int)a3
{
  if (self->_cellNonPreferredMNC != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellNonPreferredMNC"];
    self->_cellNonPreferredMNC = a3;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellNonPreferredMNC"];
  }
}

- (void)setCellNonPreferredMCC:(int)a3
{
  if (self->_cellNonPreferredMCC != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellNonPreferredMCC"];
    self->_cellNonPreferredMCC = a3;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellNonPreferredMCC"];
  }
}

- (void)setCellRrcConnected:(BOOL)a3
{
  if (self->_cellRrcConnected != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellRrcConnected"];
    self->_cellRrcConnected = a3;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellRrcConnected"];
  }
}

- (void)setIsNonTerrestrialNetworkActive:(BOOL)a3
{
  if (self->_isNonTerrestrialNetworkActive != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"isNonTerrestrialNetworkActive"];
    self->_isNonTerrestrialNetworkActive = a3;

    [(CellularStateRelay *)self didChangeValueForKey:@"isNonTerrestrialNetworkActive"];
  }
}

- (void)setIsStewieActive:(BOOL)a3
{
  if (self->_isStewieActive != a3)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"isStewieActive"];
    self->_isStewieActive = a3;

    [(CellularStateRelay *)self didChangeValueForKey:@"isStewieActive"];
  }
}

@end