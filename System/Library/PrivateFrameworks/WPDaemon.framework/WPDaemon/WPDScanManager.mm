@interface WPDScanManager
+ (int64_t)zonesAvailableForType:(unsigned __int8)a3;
- (BOOL)heySiriScanActive:(BOOL)a3;
- (BOOL)isScannerTestMode;
- (BOOL)retainDuplicates;
- (BOOL)scanOptionsChanged:(id)a3 ForRequests:(id)a4;
- (BOOL)shallStop;
- (BOOL)updateScanRules;
- (OS_dispatch_queue)serverQueue;
- (WPDScanManager)initWithServer:(id)a3;
- (id)addPeerTrackingRequest:(id)a3 forClient:(id)a4;
- (id)addScanRequest:(id)a3 forClient:(id)a4;
- (id)clearDuplicateFilterCache:(id)a3 forClient:(id)a4;
- (id)connectToPeripheral:(id)a3 fromClient:(id)a4 withOptions:(id)a5;
- (id)disconnectFromPeripheral:(id)a3 withSubscribedCharacteristics:(id)a4 forClient:(id)a5;
- (id)generateStateDumpStrings;
- (id)getScanRequestsForClient:(id)a3;
- (id)removePeerTrackingRequest:(id)a3 checkZonesAvailable:(BOOL)a4 forClient:(id)a5;
- (id)removeScanRequest:(id)a3 forClient:(id)a4;
- (id)retrievePeripheralWithUUID:(id)a3;
- (id)ruleHashesFromScanOptions:(id)a3;
- (id)scanRequestHashesFromScanRequests:(id)a3;
- (void)addSpyScanClient:(id)a3;
- (void)assertCBDiscoveryScan:(BOOL)a3;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didDiscoverMultiplePeripherals:(id)a4;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didFailToScanWithError:(id)a4;
- (void)centralManager:(id)a3 didFindPeripheral:(id)a4 forType:(id)a5;
- (void)centralManager:(id)a3 didLosePeripheral:(id)a4 forType:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)cleanup;
- (void)clearExistingConnections;
- (void)disconnectFromCentral:(id)a3 forClient:(id)a4;
- (void)duplicateRulesGuard:(id)a3 forRule:(id)a4;
- (void)isScannerTestMode;
- (void)logScanRequests:(id)a3 method:(BOOL)a4 window:(int64_t)a5 interval:(int64_t)a6;
- (void)logScanTypes:(id)a3 method:(BOOL)a4 window:(int64_t)a5 interval:(int64_t)a6;
- (void)reconcileScanRule:(id)a3 withRule:(id)a4;
- (void)removeAllPeerTrackingRequestsForClient:(id)a3;
- (void)removeConflictingRequest:(id)a3 forClient:(id)a4;
- (void)removePeripheralConnection:(id)a3 forClient:(id)a4;
- (void)removePeripheralConnectionsForClient:(id)a3;
- (void)removeScanRequestsForClient:(id)a3;
- (void)removeSpyScanClient:(id)a3;
- (void)shallStop;
- (void)update;
- (void)updateScanner;
@end

@implementation WPDScanManager

- (BOOL)retainDuplicates
{
  v2 = [(WPDScanManager *)self scanRetainDuplicates];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)updateScanner
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(WPDManager *)self server];
  v4 = [v3 cbState];

  if (v4 != 3)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager updateScanner];
    }

    v16 = WiProxLog;
    if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v17 = "Trying to update scanner but Daemon central manager isn't powered on";
    v18 = v16;
    v19 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
    _os_log_impl(&dword_272965000, v18, v19, v17, buf, 2u);
    goto LABEL_19;
  }

  if ([(WPDScanManager *)self scanningDisabled])
  {
    goto LABEL_19;
  }

  if (![(WPDScanManager *)self updateScanRules])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager updateScanner];
    }

    v21 = WiProxLog;
    if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v17 = "Scan request no-op per <rdar://problem/36023927>";
    v18 = v21;
    v19 = OS_LOG_TYPE_INFO;
    goto LABEL_18;
  }

  v5 = [(WPDScanManager *)self scanOptions];
  v6 = v5;
  if (v5)
  {
    [v5 objectForKeyedSubscript:*MEMORY[0x277CBDDE0]];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = v30 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:buf count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      v11 = *MEMORY[0x277CBDE00];
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v27 + 1) + 8 * i) objectForKeyedSubscript:{v11, v27}];
          v14 = [v13 integerValue];

          if (v14 == 8)
          {
            v15 = 1;
            goto LABEL_25;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:buf count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_25:
  }

  else
  {
    v15 = 0;
  }

  [(WPDScanManager *)self assertCBDiscoveryScan:v15, v27];

  v22 = [(WPDScanManager *)self scanOptions];

  if (v22)
  {
    if ([(WPDScanManager *)self shallStop])
    {
      v23 = [(WPDScanManager *)self centralManager];
      [v23 stopScan];
    }

    [(WPDScanManager *)self setScanning:1];
    v24 = [(WPDScanManager *)self centralManager];
    v25 = [(WPDScanManager *)self scanOptions];
    [v24 scanForPeripheralsWithServices:0 options:v25];
  }

  else
  {
    [(WPDScanManager *)self setScanning:0];
    v26 = [(WPDScanManager *)self centralManager];
    [v26 stopScan];
  }

LABEL_19:
  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)shallStop
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(WPDScanManager *)self scanOptions];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBDE30]];
    v5 = [v4 BOOLValue] ^ 1;

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager shallStop];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDScanManager shallStop];
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

void __33__WPDScanManager_updateScanRules__block_invoke_2_323(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (([a2 range] & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = MEMORY[0x277CBEC28];

    *a4 = 1;
  }
}

uint64_t __33__WPDScanManager_updateScanRules__block_invoke_7(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 clientType];
  if (result == 8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 22;
    result = [*(a1 + 32) isHomePod];
    v7 = 3;
    if (!result)
    {
      v7 = 0;
    }

    *(*(*(a1 + 48) + 8) + 24) = v7;
    *a4 = 1;
  }

  return result;
}

void __33__WPDScanManager_updateScanRules__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([v8 clientType] == 16 && objc_msgSend(v8, "nearbyScanMode") == 40)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = MEMORY[0x277CBEC38];

    *a4 = 1;
  }
}

- (BOOL)updateScanRules
{
  v316 = *MEMORY[0x277D85DE8];
  v3 = [(WPDManager *)self server];
  v4 = [v3 statsManager];
  [v4 stopActivity:0];

  v5 = [(WPDScanManager *)self scanRequests];
  v6 = [v5 count];

  if (!v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager updateScanRules];
    }

    v90 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272965000, v90, OS_LOG_TYPE_DEFAULT, "Nothing left to scan for - Stopping Scan", buf, 2u);
    }

    v91 = [(WPDScanManager *)self scanOptionsChanged:0 ForRequests:0];
    goto LABEL_213;
  }

  v167 = [MEMORY[0x277CBEB18] array];
  v166 = [MEMORY[0x277CBEB18] array];
  v140 = [(WPDScanManager *)self isScannerTestMode];
  v7 = [(WPDScanManager *)self heySiriScanActive:?];
  v168 = [MEMORY[0x277CCAB58] indexSet];
  v288 = 0u;
  v287 = 0u;
  v286 = 0u;
  v285 = 0u;
  obj = [(WPDScanManager *)self scanRequests];
  v141 = [obj countByEnumeratingWithState:&v285 objects:v315 count:16];
  if (!v141)
  {
    goto LABEL_157;
  }

  v139 = *v286;
  v162 = *MEMORY[0x277CBDDD8];
  v164 = *MEMORY[0x277CBDE00];
  v145 = *MEMORY[0x277CBDE20];
  v144 = *MEMORY[0x277CBDE28];
  v150 = *MEMORY[0x277CBDE58];
  v172 = !v7;
  v148 = *MEMORY[0x277CBDE38];
  v146 = *MEMORY[0x277CBDE40];
  v160 = *MEMORY[0x277CBDF00];
  v158 = *MEMORY[0x277CBDDF0];
  v156 = *MEMORY[0x277CBDDE8];
  *&v8 = 138412290;
  v137 = v8;
  v154 = *MEMORY[0x277CBDE08];
  v152 = *MEMORY[0x277CBDDF8];
  v143 = *MEMORY[0x277CBDE78];
  do
  {
    for (i = 0; i != v141; i = v85 + 1)
    {
      if (*v286 != v139)
      {
        objc_enumerationMutation(obj);
      }

      v142 = i;
      v10 = *(*(&v285 + 1) + 8 * i);
      if (!v140 || (-[WPDManager server](self, "server"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isClientTestMode:v10], v11, (v12 & 1) != 0))
      {
        v13 = [(WPDManager *)self server];
        v169 = [v13 getClientForUUID:v10];

        v14 = [(WPDScanManager *)self scanRequests];
        v15 = [v14 objectForKeyedSubscript:v10];

        v284 = 0u;
        v283 = 0u;
        v282 = 0u;
        v281 = 0u;
        v174 = v15;
        v16 = [v174 countByEnumeratingWithState:&v281 objects:v314 count:16];
        if (!v16)
        {
          goto LABEL_150;
        }

        v17 = *v282;
        while (1)
        {
          v18 = 0;
          do
          {
            if (*v282 != v17)
            {
              objc_enumerationMutation(v174);
            }

            v19 = *(*(&v281 + 1) + 8 * v18);
            v20 = [v19 clientType];
            if (![(WPDManager *)self isScanAllowlistedForType:v20])
            {
              if (WPLogInitOnce != -1)
              {
                [WPDScanManager updateScanRules];
              }

              v25 = WiProxLog;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = v20;
                _os_log_impl(&dword_272965000, v25, OS_LOG_TYPE_DEFAULT, "Not scanning for client type (%ld) when denylisted or not allowlisted", buf, 0xCu);
              }

              goto LABEL_148;
            }

            if (v20 == 8)
            {
              v21 = 1;
            }

            else
            {
              v21 = v172;
            }

            if ((v21 & 1) == 0)
            {
              if (WPLogInitOnce != -1)
              {
                [WPDScanManager updateScanRules];
              }

              v22 = WiProxLog;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134217984;
                *&buf[4] = v20;
                v23 = v22;
                v24 = "Not scanning for client type (%ld) when HeySiri scan is active";
LABEL_23:
                _os_log_debug_impl(&dword_272965000, v23, OS_LOG_TYPE_DEBUG, v24, buf, 0xCu);
                goto LABEL_148;
              }

              goto LABEL_148;
            }

            if (v20 == 16)
            {
              v33 = [(WPDManager *)self server];
              v34 = [v33 screenOff];

              if (!v34)
              {
                goto LABEL_76;
              }

              memset(buf, 0, sizeof(buf));
              if (v19)
              {
                [v19 scanningRates];
              }

              v35 = [(WPDManager *)self server];
              if ([v35 isMirroring])
              {
                if (v19)
                {
                  [v19 scanningRates];

                  if (v272 == 966)
                  {
                    *&buf[8] = 300;
                    if (WPLogInitOnce != -1)
                    {
                      [WPDScanManager updateScanRules];
                    }

                    v29 = WiProxLog;
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      *v308 = 134218240;
                      *&v308[4] = *&buf[8];
                      *&v308[12] = 2048;
                      *&v308[14] = 16;
                      v36 = v29;
                      v37 = "Boosting screen off scan interval to %ld for client type (%ld) when mirroring";
                      goto LABEL_65;
                    }

                    goto LABEL_74;
                  }

LABEL_58:
                  v29 = [(WPDManager *)self server];
                  if (([v29 isMirroring]& 1) != 0)
                  {
                    goto LABEL_74;
                  }

                  if (!v19)
                  {
                    v269 = 0;
                    v268 = 0;
                    v270 = 0;
                    goto LABEL_74;
                  }

                  [v19 scanningRates];

                  if (v269 == 300)
                  {
                    *&buf[8] = 966;
                    if (WPLogInitOnce != -1)
                    {
                      [WPDScanManager updateScanRules];
                    }

                    v29 = WiProxLog;
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      *v308 = 134218240;
                      *&v308[4] = *&buf[8];
                      *&v308[12] = 2048;
                      *&v308[14] = 16;
                      v36 = v29;
                      v37 = "Resetting screen off scan interval to %ld for client type (%ld) when not mirroring";
LABEL_65:
                      _os_log_impl(&dword_272965000, v36, OS_LOG_TYPE_DEFAULT, v37, v308, 0x16u);
                    }

LABEL_74:
                  }

LABEL_75:
                  *v308 = *buf;
                  *&v308[16] = *&buf[16];
                  [v19 setScanningRates:v308];
                  goto LABEL_76;
                }

                v272 = 0;
                v271 = 0;
                v273 = 0;
              }

              goto LABEL_58;
            }

            if (v20 == 12)
            {
              v26 = [(WPDManager *)self server];
              v27 = [v26 screenOff];

              if (v27)
              {
                memset(buf, 0, sizeof(buf));
                if (v19)
                {
                  [v19 scanningRates];
                }

                v28 = [(WPDManager *)self server];
                if ([v28 isMirroring])
                {
                  if (v19)
                  {
                    [v19 scanningRates];

                    if (v279 == 0xFFFF)
                    {
                      [v19 scanningRates];
                      *&buf[8] = v277;
                      if (WPLogInitOnce != -1)
                      {
                        [WPDScanManager updateScanRules];
                      }

                      v29 = WiProxLog;
                      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_74;
                      }

                      *v308 = 134218240;
                      *&v308[4] = *&buf[8];
                      *&v308[12] = 2048;
                      *&v308[14] = 12;
                      v30 = v29;
                      v31 = "Enabling screen off scan interval of %ld for client type (%ld) when mirroring";
                      v32 = 22;
                      goto LABEL_71;
                    }

LABEL_52:
                    v29 = [(WPDManager *)self server];
                    if (([v29 isMirroring]& 1) != 0)
                    {
                      goto LABEL_74;
                    }

                    if (v19)
                    {
                      [v19 scanningRates];

                      if (v275 == 0xFFFF)
                      {
                        goto LABEL_75;
                      }
                    }

                    else
                    {
                      v275 = 0;
                      v274 = 0;
                      v276 = 0;
                    }

                    *&buf[8] = 0xFFFFLL;
                    if (WPLogInitOnce != -1)
                    {
                      [WPDScanManager updateScanRules];
                    }

                    v29 = WiProxLog;
                    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_74;
                    }

                    *v308 = 134217984;
                    *&v308[4] = 12;
                    v30 = v29;
                    v31 = "Disabling screen off scan for client type (%ld) when not mirroring";
                    v32 = 12;
LABEL_71:
                    _os_log_impl(&dword_272965000, v30, OS_LOG_TYPE_DEFAULT, v31, v308, v32);
                    goto LABEL_74;
                  }

                  v279 = 0;
                  v278 = 0;
                  v280 = 0;
                }

                goto LABEL_52;
              }
            }

LABEL_76:
            v38 = [(WPDManager *)self server];
            if (![v38 screenOff])
            {
              goto LABEL_84;
            }

            if (!v19)
            {
              v266 = 0;
              v265 = 0;
              v267 = 0;
LABEL_84:

              goto LABEL_85;
            }

            [v19 scanningRates];

            if (v266 == 0xFFFF)
            {
              if (WPLogInitOnce != -1)
              {
                [WPDScanManager updateScanRules];
              }

              v39 = WiProxLog;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134217984;
                *&buf[4] = v20;
                v23 = v39;
                v24 = "Not scanning for client type (%ld) because we don't scan when screen is off";
                goto LABEL_23;
              }

              goto LABEL_148;
            }

LABEL_85:
            v40 = [(WPDManager *)self server];
            if ([v40 systemLocked])
            {
              v41 = [v19 scanWhenLocked];

              if ((v41 & 1) == 0)
              {
                if (WPLogInitOnce != -1)
                {
                  [WPDScanManager updateScanRules];
                }

                v42 = WiProxLog;
                if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134217984;
                  *&buf[4] = v20;
                  v23 = v42;
                  v24 = "Not scanning for client type (%ld) because screen is locked";
                  goto LABEL_23;
                }

                goto LABEL_148;
              }
            }

            else
            {
            }

            if (!_os_feature_enabled_impl())
            {
              goto LABEL_100;
            }

            v43 = [(WPDManager *)self server];
            if (![v43 screenOff])
            {

LABEL_100:
              v46 = MEMORY[0x277CBEB38];
              v312 = v164;
              v47 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v20];
              v313 = v47;
              v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v313 forKeys:&v312 count:1];
              v49 = [v46 dictionaryWithDictionary:v48];

              v50 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v19, "allowDuplicates")}];
              [v49 setObject:v50 forKeyedSubscript:v162];

              if ((v20 - 15) > 1u)
              {
                if (v20 == 8)
                {
                  [v49 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v145];
                  [v49 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v144];
                }
              }

              else
              {
                if (v19)
                {
                  [v19 scanningRates];
                  if (v264 <= 65534)
                  {
                    v51 = MEMORY[0x277CCABB0];
                    [v19 scanningRates];
                    v52 = v261;
                    goto LABEL_107;
                  }

                  goto LABEL_108;
                }

                v52 = 0;
                v263 = 0;
                v262 = 0;
                v264 = 0;
                v51 = MEMORY[0x277CCABB0];
                v261 = 0;
                v259 = 0;
                v260 = 0;
LABEL_107:
                v53 = [v51 numberWithInteger:v52];
                [v49 setObject:v53 forKeyedSubscript:v150];

                if (v19)
                {
LABEL_108:
                  [v19 scanningRates];
                  if (v256 <= 65534)
                  {
                    v54 = MEMORY[0x277CCABB0];
                    [v19 scanningRates];
                    v55 = v253;
                    goto LABEL_111;
                  }

                  goto LABEL_112;
                }

                v55 = 0;
                v257 = 0;
                v256 = 0;
                v258 = 0;
                v54 = MEMORY[0x277CCABB0];
                v255 = 0;
                v253 = 0;
                v254 = 0;
LABEL_111:
                v56 = [v54 numberWithInteger:v55];
                [v49 setObject:v56 forKeyedSubscript:v148];

                if (v19)
                {
LABEL_112:
                  [v19 scanningRates];
                  if (v251 <= 65534)
                  {
                    v57 = MEMORY[0x277CCABB0];
                    [v19 scanningRates];
                    v58 = v248;
                    goto LABEL_115;
                  }
                }

                else
                {
                  v58 = 0;
                  v251 = 0;
                  v250 = 0;
                  v252 = 0;
                  v57 = MEMORY[0x277CCABB0];
                  v249 = 0;
                  v247 = 0;
                  v248 = 0;
LABEL_115:
                  v59 = [v57 numberWithInteger:v58];
                  [v49 setObject:v59 forKeyedSubscript:v146];
                }
              }

              v60 = [v169 bundleID];

              if (v60)
              {
                v61 = MEMORY[0x277CBEA60];
                v62 = [v169 bundleID];
                v63 = [v61 arrayWithObject:v62];
                [v49 setObject:v63 forKeyedSubscript:v160];
              }

              v64 = [v19 blobValue];
              v65 = [v64 length] == 0;

              if (!v65)
              {
                v66 = [v19 blobValue];
                [v49 setObject:v66 forKeyedSubscript:v158];
              }

              v67 = [v19 maskValue];
              v68 = [v67 length] == 0;

              if (!v68)
              {
                v69 = [v19 maskValue];
                [v49 setObject:v69 forKeyedSubscript:v156];
              }

              v70 = [v19 peers];
              v71 = [v70 count] == 0;

              if (!v71)
              {
                v72 = [v19 peers];
                [v49 setObject:v72 forKeyedSubscript:v154];
              }

              v73 = [v19 rssiThreshold];

              if (v73)
              {
                v74 = [v19 rssiThreshold];
                [v49 setObject:v74 forKeyedSubscript:v152];
              }

              v75 = [v19 useCaseList];
              v76 = [v75 count] == 0;

              if (!v76)
              {
                v77 = [v19 useCaseList];
                [v49 setObject:v77 forKeyedSubscript:@"kCBOptionUseCaseList"];
              }

              if ([v19 range] && -[WPDScanManager isRanging](self, "isRanging"))
              {
                v78 = [(WPDScanManager *)self rangingTypes];
                if (![v78 containsIndex:v20])
                {
                  goto LABEL_136;
                }

                v79 = [(WPDManager *)self server];
                v80 = [v79 screenOff];

                if ((v80 & 1) == 0)
                {
                  [v49 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v143];
                  if (WPLogInitOnce != -1)
                  {
                    [WPDScanManager updateScanRules];
                  }

                  v78 = WiProxLog;
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = v137;
                    *&buf[4] = v49;
                    _os_log_debug_impl(&dword_272965000, v78, OS_LOG_TYPE_DEBUG, "[Ranging] scan rule with ranging: %@", buf, 0xCu);
                  }

LABEL_136:
                }
              }

              if ([v168 containsIndex:v20])
              {
                [(WPDScanManager *)self duplicateRulesGuard:v167 forRule:v49];
              }

              else
              {
                [v167 addObject:v49];
                [v168 addIndex:v20];
              }

              [v166 addObject:v19];
              v81 = [(WPDManager *)self server];
              if ([v81 screenOff])
              {
                if (v19)
                {
                  [v19 scanningRates];
                  v19 = v245;
                }

                else
                {
                  v245 = 0;
                  v244 = 0;
                  v246 = 0;
                }
              }

              else if (v19)
              {
                [v19 scanningRates];
                v19 = v241;
              }

              else
              {
                v242 = 0;
                v241 = 0;
                v243 = 0;
              }

              v82 = v19 > 299;
              v83 = [(WPDManager *)self server];
              v84 = [v83 statsManager];
              [v84 startActivity:0 forType:v20 scanRate:v82];

              goto LABEL_148;
            }

            v44 = [v19 advBuffer] == 0;

            if (v44)
            {
              goto LABEL_100;
            }

            if (WPLogInitOnce != -1)
            {
              [WPDScanManager updateScanRules];
            }

            v45 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              *&buf[4] = v20;
              v23 = v45;
              v24 = "Not scanning for client type (%ld) when screen is off and ADV Buffer is enabled";
              goto LABEL_23;
            }

LABEL_148:
            ++v18;
          }

          while (v16 != v18);
          v16 = [v174 countByEnumeratingWithState:&v281 objects:v314 count:16];
          if (!v16)
          {
LABEL_150:

            v85 = v142;
            goto LABEL_155;
          }
        }
      }

      if (WPLogInitOnce != -1)
      {
        [WPDScanManager updateScanRules];
      }

      v86 = WiProxLog;
      v85 = v142;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        *buf = v137;
        *&buf[4] = v10;
        _os_log_debug_impl(&dword_272965000, v86, OS_LOG_TYPE_DEBUG, "Not scanning for non-test client UUID: %@ when in test mode", buf, 0xCu);
      }

LABEL_155:
      ;
    }

    v141 = [obj countByEnumeratingWithState:&v285 objects:v315 count:16];
  }

  while (v141);
LABEL_157:

  if ([v167 count])
  {
    v87 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v168];
    [(WPDScanManager *)self setCurrentScanners:v87];

    v237 = 0;
    v238 = &v237;
    v239 = 0x2020000000;
    v240 = 0xFFFFLL;
    v233 = 0;
    v234 = &v233;
    v235 = 0x2020000000;
    v236 = 0xFFFFLL;
    v229 = 0;
    v230 = &v229;
    v231 = 0x2020000000;
    v232 = 0;
    v228[0] = MEMORY[0x277D85DD0];
    v228[1] = 3221225472;
    v228[2] = __33__WPDScanManager_updateScanRules__block_invoke_306;
    v228[3] = &unk_279E59640;
    v228[4] = self;
    v228[5] = &v237;
    v228[6] = &v233;
    v228[7] = &v229;
    [v166 enumerateObjectsUsingBlock:v228];
    if (v238[3] >= 0xFFFF)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager updateScanRules];
      }

      v88 = WiProxLog;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v89 = "Scanning rate is too high, not scanning";
        goto LABEL_178;
      }

      goto LABEL_179;
    }

    if (v234[3] < 0xFFFF)
    {
      if (v230[3] > updateScanRules_latestRequestedAtNsec)
      {
        updateScanRules_latestRequestedAtNsec = v230[3];
        updateScanRules_latestProcessedAtNsec = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
      }

      *v308 = 0;
      *&v308[8] = v308;
      *&v308[16] = 0x3032000000;
      v309 = __Block_byref_object_copy__2;
      v93 = MEMORY[0x277CBEC28];
      v310 = __Block_byref_object_dispose__2;
      v311 = MEMORY[0x277CBEC28];
      if (_os_feature_enabled_impl())
      {
        v94 = v227;
        v227[0] = MEMORY[0x277D85DD0];
        v227[1] = 3221225472;
        v95 = __33__WPDScanManager_updateScanRules__block_invoke_313;
      }

      else
      {
        v94 = v226;
        v226[0] = MEMORY[0x277D85DD0];
        v226[1] = 3221225472;
        v95 = __33__WPDScanManager_updateScanRules__block_invoke_2_314;
      }

      v94[2] = v95;
      v94[3] = &unk_279E59668;
      v94[4] = v308;
      [v166 enumerateObjectsUsingBlock:v137];
      v220 = 0;
      v221 = &v220;
      v222 = 0x3032000000;
      v223 = __Block_byref_object_copy__2;
      v224 = __Block_byref_object_dispose__2;
      v225 = v93;
      v219[0] = MEMORY[0x277D85DD0];
      v219[1] = 3221225472;
      v219[2] = __33__WPDScanManager_updateScanRules__block_invoke_3;
      v219[3] = &unk_279E59690;
      v219[4] = self;
      v219[5] = &v220;
      [v166 enumerateObjectsUsingBlock:v219];
      v213 = 0;
      v214 = &v213;
      v215 = 0x3032000000;
      v216 = __Block_byref_object_copy__2;
      v217 = __Block_byref_object_dispose__2;
      v218 = v93;
      v212[0] = MEMORY[0x277D85DD0];
      v212[1] = 3221225472;
      v212[2] = __33__WPDScanManager_updateScanRules__block_invoke_4;
      v212[3] = &unk_279E59668;
      v212[4] = &v213;
      [v166 enumerateObjectsUsingBlock:v212];
      v206 = 0;
      v207 = &v206;
      v208 = 0x3032000000;
      v209 = __Block_byref_object_copy__2;
      v210 = __Block_byref_object_dispose__2;
      v211 = v93;
      v205[0] = MEMORY[0x277D85DD0];
      v205[1] = 3221225472;
      v205[2] = __33__WPDScanManager_updateScanRules__block_invoke_5;
      v205[3] = &unk_279E59668;
      v205[4] = &v206;
      [v166 enumerateObjectsUsingBlock:v205];
      v199 = 0;
      v200 = &v199;
      v201 = 0x3032000000;
      v202 = __Block_byref_object_copy__2;
      v203 = __Block_byref_object_dispose__2;
      v204 = v93;
      v198[0] = MEMORY[0x277D85DD0];
      v198[1] = 3221225472;
      v198[2] = __33__WPDScanManager_updateScanRules__block_invoke_6;
      v198[3] = &unk_279E59668;
      v198[4] = &v199;
      [v166 enumerateObjectsUsingBlock:v198];
      v194 = 0;
      v195 = &v194;
      v196 = 0x2020000000;
      v197 = 0;
      v190 = 0;
      v191 = &v190;
      v192 = 0x2020000000;
      v193 = 0;
      v189[0] = MEMORY[0x277D85DD0];
      v189[1] = 3221225472;
      v189[2] = __33__WPDScanManager_updateScanRules__block_invoke_7;
      v189[3] = &unk_279E596B8;
      v189[6] = &v194;
      v189[5] = &v190;
      v189[4] = self;
      [v166 enumerateObjectsUsingBlock:v189];
      scanRetainDuplicates = self->_scanRetainDuplicates;
      self->_scanRetainDuplicates = v93;

      v97 = v166;
      if (_os_feature_enabled_impl())
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v292) = 0;
        v182 = 0;
        v183 = &v182;
        v184 = 0x2020000000;
        if ([v221[5] BOOLValue])
        {
          v98 = 1;
        }

        else
        {
          v98 = [*(*&v308[8] + 40) BOOLValue];
        }

        LOBYTE(v185) = v98;
        if ((v183[3] & 1) == 0)
        {
          v188[0] = MEMORY[0x277D85DD0];
          v188[1] = 3221225472;
          v188[2] = __33__WPDScanManager_updateScanRules__block_invoke_8;
          v188[3] = &unk_279E596E0;
          v188[4] = buf;
          v188[5] = &v182;
          [v166 enumerateObjectsUsingBlock:v188];
        }

        if (*(*&buf[8] + 24) == 1)
        {
          v99 = *(v183 + 24) ^ 1u;
        }

        else
        {
          v99 = 0;
        }

        v100 = [MEMORY[0x277CCABB0] numberWithInt:v99];
        v101 = self->_scanRetainDuplicates;
        self->_scanRetainDuplicates = v100;

        if (WPLogInitOnce != -1)
        {
          [WPDScanManager updateScanRules];
        }

        v102 = WiProxLog;
        if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
        {
          v103 = [(NSNumber *)self->_scanRetainDuplicates BOOLValue];
          v104 = *(*&buf[8] + 24);
          v105 = *(v183 + 24);
          *v302 = 67109632;
          *&v302[4] = v103;
          LOWORD(v303) = 1024;
          *(&v303 + 2) = v104;
          HIWORD(v303) = 1024;
          LODWORD(v304) = v105;
          _os_log_impl(&dword_272965000, v102, OS_LOG_TYPE_INFO, "Retain duplicates:%d (askRetain:%d askReset:%d)", v302, 0x14u);
        }

        v97 = v166;
        [v166 enumerateObjectsUsingBlock:&__block_literal_global_322];
        _Block_object_dispose(&v182, 8);
        _Block_object_dispose(buf, 8);
      }

      v182 = 0;
      v183 = &v182;
      v184 = 0x3032000000;
      v185 = __Block_byref_object_copy__2;
      v186 = __Block_byref_object_dispose__2;
      v187 = MEMORY[0x277CBEC38];
      v181[0] = MEMORY[0x277D85DD0];
      v181[1] = 3221225472;
      v181[2] = __33__WPDScanManager_updateScanRules__block_invoke_2_323;
      v181[3] = &unk_279E59668;
      v181[4] = &v182;
      [v97 enumerateObjectsUsingBlock:v181];
      *v302 = 0;
      v303 = v302;
      v304 = 0x3032000000;
      v305 = __Block_byref_object_copy__2;
      v306 = __Block_byref_object_dispose__2;
      v307 = v93;
      v180[0] = MEMORY[0x277D85DD0];
      v180[1] = 3221225472;
      v180[2] = __33__WPDScanManager_updateScanRules__block_invoke_3_324;
      v180[3] = &unk_279E59668;
      v180[4] = v302;
      [v97 enumerateObjectsUsingBlock:v180];
      v106 = [v221[5] BOOLValue];
      [(WPDScanManager *)self logScanTypes:v168 method:v106 window:v234[3] interval:v238[3]];
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v165 = v167;
      v107 = [v165 countByEnumeratingWithState:&v176 objects:v301 count:16];
      if (v107)
      {
        v108 = *v177;
        v161 = *MEMORY[0x277CBDE00];
        v159 = *MEMORY[0x277CBDDF8];
        v157 = *MEMORY[0x277CBDE78];
        v155 = *MEMORY[0x277CBDDF0];
        v153 = *MEMORY[0x277CBDDE8];
        v151 = *MEMORY[0x277CBDE08];
        v149 = *MEMORY[0x277CBDF00];
        v147 = *v177;
        do
        {
          v109 = 0;
          v163 = v107;
          do
          {
            if (*v177 != v108)
            {
              objc_enumerationMutation(v165);
            }

            v110 = *(*(&v176 + 1) + 8 * v109);
            if (WPLogInitOnce != -1)
            {
              [WPDScanManager updateScanRules];
            }

            v111 = WiProxLog;
            if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
            {
              log = v111;
              v175 = [v110 objectForKeyedSubscript:v161];
              v170 = [v175 integerValue];
              v173 = [v110 objectForKeyedSubscript:v159];
              v112 = [v173 integerValue];
              v113 = [v110 objectForKeyedSubscript:v157];
              v114 = [v113 BOOLValue];
              v115 = [v110 objectForKeyedSubscript:v155];
              v116 = [v110 objectForKeyedSubscript:v153];
              v117 = [v110 objectForKeyedSubscript:v151];
              v118 = [v117 count];
              v119 = [v110 objectForKeyedSubscript:v149];
              *buf = 134219522;
              *&buf[4] = v170;
              *&buf[12] = 2048;
              *&buf[14] = v112;
              *&buf[22] = 1024;
              v292 = v114;
              v293 = 2114;
              v294 = v115;
              v295 = 2114;
              v296 = v116;
              v297 = 2048;
              v298 = v118;
              v299 = 2112;
              v300 = v119;
              _os_log_impl(&dword_272965000, log, OS_LOG_TYPE_DEFAULT, "About to scan for type: %ld - rssi: %ld - range: %d - payload: %{public}@ - mask: %{public}@ - peers: %lu, bundleID: %@", buf, 0x44u);

              v108 = v147;
              v107 = v163;

              v111 = log;
            }

            ++v109;
          }

          while (v107 != v109);
          v107 = [v165 countByEnumeratingWithState:&v176 objects:v301 count:16];
        }

        while (v107);
      }

      v120 = *(*&v308[8] + 40);
      v121 = *MEMORY[0x277CBDEF8];
      v289[0] = *MEMORY[0x277CBDDB0];
      v289[1] = v121;
      v290[0] = v120;
      v290[1] = MEMORY[0x277CBEC38];
      v122 = *MEMORY[0x277CBDDE0];
      v290[2] = v165;
      v123 = *MEMORY[0x277CBDE58];
      v289[2] = v122;
      v289[3] = v123;
      v124 = [MEMORY[0x277CCABB0] numberWithInteger:v234[3]];
      v290[3] = v124;
      v289[4] = *MEMORY[0x277CBDE38];
      v125 = [MEMORY[0x277CCABB0] numberWithInteger:v238[3]];
      v289[5] = *MEMORY[0x277CBDDA8];
      v126 = v221[5];
      v290[4] = v125;
      v290[5] = v126;
      v289[6] = *MEMORY[0x277CBDDB8];
      v290[6] = v214[5];
      v289[7] = *MEMORY[0x277CBDDD0];
      v290[7] = v207[5];
      v289[8] = *MEMORY[0x277CBDE10];
      v290[8] = v200[5];
      v289[9] = *MEMORY[0x277CBDE18];
      v290[9] = v183[5];
      v289[10] = *MEMORY[0x277CBDE80];
      v290[10] = *(v303 + 5);
      v289[11] = @"kCBScanOptionPriorityConfiguration";
      v127 = [MEMORY[0x277CCABB0] numberWithInteger:v195[3]];
      v290[11] = v127;
      v289[12] = *MEMORY[0x277CBDE68];
      v128 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v191 + 6)];
      v129 = *MEMORY[0x277CBDE30];
      v130 = self->_scanRetainDuplicates;
      v290[12] = v128;
      v290[13] = v130;
      v131 = *MEMORY[0x277CBDE50];
      v289[13] = v129;
      v289[14] = v131;
      v132 = [MEMORY[0x277CCABB0] numberWithLongLong:updateScanRules_latestRequestedAtNsec];
      v290[14] = v132;
      v289[15] = *MEMORY[0x277CBDE48];
      v133 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:updateScanRules_latestProcessedAtNsec];
      v290[15] = v133;
      v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v290 forKeys:v289 count:16];

      v91 = [(WPDScanManager *)self scanOptionsChanged:v134 ForRequests:v166];
      _Block_object_dispose(v302, 8);

      _Block_object_dispose(&v182, 8);
      _Block_object_dispose(&v190, 8);
      _Block_object_dispose(&v194, 8);
      _Block_object_dispose(&v199, 8);

      _Block_object_dispose(&v206, 8);
      _Block_object_dispose(&v213, 8);

      _Block_object_dispose(&v220, 8);
      _Block_object_dispose(v308, 8);
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager updateScanRules];
      }

      v88 = WiProxLog;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v89 = "Scanning window is too high, not scanning";
LABEL_178:
        _os_log_impl(&dword_272965000, v88, OS_LOG_TYPE_DEFAULT, v89, buf, 2u);
      }

LABEL_179:

      v91 = [(WPDScanManager *)self scanOptionsChanged:0 ForRequests:0];
    }

    _Block_object_dispose(&v229, 8);
    _Block_object_dispose(&v233, 8);
    _Block_object_dispose(&v237, 8);
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager updateScanRules];
    }

    v92 = WiProxLog;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272965000, v92, OS_LOG_TYPE_DEFAULT, "No Scan requests that fit the current criteria, bailing", buf, 2u);
    }

    v91 = [(WPDScanManager *)self scanOptionsChanged:0 ForRequests:0];
  }

LABEL_213:
  v135 = *MEMORY[0x277D85DE8];
  return v91;
}

void __33__WPDScanManager_updateScanRules__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 activeScanning])
  {
    if ([v10 clientType] != 6 || (objc_msgSend(*(a1 + 32), "server"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "screenOff"), v6, (v7 & 1) == 0))
    {
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = MEMORY[0x277CBEC38];

      *a4 = 1;
    }
  }
}

void __33__WPDScanManager_updateScanRules__block_invoke_313(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 allowDuplicates])
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = MEMORY[0x277CBEC38];

    *a4 = 1;
  }
}

void __33__WPDScanManager_updateScanRules__block_invoke_306(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) server];
  if ([v4 screenOff])
  {
    if (v3)
    {
      [v3 scanningRates];
      v5 = v11;
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v3)
  {
    [v3 scanningRates];
    v5 = v10;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(a1 + 40) + 8);
  if (v5 < *(v6 + 24))
  {
    *(v6 + 24) = v5;
  }

  if (v3)
  {
    [v3 scanningRates];
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 48) + 8);
  if (v7 < *(v8 + 24))
  {
    *(v8 + 24) = v7;
  }

  if ([v3 requestedAtNsec] > *(*(*(a1 + 56) + 8) + 24))
  {
    *(*(*(a1 + 56) + 8) + 24) = [v3 requestedAtNsec];
  }
}

- (BOOL)isScannerTestMode
{
  v7 = 0;
  v8[0] = &v7;
  v8[1] = 0x2020000000;
  v9 = 0;
  if ([(WPDManager *)self testMode])
  {
    v3 = [(WPDScanManager *)self scanRequests];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__WPDScanManager_isScannerTestMode__block_invoke;
    v6[3] = &unk_279E595C8;
    v6[4] = self;
    v6[5] = &v7;
    [v3 enumerateKeysAndObjectsUsingBlock:v6];

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager isScannerTestMode];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [(WPDScanManager *)v8 isScannerTestMode];
    }
  }

  v4 = *(v8[0] + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __33__WPDScanManager_updateScanRules__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 scanCache])
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = MEMORY[0x277CBEC38];

    *a4 = 1;
  }
}

void __33__WPDScanManager_updateScanRules__block_invoke_6(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 priorityCritical])
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = MEMORY[0x277CBEC38];

    *a4 = 1;
  }
}

void __33__WPDScanManager_updateScanRules__block_invoke_3_324(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 holdVoucher])
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = MEMORY[0x277CBEC38];

    *a4 = 1;
  }
}

void __33__WPDScanManager_updateScanRules__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 24))
  {
    v6 = 1;
  }

  else
  {
    v6 = [v3 retainDuplicates];
    v5 = *(*(a1 + 32) + 8);
  }

  *(v5 + 24) = v6;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v7 = 1;
  }

  else if ([v4 startPending])
  {
    v7 = [v4 retainDuplicates] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v7;
  if (WPLogInitOnce != -1)
  {
    __33__WPDScanManager_updateScanRules__block_invoke_8_cold_1();
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __33__WPDScanManager_updateScanRules__block_invoke_8_cold_2(v4, v8);
  }
}

- (WPDScanManager)initWithServer:(id)a3
{
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = WPDScanManager;
  v5 = [(WPDManager *)&v38 initWithServer:v4 Name:@"Scanner Central"];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    scanRequests = v5->_scanRequests;
    v5->_scanRequests = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    peerRequests = v5->_peerRequests;
    v5->_peerRequests = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    connectionsInProgress = v5->_connectionsInProgress;
    v5->_connectionsInProgress = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    peripheralConnections = v5->_peripheralConnections;
    v5->_peripheralConnections = v12;

    v14 = [MEMORY[0x277CCAA78] indexSet];
    currentScanners = v5->_currentScanners;
    v5->_currentScanners = v14;

    v5->_scanning = 0;
    v16 = [MEMORY[0x277CBEB58] set];
    spyScanClients = v5->_spyScanClients;
    v5->_spyScanClients = v16;

    scanOptions = v5->_scanOptions;
    v5->_scanOptions = 0;

    scanRequestHashes = v5->_scanRequestHashes;
    v5->_scanRequestHashes = 0;

    scanRuleHashes = v5->_scanRuleHashes;
    v5->_scanRuleHashes = 0;

    v21 = [v4 serverQueue];
    objc_storeWeak(&v5->_serverQueue, v21);

    cbDiscoveryAsserter = v5->_cbDiscoveryAsserter;
    v5->_cbDiscoveryAsserter = 0;

    scanRetainDuplicates = v5->_scanRetainDuplicates;
    v5->_scanRetainDuplicates = MEMORY[0x277CBEC28];

    v5->_isRanging = 0;
    v24 = [MEMORY[0x277CCAB58] indexSet];
    [v24 addIndex:15];
    if (+[WPDaemonServer supportsRanging])
    {
      [v24 addIndex:19];
    }

    v25 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v24];
    rangingTypes = v5->_rangingTypes;
    v5->_rangingTypes = v25;

    v27 = objc_alloc(MEMORY[0x277CBDFF8]);
    v28 = [(WPDScanManager *)v5 serverQueue];
    v39 = *MEMORY[0x277CBDF08];
    v40[0] = MEMORY[0x277CBEC38];
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v30 = [v27 initWithDelegate:v5 queue:v28 options:v29];
    [(WPDScanManager *)v5 setCentralManager:v30];

    v31 = MEMORY[0x277CBEB98];
    v32 = [(WPDScanManager *)v5 centralManager];
    v33 = [v31 setWithObject:v32];
    [(WPDManager *)v5 setCbManagers:v33];

    v34 = [v4 wpdState];
    v35 = [(WPDScanManager *)v5 centralManager];
    [v34 registerManager:v35];
  }

  v36 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)cleanup
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(WPDScanManager *)self cbDiscoveryAsserter];

  if (v3)
  {
    v4 = [(WPDScanManager *)self cbDiscoveryAsserter];
    [v4 invalidate];

    [(WPDScanManager *)self setCbDiscoveryAsserter:0];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(WPDScanManager *)self peripheralConnections];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [(WPDScanManager *)self centralManager];
        [v11 cancelPeripheralConnection:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = [(WPDScanManager *)self scanRequests];
  [v12 removeAllObjects];

  v13 = [(WPDScanManager *)self spyScanClients];
  [v13 removeAllObjects];

  [(WPDScanManager *)self updateScanner];
  v15.receiver = self;
  v15.super_class = WPDScanManager;
  [(WPDManager *)&v15 cleanup];
  v14 = *MEMORY[0x277D85DE8];
}

- (id)generateStateDumpStrings
{
  v2 = self;
  v95 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v90.receiver = self;
  v90.super_class = WPDScanManager;
  v4 = [(WPDManager *)&v90 generateStateDumpStrings];
  v66 = [v3 arrayWithArray:v4];

  v73 = v2;
  if ([(WPDManager *)v2 isInternalBuild])
  {
    v5 = v2;
    v6 = MEMORY[0x277CCACA8];
    v7 = [(WPDManager *)v5 scanAllowlist];
    if (v7)
    {
      v8 = [(WPDManager *)v5 scanAllowlist];
    }

    else
    {
      v8 = @"all";
    }

    v9 = [v6 stringWithFormat:@"allowlisted scan types: %@\n", v8];
    [v66 addObject:v9];

    if (v7)
    {
    }

    v2 = v73;
  }

  v10 = MEMORY[0x277CCACA8];
  if ([(WPDScanManager *)v2 isRanging])
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  v12 = [(WPDScanManager *)v2 rangingTypes];
  v13 = [v10 stringWithFormat:@"ranging: %s, supported types: %@\n", v11, v12];
  [v66 addObject:v13];

  v14 = [MEMORY[0x277CBEB18] array];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v15 = [(WPDScanManager *)v2 scanRequests];
  v16 = [v15 allKeys];

  v71 = [v16 countByEnumeratingWithState:&v86 objects:v94 count:16];
  if (v71)
  {
    v17 = *v87;
    v67 = *v87;
    v68 = v16;
    do
    {
      for (i = 0; i != v71; ++i)
      {
        if (*v87 != v17)
        {
          objc_enumerationMutation(v16);
        }

        v19 = *(*(&v86 + 1) + 8 * i);
        v20 = [(WPDScanManager *)v2 scanRequests];
        v21 = [v20 objectForKeyedSubscript:v19];

        v22 = v21;
        if (v21 && [v21 count])
        {
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v69 = v21;
          v23 = v21;
          v24 = [v23 countByEnumeratingWithState:&v82 objects:v93 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v83;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v83 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@: %@\n", v19, *(*(&v82 + 1) + 8 * j)];
                [v14 addObject:v28];
              }

              v25 = [v23 countByEnumeratingWithState:&v82 objects:v93 count:16];
            }

            while (v25);
            v2 = v73;
            v17 = v67;
            v16 = v68;
          }

          v22 = v69;
        }

        else
        {
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@: (nil)\n"], v19);
          [v14 addObject:v23];
        }
      }

      v71 = [v16 countByEnumeratingWithState:&v86 objects:v94 count:16];
    }

    while (v71);
  }

  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"scan requests (%lu):\n", objc_msgSend(v14, "count")];
  [v66 addObject:v29];

  [v66 addObjectsFromArray:v14];
  v72 = [MEMORY[0x277CBEB18] array];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v30 = [(WPDScanManager *)v2 peerRequests];
  v31 = [v30 allKeys];

  v32 = [v31 countByEnumeratingWithState:&v78 objects:v92 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v79;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v79 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v78 + 1) + 8 * k);
        v37 = [(WPDScanManager *)v73 peerRequests];
        v38 = [v37 objectForKeyedSubscript:v36];

        if (v38 && [v38 count])
        {
          v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@: %@\n", v36, v38];
          [v72 addObject:v39];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v78 objects:v92 count:16];
    }

    while (v33);
  }

  v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"tracked peers (%lu):\n", objc_msgSend(v72, "count")];
  [v66 addObject:v40];

  [v66 addObjectsFromArray:v72];
  v70 = [MEMORY[0x277CBEB18] array];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v41 = [(WPDScanManager *)v73 connectionsInProgress];
  v42 = [v41 allKeys];

  v43 = [v42 countByEnumeratingWithState:&v74 objects:v91 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v75;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v75 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v74 + 1) + 8 * m);
        v48 = [(WPDScanManager *)v73 connectionsInProgress];
        v49 = [v48 objectForKeyedSubscript:v47];

        if (v49 && [v49 count])
        {
          [v49 count];
          v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@: %@\n", v47, v49];
          [v70 addObject:v50];
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v74 objects:v91 count:16];
    }

    while (v44);
  }

  v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"connections in progress (%lu):\n", objc_msgSend(v70, "count")];
  [v66 addObject:v51];

  [v66 addObjectsFromArray:v70];
  v52 = MEMORY[0x277CCACA8];
  if ([(WPDScanManager *)v73 scanning])
  {
    v53 = "yes";
  }

  else
  {
    v53 = "no";
  }

  v54 = [(WPDScanManager *)v73 currentScanners];
  v55 = [v54 count];
  v56 = [(WPDScanManager *)v73 currentScanners];
  v57 = [v56 count];
  if (v57)
  {
    v58 = [(WPDScanManager *)v73 currentScanners];
  }

  else
  {
    v58 = &stru_2881F83F8;
  }

  v59 = [v52 stringWithFormat:@"scanning: %s types (%lu): %@\n", v53, v55, v58];
  [v66 addObject:v59];

  if (v57)
  {
  }

  v60 = MEMORY[0x277CCACA8];
  v61 = [(WPDScanManager *)v73 scanOptions];
  v62 = [v60 stringWithFormat:@"options: %@\n", v61];
  [v66 addObject:v62];

  v63 = [MEMORY[0x277CBEA60] arrayWithArray:v66];

  v64 = *MEMORY[0x277D85DE8];

  return v63;
}

- (void)addSpyScanClient:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager addSpyScanClient:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(WPDScanManager *)self spyScanClients];
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "Current spy scan clients: %@", &v15, 0xCu);
  }

  v8 = [(WPDScanManager *)self spyScanClients];
  v9 = [v8 containsObject:v4];

  if ((v9 & 1) == 0)
  {
    v10 = [(WPDScanManager *)self spyScanClients];
    [v10 addObject:v4];
  }

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager addSpyScanClient:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(WPDScanManager *)self spyScanClients];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_272965000, v12, OS_LOG_TYPE_DEFAULT, "Current spy scan clients: %@ after adding client %@", &v15, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeSpyScanClient:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager removeSpyScanClient:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(WPDScanManager *)self spyScanClients];
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "Current spy scan clients: %@", &v15, 0xCu);
  }

  v8 = [(WPDScanManager *)self spyScanClients];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(WPDScanManager *)self spyScanClients];
    [v10 removeObject:v4];

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager removeSpyScanClient:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(WPDScanManager *)self spyScanClients];
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_272965000, v12, OS_LOG_TYPE_DEFAULT, "Current spy scan clients: %@ after removing client %@", &v15, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeConflictingRequest:(id)a3 forClient:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WPDManager *)self server];
  v9 = [v8 isClientTestMode:v7];

  v10 = [v6 clientType];
  v11 = v10;
  if ((v9 & 1) != 0 || v10 == 18)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager removeConflictingRequest:forClient:];
    }

    v23 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      *v40 = 138412802;
      *&v40[4] = v7;
      *&v40[12] = 1024;
      *&v40[14] = v9;
      *&v40[18] = 1024;
      *&v40[20] = v11 == 18;
      _os_log_debug_impl(&dword_272965000, v23, OS_LOG_TYPE_DEBUG, "%@ skip check for conflicting request: test mode:%d ObjectDiscovery:%d", v40, 0x18u);
    }
  }

  else
  {
    *v40 = 0;
    *&v40[8] = v40;
    *&v40[16] = 0x3032000000;
    v41 = __Block_byref_object_copy__2;
    v42 = __Block_byref_object_dispose__2;
    v43 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__2;
    v34 = __Block_byref_object_dispose__2;
    v35 = 0;
    v12 = [(WPDScanManager *)self scanRequests];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __53__WPDScanManager_removeConflictingRequest_forClient___block_invoke_180;
    v25[3] = &unk_279E59580;
    v25[4] = self;
    v26 = v6;
    v27 = v7;
    v28 = v40;
    v29 = &v30;
    [v12 enumerateKeysAndObjectsUsingBlock:v25];

    if (*(*&v40[8] + 40))
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager removeConflictingRequest:forClient:];
      }

      v13 = WiProxLog;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*&v40[8] + 40);
        v15 = [(WPDScanManager *)self scanRequests];
        v16 = [v15 objectForKeyedSubscript:*(*&v40[8] + 40)];
        *buf = 138412546;
        v37 = v14;
        v38 = 2112;
        v39 = v16;
        _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "Before removing scan request for client: %@ - %@", buf, 0x16u);
      }

      v17 = [(WPDScanManager *)self scanRequests];
      v18 = [v17 objectForKeyedSubscript:*(*&v40[8] + 40)];

      [v18 removeObject:v31[5]];
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager removeConflictingRequest:forClient:];
      }

      v19 = WiProxLog;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(*&v40[8] + 40);
        v21 = [(WPDScanManager *)self scanRequests];
        v22 = [v21 objectForKeyedSubscript:*(*&v40[8] + 40)];
        *buf = 138412546;
        v37 = v20;
        v38 = 2112;
        v39 = v22;
        _os_log_impl(&dword_272965000, v19, OS_LOG_TYPE_DEFAULT, "After removing scan request for client: %@ - %@", buf, 0x16u);
      }
    }

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(v40, 8);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __53__WPDScanManager_removeConflictingRequest_forClient___block_invoke_180(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) server];
  v8 = [v7 isClientTestMode:v5];

  if ((v8 & 1) == 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__WPDScanManager_removeConflictingRequest_forClient___block_invoke_2;
    v9[3] = &unk_279E59558;
    v10 = *(a1 + 40);
    v11 = v5;
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    [v6 enumerateObjectsUsingBlock:v9];
  }
}

void __53__WPDScanManager_removeConflictingRequest_forClient___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 clientType];
  if (v7 == [*(a1 + 32) clientType] && (objc_msgSend(*(a1 + 40), "isEqual:", *(a1 + 48)) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    if (WPLogInitOnce != -1)
    {
      __53__WPDScanManager_removeConflictingRequest_forClient___block_invoke_2_cold_1();
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = v8;
      v13 = [v10 clientType];
      v14 = *(a1 + 48);
      v15 = 138412802;
      v16 = v11;
      v17 = 2048;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_error_impl(&dword_272965000, v12, OS_LOG_TYPE_ERROR, "%@ is already scanning for type %ld, but new client %@ also wants to scan for same type. Remove existing scan request", &v15, 0x20u);
    }

    *a3 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)addScanRequest:(id)a3 forClient:(id)a4
{
  v57[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager addScanRequest:forClient:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "Adding scan request called", buf, 2u);
  }

  if ([(WPDManager *)self state]== 3)
  {
    [(WPDScanManager *)self removeConflictingRequest:v6 forClient:v7];
    v9 = [(WPDScanManager *)self scanRequests];
    v10 = [v9 objectForKeyedSubscript:v7];

    if (!v10)
    {
      v11 = [MEMORY[0x277CBEB58] set];
      v12 = [(WPDScanManager *)self scanRequests];
      [v12 setObject:v11 forKeyedSubscript:v7];
    }

    v13 = [MEMORY[0x277CBEB58] set];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v42 = self;
    v14 = [(WPDScanManager *)self scanRequests];
    v43 = v7;
    v15 = [v14 objectForKeyedSubscript:v7];

    v16 = [v15 countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v45;
      do
      {
        v19 = 0;
        do
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v44 + 1) + 8 * v19);
          v21 = [v20 clientType];
          if (v21 == [v6 clientType])
          {
            if (WPLogInitOnce != -1)
            {
              [WPDScanManager addScanRequest:forClient:];
            }

            v22 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
            {
              v23 = v22;
              v24 = [v6 clientType];
              *buf = 138412546;
              *&buf[4] = v43;
              *&buf[12] = 2048;
              *&buf[14] = v24;
              _os_log_debug_impl(&dword_272965000, v23, OS_LOG_TYPE_DEBUG, "%@ is already scanning for type %ld. Replacing scan request", buf, 0x16u);
            }

            [v13 addObject:v20];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v17);
    }

    v25 = [(WPDScanManager *)v42 scanRequests];
    v26 = [v25 objectForKeyedSubscript:v43];
    [v26 minusSet:v13];

    *buf = 0;
    *&buf[8] = 0;
    *&buf[14] = 0;
    v52 = 0;
    v53[0] = 0;
    *(v53 + 6) = 0;
    v27 = [v6 blobValue];
    v28 = [v6 maskValue];
    if ([v27 length])
    {
      [v27 getBytes:buf length:{objc_msgSend(v27, "length")}];
      if ([v28 length])
      {
        [v28 getBytes:&v52 length:{objc_msgSend(v28, "length")}];
      }

      else
      {
        [v27 length];
        __memset_chk();
      }
    }

    v33 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:22];
    v34 = [MEMORY[0x277CBEA90] dataWithBytes:&v52 length:22];
    [v6 setBlobValue:v33];
    [v6 setMaskValue:v34];
    if (_os_feature_enabled_impl())
    {
      [v6 setStartPending:1];
    }

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager addScanRequest:forClient:];
    }

    v35 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 138543618;
      v49 = v6;
      v50 = 2114;
      v51 = v43;
      _os_log_impl(&dword_272965000, v35, OS_LOG_TYPE_DEFAULT, "Adding scan request %{public}@ for client %{public}@", v48, 0x16u);
    }

    v36 = [(WPDScanManager *)v42 scanRequests];
    v37 = [v36 objectForKeyedSubscript:v43];
    [v37 addObject:v6];

    v38 = [(WPDManager *)v42 server];
    v39 = [v38 statsManager];
    [v39 resetActivity:0 forType:{objc_msgSend(v6, "clientType")}];

    [(WPDScanManager *)v42 updateScanner];
    v7 = v43;

    v31 = 0;
  }

  else
  {
    v29 = MEMORY[0x277CCA9B8];
    v56 = *MEMORY[0x277CCA450];
    v57[0] = @"CoreBluetooth is currently powered off";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v31 = [v29 errorWithDomain:@"WPErrorDomain" code:1 userInfo:v30];

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager addScanRequest:forClient:];
    }

    v32 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPDScanManager *)v32 addScanRequest:v6 forClient:self];
    }
  }

  v40 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)removeScanRequest:(id)a3 forClient:(id)a4
{
  v40[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CCA9B8];
  v39 = *MEMORY[0x277CCA450];
  v40[0] = @"CoreBluetooth isn't scanning for this device type";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v10 = [v8 errorWithDomain:@"WPErrorDomain" code:10 userInfo:v9];

  if (!v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager removeScanRequest:forClient:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDScanManager removeScanRequest:forClient:];
      if (v10)
      {
        goto LABEL_21;
      }
    }

    else if (v10)
    {
      goto LABEL_21;
    }

LABEL_26:
    v25 = [(WPDManager *)self server];
    v26 = [v25 statsManager];
    [v26 resetActivity:0 forType:{objc_msgSend(v6, "clientType")}];

    [(WPDScanManager *)self updateScanner];
    goto LABEL_27;
  }

  v11 = [MEMORY[0x277CBEB58] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v29 = self;
  v12 = [(WPDScanManager *)self scanRequests];
  v13 = v7;
  v14 = [v12 objectForKeyedSubscript:v7];

  v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      v18 = 0;
      do
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * v18);
        v20 = [v19 clientType];
        if (v20 == [v6 clientType])
        {
          if (WPLogInitOnce != -1)
          {
            [WPDScanManager removeScanRequest:forClient:];
          }

          v21 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v35 = v6;
            v36 = 2114;
            v37 = v13;
            _os_log_impl(&dword_272965000, v21, OS_LOG_TYPE_DEFAULT, "Removing scan request %{public}@ for client %{public}@", buf, 0x16u);
          }

          [v11 addObject:v19];

          v10 = 0;
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v16);
  }

  self = v29;
  v22 = [(WPDScanManager *)v29 scanRequests];
  v7 = v13;
  v23 = [v22 objectForKeyedSubscript:v13];
  [v23 minusSet:v11];

  if (!v10)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager removeScanRequest:forClient:];
  }

  v24 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = v7;
    _os_log_impl(&dword_272965000, v24, OS_LOG_TYPE_INFO, "WirelessProximity has no scan requests for client %@", buf, 0xCu);
  }

LABEL_27:

  v27 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)getScanRequestsForClient:(id)a3
{
  v4 = a3;
  v5 = [(WPDScanManager *)self scanRequests];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 allObjects];

  return v7;
}

- (void)removeScanRequestsForClient:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager removeScanRequestsForClient:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_272965000, v5, OS_LOG_TYPE_DEFAULT, "Removing all scan requests for client %{public}@", &v8, 0xCu);
  }

  v6 = [(WPDScanManager *)self scanRequests];
  [v6 removeObjectForKey:v4];

  [(WPDScanManager *)self updateScanner];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)assertCBDiscoveryScan:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v3)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager assertCBDiscoveryScan:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDScanManager assertCBDiscoveryScan:];
    }

    v5 = [(WPDScanManager *)v4 cbDiscoveryAsserter];

    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBE010]);
      [(WPDScanManager *)v4 setCbDiscoveryAsserter:v6];
    }

    v7 = [(WPDScanManager *)v4 cbDiscoveryAsserter];
    [v7 activateAssertionWithFlags:1 completion:&__block_literal_global_224_0];
  }

  else
  {
    v8 = [(WPDScanManager *)v4 cbDiscoveryAsserter];

    if (v8)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager assertCBDiscoveryScan:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPDScanManager assertCBDiscoveryScan:];
      }

      v9 = [(WPDScanManager *)v4 cbDiscoveryAsserter];
      [v9 invalidate];

      [(WPDScanManager *)v4 setCbDiscoveryAsserter:0];
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager assertCBDiscoveryScan:];
      }

      v10 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_272965000, v10, OS_LOG_TYPE_INFO, "assertCBDiscoveryScan de-asserted", v11, 2u);
      }
    }
  }

  objc_sync_exit(v4);
}

void __40__WPDScanManager_assertCBDiscoveryScan___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (WPLogInitOnce != -1)
    {
      __40__WPDScanManager_assertCBDiscoveryScan___block_invoke_cold_1();
    }

    v3 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __40__WPDScanManager_assertCBDiscoveryScan___block_invoke_cold_2(v3);
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      __40__WPDScanManager_assertCBDiscoveryScan___block_invoke_cold_3();
    }

    v4 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_INFO, "assertCBDiscoveryScan asserted", v5, 2u);
    }
  }
}

void __35__WPDScanManager_isScannerTestMode__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 server];
  LODWORD(v7) = [v9 isClientTestMode:v8];

  if (v7)
  {
    v10 = [v11 count];

    if (v10)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
  }
}

- (BOOL)heySiriScanActive:(BOOL)a3
{
  v3 = a3;
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [(WPDScanManager *)self scanRequests];
  v23 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v23)
  {
    v6 = *v31;
    v24 = v5;
    v22 = *v31;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = [(WPDScanManager *)self scanRequests];
        v10 = [v9 objectForKeyedSubscript:v8];

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v27;
LABEL_8:
          v15 = 0;
          while (1)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            if ([*(*(&v26 + 1) + 8 * v15) clientType] == 8)
            {
              if (!v3)
              {
                break;
              }

              v16 = [(WPDManager *)self server];
              v17 = [v16 isClientTestMode:v8];

              if (v17)
              {
                break;
              }
            }

            if (v13 == ++v15)
            {
              v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v13)
              {
                goto LABEL_8;
              }

              goto LABEL_16;
            }
          }

          if ([(WPDManager *)self isScanAllowlistedForType:8])
          {
            v18 = 1;
            goto LABEL_26;
          }

          if (WPLogInitOnce != -1)
          {
            [WPDScanManager heySiriScanActive:];
          }

          v19 = WiProxLog;
          v18 = 0;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_272965000, v19, OS_LOG_TYPE_DEFAULT, "WPClientHeySiri scan is denylisted or not allowlisted", buf, 2u);
            goto LABEL_25;
          }

          goto LABEL_26;
        }

LABEL_16:

        v5 = v24;
        v6 = v22;
      }

      v23 = [v24 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:
  v18 = 0;
LABEL_26:
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager heySiriScanActive:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDScanManager heySiriScanActive:];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)reconcileScanRule:(id)a3 withRule:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBDE00]];
  v8 = [v7 integerValue];

  if (v8 == 18)
  {
    v9 = MEMORY[0x277CBEB58];
    v10 = [v5 allKeys];
    v11 = [v9 setWithArray:v10];

    v12 = MEMORY[0x277CBEB98];
    v13 = [v6 allKeys];
    v14 = [v12 setWithArray:v13];
    [v11 unionSet:v14];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__WPDScanManager_reconcileScanRule_withRule___block_invoke_255;
    v15[3] = &unk_279E595F0;
    v16 = v5;
    v17 = v6;
    v18 = 18;
    [v11 enumerateObjectsUsingBlock:v15];
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager reconcileScanRule:withRule:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDScanManager reconcileScanRule:withRule:];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager reconcileScanRule:withRule:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDScanManager reconcileScanRule:withRule:];
    }
  }
}

void __45__WPDScanManager_reconcileScanRule_withRule___block_invoke_255(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (*MEMORY[0x277CBDDD8] == v4)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v4];
    if (v7)
    {
      v8 = v7;
      v9 = [*(a1 + 40) objectForKeyedSubscript:v5];

      if (v9)
      {
        v10 = MEMORY[0x277CCABB0];
        v11 = [*(a1 + 32) objectForKeyedSubscript:v5];
        v12 = [v11 BOOLValue];
        if (v12)
        {
          v13 = 1;
        }

        else
        {
          v2 = [*(a1 + 40) objectForKeyedSubscript:v5];
          v13 = [v2 BOOLValue];
        }

        v27 = [v10 numberWithInt:v13];
        [*(a1 + 32) setObject:v27 forKeyedSubscript:v5];

        if ((v12 & 1) == 0)
        {
        }

        goto LABEL_29;
      }
    }

    goto LABEL_16;
  }

  if (*MEMORY[0x277CBDDF8] == v4)
  {
    v14 = [*(a1 + 32) objectForKeyedSubscript:v4];
    if (v14)
    {
      v15 = v14;
      v16 = [*(a1 + 40) objectForKeyedSubscript:v5];

      if (v16)
      {
        v17 = MEMORY[0x277CCABB0];
        v18 = [*(a1 + 32) objectForKeyedSubscript:v5];
        v19 = [v18 intValue];

        v20 = [*(a1 + 40) objectForKeyedSubscript:v5];
        v21 = [v20 intValue];

        if (v19 >= v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = v19;
        }

        v23 = [v17 numberWithInt:v22];
LABEL_20:
        v11 = v23;
        [*(a1 + 32) setObject:v23 forKeyedSubscript:v5];
LABEL_29:

        goto LABEL_30;
      }
    }

LABEL_16:
    v24 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (v24)
    {

      goto LABEL_30;
    }

    v25 = [*(a1 + 40) objectForKeyedSubscript:v5];

    if (!v25)
    {
      goto LABEL_30;
    }

    v23 = [*(a1 + 40) objectForKeyedSubscript:v5];
    goto LABEL_20;
  }

  if (*MEMORY[0x277CBDE00] != v4)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
    if (v6)
    {
    }

    else
    {
      v26 = [*(a1 + 40) objectForKeyedSubscript:v5];

      if (!v26)
      {
        goto LABEL_30;
      }
    }

    if (WPLogInitOnce != -1)
    {
      __45__WPDScanManager_reconcileScanRule_withRule___block_invoke_255_cold_1();
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __45__WPDScanManager_reconcileScanRule_withRule___block_invoke_255_cold_2(a1);
    }
  }

LABEL_30:
}

- (void)duplicateRulesGuard:(id)a3 forRule:(id)a4
{
  v6 = a4;
  v7 = *MEMORY[0x277CBDE00];
  v8 = a3;
  v9 = [v6 objectForKeyedSubscript:v7];
  v10 = [v9 integerValue];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__WPDScanManager_duplicateRulesGuard_forRule___block_invoke;
  v12[3] = &unk_279E59618;
  v14 = v10;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v8 enumerateObjectsUsingBlock:v12];
}

void __46__WPDScanManager_duplicateRulesGuard_forRule___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBDE00]];
  v7 = [v6 integerValue];
  v8 = *(a1 + 48);

  if (v7 == v8)
  {
    [*(a1 + 32) reconcileScanRule:v9 withRule:*(a1 + 40)];
    *a4 = 1;
  }
}

void __33__WPDScanManager_updateScanRules__block_invoke_2_314(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([v8 allowDuplicates] && objc_msgSend(v8, "clientType") != 18)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = MEMORY[0x277CBEC38];

    *a4 = 1;
  }
}

- (id)ruleHashesFromScanOptions:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBDDE0]];
    if (v5)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x3032000000;
      v12 = __Block_byref_object_copy__2;
      v13 = __Block_byref_object_dispose__2;
      v14 = [MEMORY[0x277CBEB18] array];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __44__WPDScanManager_ruleHashesFromScanOptions___block_invoke;
      v8[3] = &unk_279E59728;
      v8[4] = &v9;
      [v5 enumerateObjectsUsingBlock:v8];
      v6 = [MEMORY[0x277CBEB98] setWithArray:v10[5]];
      _Block_object_dispose(&v9, 8);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __44__WPDScanManager_ruleHashesFromScanOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "hash")}];
  [v2 addObject:v3];
}

- (id)scanRequestHashesFromScanRequests:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__2;
    v11 = __Block_byref_object_dispose__2;
    v12 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__WPDScanManager_scanRequestHashesFromScanRequests___block_invoke;
    v6[3] = &unk_279E59668;
    v6[4] = &v7;
    [v3 enumerateObjectsUsingBlock:v6];
    v4 = [MEMORY[0x277CBEB98] setWithArray:v8[5]];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __52__WPDScanManager_scanRequestHashesFromScanRequests___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "hash")}];
  [v2 addObject:v3];
}

- (BOOL)scanOptionsChanged:(id)a3 ForRequests:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v32 = 0;
  v33[0] = &v32;
  v33[1] = 0x3032000000;
  v33[2] = __Block_byref_object_copy__2;
  v33[3] = __Block_byref_object_dispose__2;
  v34 = [MEMORY[0x277CCAB68] string];
  v8 = objc_autoreleasePoolPush();
  v9 = [(WPDScanManager *)self ruleHashesFromScanOptions:v6];
  v10 = [(WPDScanManager *)self scanRequestHashesFromScanRequests:v7];
  if (!v6 || ([(WPDScanManager *)self scanOptions], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v12))
  {
    v15 = [(WPDScanManager *)self scanOptions];
    *(v36 + 24) = (v6 | v15) != 0;

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager scanOptionsChanged:ForRequests:];
    }

    v16 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v17 = *(v36 + 24);
      *buf = 67109120;
      v40 = v17;
      v18 = "Scan options changed (from/to nil): %d";
LABEL_29:
      _os_log_impl(&dword_272965000, v16, OS_LOG_TYPE_INFO, v18, buf, 8u);
    }
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __49__WPDScanManager_scanOptionsChanged_ForRequests___block_invoke;
    v31[3] = &unk_279E59750;
    v31[4] = self;
    v31[5] = &v35;
    v31[6] = &v32;
    [v6 enumerateKeysAndObjectsUsingBlock:v31];
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager scanOptionsChanged:ForRequests:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDScanManager scanOptionsChanged:v33 ForRequests:?];
    }

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager scanOptionsChanged:ForRequests:];
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v14 = *(v36 + 24);
      *buf = 67109120;
      v40 = v14;
      _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_INFO, "Scan options changed (options): %d", buf, 8u);
    }

    if (*(v36 + 24) == 1)
    {
      *(v36 + 24) = 1;
    }

    else
    {
      v19 = [(WPDScanManager *)self scanRequestHashes];
      v20 = [v10 isEqualToSet:v19];
      *(v36 + 24) = v20 ^ 1;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager scanOptionsChanged:ForRequests:];
    }

    v21 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v22 = *(v36 + 24);
      *buf = 67109120;
      v40 = v22;
      _os_log_impl(&dword_272965000, v21, OS_LOG_TYPE_INFO, "Scan options changed (requests): %d", buf, 8u);
    }

    if (*(v36 + 24) == 1)
    {
      *(v36 + 24) = 1;
    }

    else
    {
      v23 = [(WPDScanManager *)self scanRuleHashes];
      v24 = [v9 isEqualToSet:v23];
      *(v36 + 24) = v24 ^ 1;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager scanOptionsChanged:ForRequests:];
    }

    v16 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v25 = *(v36 + 24);
      *buf = 67109120;
      v40 = v25;
      v18 = "Scan options changed (rules): %d";
      goto LABEL_29;
    }
  }

  if (*(v36 + 24) == 1)
  {
    [(WPDScanManager *)self setScanOptions:v6];
    [(WPDScanManager *)self setScanRequestHashes:v10];
    [(WPDScanManager *)self setScanRuleHashes:v9];
  }

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager scanOptionsChanged:ForRequests:];
  }

  v26 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(v36 + 24);
    *buf = 67109120;
    v40 = v27;
    _os_log_impl(&dword_272965000, v26, OS_LOG_TYPE_DEFAULT, "Scan options changed: %d", buf, 8u);
  }

  objc_autoreleasePoolPop(v8);
  v28 = *(v36 + 24);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v35, 8);
  v29 = *MEMORY[0x277D85DE8];
  return v28 & 1;
}

void __49__WPDScanManager_scanOptionsChanged_ForRequests___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  if (*MEMORY[0x277CBDDE0] != v12 && *MEMORY[0x277CBDEF8] != v12)
  {
    v9 = *(*(a1 + 40) + 8);
    if (*(v9 + 24) == 1)
    {
      *(v9 + 24) = 1;
    }

    else
    {
      v10 = [*(a1 + 32) scanOptions];
      v11 = [v10 objectForKeyedSubscript:v12];
      *(*(*(a1 + 40) + 8) + 24) = v11 != v7;
    }

    *a4 = *(*(*(a1 + 40) + 8) + 24);
    [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"Scan options %@ => %@ changed: %d\n", v12, v7, *(*(*(a1 + 40) + 8) + 24)];
  }
}

- (void)logScanRequests:(id)a3 method:(BOOL)a4 window:(int64_t)a5 interval:(int64_t)a6
{
  v19 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v8 = @"Actively";
  }

  else
  {
    v8 = @"Passively";
  }

  v9 = MEMORY[0x277CCAB68];
  v10 = a3;
  v11 = [v9 stringWithFormat:@"%@ scanning for devices of types: ", v8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__WPDScanManager_logScanRequests_method_window_interval___block_invoke;
  v15[3] = &unk_279E59778;
  v12 = v11;
  v16 = v12;
  [v10 enumerateObjectsUsingBlock:v15];

  [v12 appendFormat:@"(Window: %ld/Interval: %ld)", a5, a6];
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager logScanRequests:method:window:interval:];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v12;
    _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)logScanTypes:(id)a3 method:(BOOL)a4 window:(int64_t)a5 interval:(int64_t)a6
{
  v19 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v8 = @"Actively";
  }

  else
  {
    v8 = @"Passively";
  }

  v9 = MEMORY[0x277CCAB68];
  v10 = a3;
  v11 = [v9 stringWithFormat:@"%@ scanning for devices of types: ", v8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__WPDScanManager_logScanTypes_method_window_interval___block_invoke;
  v15[3] = &unk_279E597A0;
  v12 = v11;
  v16 = v12;
  [v10 enumerateIndexesUsingBlock:v15];

  [v12 appendFormat:@"(Window: %ld/Interval: %ld)", a5, a6];
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager logScanTypes:method:window:interval:];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v12;
    _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)clearDuplicateFilterCache:(id)a3 forClient:(id)a4
{
  v35[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CCA9B8];
  v34 = *MEMORY[0x277CCA450];
  v35[0] = @"CoreBluetooth isn't scanning for this device type";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v10 = [v8 errorWithDomain:@"WPErrorDomain" code:10 userInfo:v9];

  if (v6)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [(WPDScanManager *)self scanRequests];
    v12 = [v11 objectForKeyedSubscript:v7];

    v13 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v27 + 1) + 8 * i) clientType];
          if (v17 == [v6 clientType])
          {

            v10 = 0;
            goto LABEL_12;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager clearDuplicateFilterCache:forClient:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDScanManager removeScanRequest:forClient:];
    }
  }

  if (v10)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager clearDuplicateFilterCache:forClient:];
    }

    v18 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_INFO, "WirelessProximity has no scan requests for client %@", buf, 0xCu);
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager clearDuplicateFilterCache:forClient:];
    }

    v19 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v6 clientType];
      *buf = 67109120;
      LODWORD(v32) = v21;
      _os_log_impl(&dword_272965000, v20, OS_LOG_TYPE_DEFAULT, "About to clearDuplicateFilterCache for type: %d", buf, 8u);
    }

    v22 = [MEMORY[0x277CBEB38] dictionary];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v6, "clientType")}];
    [v22 setObject:v23 forKey:*MEMORY[0x277CBDDA0]];

    v24 = [(WPDScanManager *)self centralManager];
    [v24 clearDuplicateFilterCache:v22];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)clearExistingConnections
{
  v3 = [(WPDScanManager *)self connectionsInProgress];
  [v3 removeAllObjects];

  v4 = [(WPDScanManager *)self peripheralConnections];
  [v4 removeAllObjects];

  v6 = [(WPDManager *)self server];
  v5 = [v6 getAllClients];
  [v5 enumerateObjectsUsingBlock:&__block_literal_global_384_0];
}

void __42__WPDScanManager_clearExistingConnections__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 resetConnection];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        __42__WPDScanManager_clearExistingConnections__block_invoke_cold_1();
      }

      v3 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        __42__WPDScanManager_clearExistingConnections__block_invoke_cold_2(v3);
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      __42__WPDScanManager_clearExistingConnections__block_invoke_cold_3();
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __42__WPDScanManager_clearExistingConnections__block_invoke_cold_4();
    }
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v3.receiver = self;
  v3.super_class = WPDScanManager;
  [(WPDManager *)&v3 cbManagerDidUpdateState:a3];
}

- (void)update
{
  v28 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager update];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v23 = 67109376;
    *v24 = [(WPDManager *)self state];
    *&v24[4] = 1024;
    *&v24[6] = [(WPDManager *)self restricted];
    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, "Scanner Central manager update with state: %d restricted: %d", &v23, 0xEu);
  }

  v5 = [(WPDManager *)self state];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager update];
      }

      v14 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v16 = [(WPDScanManager *)self centralManager];
        v17 = [v16 state];
        v18 = [(WPDScanManager *)self connectionsInProgress];
        v19 = [(WPDScanManager *)self peripheralConnections];
        v23 = 134218498;
        *v24 = v17;
        *&v24[8] = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = v19;
        _os_log_impl(&dword_272965000, v15, OS_LOG_TYPE_DEFAULT, "Scanner Central manager is unknown, powered off, unauthorized or not supported (%ld) - reset connection in progress %@ and peripheral connections %@", &v23, 0x20u);
      }

      goto LABEL_27;
    }

    if (v5 == 3)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager update];
      }

      v10 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [(WPDManager *)self restricted];
        v23 = 67109120;
        *v24 = v12;
        _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "Scanner Central manager is powered on, restricted: %d", &v23, 8u);
      }

      [(WPDScanManager *)self updateScanner];
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager update];
      }

      v6 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = [(WPDScanManager *)self connectionsInProgress];
        v9 = [(WPDScanManager *)self peripheralConnections];
        v23 = 138412546;
        *v24 = v8;
        *&v24[8] = 2112;
        v25 = v9;
        _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "Scanner Central manager is resetting - reset connection in progress %@ and peripheral connections %@", &v23, 0x16u);
      }

LABEL_27:
      [(WPDScanManager *)self clearExistingConnections];
      v20 = [(WPDManager *)self server];
      v21 = [v20 statsManager];
      [v21 stopActivity:0];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager update];
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "Scanner Central manager state is unknown", &v23, 2u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v69 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
  }

  v14 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDScanManager centralManager:v14 didDiscoverPeripheral:v11 advertisementData:v13 RSSI:?];
  }

  v15 = [(WPDScanManager *)self scanRequests];
  v16 = [(WPDScanManager *)self currentScanners];
  v52 = self;
  v17 = [(WPDScanManager *)self spyScanClients];
  v18 = [v12 objectForKeyedSubscript:*MEMORY[0x277CBDD10]];
  v19 = [v18 bytes];
  v20 = [v18 length];
  if (v20 < 2 || *v19 != 76 || v19[1])
  {
    goto LABEL_30;
  }

  v21 = v20;
  v46 = v12;
  v47 = v11;
  v48 = v10;
  v51 = [MEMORY[0x277CBEB38] dictionary];
  if (v21 < 4)
  {
    goto LABEL_26;
  }

  v23 = &v19[v21];
  v24 = v19 + 2;
  *&v22 = 134218242;
  v45 = v22;
  v49 = &v19[v21];
  v50 = v19;
  while (1)
  {
    v25 = *v24;
    v26 = v24 + 2;
    v27 = (v24[1] & 0x1F);
    v28 = v23 - (v24 + 2);
    if (v28 < v27)
    {
      break;
    }

    v29 = &v27[v26];
    if ((v25 - 28) <= 0xE4u)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
      }

      v30 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        *buf = v45;
        v64 = v25;
        v65 = 2112;
        v66 = v18;
        _os_log_debug_impl(&dword_272965000, v30, OS_LOG_TYPE_DEBUG, "Unsupported payload type %ld, data %@", buf, 0x16u);
      }

      goto LABEL_20;
    }

LABEL_18:
    if ([v16 containsIndex:{*v24, v45}])
    {
      [MEMORY[0x277CBEB28] dataWithBytes:v50 length:2];
      v31 = v17;
      v32 = v16;
      v33 = v15;
      v35 = v34 = v13;
      [v35 appendBytes:v24 length:v27 + 2];
      v36 = [MEMORY[0x277CBEA90] dataWithData:v35];
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v25];
      [v51 setObject:v36 forKey:v37];

      v13 = v34;
      v15 = v33;
      v16 = v32;
      v17 = v31;
      v23 = v49;
    }

LABEL_20:
    v24 = v29;
    if (v23 - v29 <= 1)
    {
      goto LABEL_26;
    }
  }

  if (v25 == 4)
  {
    v29 = &v26[v28];
    v27 = (v23 - (v24 + 2));
    goto LABEL_18;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
  }

  v38 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    v64 = v25;
    v65 = 2048;
    v66 = v27;
    v67 = 2112;
    v68 = v18;
    _os_log_error_impl(&dword_272965000, v38, OS_LOG_TYPE_ERROR, "Bad payload type %ld length %zu, data %@", buf, 0x20u);
  }

LABEL_26:
  v11 = v47;
  v39 = [v47 name];
  if (v39)
  {
    v40 = [v47 name];
  }

  else
  {
    v40 = @"Unknown";
  }

  v12 = v46;

  v41 = [v47 identifier];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_427;
  v53[3] = &unk_279E59810;
  v54 = v15;
  v55 = v41;
  v56 = v46;
  v57 = v52;
  v58 = v47;
  v59 = v13;
  v60 = v18;
  v61 = v40;
  v62 = v17;
  v42 = v40;
  v43 = v41;
  [v51 enumerateKeysAndObjectsUsingBlock:v53];

  v10 = v48;
LABEL_30:

  v44 = *MEMORY[0x277D85DE8];
}

void __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_427(uint64_t a1, void *a2, void *a3)
{
  v78[12] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_2;
  v68[3] = &unk_279E597E8;
  v8 = v5;
  v69 = v8;
  v70 = *(a1 + 40);
  v9 = v6;
  v71 = v9;
  v60 = [v7 keysOfEntriesPassingTest:v68];
  v10 = *MEMORY[0x277CBDD30];
  v11 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDD30]];
  v12 = *MEMORY[0x277CBDD38];
  v13 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDD38]];
  v14 = *MEMORY[0x277CBDD28];
  v59 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDD28]];
  v15 = *MEMORY[0x277CBDD18];
  v58 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDD18]];
  v16 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(a1 + 48)];
  v17 = v16;
  v51 = v11;
  if (v11)
  {
    [v16 removeObjectForKey:v10];
  }

  if (v13)
  {
    [v17 removeObjectForKey:v12];
  }

  if (v59)
  {
    [v17 removeObjectForKey:v14];
  }

  if (v58)
  {
    [v17 removeObjectForKey:v15];
  }

  v18 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDCE0]];
  v19 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDCD8]];
  v57 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDD20]];
  v56 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDD40]];
  if ([v8 integerValue] == 15 || objc_msgSend(v8, "integerValue") == 16 || objc_msgSend(v8, "integerValue") == 7)
  {
    v20 = [*(a1 + 56) centralManager];
    v21 = [v20 sharedPairingAgent];
    v22 = [v21 isPeerPaired:*(a1 + 64)];
  }

  else
  {
    v22 = 0;
  }

  v50 = v13;
  v55 = [*(a1 + 48) objectForKeyedSubscript:@"kCBAdvDataProximityPairingStatusDecrypted"];
  v54 = [*(a1 + 48) objectForKeyedSubscript:@"kCBAdvDataAccessoryStatusDecrypted"];
  v77[0] = @"kDeviceAdvertisingPacket";
  v77[1] = @"kDeviceAdvertisingData";
  v49 = v17;
  v78[0] = v17;
  v78[1] = v9;
  v23 = &unk_288201A00;
  if (v19)
  {
    v23 = v19;
  }

  v78[2] = v23;
  v77[2] = @"kDeviceChannel";
  v77[3] = @"kDeviceAddress";
  v24 = v18;
  if (!v18)
  {
    v24 = [MEMORY[0x277CBEA90] data];
  }

  v52 = v9;
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v78[3] = v24;
  v78[4] = v25;
  v77[4] = @"kDeviceRSSI";
  v77[5] = @"kDevicePeripheralUUID";
  v78[5] = *(a1 + 40);
  v78[6] = v26;
  v77[6] = @"kDeviceManufacturerData";
  v77[7] = @"kDeviceName";
  v78[7] = *(a1 + 88);
  v78[8] = v8;
  v53 = v8;
  v77[8] = @"kDeviceType";
  v77[9] = @"kDevicePaired";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:v22];
  v78[9] = v27;
  v77[10] = @"kDeviceTime";
  v28 = v56;
  if (!v56)
  {
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  }

  v77[11] = @"kDeviceDataSaturated";
  v29 = MEMORY[0x277CBEC28];
  if (v57)
  {
    v29 = v57;
  }

  v78[10] = v28;
  v78[11] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:12];
  v31 = [v30 mutableCopy];

  if (!v56)
  {
  }

  if (!v18)
  {
  }

  if (v55)
  {
    [v31 setObject:v55 forKeyedSubscript:@"kDeviceProxPairingStatusDecrypted"];
  }

  v47 = v19;
  v48 = v18;
  if (v54)
  {
    [v31 setObject:v54 forKeyedSubscript:{@"kDeviceAccessoryStatusDecrypted", v19, v18, v17}];
  }

  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_441;
  v66[3] = &unk_279E59420;
  v66[4] = *(a1 + 56);
  v32 = v31;
  v67 = v32;
  [v60 enumerateObjectsUsingBlock:v66];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v33 = *(a1 + 96);
  v34 = [v33 countByEnumeratingWithState:&v62 objects:v76 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v63;
    do
    {
      v37 = 0;
      do
      {
        if (*v63 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v62 + 1) + 8 * v37);
        v39 = [*(a1 + 56) server];
        v40 = [v39 getClientForUUID:v38];

        if (v40)
        {
          v41 = [v32 copy];
          [v40 anyDiscoveredDevice:v41];
        }

        else
        {
          if (WPLogInitOnce != -1)
          {
            __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_427_cold_1();
          }

          v42 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
          {
            v43 = *(a1 + 56);
            log = v42;
            v44 = [v43 server];
            v45 = [v44 getAllClients];
            *buf = 138412546;
            v73 = v38;
            v74 = 2112;
            v75 = v45;
            _os_log_error_impl(&dword_272965000, log, OS_LOG_TYPE_ERROR, "Spy client %@ doesn't exist in current all clients: %@", buf, 0x16u);
          }
        }

        ++v37;
      }

      while (v35 != v37);
      v35 = [v33 countByEnumeratingWithState:&v62 objects:v76 count:16];
    }

    while (v35);
  }

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v27;
    *&v6 = 138412546;
    v25 = v6;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v11 = [v10 clientType];
        if ([*(a1 + 32) integerValue] == v11)
        {
          v12 = [v10 peers];
          if (![v12 count])
          {

LABEL_22:
            v22 = 1;
            goto LABEL_23;
          }

          v13 = [v10 peers];
          v14 = [v13 containsObject:*(a1 + 40)];

          if (v14)
          {
            goto LABEL_22;
          }

          if (WPLogInitOnce != -1)
          {
            __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_2_cold_1();
          }

          v15 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
          {
            v17 = *(a1 + 40);
            v16 = *(a1 + 48);
            *buf = v25;
            v31 = v16;
            v32 = 2112;
            v33 = v17;
            _os_log_impl(&dword_272965000, v15, OS_LOG_TYPE_INFO, "Ignoring scan packet %@ because it's peer %@ is not being tracked", buf, 0x16u);
          }

          if ([v10 clientType] == 16)
          {
            if (WPLogInitOnce != -1)
            {
              __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_2_cold_2();
            }

            v18 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
            {
              v19 = v18;
              v20 = [v10 peers];
              v21 = *(a1 + 40);
              *buf = v25;
              v31 = v20;
              v32 = 2112;
              v33 = v21;
              _os_log_impl(&dword_272965000, v19, OS_LOG_TYPE_INFO, "NearByInfo scanning for peers %@ but found %@", buf, 0x16u);
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
LABEL_23:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

void __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_441(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) server];
  v5 = [v4 getClientForUUID:v3];

  if (v5)
  {
    v6 = [*(a1 + 40) copy];
    [v5 discoveredDevice:v6];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_441_cold_1();
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_441_cold_2();
    }
  }
}

- (void)centralManager:(id)a3 didDiscoverMultiplePeripherals:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didDiscoverMultiplePeripherals:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDScanManager centralManager:v7 didDiscoverMultiplePeripherals:?];
  }
}

- (void)centralManager:(id)a3 didFailToScanWithError:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didFailToScanWithError:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "WPDScanManager UNEXPECTED didFailToScanWithError %{public}@", &v10, 0xCu);
  }

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didFailToScanWithError:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "WPDScanManager scan failed to start - TODO add proper cleanup", &v10, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (int64_t)zonesAvailableForType:(unsigned __int8)a3
{
  if (a3 - 9) < 8u && ((0xCBu >> (a3 - 9)))
  {
    return 15;
  }

  if (WPLogInitOnce != -1)
  {
    +[WPDScanManager zonesAvailableForType:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    +[WPDScanManager zonesAvailableForType:];
  }

  return 0;
}

- (id)addPeerTrackingRequest:(id)a3 forClient:(id)a4
{
  v45[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 clientType];
  if ([(WPDManager *)self state]== 3)
  {
    v9 = [(WPDScanManager *)self peerRequests];
    v10 = [v9 objectForKeyedSubscript:v7];

    if (!v10)
    {
      v10 = [MEMORY[0x277CBEB58] set];
    }

    if ([v10 containsObject:v6])
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager addPeerTrackingRequest:forClient:];
      }

      v11 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        v12 = v11;
        v13 = [v6 peerUUID];
        *buf = 138412290;
        v39 = v13;
        _os_log_impl(&dword_272965000, v12, OS_LOG_TYPE_INFO, "Peer %@ is already being tracked", buf, 0xCu);
      }

LABEL_24:
      v15 = 0;
      goto LABEL_34;
    }

    v16 = [WPDScanManager zonesAvailableForType:v8];
    if ([v10 count] >= v16)
    {
      v24 = [(WPDManager *)self server];
      v25 = [v24 getClientForUUID:v7];
      [v25 peerTrackingFull];

      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Peer tracking maxed out for client %ld (%lu slots)", objc_msgSend(v6, "clientType"), objc_msgSend(v10, "count")];
      v27 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA450];
      v37 = v26;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v15 = [v27 errorWithDomain:@"WPErrorDomain" code:14 userInfo:v28];

      if (WPLogInitOnce != -1)
      {
        [WPDScanManager addPeerTrackingRequest:forClient:];
      }

      v29 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = v26;
        _os_log_impl(&dword_272965000, v29, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    else
    {
      [v10 addObject:v6];
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager addPeerTrackingRequest:forClient:];
      }

      v17 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        v18 = v17;
        *buf = 134218496;
        v39 = [v6 clientType];
        v40 = 2048;
        v41 = [v10 count];
        v42 = 2048;
        v43 = v16;
        _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_INFO, "Adding peer tracking request for client %ld. Using (%lu/%lu) tracking slots", buf, 0x20u);
      }

      v19 = [v6 peerUUID];
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v8];
      v21 = [(WPDScanManager *)self startTrackingPeripheral:v19 ofType:v20];

      if (v21)
      {
        v22 = [(WPDScanManager *)self peerRequests];
        [v22 setObject:v10 forKeyedSubscript:v7];

        if (WPLogInitOnce != -1)
        {
          [WPDScanManager addPeerTrackingRequest:forClient:];
        }

        v23 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          [WPDScanManager addPeerTrackingRequest:v23 forClient:?];
        }

        goto LABEL_24;
      }

      v30 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA450];
      v35 = @"Unknown error";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v15 = [v30 errorWithDomain:@"WPErrorDomain" code:26 userInfo:v31];

      if (WPLogInitOnce != -1)
      {
        [WPDScanManager addPeerTrackingRequest:forClient:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDScanManager addPeerTrackingRequest:forClient:];
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager addPeerTrackingRequest:forClient:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDScanManager addPeerTrackingRequest:forClient:];
    }

    v14 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA450];
    v45[0] = @"Trying to start tracking when central manager is not powered on";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v15 = [v14 errorWithDomain:@"WPErrorDomain" code:1 userInfo:v10];
  }

LABEL_34:

  v32 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)removePeerTrackingRequest:(id)a3 checkZonesAvailable:(BOOL)a4 forClient:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager removePeerTrackingRequest:checkZonesAvailable:forClient:];
  }

  v10 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 67109120;
    v28 = [(WPDManager *)self state];
    _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "Remove peer tracking when central state is %d", buf, 8u);
  }

  v12 = [v8 clientType];
  v13 = [v8 peerUUID];
  v14 = [(WPDScanManager *)self peerRequests];
  v15 = [v14 objectForKeyedSubscript:v9];

  if (![v15 containsObject:v8])
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't find peer tracking request for peer %@ of type %ld (internal error)", v13, v12];
    v21 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26 = v18;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v20 = [v21 errorWithDomain:@"WPErrorDomain" code:16 userInfo:v22];

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager removePeerTrackingRequest:checkZonesAvailable:forClient:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDScanManager removePeerTrackingRequest:checkZonesAvailable:forClient:];
    }

    goto LABEL_17;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager removePeerTrackingRequest:checkZonesAvailable:forClient:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDScanManager removePeerTrackingRequest:checkZonesAvailable:forClient:];
  }

  [v15 removeObject:v8];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v12];
  [(WPDScanManager *)self stopTrackingPeripheral:v13 ofType:v16];

  if (a4)
  {
    v17 = [WPDScanManager zonesAvailableForType:v12];
    if ([v15 count] < v17)
    {
      v18 = [(WPDManager *)self server];
      v19 = [v18 getClientForUUID:v9];
      [v19 peerTrackingAvailable];

      v20 = 0;
LABEL_17:

      goto LABEL_19;
    }
  }

  v20 = 0;
LABEL_19:

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)removeAllPeerTrackingRequestsForClient:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WPDScanManager *)self peerRequests];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager removeAllPeerTrackingRequestsForClient:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "Removing all peer tracking requests for client %{public}@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__WPDScanManager_removeAllPeerTrackingRequestsForClient___block_invoke_499;
  v10[3] = &unk_279E59838;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [v6 enumerateObjectsUsingBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)retrievePeripheralWithUUID:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(WPDManager *)self state]== 3)
  {
    v5 = [(WPDScanManager *)self centralManager];
    v12[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v7 = [v5 retrievePeripheralsWithIdentifiers:v6];

    v8 = [v7 firstObject];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager retrievePeripheralWithUUID:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDScanManager retrievePeripheralWithUUID:v9];
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)centralManager:(id)a3 didLosePeripheral:(id)a4 forType:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [a4 identifier];
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didLosePeripheral:forType:];
  }

  v9 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    *buf = 138412546;
    v20 = v8;
    v21 = 2048;
    v22 = [v7 integerValue];
    _os_log_impl(&dword_272965000, v10, OS_LOG_TYPE_INFO, "Lost a peer %@ of type %ld", buf, 0x16u);
  }

  v11 = [(WPDScanManager *)self peerRequests];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__WPDScanManager_centralManager_didLosePeripheral_forType___block_invoke_505;
  v15[3] = &unk_279E59888;
  v16 = v8;
  v17 = v7;
  v18 = self;
  v12 = v7;
  v13 = v8;
  [v11 enumerateKeysAndObjectsUsingBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __59__WPDScanManager_centralManager_didLosePeripheral_forType___block_invoke_505(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__WPDScanManager_centralManager_didLosePeripheral_forType___block_invoke_2;
  v9[3] = &unk_279E59860;
  v10 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  [a3 enumerateObjectsUsingBlock:v9];
}

void __59__WPDScanManager_centralManager_didLosePeripheral_forType___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 peerUUID];
  if ([v3 isEqual:*(a1 + 32)])
  {
    v4 = [v9 clientType];
    v5 = [*(a1 + 40) unsignedCharValue];

    if (v4 != v5)
    {
      goto LABEL_5;
    }

    v6 = [*(a1 + 48) server];
    v3 = [v6 getClientForUUID:*(a1 + 56)];

    v7 = [v9 peerUUID];
    [v3 lostPeer:v7 ofType:{objc_msgSend(*(a1 + 40), "integerValue")}];

    v8 = [*(a1 + 48) removePeerTrackingRequest:v9 checkZonesAvailable:1 forClient:*(a1 + 56)];
  }

LABEL_5:
}

- (void)centralManager:(id)a3 didFindPeripheral:(id)a4 forType:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [a4 identifier];
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didFindPeripheral:forType:];
  }

  v9 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 138412546;
    v20 = v8;
    v21 = 2048;
    v22 = [v7 integerValue];
    _os_log_impl(&dword_272965000, v10, OS_LOG_TYPE_DEFAULT, "Found a peer %@ of type %ld", buf, 0x16u);
  }

  v11 = [(WPDScanManager *)self peerRequests];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__WPDScanManager_centralManager_didFindPeripheral_forType___block_invoke_508;
  v15[3] = &unk_279E59888;
  v16 = v8;
  v17 = v7;
  v18 = self;
  v12 = v7;
  v13 = v8;
  [v11 enumerateKeysAndObjectsUsingBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __59__WPDScanManager_centralManager_didFindPeripheral_forType___block_invoke_508(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__WPDScanManager_centralManager_didFindPeripheral_forType___block_invoke_2;
  v9[3] = &unk_279E59860;
  v10 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  [a3 enumerateObjectsUsingBlock:v9];
}

void __59__WPDScanManager_centralManager_didFindPeripheral_forType___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 peerUUID];
  if ([v3 isEqual:*(a1 + 32)])
  {
    v4 = [v8 clientType];
    v5 = [*(a1 + 40) unsignedCharValue];

    if (v4 != v5)
    {
      goto LABEL_5;
    }

    v6 = [*(a1 + 48) server];
    v3 = [v6 getClientForUUID:*(a1 + 56)];

    v7 = [v8 peerUUID];
    [v3 foundPeer:v7 ofType:{objc_msgSend(*(a1 + 40), "integerValue")}];
  }

LABEL_5:
}

- (id)connectToPeripheral:(id)a3 fromClient:(id)a4 withOptions:(id)a5
{
  v47[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(WPDManager *)self state]== 3)
  {
    v11 = [(WPDScanManager *)self connectionsInProgress];
    v12 = [v11 objectForKeyedSubscript:v8];

    if (v12 && [v12 count])
    {
      if ([v12 containsObject:v9])
      {
        if (WPLogInitOnce != -1)
        {
          [WPDScanManager connectToPeripheral:fromClient:withOptions:];
        }

        v13 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v8;
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "Wireless Proximity is already connecting to peripheral %@ for client %@ - ignore the processing", buf, 0x16u);
        }

        v14 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v18 = [(WPDManager *)self server];
      v19 = [v18 getClientForUUID:v9];
      v20 = [v19 clientTypeString];

      v14 = buf;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v43 = __Block_byref_object_copy__2;
      v44 = __Block_byref_object_dispose__2;
      v45 = 0;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __61__WPDScanManager_connectToPeripheral_fromClient_withOptions___block_invoke_514;
      v37[3] = &unk_279E598B0;
      v37[4] = self;
      v21 = v20;
      v38 = v21;
      v39 = buf;
      [v12 enumerateObjectsUsingBlock:v37];
      v22 = *(*&buf[8] + 40);
      if (v22)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDScanManager connectToPeripheral:fromClient:withOptions:];
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPDScanManager connectToPeripheral:fromClient:withOptions:];
        }

        v14 = *(*&buf[8] + 40);
      }

      _Block_object_dispose(buf, 8);
      if (v22)
      {
        goto LABEL_30;
      }
    }

    v23 = [(WPDScanManager *)self retrievePeripheralWithUUID:v8];
    if (v23)
    {
      v24 = [(WPDScanManager *)self centralManager];
      [v24 connectPeripheral:v23 options:v10];

      v25 = [(WPDScanManager *)self connectionsInProgress];
      v26 = [v25 objectForKeyedSubscript:v8];
      v27 = v26 == 0;

      if (v27)
      {
        v28 = [MEMORY[0x277CBEB58] set];
        v29 = [(WPDScanManager *)self connectionsInProgress];
        [v29 setObject:v28 forKeyedSubscript:v8];
      }

      v30 = [(WPDScanManager *)self connectionsInProgress];
      v31 = [v30 objectForKeyedSubscript:v8];
      [v31 addObject:v9];

      v32 = [(WPDScanManager *)self peripheralConnections];
      [v32 addObject:v23];

      v14 = 0;
    }

    else
    {
      v33 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277CCA450];
      v41 = @"Wireless Proximity can't retrieve the peripheral specified";
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v14 = [v33 errorWithDomain:@"WPErrorDomain" code:6 userInfo:v34];

      if (WPLogInitOnce != -1)
      {
        [WPDScanManager connectToPeripheral:fromClient:withOptions:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDScanManager connectToPeripheral:fromClient:withOptions:];
      }
    }

    goto LABEL_30;
  }

  v15 = MEMORY[0x277CCA9B8];
  v46 = *MEMORY[0x277CCA450];
  v47[0] = @"CoreBluetooth is currently powered off";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  v14 = [v15 errorWithDomain:@"WPErrorDomain" code:1 userInfo:v16];

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager connectToPeripheral:fromClient:withOptions:];
  }

  v17 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDScanManager connectToPeripheral:v17 fromClient:self withOptions:?];
  }

LABEL_31:

  v35 = *MEMORY[0x277D85DE8];

  return v14;
}

void __61__WPDScanManager_connectToPeripheral_fromClient_withOptions___block_invoke_514(void *a1, void *a2, _BYTE *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 server];
  v8 = [v7 getClientForUUID:v6];

  v9 = [v8 clientTypeString];

  if ([v9 isEqualToString:a1[5]])
  {
    v10 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"Wireless Proximity is already trying to connect for this type";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [v10 errorWithDomain:@"WPErrorDomain" code:18 userInfo:v11];
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a3 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)disconnectFromPeripheral:(id)a3 withSubscribedCharacteristics:(id)a4 forClient:(id)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager disconnectFromPeripheral:withSubscribedCharacteristics:forClient:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v58 = v8;
    v59 = 2114;
    v60 = v9;
    v61 = 2114;
    v62 = v10;
    _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "Disconnect from peripheral: %{public}@, characteristics: %{public}@, for client: %{public}@", buf, 0x20u);
  }

  v12 = [(WPDScanManager *)self retrievePeripheralWithUUID:v8];
  v13 = v12;
  if (v12)
  {
    v38 = self;
    v39 = v10;
    v40 = v8;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = [v12 services];
    v43 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v43)
    {
      v42 = *v50;
      do
      {
        v14 = 0;
        do
        {
          if (*v50 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v44 = v14;
          v15 = *(*(&v49 + 1) + 8 * v14);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v16 = [v15 characteristics];
          v17 = [v16 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v46;
            do
            {
              v20 = 0;
              do
              {
                if (*v46 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v45 + 1) + 8 * v20);
                v22 = [v21 UUID];
                v23 = [v22 UUIDString];
                v24 = [v9 containsObject:v23];

                if (v24)
                {
                  if (WPLogInitOnce != -1)
                  {
                    [WPDScanManager disconnectFromPeripheral:withSubscribedCharacteristics:forClient:];
                  }

                  v25 = WiProxLog;
                  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
                  {
                    v26 = v25;
                    v27 = [v21 UUID];
                    v28 = [v27 UUIDString];
                    *buf = 138543362;
                    v58 = v28;
                    _os_log_impl(&dword_272965000, v26, OS_LOG_TYPE_DEFAULT, "Setting notify value to off for characteristic %{public}@", buf, 0xCu);
                  }

                  [v13 setNotifyValue:0 forCharacteristic:v21];
                }

                ++v20;
              }

              while (v18 != v20);
              v18 = [v16 countByEnumeratingWithState:&v45 objects:v53 count:16];
            }

            while (v18);
          }

          v14 = v44 + 1;
        }

        while (v44 + 1 != v43);
        v43 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v43);
    }

    v29 = [(WPDScanManager *)v38 connectionsInProgress];
    v30 = [v13 identifier];
    [v29 removeObjectForKey:v30];

    v31 = [(WPDScanManager *)v38 peripheralConnections];
    [v31 removeObject:v13];

    v32 = [(WPDScanManager *)v38 centralManager];
    [v32 cancelPeripheralConnection:v13];

    v33 = 0;
    v10 = v39;
    v8 = v40;
  }

  else
  {
    v34 = MEMORY[0x277CCA9B8];
    v55 = *MEMORY[0x277CCA450];
    v56 = @"Wireless Proximity can't retrieve the peripheral specified";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v33 = [v34 errorWithDomain:@"WPErrorDomain" code:6 userInfo:v35];

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager disconnectFromPeripheral:withSubscribedCharacteristics:forClient:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDScanManager disconnectFromPeripheral:withSubscribedCharacteristics:forClient:];
    }
  }

  v36 = *MEMORY[0x277D85DE8];

  return v33;
}

- (void)disconnectFromCentral:(id)a3 forClient:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager disconnectFromCentral:forClient:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "Disconnecting from central %{public}@ for client %{public}@", buf, 0x16u);
  }

  v9 = [(WPDScanManager *)self retrievePeripheralWithUUID:v6];
  if (v9)
  {
    v10 = [(WPDScanManager *)self centralManager];
    v16 = *MEMORY[0x277CBDD68];
    v17 = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v10 cancelPeripheralConnection:v9 options:v11];

    v12 = [(WPDScanManager *)self connectionsInProgress];
    v13 = [v9 identifier];
    [v12 removeObjectForKey:v13];

    v14 = [(WPDScanManager *)self peripheralConnections];
    [v14 removeObject:v9];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didConnectPeripheral:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 name];
    v11 = [v7 identifier];
    *buf = 138543874;
    v24 = v10;
    v25 = 2114;
    v26 = v11;
    v27 = 2048;
    v28 = [v7 role];
    _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "Connected to device (%{public}@) with UUID %{public}@ and role %ld", buf, 0x20u);
  }

  v12 = [(WPDScanManager *)self peripheralConnections];
  [v12 removeObject:v7];

  v13 = [(WPDScanManager *)self connectionsInProgress];
  v14 = [v7 identifier];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didConnectPeripheral:];
  }

  v16 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v15;
    _os_log_impl(&dword_272965000, v16, OS_LOG_TYPE_DEFAULT, "Current Connection clients %@", buf, 0xCu);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541;
  v20[3] = &unk_279E598D8;
  v20[4] = self;
  v21 = v7;
  v22 = v15;
  v17 = v15;
  v18 = v7;
  [v17 enumerateObjectsUsingBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541(id *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (WPLogInitOnce != -1)
  {
    __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_1();
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 138412290;
    v35 = v3;
    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, "connection client uuid %@", &v34, 0xCu);
  }

  v5 = [a1[4] server];
  v6 = [v5 getClientForUUID:v3];

  v7 = a1 + 5;
  v8 = [a1[5] identifier];
  v9 = [v6 connectionForUUID:v8];

  if (v6)
  {
    if (v9)
    {
      if (WPLogInitOnce != -1)
      {
        __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_2();
      }

      v10 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [v6 clientUUID];
        v13 = [*v7 identifier];
        v34 = 138543874;
        v35 = v9;
        v36 = 2114;
        v37 = v12;
        v38 = 2114;
        v39 = v13;
        _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ already exists for client %{public}@ for peripheral %{public}@", &v34, 0x20u);
      }

      v14 = [(WPDConnection *)v9 getPeripheral];
      v15 = v14;
      if (v14)
      {
        v16 = [(WPDConnection *)v14 services];

        if (v16)
        {
          if (WPLogInitOnce != -1)
          {
            __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_3();
          }

          v17 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v34) = 0;
            _os_log_impl(&dword_272965000, v17, OS_LOG_TYPE_DEFAULT, "Services are discovered already", &v34, 2u);
          }

          v18 = [(WPDConnection *)v9 subscribedCharacteristics];
          v19 = [v18 count];

          if (v19)
          {
            if (WPLogInitOnce != -1)
            {
              __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_4();
            }

            v20 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v34) = 0;
              _os_log_impl(&dword_272965000, v20, OS_LOG_TYPE_DEFAULT, "Characteristics are discovered and subscribed", &v34, 2u);
            }

            v21 = [(WPDConnection *)v9 getPeripheralUUID];
            [v6 connectedDevice:v21 withError:0 shouldDiscover:0];

            goto LABEL_50;
          }

          if (WPLogInitOnce != -1)
          {
            __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_5();
          }

          v31 = WiProxLog;
          if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_50;
          }

          LOWORD(v34) = 0;
          v32 = "Peripheral connection exist but characteristic discovery is in progress.. wait";
        }

        else
        {
          if (WPLogInitOnce != -1)
          {
            __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_6();
          }

          v31 = WiProxLog;
          if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_50;
          }

          LOWORD(v34) = 0;
          v32 = "Peripheral connection exist but service discovery is in progress.. wait";
        }

        _os_log_impl(&dword_272965000, v31, OS_LOG_TYPE_DEFAULT, v32, &v34, 2u);
LABEL_50:

        goto LABEL_51;
      }

      if (WPLogInitOnce != -1)
      {
        __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_7();
      }

      v25 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v27 = [v6 clientUUID];
        v28 = [*v7 identifier];
        v34 = 138412802;
        v35 = v9;
        v36 = 2112;
        v37 = v27;
        v38 = 2112;
        v39 = v28;
        _os_log_impl(&dword_272965000, v26, OS_LOG_TYPE_DEFAULT, "Updating connection(%@) for client(%@) with peripheral(%@)", &v34, 0x20u);
      }

      [(WPDConnection *)v9 updateWithPeripheral:*v7];
      v29 = v6;
      v30 = v9;
LABEL_40:
      [v29 createdConnection:v30];
      goto LABEL_50;
    }

    if ([*v7 role] != 1)
    {
      v15 = [[WPDConnection alloc] initWithPeripheral:*v7];
      [(WPDConnection *)v15 setClient:v6];
      v29 = v6;
      v30 = v15;
      goto LABEL_40;
    }

    if (WPLogInitOnce != -1)
    {
      __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_8();
    }

    v24 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&dword_272965000, v24, OS_LOG_TYPE_DEFAULT, "Connected as peripheral, wait for subscribed notification from central", &v34, 2u);
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_9();
    }

    v22 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_10(v3, a1 + 5, v22);
    }

    if ([a1[6] count] == 1)
    {
      v23 = [a1[4] centralManager];
      [v23 cancelPeripheralConnection:a1[5]];
    }
  }

LABEL_51:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didFailToConnectPeripheral:error:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDScanManager centralManager:v11 didFailToConnectPeripheral:v9 error:?];
  }

  v12 = v9;
  v13 = [(WPDScanManager *)self connectionsInProgress];
  v14 = [v12 identifier];
  v15 = [v13 objectForKeyedSubscript:v14];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__WPDScanManager_centralManager_didFailToConnectPeripheral_error___block_invoke_571;
  v21[3] = &unk_279E598D8;
  v21[4] = self;
  v22 = v12;
  v23 = v10;
  v16 = v10;
  v17 = v12;
  [v15 enumerateObjectsUsingBlock:v21];
  v18 = [(WPDScanManager *)self connectionsInProgress];
  v19 = [v17 identifier];
  [v18 removeObjectForKey:v19];

  v20 = [(WPDScanManager *)self peripheralConnections];
  [v20 removeObject:v17];
}

void __66__WPDScanManager_centralManager_didFailToConnectPeripheral_error___block_invoke_571(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 server];
  v7 = [v5 getClientForUUID:v4];

  v6 = [*(a1 + 40) identifier];
  [v7 connectedDevice:v6 withError:*(a1 + 48) shouldDiscover:0];
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = v7;
  v10 = [(WPDScanManager *)self connectionsInProgress];
  v11 = [v9 identifier];
  v12 = [v10 objectForKeyedSubscript:v11];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __63__WPDScanManager_centralManager_didDisconnectPeripheral_error___block_invoke;
  v23[3] = &unk_279E598D8;
  v23[4] = self;
  v13 = v9;
  v24 = v13;
  v14 = v8;
  v25 = v14;
  [v12 enumerateObjectsUsingBlock:v23];
  v15 = [(WPDScanManager *)self connectionsInProgress];
  v16 = [v13 identifier];
  [v15 removeObjectForKey:v16];

  v17 = [(WPDScanManager *)self peripheralConnections];
  [v17 removeObject:v13];

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didDisconnectPeripheral:error:];
  }

  v18 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = [v13 identifier];
    v21 = [v14 localizedDescription];
    *buf = 138543618;
    v27 = v20;
    v28 = 2114;
    v29 = v21;
    _os_log_impl(&dword_272965000, v19, OS_LOG_TYPE_DEFAULT, "Disconnected from peripheral %{public}@ with Error: %{public}@", buf, 0x16u);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __63__WPDScanManager_centralManager_didDisconnectPeripheral_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 server];
  v7 = [v5 getClientForUUID:v4];

  v6 = [*(a1 + 40) identifier];
  [v7 disconnectedPeer:v6 error:*(a1 + 48)];
}

- (void)removePeripheralConnection:(id)a3 forClient:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager removePeripheralConnection:forClient:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "Removing connection to peer %{public}@ for client %{public}@", buf, 0x16u);
  }

  v9 = [(WPDScanManager *)self connectionsInProgress];
  v10 = [v9 objectForKeyedSubscript:v6];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__WPDScanManager_removePeripheralConnection_forClient___block_invoke_576;
  v14[3] = &unk_279E598D8;
  v15 = v7;
  v16 = self;
  v17 = v6;
  v11 = v6;
  v12 = v7;
  [v10 enumerateObjectsUsingBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __55__WPDScanManager_removePeripheralConnection_forClient___block_invoke_576(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isEqual:v3])
  {
    v4 = [*(a1 + 40) connectionsInProgress];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 48)];
    v6 = [v5 count];

    if (v6 == 1)
    {
      v7 = [*(a1 + 40) retrievePeripheralWithUUID:*(a1 + 48)];
      if (v7)
      {
        v8 = [*(a1 + 40) peripheralConnections];
        [v8 removeObject:v7];

        if (WPLogInitOnce != -1)
        {
          __55__WPDScanManager_removePeripheralConnection_forClient___block_invoke_576_cold_2();
        }

        v9 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138543362;
          v21 = v7;
          _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "Removing CBPeripheral object %{public}@", &v20, 0xCu);
        }

        v10 = [*(a1 + 40) centralManager];
        [v10 cancelPeripheralConnection:v7];
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        __55__WPDScanManager_removePeripheralConnection_forClient___block_invoke_576_cold_1();
      }

      v11 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        v14 = v11;
        v15 = [v12 connectionsInProgress];
        v16 = [v15 objectForKeyedSubscript:*(a1 + 48)];
        v20 = 138412546;
        v21 = v13;
        v22 = 2112;
        v23 = v16;
        _os_log_impl(&dword_272965000, v14, OS_LOG_TYPE_DEFAULT, "Don't disconnect because peer %@ has more than one connections %@", &v20, 0x16u);
      }
    }

    v17 = [*(a1 + 40) connectionsInProgress];
    v18 = [v17 objectForKeyedSubscript:*(a1 + 48)];
    [v18 removeObject:v3];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)removePeripheralConnectionsForClient:(id)a3
{
  v4 = a3;
  v5 = [(WPDScanManager *)self connectionsInProgress];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__WPDScanManager_removePeripheralConnectionsForClient___block_invoke;
  v7[3] = &unk_279E59900;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __55__WPDScanManager_removePeripheralConnectionsForClient___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v5 containsObject:*(a1 + 32)])
  {
    [v5 removeObject:*(a1 + 32)];
  }

  if (![v5 count])
  {
    v6 = [*(a1 + 40) connectionsInProgress];
    [v6 removeObjectForKey:v7];
  }
}

- (OS_dispatch_queue)serverQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_serverQueue);

  return WeakRetained;
}

- (void)addScanRequest:(void *)a3 forClient:.cold.3(void *a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  [OUTLINED_FUNCTION_18() clientType];
  [a3 state];
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeScanRequest:forClient:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3(&dword_272965000, v0, v1, "No scan request object was provided for client %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)assertCBDiscoveryScan:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)assertCBDiscoveryScan:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__WPDScanManager_assertCBDiscoveryScan___block_invoke_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1(&dword_272965000, v4, v5, "assertCBDiscoveryScan failed to assert with error: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)isScannerTestMode
{
  v7 = *MEMORY[0x277D85DE8];
  *(*a1 + 24);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)heySiriScanActive:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)reconcileScanRule:withRule:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3(&dword_272965000, v0, v1, "Reconcile scan rules for type %ld - removed (not supported type)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)reconcileScanRule:withRule:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __45__WPDScanManager_reconcileScanRule_withRule___block_invoke_255_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_10_0(&dword_272965000, v2, v3, "Reconcile scan rules for type %ld - unexpected key ignored:%@");
  v4 = *MEMORY[0x277D85DE8];
}

void __33__WPDScanManager_updateScanRules__block_invoke_8_cold_2(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a1 clientType];
  v5 = [a1 retainDuplicates];
  if ([a1 startPending])
  {
    v6 = [a1 retainDuplicates] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v8[0] = 67109632;
  v8[1] = v4;
  v9 = 1024;
  v10 = v5;
  v11 = 1024;
  v12 = v6;
  _os_log_debug_impl(&dword_272965000, a2, OS_LOG_TYPE_DEBUG, "Retain duplicates type:%d retain:%d reset:%d)", v8, 0x14u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)scanOptionsChanged:(uint64_t)a1 ForRequests:.cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __42__WPDScanManager_clearExistingConnections__block_invoke_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1(&dword_272965000, v4, v5, "Client %@ does not respond to selector resetConnection", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)shallStop
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(uint64_t)a3 didDiscoverPeripheral:advertisementData:RSSI:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [OUTLINED_FUNCTION_18() identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  v9 = a3;
  _os_log_debug_impl(&dword_272965000, v3, OS_LOG_TYPE_DEBUG, "WPDScanManager didDiscoverPeripheral:%@ RSSI%@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_441_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3(&dword_272965000, v0, v1, "Client with UUID (%@) doesn't exist, but we've still got a scan request for it", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(void *)a1 didDiscoverMultiplePeripherals:.cold.2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_9() count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1(&dword_272965000, v3, v4, "WPDScanManager UNEXPECTED didDiscoverMultiplePeripherals %lu peripherals", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)zonesAvailableForType:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_3(&dword_272965000, v0, v1, "Peer tracking request received for a type that doesn't support it (%ld)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addPeerTrackingRequest:forClient:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3(&dword_272965000, v0, v1, "Failed to start tracking peer - central is not powered on %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addPeerTrackingRequest:(void *)a1 forClient:.cold.8(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() peerRequests];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_272965000, v1, OS_LOG_TYPE_DEBUG, "Currently tracking peers: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)removePeerTrackingRequest:checkZonesAvailable:forClient:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3(&dword_272965000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removePeerTrackingRequest:checkZonesAvailable:forClient:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2048;
  v5 = v0;
  _os_log_debug_impl(&dword_272965000, v1, OS_LOG_TYPE_DEBUG, "Removing tracking for peer %@ of type %ld", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)retrievePeripheralWithUUID:(void *)a1 .cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() centralManager];
  [v3 state];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1(&dword_272965000, v4, v5, "Failed to retrieve peripherals with identifiers - central is not powered on: %ld", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)connectToPeripheral:(void *)a1 fromClient:(void *)a2 withOptions:.cold.2(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5[0] = 67109120;
  v5[1] = [a2 state];
  _os_log_error_impl(&dword_272965000, v3, OS_LOG_TYPE_ERROR, "Failed to create connection - central is not powered on %d", v5, 8u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)connectToPeripheral:fromClient:withOptions:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_10_0(&dword_272965000, v0, v1, "Wireless Proximity is already connecting to peripheral %@ for type %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)connectToPeripheral:fromClient:withOptions:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3(&dword_272965000, v0, v1, "Wireless Proximity can't retrieve peripheral with UUID %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)disconnectFromPeripheral:withSubscribedCharacteristics:forClient:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3(&dword_272965000, v0, v1, "Couldn't find peripheral to disconnect from %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_10(uint64_t a1, uint64_t *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a3;
  v12 = [OUTLINED_FUNCTION_18() identifier];
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(void *)a1 didFailToConnectPeripheral:(void *)a2 error:.cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [OUTLINED_FUNCTION_18() identifier];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_9() localizedDescription];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

@end