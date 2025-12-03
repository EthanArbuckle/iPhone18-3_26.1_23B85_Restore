@interface WPDAdvertisingManager
- (BOOL)addressChangeNotificationNeeded:(id)needed advertiserTypeString:(id)string;
- (BOOL)heySiriAdvertActive:(BOOL)active;
- (BOOL)heySiriAdvertActiveAllDevices;
- (BOOL)isAdvertiserTestMode;
- (BOOL)platformSupportsMultipleAdvertising;
- (WPDAdvertisingManager)initWithServer:(id)server;
- (id)NSUUIDfromCBUUID:(id)d;
- (id)addAdvertisingRequest:(id)request forClient:(id)client;
- (id)advertisingRules;
- (id)advertisingRulesCBStackAdvertiser;
- (id)clientForAdvRequest:(id)request;
- (id)generateStateDumpStrings;
- (id)getCharacteristicForClient:(id)client;
- (id)getClientUUIDsForCharacteristic:(id)characteristic;
- (id)getCurrentAdvertisers;
- (id)removeAdvertisingRequest:(id)request forClient:(id)client shouldUpdate:(BOOL)update;
- (id)requestFromAdvertisingDataFromInstance:(int64_t)instance AddressChangeNotificationNeeded:(BOOL)needed;
- (id)setWPDaemonAdvDataFrom:(id)from;
- (id)setWPDaemonAdvDataFromWPAdvertisingRequest:(id)request;
- (int)maxAdvertisingRules;
- (void)addAdvertisingRequest:(id)request forDaemon:(id)daemon;
- (void)addCharacteristic:(id)characteristic Properties:(unint64_t)properties Permissions:(unint64_t)permissions Service:(id)service Name:(id)name;
- (void)addCharacteristic:(id)characteristic forService:(id)service forClient:(id)client;
- (void)enableRanging:(BOOL)ranging forClient:(id)client;
- (void)informClientsAdvertisingPending:(id)pending;
- (void)isAdvertiserTestMode;
- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error;
- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request;
- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests;
- (void)peripheralManager:(id)manager didStopAdvertisingWithError:(id)error;
- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error;
- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)subscribers;
- (void)preallocateServices;
- (void)removeAdvertisingRequest:(id)request forDaemon:(id)daemon;
- (void)removeServiceForClient:(id)client;
- (void)resetAdvertisingManager;
- (void)setupStackAdvertiser:(id)advertiser;
- (void)statsExportTimerFired;
- (void)update;
- (void)updateAdvertiser;
@end

@implementation WPDAdvertisingManager

void __41__WPDAdvertisingManager_updateAdvertiser__block_invoke_389(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 intValue])
  {
    if ([v5 intValue] == 2)
    {
      [*(*(a1 + 32) + 48 + 8 * a3) activate];
    }
  }

  else
  {
    v6 = [*(*(a1 + 32) + 48 + 8 * a3) wpDaemonData];

    if (v6)
    {
      if (WPLogInitOnce != -1)
      {
        __41__WPDAdvertisingManager_updateAdvertiser__block_invoke_389_cold_1();
      }

      v7 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(*(a1 + 32) + 48 + 8 * a3);
        v10 = v7;
        v11 = [v9 wpDaemonData];
        v12[0] = 67109120;
        v12[1] = [v11 advInstanceType];
        _os_log_debug_impl(&dword_272965000, v10, OS_LOG_TYPE_DEBUG, "wpDaemonData advInstance %d has no data, stop advertising", v12, 8u);
      }

      [*(*(a1 + 32) + 48 + 8 * a3) setWpDaemonData:0];
      [*(*(a1 + 32) + 48 + 8 * a3) invalidate];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __41__WPDAdvertisingManager_updateAdvertiser__block_invoke_381(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBDCF8];
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:v5];
  if ([v7 BOOLValue])
  {
    v8 = +[WPDaemonServer supportsNC2AdvertisingInstance];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBDCF0]];
  v10 = [v9 BOOLValue];

  if (v8)
  {
    v11 = 2;
  }

  else
  {
    v11 = v10 ^ 1u;
  }

  v12 = [*(a1 + 32) setWPDaemonAdvDataFrom:v6];

  v13 = [*(*(a1 + 32) + 48 + 8 * v11) wpDaemonData];
  v14 = [v13 isEqual:v12];

  if (v14)
  {
    [*(a1 + 40) replaceObjectAtIndex:v11 withObject:&unk_288201A48];
    if (WPLogInitOnce != -1)
    {
      __41__WPDAdvertisingManager_updateAdvertiser__block_invoke_381_cold_2();
    }

    v15 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(*(a1 + 32) + 48 + 8 * a3);
      v17 = v15;
      v18 = [v16 wpDaemonData];
      v26 = 67109120;
      v27 = [v18 advInstanceType];
      _os_log_debug_impl(&dword_272965000, v17, OS_LOG_TYPE_DEBUG, "wpDaemonData advInstance %d has same data, skip updating", &v26, 8u);
    }
  }

  else
  {
    [*(*(a1 + 32) + 48 + 8 * v11) setWpDaemonData:v12];
    [*(a1 + 40) replaceObjectAtIndex:v11 withObject:&unk_288201A30];
    if (WPLogInitOnce != -1)
    {
      __41__WPDAdvertisingManager_updateAdvertiser__block_invoke_381_cold_1();
    }

    v19 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(*(a1 + 32) + 48 + 8 * a3);
      v22 = v19;
      v23 = [v21 wpDaemonData];
      LODWORD(v21) = [v23 advInstanceType];
      v24 = [*(*(a1 + 32) + 48 + 8 * a3) wpDaemonData];
      v25 = [v24 mfgData];
      v26 = 67109378;
      v27 = v21;
      v28 = 2112;
      v29 = v25;
      _os_log_debug_impl(&dword_272965000, v22, OS_LOG_TYPE_DEBUG, "wpDaemonData advInstance %d request updating mfg data %@", &v26, 0x12u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateAdvertiser
{
  v6 = *a2;
  v7 = a3;
  wpDaemonData = [v6 wpDaemonData];
  advInstanceType = [wpDaemonData advInstanceType];
  *self = 67109120;
  *a4 = advInstanceType;
  OUTLINED_FUNCTION_3_3(&dword_272965000, v10, v11, "wpDaemonData advInstance %d has no data, stop advertising");
}

- (id)advertisingRules
{
  v174 = *MEMORY[0x277D85DE8];
  advertisingRequests = [(WPDAdvertisingManager *)self advertisingRequests];
  v4 = [advertisingRequests count];

  if (!v4)
  {
    v91 = 0;
    goto LABEL_170;
  }

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CBEB58] set];
  v136 = [MEMORY[0x277CBEB58] set];
  v133 = [MEMORY[0x277CBEB58] set];
  currentAdvertisers = [(WPDAdvertisingManager *)self currentAdvertisers];
  [currentAdvertisers removeAllIndexes];

  isAdvertiserTestMode = [(WPDAdvertisingManager *)self isAdvertiserTestMode];
  v147 = [(WPDAdvertisingManager *)self heySiriAdvertActive:?];
  advertisingRequests2 = [(WPDAdvertisingManager *)self advertisingRequests];
  allRequests = [advertisingRequests2 allRequests];

  advertisingRequests3 = [(WPDAdvertisingManager *)self advertisingRequests];
  v13 = [advertisingRequests3 count];

  if (v13 >= 2)
  {
    v14 = [allRequests sortedArrayUsingSelector:sel_compare_];

    allRequests = v14;
  }

  v130 = v8;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v15 = allRequests;
  v16 = [v15 countByEnumeratingWithState:&v160 objects:v167 count:16];
  v131 = v6;
  v132 = v5;
  v135 = v7;
  v137 = v15;
  if (v16)
  {
    v18 = v16;
    longLongValue = 0;
    v148 = *v161;
    *&v17 = 138412802;
    v128 = v17;
    while (1)
    {
      v19 = 0;
      v142 = v18;
      do
      {
        if (*v161 != v148)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v160 + 1) + 8 * v19);
        if (-[WPDManager isAdvertisingAllowlistedForType:](self, "isAdvertisingAllowlistedForType:", [v20 clientType]))
        {
          if (v147 && !-[WPDAdvertisingManager isAdvPermittedDuringHeySiriForType:](self, "isAdvPermittedDuringHeySiriForType:", [v20 clientType]))
          {
            if (WPLogInitOnce != -1)
            {
              [WPDAdvertisingManager advertisingRules];
            }

            v40 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
            {
              v32 = v40;
              clientType = [v20 clientType];
              *buf = 134217984;
              v169 = clientType;
              v34 = v32;
              v35 = OS_LOG_TYPE_INFO;
              v36 = "Not advertising for client type (%ld) when HeySiri is active";
              goto LABEL_26;
            }
          }

          else
          {
            v128 = [(WPDAdvertisingManager *)self clientForAdvRequest:v20, v128];
            v149 = v128;
            if (!isAdvertiserTestMode || v128 && (-[WPDManager server](self, "server"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isClientTestMode:v149], v22, (v23 & 1) != 0))
            {
              advertisementRequestedAt = [v20 advertisementRequestedAt];
              if (advertisementRequestedAt)
              {
                heySiriAdvEnabled = self->_heySiriAdvEnabled;

                if (!heySiriAdvEnabled)
                {
                  advertisementRequestedAt2 = [v20 advertisementRequestedAt];
                  longLongValue = [advertisementRequestedAt2 longLongValue];
                }
              }

              server = [(WPDManager *)self server];
              v28 = [server getClientForUUID:v149];

              LODWORD(server) = [v20 connectable];
              clientType2 = [v20 clientType];
              v146 = server;
              v29 = &OBJC_IVAR___WPDAdvertisingManager__nonConnectableAdvTotalCount;
              if (server)
              {
                v29 = &OBJC_IVAR___WPDAdvertisingManager__connectableAdvTotalCount;
              }

              ++*(&self->super.super.isa + *v29);
              v139 = [v5 isValidWithAdditionalRequest:v20];
              v30 = [v6 isValidWithAdditionalRequest:v20];
              v140 = [v7 isValidWithAdditionalRequest:v20];
              if (v30)
              {
                v143 = 1;
LABEL_68:
                -[AdvMetrics incrementTotalAdvCountforType:](self->_advMetrics, "incrementTotalAdvCountforType:", [v20 clientType]);
                if ([(WPDAdvertisingManager *)self platformSupportsMultipleAdvertising]&& !(v146 & 1 | ((+[WPDaemonServer supportsNC2AdvertisingInstance]& v140 & 1) == 0)) && clientType2 == 19)
                {
                  v67 = v7;
                  bundleID = [v28 bundleID];

                  v69 = v133;
                  if (!bundleID)
                  {
                    goto LABEL_80;
                  }

LABEL_79:
                  bundleID2 = [v28 bundleID];
                  [v69 addObject:bundleID2];

LABEL_80:
                  [v67 addAdvertisingRequest:v20];
                  if ([(WPDAdvertisingManager *)self isRanging])
                  {
                    rangingTypes = [(WPDAdvertisingManager *)self rangingTypes];
                    v74 = [rangingTypes containsIndex:{objc_msgSend(v20, "clientType")}];

                    if (v74)
                    {
                      if ([v20 clientType] == 2)
                      {
                        advertisingData = [v20 advertisingData];
                        v76 = [advertisingData length];
                        isRanging = [v67 isRanging];
                        if (v76 == 22)
                        {
                          v78 = 1;
                        }

                        else
                        {
                          v78 = isRanging;
                        }

                        [v67 setIsRanging:v78];
                      }

                      else
                      {
                        [v67 setIsRanging:1];
                      }
                    }
                  }

                  [v67 setAssertPower:{objc_msgSend(v20, "holdVoucher") | objc_msgSend(v67, "assertPower")}];
                  if ([v20 stopOnAdvertisingAddressChange])
                  {
                    clientsToNotifyOnAddressChange = [(WPDAdvertisingManager *)self clientsToNotifyOnAddressChange];
                    v89 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v20, "clientType")}];
                    [clientsToNotifyOnAddressChange addObject:v89];
                  }

                  if (![(WPDAdvertisingManager *)self allowCompoundAdvertisements])
                  {

                    v15 = v137;
                    goto LABEL_128;
                  }

                  v15 = v137;
LABEL_118:

                  v18 = v142;
                  goto LABEL_119;
                }

                if (!(v146 & 1 | ((v143 & [(WPDAdvertisingManager *)self platformSupportsMultipleAdvertising]& 1) == 0)))
                {
                  v67 = v6;
                  bundleID3 = [v28 bundleID];

                  v69 = v136;
                  if (bundleID3)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_80;
                }

                if (v139)
                {
                  if ([v20 isValidOnConnectableInstance])
                  {
                    v67 = v5;
                    bundleID4 = [v28 bundleID];

                    v69 = v130;
                    if (!bundleID4)
                    {
                      goto LABEL_80;
                    }

                    goto LABEL_79;
                  }

                  [(WPDAdvertisingManager *)self informClientsAdvertisingPending:v20];
                  if ((v146 | v143) & 1) != 0 || ([v20 isValidOnConnectableInstance])
                  {
                    goto LABEL_117;
                  }

LABEL_101:
                  ++self->_nonConnectableAdvDropCount;
                  -[AdvMetrics incrementTotalDroppedAdvCountforType:](self->_advMetrics, "incrementTotalDroppedAdvCountforType:", [v20 clientType]);
                  v154 = 0u;
                  v155 = 0u;
                  v152 = 0u;
                  v153 = 0u;
                  types = [v6 types];
                  v84 = [types countByEnumeratingWithState:&v152 objects:v165 count:16];
                  if (v84)
                  {
                    v85 = v84;
                    v86 = *v153;
                    do
                    {
                      for (i = 0; i != v85; ++i)
                      {
                        if (*v153 != v86)
                        {
                          objc_enumerationMutation(types);
                        }

                        -[AdvMetrics incrementDroppedAdvCountforType:by:](self->_advMetrics, "incrementDroppedAdvCountforType:by:", [v20 clientType], objc_msgSend(*(*(&v152 + 1) + 8 * i), "unsignedShortValue"));
                      }

                      v85 = [types countByEnumeratingWithState:&v152 objects:v165 count:16];
                    }

                    while (v85);
                    v6 = v131;
                    v5 = v132;
                    v7 = v135;
                    v15 = v137;
                  }

                  else
                  {
                    v15 = v137;
                  }

LABEL_116:
                }

                else
                {
                  [(WPDAdvertisingManager *)self informClientsAdvertisingPending:v20];
                  if (v146)
                  {
                    ++self->_connectableAdvDropCount;
                    -[AdvMetrics incrementTotalDroppedAdvCountforType:](self->_advMetrics, "incrementTotalDroppedAdvCountforType:", [v20 clientType]);
                    v158 = 0u;
                    v159 = 0u;
                    v156 = 0u;
                    v157 = 0u;
                    types = [v5 types];
                    v80 = [types countByEnumeratingWithState:&v156 objects:v166 count:16];
                    if (!v80)
                    {
                      goto LABEL_116;
                    }

                    v81 = v80;
                    v82 = *v157;
                    do
                    {
                      for (j = 0; j != v81; ++j)
                      {
                        if (*v157 != v82)
                        {
                          objc_enumerationMutation(types);
                        }

                        -[AdvMetrics incrementDroppedAdvCountforType:by:](self->_advMetrics, "incrementDroppedAdvCountforType:by:", [v20 clientType], objc_msgSend(*(*(&v156 + 1) + 8 * j), "unsignedShortValue"));
                      }

                      v81 = [types countByEnumeratingWithState:&v156 objects:v166 count:16];
                    }

                    while (v81);

                    v6 = v131;
                    v5 = v132;
                    v7 = v135;
                    v15 = v137;
                    if (((v146 | v143) & 1) == 0)
                    {
                      goto LABEL_101;
                    }
                  }

                  else if ((v143 & 1) == 0)
                  {
                    goto LABEL_101;
                  }
                }

LABEL_117:
                v67 = 0;
                goto LABEL_118;
              }

              if ([v20 clientType] == 10)
              {
                v42 = [v20 copy];
                v43 = v6;
                v44 = 0;
                v164 = 0;
                if (!v6 || !v42 || ([v42 advertisingData], v45 = objc_claimAutoreleasedReturnValue(), (v44 = v45) == 0) || (objc_msgSend(v45, "getBytes:range:", &v164, 0, 1), (v164 & 0x10) == 0))
                {

                  v143 = 0;
                  v46 = v42;
                  v7 = v135;
                  goto LABEL_66;
                }

                v164 &= ~0x10u;
                v60 = MEMORY[0x277CBEB28];
                v61 = [v44 subdataWithRange:{0, objc_msgSend(v44, "length") - 3}];
                v62 = [v60 dataWithData:v61];

                v145 = v62;
                [v62 replaceBytesInRange:0 withBytes:{1, &v164}];
                if (WPLogInitOnce != -1)
                {
                  [WPDAdvertisingManager advertisingRules];
                }

                v63 = WiProxLog;
                if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
                {
                  v64 = v63;
                  advertisingData2 = [v42 advertisingData];
                  *buf = 138412546;
                  v169 = advertisingData2;
                  v170 = 2112;
                  v171 = v145;
                  _os_log_impl(&dword_272965000, v64, OS_LOG_TYPE_DEFAULT, "AirPlaySource old: %@, new: %@", buf, 0x16u);
                }

                [v42 setAdvertisingData:v145];
                v66 = [v43 isValidWithAdditionalRequest:v42];

                if (v66)
                {
                  v46 = v42;
                  v143 = 1;
                  v42 = v20;
                  v20 = v46;
                  v6 = v131;
LABEL_61:
                  v7 = v135;
LABEL_65:
                  v5 = v132;
LABEL_66:

                  v42 = v46;
LABEL_67:

                  goto LABEL_68;
                }

                v143 = 0;
                v6 = v131;
LABEL_122:
                v7 = v135;
                v5 = v132;
                goto LABEL_67;
              }

              if ([v20 clientType] != 22 || (objc_msgSend(v20, "advertisingRandomData"), v47 = objc_claimAutoreleasedReturnValue(), v47, !v47))
              {
                v143 = 0;
                goto LABEL_68;
              }

              v42 = [v20 copy];
              v144 = v6;
              advertisingData3 = 0;
              if (v6)
              {
                if (v42)
                {
                  advertisingData3 = [v42 advertisingData];
                  if (advertisingData3)
                  {
                    advertisingRandomData = [v42 advertisingRandomData];

                    if (advertisingRandomData)
                    {
                      v50 = MEMORY[0x277CBEB28];
                      v51 = [advertisingData3 length];
                      advertisingRandomData2 = [v42 advertisingRandomData];
                      v53 = [advertisingData3 subdataWithRange:{0, v51 - objc_msgSend(advertisingRandomData2, "length")}];
                      v54 = [v50 dataWithData:v53];

                      v129 = v54;
                      [v42 setAdvertisingData:v54];
                      v55 = v144;
                      v56 = [v144 isValidWithAdditionalRequest:v42];
                      if (WPLogInitOnce != -1)
                      {
                        [WPDAdvertisingManager advertisingRules];
                      }

                      v57 = WiProxLog;
                      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
                      {
                        v58 = v57;
                        advertisingRandomData3 = [v42 advertisingRandomData];
                        *buf = v128;
                        v169 = advertisingRandomData3;
                        v170 = 2112;
                        v171 = v129;
                        v172 = 1024;
                        v173 = v56;
                        _os_log_impl(&dword_272965000, v58, OS_LOG_TYPE_DEFAULT, "NearbyInfoV2 rd: %@, payload: %@, valid: %d", buf, 0x1Cu);

                        v55 = v144;
                      }

                      v6 = v131;
                      if (v56)
                      {
                        v46 = v42;
                        v143 = 1;
                        v42 = v20;
                        v20 = v46;
                        goto LABEL_61;
                      }

                      v143 = 0;
                      goto LABEL_122;
                    }

                    v6 = v131;
                  }
                }
              }

              v143 = 0;
              v46 = v42;
              goto LABEL_65;
            }

            if (WPLogInitOnce != -1)
            {
              [WPDAdvertisingManager advertisingRules];
            }

            v18 = v142;
            v37 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
            {
              v38 = v37;
              clientType3 = [v20 clientType];
              *buf = 138412546;
              v169 = v149;
              v170 = 2048;
              v171 = clientType3;
              _os_log_impl(&dword_272965000, v38, OS_LOG_TYPE_INFO, "Not advertising for non-test client UUID: %@ type (%ld) when in test mode", buf, 0x16u);
            }
          }
        }

        else
        {
          if (WPLogInitOnce != -1)
          {
            [WPDAdvertisingManager advertisingRules];
          }

          v31 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v31;
            clientType4 = [v20 clientType];
            *buf = 134217984;
            v169 = clientType4;
            v34 = v32;
            v35 = OS_LOG_TYPE_DEFAULT;
            v36 = "Not advertising for client type (%ld) when denylisted or not allowlisted";
LABEL_26:
            _os_log_impl(&dword_272965000, v34, v35, v36, buf, 0xCu);
          }
        }

LABEL_119:

        ++v19;
      }

      while (v19 != v18);
      v90 = [v15 countByEnumeratingWithState:&v160 objects:v167 count:16];
      v18 = v90;
      if (!v90)
      {
        goto LABEL_128;
      }
    }
  }

  longLongValue = 0;
LABEL_128:

  types2 = [v5 types];
  v93 = [(WPDAdvertisingManager *)self addressChangeNotificationNeeded:types2 advertiserTypeString:@"connectable"];

  types3 = [v6 types];
  v95 = [(WPDAdvertisingManager *)self addressChangeNotificationNeeded:types3 advertiserTypeString:@"non-connectable"];

  if (+[WPDaemonServer supportsNC2AdvertisingInstance])
  {
    types4 = [v7 types];
    v150 = [(WPDAdvertisingManager *)self addressChangeNotificationNeeded:types4 advertiserTypeString:@"non-connectable secondary"];
  }

  else
  {
    v150 = 0;
  }

  v97 = MEMORY[0x277CBEB58];
  types5 = [v5 types];
  v99 = [v97 setWithSet:types5];

  types6 = [v6 types];
  [v99 unionSet:types6];

  if (+[WPDaemonServer supportsNC2AdvertisingInstance])
  {
    types7 = [v7 types];
    [v99 unionSet:types7];
  }

  v151[0] = MEMORY[0x277D85DD0];
  v151[1] = 3221225472;
  v151[2] = __41__WPDAdvertisingManager_advertisingRules__block_invoke_423;
  v151[3] = &unk_279E59BF8;
  v151[4] = self;
  [v99 enumerateObjectsUsingBlock:v151];
  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingManager advertisingRules];
  }

  v102 = WiProxLog;
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    getCurrentAdvertisers = [(WPDAdvertisingManager *)self getCurrentAdvertisers];
    *buf = 138543362;
    v169 = getCurrentAdvertisers;
    _os_log_impl(&dword_272965000, v102, OS_LOG_TYPE_DEFAULT, "AdvertisingRulesiOS - current advertisers: %{public}@", buf, 0xCu);
  }

  currentAdvertisers2 = [(WPDAdvertisingManager *)self currentAdvertisers];
  v105 = [currentAdvertisers2 count];

  array = [MEMORY[0x277CBEB18] array];
  currentConnectableAdvertisingData = [(WPDAdvertisingManager *)self currentConnectableAdvertisingData];
  if (![v5 isEqualToData:currentConnectableAdvertisingData])
  {
    goto LABEL_142;
  }

  currentNonConnectableAdvertisingData = [(WPDAdvertisingManager *)self currentNonConnectableAdvertisingData];
  if (([v131 isEqualToData:currentNonConnectableAdvertisingData] & 1) == 0)
  {

    v5 = v132;
LABEL_142:

    v111 = v131;
    goto LABEL_143;
  }

  currentNonConnectableSecondaryAdvertisingData = [(WPDAdvertisingManager *)self currentNonConnectableSecondaryAdvertisingData];
  v110 = [v135 isEqualToData:currentNonConnectableSecondaryAdvertisingData];

  v7 = v135;
  v111 = v131;
  v5 = v132;
  if ((v110 & 1) == 0)
  {
LABEL_143:
    [(WPDAdvertisingManager *)self setCurrentConnectableAdvertisingData:v5];
    [(WPDAdvertisingManager *)self setCurrentNonConnectableAdvertisingData:v111];
    [(WPDAdvertisingManager *)self setCurrentNonConnectableSecondaryAdvertisingData:v7];
    v112 = [(WPDAdvertisingManager *)self requestFromAdvertisingDataFromInstance:0 AddressChangeNotificationNeeded:v93];
    if (v112)
    {
      v113 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v112];
      if ([v130 count])
      {
        allObjects = [v130 allObjects];
        [v113 setObject:allObjects forKeyedSubscript:*MEMORY[0x277CBDF00]];
      }

      [array addObject:v113];

      v111 = v131;
    }

    v115 = [(WPDAdvertisingManager *)self requestFromAdvertisingDataFromInstance:1 AddressChangeNotificationNeeded:v95];

    if (v115)
    {
      v116 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v115];
      if ([v136 count])
      {
        allObjects2 = [v136 allObjects];
        [v116 setObject:allObjects2 forKeyedSubscript:*MEMORY[0x277CBDF00]];
      }

      if (longLongValue)
      {
        v118 = MEMORY[0x277CBEB38];
        v119 = [(WPDAdvertisingManager *)self addXPCDelayTiming:v116 IsMetricOnly:1 UseCase:22 timeStamp:?];
        v120 = [v118 dictionaryWithDictionary:v119];

        v111 = v131;
        v116 = v120;
      }

      [array addObject:v116];
    }

    if (+[WPDaemonServer supportsNC2AdvertisingInstance])
    {
      v121 = [(WPDAdvertisingManager *)self requestFromAdvertisingDataFromInstance:2 AddressChangeNotificationNeeded:v150];

      if (v121)
      {
        v122 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v121];
        if ([v133 count])
        {
          allObjects3 = [v133 allObjects];
          [v122 setObject:allObjects3 forKeyedSubscript:*MEMORY[0x277CBDF00]];
        }

        [array addObject:v122];
      }
    }

    else
    {
      v121 = v115;
    }

    v5 = v132;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingManager advertisingRules];
  }

  v124 = WiProxLog;
  if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v169 = array;
    _os_log_impl(&dword_272965000, v124, OS_LOG_TYPE_DEFAULT, "AdvertisingRulesiOS - advertising packets: %{public}@", buf, 0xCu);
  }

  if (v105)
  {
    if ([array count])
    {
      v91 = array;
    }

    else
    {
      v91 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    [(WPDAdvertisingManager *)self setCurrentConnectableAdvertisingData:0];
    [(WPDAdvertisingManager *)self setCurrentNonConnectableAdvertisingData:0];
    [(WPDAdvertisingManager *)self setCurrentNonConnectableSecondaryAdvertisingData:0];
    currentAdvertisers3 = [(WPDAdvertisingManager *)self currentAdvertisers];
    [currentAdvertisers3 removeAllIndexes];

    v91 = 0;
  }

LABEL_170:
  v126 = *MEMORY[0x277D85DE8];

  return v91;
}

- (id)getCurrentAdvertisers
{
  string = [MEMORY[0x277CCAB68] string];
  currentAdvertisers = [(WPDAdvertisingManager *)self currentAdvertisers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__WPDAdvertisingManager_getCurrentAdvertisers__block_invoke;
  v7[3] = &unk_279E597A0;
  v5 = string;
  v8 = v5;
  [currentAdvertisers enumerateIndexesUsingBlock:v7];

  return v5;
}

- (BOOL)isAdvertiserTestMode
{
  v7 = 0;
  v8[0] = &v7;
  v8[1] = 0x2020000000;
  v9 = 0;
  if ([(WPDManager *)self testMode])
  {
    clientAdvertisingRequests = [(WPDAdvertisingManager *)self clientAdvertisingRequests];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__WPDAdvertisingManager_isAdvertiserTestMode__block_invoke;
    v6[3] = &unk_279E595C8;
    v6[4] = self;
    v6[5] = &v7;
    [clientAdvertisingRequests enumerateKeysAndObjectsUsingBlock:v6];

    if (WPLogInitOnce != -1)
    {
      [WPDAdvertisingManager isAdvertiserTestMode];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [(WPDAdvertisingManager *)v8 isAdvertiserTestMode];
    }
  }

  v4 = *(v8[0] + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __41__WPDAdvertisingManager_advertisingRules__block_invoke_423(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 currentAdvertisers];
  v4 = [v3 integerValue];

  [v5 addIndex:v4];
}

- (BOOL)platformSupportsMultipleAdvertising
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WPDAdvertisingManager_platformSupportsMultipleAdvertising__block_invoke;
  block[3] = &unk_279E59078;
  block[4] = self;
  if (platformSupportsMultipleAdvertising_onceToken != -1)
  {
    dispatch_once(&platformSupportsMultipleAdvertising_onceToken, block);
  }

  return platformSupportsMultipleAdvertising_supported;
}

- (BOOL)heySiriAdvertActiveAllDevices
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  advertisingRequests = [(WPDAdvertisingManager *)self advertisingRequests];
  allRequests = [advertisingRequests allRequests];

  v5 = [allRequests countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(allRequests);
      }

      if ([*(*(&v15 + 1) + 8 * v8) clientType] == 8)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [allRequests countByEnumeratingWithState:&v15 objects:v21 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if ([(WPDManager *)self isAdvertisingAllowlistedForType:8])
    {
      v9 = 1;
      goto LABEL_17;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDAdvertisingManager heySiriAdvertActiveAllDevices];
    }

    v10 = WiProxLog;
    v9 = 0;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272965000, v10, OS_LOG_TYPE_DEFAULT, "WPClientHeySiri advertising is denylisted or not allowlisted", buf, 2u);
      goto LABEL_16;
    }
  }

  else
  {
LABEL_9:

LABEL_16:
    v9 = 0;
  }

LABEL_17:
  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingManager heySiriAdvertActiveAllDevices];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v12 = @"NO";
    if (v9)
    {
      v12 = @"YES";
    }

    *buf = 138412290;
    v20 = v12;
    _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_INFO, "heySiriAdvertActive: %@", buf, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (WPDAdvertisingManager)initWithServer:(id)server
{
  v87[1] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v77.receiver = self;
  v77.super_class = WPDAdvertisingManager;
  v5 = [(WPDManager *)&v77 initWithServer:serverCopy Name:@"Peripheral"];
  if (v5)
  {
    v6 = objc_alloc_init(WPAdvertisingRequestsQueue);
    advertisingRequests = v5->_advertisingRequests;
    v5->_advertisingRequests = v6;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    clientAdvertisingRequests = v5->_clientAdvertisingRequests;
    v5->_clientAdvertisingRequests = dictionary;

    indexSet = [MEMORY[0x277CCAB58] indexSet];
    currentAdvertisers = v5->_currentAdvertisers;
    v5->_currentAdvertisers = indexSet;

    v12 = [MEMORY[0x277CBEB58] set];
    clientsToNotifyOnAddressChange = v5->_clientsToNotifyOnAddressChange;
    v5->_clientsToNotifyOnAddressChange = v12;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    publishedServices = v5->_publishedServices;
    v5->_publishedServices = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    preallocatedServices = v5->_preallocatedServices;
    v5->_preallocatedServices = dictionary3;

    v18 = objc_alloc(MEMORY[0x277CBE068]);
    serverQueue = [serverCopy serverQueue];
    v86 = *MEMORY[0x277CBDF08];
    v20 = v86;
    v21 = MEMORY[0x277CBEC38];
    v87[0] = MEMORY[0x277CBEC38];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:&v86 count:1];
    v23 = [v18 initWithDelegate:v5 queue:serverQueue options:v22];
    connectablePeripheralManager = v5->_connectablePeripheralManager;
    v5->_connectablePeripheralManager = v23;

    v25 = objc_alloc(MEMORY[0x277CBE068]);
    serverQueue2 = [serverCopy serverQueue];
    v84 = v20;
    v85 = v21;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v28 = [v25 initWithDelegate:v5 queue:serverQueue2 options:v27];
    nonConnectablePeripheralManager = v5->_nonConnectablePeripheralManager;
    v5->_nonConnectablePeripheralManager = v28;

    if (+[WPDaemonServer supportsNC2AdvertisingInstance])
    {
      if (WPLogInitOnce != -1)
      {
        [WPDAdvertisingManager initWithServer:];
      }

      v30 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
        v32 = +[WPDaemonServer supportsNC2AdvertisingInstance];
        *buf = 67109120;
        v83 = v32;
        _os_log_impl(&dword_272965000, v31, OS_LOG_TYPE_DEFAULT, "Platform supports supportsNC2AdvertisingInstance: %d", buf, 8u);
      }

      v33 = objc_alloc(MEMORY[0x277CBE068]);
      serverQueue3 = [serverCopy serverQueue];
      v80 = v20;
      v81 = v21;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      v36 = [v33 initWithDelegate:v5 queue:serverQueue3 options:v35];
      nonConnectableSecondaryPeripheralManager = v5->_nonConnectableSecondaryPeripheralManager;
      v5->_nonConnectableSecondaryPeripheralManager = v36;
    }

    v5->_allowCompoundAdvertisements = 1;
    indexSet2 = [MEMORY[0x277CCAB58] indexSet];
    [indexSet2 addIndex:15];
    if (+[WPDaemonServer supportsRanging])
    {
      [indexSet2 addIndex:19];
    }

    v39 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:indexSet2];
    rangingTypes = v5->_rangingTypes;
    v5->_rangingTypes = v39;

    v41 = objc_alloc_init(MEMORY[0x277CBEB58]);
    rangingClients = v5->_rangingClients;
    v5->_rangingClients = v41;

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v44 = [standardUserDefaults persistentDomainForName:@"com.apple.MobileBluetooth.debug"];
    v45 = [v44 objectForKeyedSubscript:@"WIPROX"];

    v74 = v45;
    v46 = [v45 objectForKeyedSubscript:@"AllowCompoundAdvertisements"];
    v47 = v46;
    if (v46)
    {
      v5->_allowCompoundAdvertisements = [v46 BOOLValue];
      if (WPLogInitOnce != -1)
      {
        [WPDAdvertisingManager initWithServer:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPDAdvertisingManager initWithServer:?];
      }
    }

    v48 = +[WPDaemonServer supportsNC2AdvertisingInstance];
    v49 = MEMORY[0x277CBEB98];
    v50 = v5->_connectablePeripheralManager;
    if (v48)
    {
      v79[0] = v5->_connectablePeripheralManager;
      v79[1] = v5->_nonConnectablePeripheralManager;
      v79[2] = v5->_nonConnectableSecondaryPeripheralManager;
      v51 = MEMORY[0x277CBEA60];
      v52 = v79;
      v53 = 3;
    }

    else
    {
      v78[0] = v5->_connectablePeripheralManager;
      v78[1] = v5->_nonConnectablePeripheralManager;
      v51 = MEMORY[0x277CBEA60];
      v52 = v78;
      v53 = 2;
    }

    v54 = [v51 arrayWithObjects:v52 count:v53];
    v55 = [v49 setWithArray:v54];
    [(WPDManager *)v5 setCbManagers:v55];

    wpdState = [serverCopy wpdState];
    [wpdState registerManager:v5->_connectablePeripheralManager];

    wpdState2 = [serverCopy wpdState];
    [wpdState2 registerManager:v5->_nonConnectablePeripheralManager];

    if (+[WPDaemonServer supportsNC2AdvertisingInstance])
    {
      wpdState3 = [serverCopy wpdState];
      [wpdState3 registerManager:v5->_nonConnectableSecondaryPeripheralManager];
    }

    v59 = objc_alloc_init(AdvMetrics);
    advMetrics = v5->_advMetrics;
    v5->_advMetrics = v59;

    v61 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v61, *MEMORY[0x277D86360], 1);
    xpc_dictionary_set_int64(v61, *MEMORY[0x277D86250], *MEMORY[0x277D86298]);
    xpc_dictionary_set_int64(v61, *MEMORY[0x277D86270], *MEMORY[0x277D862A8]);
    xpc_dictionary_set_string(v61, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __40__WPDAdvertisingManager_initWithServer___block_invoke_201;
    handler[3] = &unk_279E59A20;
    v62 = v5;
    v76 = v62;
    xpc_activity_register("com.apple.Bluetoooth.WPDAdvertisingManager", v61, handler);
    server = [(WPDManager *)v62 server];
    stackAdaptor = [server stackAdaptor];

    if (stackAdaptor)
    {
      if (_os_feature_enabled_impl())
      {
        dictionary4 = [MEMORY[0x277CBEB38] dictionary];
        clientStackAdvertisers = v62->_clientStackAdvertisers;
        v62->_clientStackAdvertisers = dictionary4;
      }

      else
      {
        for (i = 0; i != 3; ++i)
        {
          server2 = [(WPDManager *)v62 server];
          stackAdaptor2 = [server2 stackAdaptor];
          [stackAdaptor2 bleAdvertiserClass];
          v70 = objc_alloc_init(objc_opt_class());

          [(WPDAdvertisingManager *)v62 setupStackAdvertiser:v70];
          v71 = v62->_advStackAdaptor[i];
          v62->_advStackAdaptor[i] = v70;
        }
      }
    }

    v62->_heySiriAdvEnabled = 0;
  }

  v72 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)generateStateDumpStrings
{
  selfCopy = self;
  v85 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v81.receiver = self;
  v81.super_class = WPDAdvertisingManager;
  generateStateDumpStrings = [(WPDManager *)&v81 generateStateDumpStrings];
  v5 = [v3 arrayWithArray:generateStateDumpStrings];

  if ([(WPDManager *)selfCopy isInternalBuild])
  {
    v6 = MEMORY[0x277CCACA8];
    advAllowlist = [(WPDManager *)selfCopy advAllowlist];
    if (advAllowlist)
    {
      advAllowlist2 = [(WPDManager *)selfCopy advAllowlist];
    }

    else
    {
      advAllowlist2 = @"all";
    }

    v9 = [v6 stringWithFormat:@"allowlisted adv types: %@\n", advAllowlist2];
    [v5 addObject:v9];

    if (advAllowlist)
    {
    }
  }

  v10 = MEMORY[0x277CCACA8];
  isRanging = [(WPDAdvertisingManager *)selfCopy isRanging];
  rangingClients = [(WPDAdvertisingManager *)selfCopy rangingClients];
  v13 = [v10 stringWithFormat:@"ranging %d for clients: %@\n", isRanging, rangingClients];
  [v5 addObject:v13];

  v14 = MEMORY[0x277CCACA8];
  allowCompoundAdvertisements = [(WPDAdvertisingManager *)selfCopy allowCompoundAdvertisements];
  v16 = "no";
  if (allowCompoundAdvertisements)
  {
    v16 = "yes";
  }

  v17 = [v14 stringWithFormat:@"allowCompoundAdvertisements: %s\n", v16];
  v63 = v5;
  [v5 addObject:v17];

  array = [MEMORY[0x277CBEB18] array];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  clientAdvertisingRequests = [(WPDAdvertisingManager *)selfCopy clientAdvertisingRequests];
  allKeys = [clientAdvertisingRequests allKeys];

  obj = allKeys;
  v21 = [allKeys countByEnumeratingWithState:&v77 objects:v84 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v78;
    v64 = *v78;
    v65 = selfCopy;
    do
    {
      v24 = 0;
      v66 = v22;
      do
      {
        if (*v78 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v77 + 1) + 8 * v24);
        clientAdvertisingRequests2 = [(WPDAdvertisingManager *)selfCopy clientAdvertisingRequests];
        v27 = [clientAdvertisingRequests2 objectForKeyedSubscript:v25];

        if (v27 && [v27 count])
        {
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v68 = v27;
          v28 = v27;
          v29 = [v28 countByEnumeratingWithState:&v73 objects:v83 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v74;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v74 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@: %@\n", v25, *(*(&v73 + 1) + 8 * i)];
                [array addObject:v33];
              }

              v30 = [v28 countByEnumeratingWithState:&v73 objects:v83 count:16];
            }

            while (v30);
          }

          v23 = v64;
          selfCopy = v65;
          v22 = v66;
          v27 = v68;
        }

        ++v24;
      }

      while (v24 != v22);
      v22 = [obj countByEnumeratingWithState:&v77 objects:v84 count:16];
    }

    while (v22);
  }

  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"all advertising requests (%ld):\n", objc_msgSend(array, "count")];
  [v63 addObject:v34];

  [v63 addObjectsFromArray:array];
  v35 = MEMORY[0x277CCACA8];
  advertisingRequests = [(WPDAdvertisingManager *)selfCopy advertisingRequests];
  v37 = [v35 stringWithFormat:@"currently active requests (%ld):\n", objc_msgSend(advertisingRequests, "count")];
  [v63 addObject:v37];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  advertisingRequests2 = [(WPDAdvertisingManager *)selfCopy advertisingRequests];
  allRequests = [advertisingRequests2 allRequests];

  v40 = [allRequests countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v70;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v70 != v42)
        {
          objc_enumerationMutation(allRequests);
        }

        v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@\n", *(*(&v69 + 1) + 8 * j)];
        [v63 addObject:v44];
      }

      v41 = [allRequests countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v41);
  }

  [v63 addObject:@"currently advertising:\n"];
  v45 = MEMORY[0x277CCACA8];
  currentConnectableAdvertisingData = [(WPDAdvertisingManager *)selfCopy currentConnectableAdvertisingData];
  v47 = [v45 stringWithFormat:@"    connectable: %@\n", currentConnectableAdvertisingData];
  [v63 addObject:v47];

  v48 = MEMORY[0x277CCACA8];
  currentNonConnectableAdvertisingData = [(WPDAdvertisingManager *)selfCopy currentNonConnectableAdvertisingData];
  v50 = [v48 stringWithFormat:@"    non-connectable: %@\n", currentNonConnectableAdvertisingData];
  [v63 addObject:v50];

  v51 = MEMORY[0x277CCACA8];
  getCurrentAdvertisers = [(WPDAdvertisingManager *)selfCopy getCurrentAdvertisers];
  v53 = [v51 stringWithFormat:@"    types: %@\n", getCurrentAdvertisers];
  [v63 addObject:v53];

  v54 = MEMORY[0x277CCACA8];
  preallocatedServices = [(WPDAdvertisingManager *)selfCopy preallocatedServices];
  v56 = [v54 stringWithFormat:@"preallocated services: %@\n", preallocatedServices];
  [v63 addObject:v56];

  v57 = MEMORY[0x277CCACA8];
  publishedServices = [(WPDAdvertisingManager *)selfCopy publishedServices];
  v59 = [v57 stringWithFormat:@"published services: %@\n", publishedServices];
  [v63 addObject:v59];

  v60 = [MEMORY[0x277CBEA60] arrayWithArray:v63];

  v61 = *MEMORY[0x277D85DE8];

  return v60;
}

- (void)addCharacteristic:(id)characteristic Properties:(unint64_t)properties Permissions:(unint64_t)permissions Service:(id)service Name:(id)name
{
  v41 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  serviceCopy = service;
  nameCopy = name;
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:serviceCopy];
  preallocatedServices = [(WPDAdvertisingManager *)self preallocatedServices];
  v16 = [preallocatedServices objectForKeyedSubscript:v14];

  if (v16)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDAdvertisingManager addCharacteristic:Properties:Permissions:Service:Name:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = serviceCopy;
      _os_log_impl(&dword_272965000, v17, OS_LOG_TYPE_DEFAULT, "Service with UUID %@ was already pre-allocated", buf, 0xCu);
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDAdvertisingManager addCharacteristic:Properties:Permissions:Service:Name:];
    }

    v18 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v36 = nameCopy;
      v37 = 2114;
      v38 = serviceCopy;
      v39 = 2114;
      v40 = characteristicCopy;
      _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ pre-populate GATT database for service: %{public}@, characteristic: %{public}@", buf, 0x20u);
    }

    v32 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:characteristicCopy];
    v31 = [MEMORY[0x277CBE0A0] UUIDWithNSUUID:?];
    v19 = [objc_alloc(MEMORY[0x277CBE048]) initWithType:v31 properties:properties value:0 permissions:permissions];
    v20 = [MEMORY[0x277CBE0A0] UUIDWithNSUUID:v14];
    v21 = [objc_alloc(MEMORY[0x277CBE050]) initWithType:v20 primary:1];
    v34 = v19;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    [v21 setCharacteristics:v22];

    preallocatedServices2 = [(WPDAdvertisingManager *)self preallocatedServices];
    [preallocatedServices2 setObject:v21 forKeyedSubscript:v14];

    if (WPLogInitOnce != -1)
    {
      [WPDAdvertisingManager addCharacteristic:Properties:Permissions:Service:Name:];
    }

    v24 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      uUID = [v21 UUID];
      connectablePeripheralManager = [(WPDAdvertisingManager *)self connectablePeripheralManager];
      state = [connectablePeripheralManager state];
      *buf = 138543618;
      v36 = uUID;
      v37 = 2048;
      v38 = state;
      _os_log_impl(&dword_272965000, v25, OS_LOG_TYPE_DEFAULT, "Adding service with UUID %{public}@ with peripheral manager state %ld", buf, 0x16u);
    }

    connectablePeripheralManager2 = [(WPDAdvertisingManager *)self connectablePeripheralManager];
    [connectablePeripheralManager2 addService:v21];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)preallocateServices
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addCharacteristic:(id)characteristic forService:(id)service forClient:(id)client
{
  v65 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  serviceCopy = service;
  clientCopy = client;
  v11 = [MEMORY[0x277CBE0A0] UUIDWithNSUUID:serviceCopy];
  v12 = MEMORY[0x277CBE0A0];
  uuid = [characteristicCopy uuid];
  v14 = [v12 UUIDWithNSUUID:uuid];

  publishedServices = [(WPDAdvertisingManager *)self publishedServices];
  v16 = [publishedServices objectForKeyedSubscript:clientCopy];

  if (v16 && (v17 = v11, [v16 UUID], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqual:", v17), v17, v18, v19))
  {
    if (verifyCharacteristicUUIDforService(v14, v16))
    {
      if (WPLogInitOnce != -1)
      {
        [WPDAdvertisingManager addCharacteristic:forService:forClient:];
      }

      v20 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        uuid2 = [characteristicCopy uuid];
        *buf = 138543874;
        v60 = serviceCopy;
        v61 = 2114;
        v62 = uuid2;
        v63 = 2114;
        v64 = clientCopy;
        _os_log_impl(&dword_272965000, v21, OS_LOG_TYPE_DEFAULT, "Already published service %{public}@ with characteristic %{public}@ for client %{public}@", buf, 0x20u);
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDAdvertisingManager addCharacteristic:forService:forClient:];
      }

      v50 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDAdvertisingManager addCharacteristic:serviceCopy forService:v50 forClient:characteristicCopy];
      }

      [MEMORY[0x277CBEAD8] raise:@"WPServiceWithoutCharacteristic" format:@"Published service does not have the characteristic"];
    }
  }

  else
  {
    v23 = v16;
    v24 = characteristicCopy;
    v57 = v11;
    preallocatedServices = [(WPDAdvertisingManager *)self preallocatedServices];
    v26 = [preallocatedServices objectForKeyedSubscript:serviceCopy];

    if (!v26)
    {
      goto LABEL_16;
    }

    v27 = v11;
    [v26 UUID];
    v29 = v28 = v26;
    v30 = [v29 isEqual:v27];

    v26 = v28;
    if (v30)
    {
      if (verifyCharacteristicUUIDforService(v14, v28))
      {
        v11 = v57;
        if (WPLogInitOnce != -1)
        {
          [WPDAdvertisingManager addCharacteristic:forService:forClient:];
        }

        v31 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v31;
          uuid3 = [v24 uuid];
          *buf = 138543874;
          v60 = serviceCopy;
          v61 = 2114;
          v62 = uuid3;
          v63 = 2114;
          v64 = clientCopy;
          _os_log_impl(&dword_272965000, v32, OS_LOG_TYPE_DEFAULT, "Using pre-allocated service %{public}@ with characteristic %{public}@ for client %{public}@", buf, 0x20u);

          v26 = v28;
        }

        publishedServices2 = [(WPDAdvertisingManager *)self publishedServices];
        [publishedServices2 setObject:v26 forKeyedSubscript:clientCopy];

        characteristicCopy = v24;
        v16 = v23;
      }

      else
      {
        v11 = v57;
        if (WPLogInitOnce != -1)
        {
          [WPDAdvertisingManager addCharacteristic:forService:forClient:];
        }

        characteristicCopy = v24;
        v51 = WiProxLog;
        v16 = v23;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPDAdvertisingManager addCharacteristic:serviceCopy forService:v51 forClient:characteristicCopy];
        }

        [MEMORY[0x277CBEAD8] raise:@"WPServiceWithoutCharacteristic" format:@"Pre-allocated service does not have the characteristic"];
      }
    }

    else
    {
LABEL_16:
      v56 = clientCopy;
      v55 = v14;
      v52 = v26;
      if (WPLogInitOnce != -1)
      {
        [WPDAdvertisingManager addCharacteristic:forService:forClient:];
      }

      characteristicCopy = v24;
      v35 = WiProxLog;
      v16 = v23;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
        uuid4 = [characteristicCopy uuid];
        *buf = 138543874;
        v60 = serviceCopy;
        v61 = 2114;
        v62 = uuid4;
        v63 = 2114;
        v64 = clientCopy;
        _os_log_impl(&dword_272965000, v36, OS_LOG_TYPE_DEFAULT, "Publishing service %{public}@ with characteritic %{public}@ for client %{public}@", buf, 0x20u);
      }

      v54 = serviceCopy;
      v38 = [objc_alloc(MEMORY[0x277CBE048]) initWithType:v14 properties:objc_msgSend(characteristicCopy value:"properties") permissions:{0, objc_msgSend(characteristicCopy, "permissions")}];
      v39 = [objc_alloc(MEMORY[0x277CBE050]) initWithType:v57 primary:1];
      v58 = v38;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
      [v39 setCharacteristics:v40];

      publishedServices3 = [(WPDAdvertisingManager *)self publishedServices];
      [publishedServices3 setObject:v39 forKeyedSubscript:clientCopy];

      if (WPLogInitOnce != -1)
      {
        [WPDAdvertisingManager addCharacteristic:forService:forClient:];
      }

      v42 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
        uUID = [v39 UUID];
        uUIDString = [uUID UUIDString];
        connectablePeripheralManager = [(WPDAdvertisingManager *)self connectablePeripheralManager];
        state = [connectablePeripheralManager state];
        *buf = 138412546;
        v60 = uUIDString;
        v61 = 2048;
        v62 = state;
        _os_log_impl(&dword_272965000, v43, OS_LOG_TYPE_DEFAULT, "Adding service with UUID %@ with peripheral manager state %ld", buf, 0x16u);
      }

      connectablePeripheralManager2 = [(WPDAdvertisingManager *)self connectablePeripheralManager];
      [connectablePeripheralManager2 addService:v39];

      serviceCopy = v54;
      v14 = v55;
      clientCopy = v56;
      v11 = v57;
      v26 = v53;
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (void)removeServiceForClient:(id)client
{
  v22 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  publishedServices = [(WPDAdvertisingManager *)self publishedServices];
  v6 = [publishedServices objectForKeyedSubscript:clientCopy];

  if (v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDAdvertisingManager removeServiceForClient:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      uUID = [v6 UUID];
      v18 = 138543618;
      v19 = uUID;
      v20 = 2114;
      v21 = clientCopy;
      _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "Removing service %{public}@ for client %{public}@", &v18, 0x16u);
    }

    uUID2 = [v6 UUID];
    v11 = [(WPDAdvertisingManager *)self NSUUIDfromCBUUID:uUID2];

    preallocatedServices = [(WPDAdvertisingManager *)self preallocatedServices];
    v13 = [preallocatedServices objectForKeyedSubscript:v11];

    if (!v13)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDAdvertisingManager removeServiceForClient:];
      }

      v14 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = v11;
        _os_log_impl(&dword_272965000, v14, OS_LOG_TYPE_DEFAULT, "Unpublishing service %{public}@, since it was not pre-allocated", &v18, 0xCu);
      }

      connectablePeripheralManager = [(WPDAdvertisingManager *)self connectablePeripheralManager];
      [connectablePeripheralManager removeService:v6];
    }

    publishedServices2 = [(WPDAdvertisingManager *)self publishedServices];
    [publishedServices2 removeObjectForKey:clientCopy];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  serviceCopy = service;
  errorCopy = error;
  if (errorCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDAdvertisingManager peripheralManager:didAddService:error:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDAdvertisingManager peripheralManager:v11 didAddService:serviceCopy error:errorCopy];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDAdvertisingManager peripheralManager:didAddService:error:];
    }

    v12 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      uUID = [serviceCopy UUID];
      characteristics = [serviceCopy characteristics];
      v17 = 138543618;
      v18 = uUID;
      v19 = 2114;
      v20 = characteristics;
      _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "Added service with UUID %{public}@ and characteristics %{public}@", &v17, 0x16u);
    }

    [(WPDAdvertisingManager *)self updateAdvertiser];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)enableRanging:(BOOL)ranging forClient:(id)client
{
  rangingCopy = ranging;
  v15 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingManager enableRanging:forClient:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109378;
    v12[1] = rangingCopy;
    v13 = 2112;
    v14 = clientCopy;
    _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "WPAdvertisingManager enable ranging:%d for client: %@", v12, 0x12u);
  }

  rangingClients = [(WPDAdvertisingManager *)self rangingClients];
  v9 = rangingClients;
  if (rangingCopy)
  {
    [rangingClients addObject:clientCopy];
  }

  else
  {
    [rangingClients removeObject:clientCopy];
  }

  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingManager enableRanging:forClient:];
  }

  v10 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDAdvertisingManager *)rangingCopy enableRanging:v10 forClient:self];
  }

  if ([(WPDManager *)self state]== 3)
  {
    [(WPDAdvertisingManager *)self updateAdvertiser];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)addAdvertisingRequest:(id)request forClient:(id)client
{
  v38[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  clientCopy = client;
  clientType = [requestCopy clientType];
  advertisingData = [requestCopy advertisingData];
  v10 = [advertisingData length];

  if (v10 < 0x17)
  {
    if ([(WPDManager *)self state]== 3)
    {
      clientType2 = [requestCopy clientType];
      server = [(WPDManager *)self server];
      statsManager = [server statsManager];
      [statsManager startActivity:1 forType:clientType2];

      server2 = [(WPDManager *)self server];
      statsManager2 = [server2 statsManager];
      [statsManager2 resetActivity:1 forType:clientType2];

      advertisingRequests = [(WPDAdvertisingManager *)self advertisingRequests];
      v21 = [advertisingRequests isAdvertisingForClientType:clientType];

      if (v21)
      {
        v22 = [(WPDAdvertisingManager *)self removeAdvertisingRequest:requestCopy forClient:clientCopy shouldUpdate:0];
      }

      advertisingRequests2 = [(WPDAdvertisingManager *)self advertisingRequests];
      [advertisingRequests2 add:requestCopy];

      clientAdvertisingRequests = [(WPDAdvertisingManager *)self clientAdvertisingRequests];
      v25 = [clientAdvertisingRequests objectForKeyedSubscript:clientCopy];

      if (!v25)
      {
        v26 = [MEMORY[0x277CBEB58] set];
        clientAdvertisingRequests2 = [(WPDAdvertisingManager *)self clientAdvertisingRequests];
        [clientAdvertisingRequests2 setObject:v26 forKeyedSubscript:clientCopy];
      }

      clientAdvertisingRequests3 = [(WPDAdvertisingManager *)self clientAdvertisingRequests];
      v29 = [clientAdvertisingRequests3 objectForKeyedSubscript:clientCopy];
      [v29 addObject:requestCopy];

      [(WPDAdvertisingManager *)self updateAdvertiser];
      v13 = 0;
    }

    else
    {
      v30 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA450];
      v36 = @"CoreBluetooth is currently powered off";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v13 = [v30 errorWithDomain:@"WPErrorDomain" code:1 userInfo:v31];

      if (WPLogInitOnce != -1)
      {
        [WPDAdvertisingManager addAdvertisingRequest:forClient:];
      }

      v32 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [(WPDAdvertisingManager *)v32 addAdvertisingRequest:requestCopy forClient:self];
      }
    }
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA450];
    v38[0] = @"The payload size is too large";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v13 = [v11 errorWithDomain:@"WPErrorDomain" code:12 userInfo:v12];

    if (WPLogInitOnce != -1)
    {
      [WPDAdvertisingManager addAdvertisingRequest:forClient:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDAdvertisingManager addAdvertisingRequest:v14 forClient:?];
    }
  }

  v33 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)addAdvertisingRequest:(id)request forDaemon:(id)daemon
{
  requestCopy = request;
  daemonCopy = daemon;
  server = [(WPDManager *)self server];
  serverQueue = [server serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__WPDAdvertisingManager_addAdvertisingRequest_forDaemon___block_invoke;
  block[3] = &unk_279E59A48;
  block[4] = self;
  v13 = requestCopy;
  v14 = daemonCopy;
  v10 = daemonCopy;
  v11 = requestCopy;
  dispatch_async(serverQueue, block);
}

uint64_t __57__WPDAdvertisingManager_addAdvertisingRequest_forDaemon___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addAdvertisingRequest:*(a1 + 40) forClient:*(a1 + 48)];
  if (!objc_claimAutoreleasedReturnValue() && [*(a1 + 40) isRanging])
  {
    [*(a1 + 32) enableRanging:1 forClient:*(a1 + 48)];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)removeAdvertisingRequest:(id)request forDaemon:(id)daemon
{
  requestCopy = request;
  daemonCopy = daemon;
  server = [(WPDManager *)self server];
  serverQueue = [server serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WPDAdvertisingManager_removeAdvertisingRequest_forDaemon___block_invoke;
  block[3] = &unk_279E59A48;
  block[4] = self;
  v13 = requestCopy;
  v14 = daemonCopy;
  v10 = daemonCopy;
  v11 = requestCopy;
  dispatch_async(serverQueue, block);
}

void __60__WPDAdvertisingManager_removeAdvertisingRequest_forDaemon___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) removeAdvertisingRequest:*(a1 + 40) forClient:*(a1 + 48) shouldUpdate:1];
  v3 = [*(a1 + 32) rangingClients];
  v4 = [v3 containsObject:*(a1 + 48)];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    [v5 enableRanging:0 forClient:v6];
  }
}

- (id)removeAdvertisingRequest:(id)request forClient:(id)client shouldUpdate:(BOOL)update
{
  updateCopy = update;
  v37[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  clientCopy = client;
  clientAdvertisingRequests = [(WPDAdvertisingManager *)self clientAdvertisingRequests];
  v11 = [clientAdvertisingRequests count];

  if (v11)
  {
    *buf = 0;
    v31 = buf;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__4;
    v34 = __Block_byref_object_dispose__4;
    v12 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"CoreBluetooth isn't advertising for client type %d", objc_msgSend(requestCopy, "clientType")];
    v37[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v35 = [v12 errorWithDomain:@"WPErrorDomain" code:11 userInfo:v14];

    clientAdvertisingRequests2 = [(WPDAdvertisingManager *)self clientAdvertisingRequests];
    v16 = [clientAdvertisingRequests2 objectForKeyedSubscript:clientCopy];

    v17 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v16, "count")}];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __73__WPDAdvertisingManager_removeAdvertisingRequest_forClient_shouldUpdate___block_invoke_326;
    v25[3] = &unk_279E59A70;
    v18 = requestCopy;
    v26 = v18;
    selfCopy = self;
    v29 = buf;
    v19 = v17;
    v28 = v19;
    [v16 enumerateObjectsUsingBlock:v25];
    [(WPDAdvertisingManager *)self clientAdvertisingRequests];
    if (v18)
      v20 = {;
      [v20 setObject:v19 forKeyedSubscript:clientCopy];
    }

    else
      v20 = {;
      [v20 removeObjectForKey:clientCopy];
    }

    if (updateCopy)
    {
      [(WPDAdvertisingManager *)self updateAdvertiser];
    }

    v22 = *(v31 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDAdvertisingManager removeAdvertisingRequest:forClient:shouldUpdate:];
    }

    v21 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272965000, v21, OS_LOG_TYPE_DEFAULT, "Trying to remove an advertising request when there are no advert requests", buf, 2u);
    }

    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __73__WPDAdvertisingManager_removeAdvertisingRequest_forClient_shouldUpdate___block_invoke_326(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) && (v5 = [v3 clientType], v5 != objc_msgSend(*(a1 + 32), "clientType")))
  {
    [*(a1 + 48) addObject:v4];
  }

  else
  {
    v6 = [v4 clientType];
    v7 = [*(a1 + 40) currentAdvertisers];
    v8 = [v7 containsIndex:v6];

    if (v8)
    {
      v9 = [*(a1 + 40) currentAdvertisers];
      [v9 removeIndex:v6];

      v10 = [*(a1 + 40) clientsToNotifyOnAddressChange];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v6];
      [v10 removeObject:v11];

      if (WPLogInitOnce != -1)
      {
        __73__WPDAdvertisingManager_removeAdvertisingRequest_forClient_shouldUpdate___block_invoke_326_cold_1();
      }

      v12 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        v14 = v12;
        v15 = [v13 clientsToNotifyOnAddressChange];
        v24[0] = 67109378;
        v24[1] = v6;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_272965000, v14, OS_LOG_TYPE_DEFAULT, "[Privacy] removeAdvertisingRequest: %d, %@", v24, 0x12u);
      }

      [*(a1 + 40) setCurrentConnectableAdvertisingData:0];
      [*(a1 + 40) setCurrentNonConnectableAdvertisingData:0];
      [*(a1 + 40) setCurrentNonConnectableSecondaryAdvertisingData:0];
    }

    v16 = [*(a1 + 40) advertisingRequests];
    [v16 remove:v4];

    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;

    v19 = [*(a1 + 40) server];
    v20 = [v19 statsManager];
    [v20 stopActivity:1 forType:v6];

    v21 = [*(a1 + 40) server];
    v22 = [v21 statsManager];
    [v22 resetActivity:1 forType:v6];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setupStackAdvertiser:(id)advertiser
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__WPDAdvertisingManager_setupStackAdvertiser___block_invoke;
  v14[3] = &unk_279E59A98;
  v14[4] = self;
  advertiserCopy = advertiser;
  v5 = MEMORY[0x2743D14E0](v14);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__WPDAdvertisingManager_setupStackAdvertiser___block_invoke_2;
  v12[3] = &unk_279E59AE8;
  v12[4] = self;
  v6 = v5;
  v13 = v6;
  [advertiserCopy setAdvStartedHandler:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__WPDAdvertisingManager_setupStackAdvertiser___block_invoke_4;
  v10[3] = &unk_279E59AE8;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  [advertiserCopy setAdvStoppedHandler:v10];
  server = [(WPDManager *)self server];
  serverQueue = [server serverQueue];
  [advertiserCopy setDispatchQueue:serverQueue];
}

id __46__WPDAdvertisingManager_setupStackAdvertiser___block_invoke(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 4:
      v2 = [*(a1 + 32) nonConnectableSecondaryPeripheralManager];
      break;
    case 2:
      v2 = [*(a1 + 32) nonConnectablePeripheralManager];
      break;
    case 1:
      v2 = [*(a1 + 32) connectablePeripheralManager];
      break;
    default:
      v2 = 0;
      break;
  }

  return v2;
}

void __46__WPDAdvertisingManager_setupStackAdvertiser___block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) server];
  v7 = [v6 serverQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__WPDAdvertisingManager_setupStackAdvertiser___block_invoke_3;
  v10[3] = &unk_279E59AC0;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v13 = a3;
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __46__WPDAdvertisingManager_setupStackAdvertiser___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = (*(*(a1 + 48) + 16))();
  [v2 peripheralManagerDidStartAdvertising:v4 error:*(a1 + 40)];
}

void __46__WPDAdvertisingManager_setupStackAdvertiser___block_invoke_4(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) server];
  v7 = [v6 serverQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__WPDAdvertisingManager_setupStackAdvertiser___block_invoke_5;
  v10[3] = &unk_279E59AC0;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v13 = a3;
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __46__WPDAdvertisingManager_setupStackAdvertiser___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = (*(*(a1 + 48) + 16))();
  [v2 peripheralManager:v4 didStopAdvertisingWithError:*(a1 + 40)];
}

- (id)setWPDaemonAdvDataFromWPAdvertisingRequest:(id)request
{
  v27[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (requestCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBE0B8]);
    connectable = [requestCopy connectable];
    clientType = [requestCopy clientType];
    if ([(WPDAdvertisingManager *)self platformSupportsMultipleAdvertising]&& !(connectable & 1 | !+[WPDaemonServer supportsNC2AdvertisingInstance]) && clientType == 19)
    {
      v8 = 4;
    }

    else if (connectable)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    [v5 setAdvInstanceType:v8];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(requestCopy, "clientType")}];
    v26 = v9;
    advertisingData = [requestCopy advertisingData];
    v27[0] = advertisingData;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v5 setAdvDataPerType:v11];

    [v5 setAdvInterval:{objc_msgSend(requestCopy, "advertisingRate")}];
    if ([(WPDAdvertisingManager *)self isRanging])
    {
      rangingTypes = [(WPDAdvertisingManager *)self rangingTypes];
      v13 = [rangingTypes containsIndex:{objc_msgSend(requestCopy, "clientType")}];

      if (v13)
      {
        [v5 setEnableObjectLocatorResponseOnAdvertisingInstance:{objc_msgSend(requestCopy, "isRanging")}];
      }
    }

    [v5 setStopOnAdvertisingAddressChange:{objc_msgSend(requestCopy, "stopOnAdvertisingAddressChange")}];
    [v5 setEnableAdvertisingWithPowerAssertion:{objc_msgSend(requestCopy, "holdVoucher")}];
    [v5 setEnableEPAForAdvertisement:{objc_msgSend(requestCopy, "enableEPAForAdvertising")}];
    advertisementRequestedAt = [requestCopy advertisementRequestedAt];
    if (advertisementRequestedAt)
    {
      heySiriAdvEnabled = self->_heySiriAdvEnabled;

      if (!heySiriAdvEnabled)
      {
        advertisementRequestedAt2 = [requestCopy advertisementRequestedAt];
        [v5 setWiProxUpdateTimestamp:advertisementRequestedAt2];
      }
    }

    v17 = [(WPDAdvertisingManager *)self clientForAdvRequest:requestCopy];
    server = [(WPDManager *)self server];
    v19 = [server getClientForUUID:v17];

    bundleID = [v19 bundleID];

    if (bundleID)
    {
      bundleID2 = [v19 bundleID];
      v25 = bundleID2;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      [v5 setListOfClients:v22];
    }
  }

  else
  {
    v5 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)setWPDaemonAdvDataFrom:(id)from
{
  fromCopy = from;
  if (fromCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBE0B8]);
    v5 = [fromCopy objectForKeyedSubscript:*MEMORY[0x277CBDCF0]];
    if ([v5 BOOLValue])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    [v4 setAdvInstanceType:v6];

    v7 = *MEMORY[0x277CBDCF8];
    v8 = [fromCopy objectForKeyedSubscript:*MEMORY[0x277CBDCF8]];
    if (v8)
    {
      v9 = v8;
      v10 = [fromCopy objectForKeyedSubscript:v7];
      if ([v10 BOOLValue])
      {
        v11 = +[WPDaemonServer supportsNC2AdvertisingInstance];

        if (v11)
        {
          [v4 setAdvInstanceType:4];
        }
      }

      else
      {
      }
    }

    v12 = [fromCopy objectForKeyedSubscript:*MEMORY[0x277CBDCD0]];
    [v4 setMfgData:v12];

    v13 = [fromCopy objectForKeyedSubscript:*MEMORY[0x277CBDF18]];
    [v4 setAdvInterval:{objc_msgSend(v13, "intValue")}];

    v14 = *MEMORY[0x277CBDCC0];
    v15 = [fromCopy objectForKeyedSubscript:*MEMORY[0x277CBDCC0]];

    if (v15)
    {
      v16 = [fromCopy objectForKeyedSubscript:v14];
      [v4 setEnableObjectLocatorResponseOnAdvertisingInstance:{objc_msgSend(v16, "BOOLValue")}];
    }

    v17 = *MEMORY[0x277CBDCC8];
    v18 = [fromCopy objectForKeyedSubscript:*MEMORY[0x277CBDCC8]];

    if (v18)
    {
      v19 = [fromCopy objectForKeyedSubscript:v17];
      [v4 setStopOnAdvertisingAddressChange:{objc_msgSend(v19, "BOOLValue")}];
    }

    v20 = *MEMORY[0x277CBDF20];
    v21 = [fromCopy objectForKeyedSubscript:*MEMORY[0x277CBDF20]];

    if (v21)
    {
      v22 = [fromCopy objectForKeyedSubscript:v20];
      [v4 setEnableAdvertisingWithPowerAssertion:{objc_msgSend(v22, "BOOLValue")}];
    }

    v23 = *MEMORY[0x277CBDD58];
    v24 = [fromCopy objectForKeyedSubscript:*MEMORY[0x277CBDD58]];

    if (v24)
    {
      v25 = [fromCopy objectForKeyedSubscript:v23];
      [v4 setEnableEPAForAdvertisement:{objc_msgSend(v25, "BOOLValue")}];
    }

    v26 = *MEMORY[0x277CBDF00];
    v27 = [fromCopy objectForKeyedSubscript:*MEMORY[0x277CBDF00]];

    if (v27)
    {
      v28 = [fromCopy objectForKeyedSubscript:v26];
      [v4 setListOfClients:v28];
    }

    v29 = [fromCopy objectForKeyedSubscript:@"kCBMsgArgTimeXpcTimestampsTracking"];

    if (v29)
    {
      v30 = [fromCopy objectForKeyedSubscript:@"kCBMsgArgTimeXpcTimestampsTracking"];
      v31 = [v30 objectForKeyedSubscript:@"kCBMsgArgTimeXpcWiProxUpdateAdv"];

      if (v31)
      {
        v32 = [fromCopy objectForKeyedSubscript:@"kCBMsgArgTimeXpcTimestampsTracking"];
        v33 = [v32 objectForKeyedSubscript:@"kCBMsgArgTimeXpcWiProxUpdateAdv"];
        [v4 setWiProxUpdateTimestamp:v33];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __41__WPDAdvertisingManager_updateAdvertiser__block_invoke_367(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v15];

  if (!v6)
  {
    v7 = [*(a1 + 32) server];
    v8 = [v7 stackAdaptor];
    [v8 bleAdvertiserClass];
    v9 = objc_alloc_init(objc_opt_class());

    [*(a1 + 32) setupStackAdvertiser:v9];
    [*(*(a1 + 32) + 72) setObject:v9 forKeyedSubscript:v15];
  }

  v10 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v15];
  v11 = [v10 wpDaemonData];
  v12 = [v5 isEqual:v11];

  if (v12)
  {
    v13 = &unk_288201A48;
  }

  else
  {
    v14 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v15];
    [v14 setWpDaemonData:v5];

    v13 = &unk_288201A30;
  }

  [*(a1 + 40) setObject:v13 forKeyedSubscript:v15];
}

void __41__WPDAdvertisingManager_updateAdvertiser__block_invoke_373(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 intValue])
  {
    if ([v6 intValue] == 2)
    {
      if (WPLogInitOnce != -1)
      {
        __41__WPDAdvertisingManager_updateAdvertiser__block_invoke_373_cold_1();
      }

      v7 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(a1 + 32) + 72);
        v9 = v7;
        v10 = [v8 objectForKeyedSubscript:v5];
        v11 = [v10 wpDaemonData];
        v16 = 138543618;
        v17 = v5;
        v18 = 2114;
        v19 = v11;
        _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "Requesting to start advertising for client type %{public}@ with %{public}@", &v16, 0x16u);
      }

      v12 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v5];
      [v12 activate];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      __41__WPDAdvertisingManager_updateAdvertiser__block_invoke_373_cold_2();
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v5;
      _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "Requesting to stop advertising for client type %{public}@", &v16, 0xCu);
    }

    v14 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v5];
    [v14 invalidate];

    [*(*(a1 + 32) + 72) removeObjectForKey:v5];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __41__WPDAdvertisingManager_updateAdvertiser__block_invoke_394(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:*MEMORY[0x277CBDCF8]];
  if (![v3 BOOLValue])
  {

    goto LABEL_5;
  }

  v4 = +[WPDaemonServer supportsNC2AdvertisingInstance];

  if (!v4)
  {
LABEL_5:
    v6 = [v10 objectForKeyedSubscript:*MEMORY[0x277CBDCF0]];
    v7 = [v6 BOOLValue];

    v8 = *(a1 + 32);
    if (v7)
    {
      [v8 connectablePeripheralManager];
    }

    else
    {
      [v8 nonConnectablePeripheralManager];
    }
    v5 = ;
    goto LABEL_9;
  }

  v5 = [*(a1 + 32) nonConnectableSecondaryPeripheralManager];
LABEL_9:
  v9 = v5;
  [v5 startAdvertising:v10];
}

- (id)requestFromAdvertisingDataFromInstance:(int64_t)instance AddressChangeNotificationNeeded:(BOOL)needed
{
  neededCopy = needed;
  v37 = *MEMORY[0x277D85DE8];
  if (instance == 2)
  {
    currentNonConnectableSecondaryAdvertisingData = [(WPDAdvertisingManager *)self currentNonConnectableSecondaryAdvertisingData];
  }

  else if (instance == 1)
  {
    currentNonConnectableSecondaryAdvertisingData = [(WPDAdvertisingManager *)self currentNonConnectableAdvertisingData];
  }

  else
  {
    if (instance)
    {
      v7 = 0;
      goto LABEL_34;
    }

    currentNonConnectableSecondaryAdvertisingData = [(WPDAdvertisingManager *)self currentConnectableAdvertisingData];
  }

  v7 = currentNonConnectableSecondaryAdvertisingData;
  if (!currentNonConnectableSecondaryAdvertisingData)
  {
LABEL_34:
    getData = 0;
    goto LABEL_35;
  }

  getData = [currentNonConnectableSecondaryAdvertisingData getData];
  if (!getData)
  {
LABEL_35:
    v15 = 0;
    goto LABEL_36;
  }

  context = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:getData forKeyedSubscript:*MEMORY[0x277CBDCD0]];
  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBDEF8]];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "advertRate")}];
  [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x277CBDF18]];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:instance == 0];
  [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x277CBDCF0]];

  isRanging = [v7 isRanging];
  if (isRanging)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBDCC0]];
  }

  if (neededCopy)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBDCC8]];
  }

  assertPower = [v7 assertPower];
  if (assertPower)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBDF20]];
  }

  v14 = "";
  if ([v7 enableEPAForAdvertisement])
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBDD58]];
    v14 = "[enableEPA]";
  }

  if (instance == 2)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBDCF8]];
  }

  v15 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
  if ((isRanging | neededCopy | assertPower) == 1)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDAdvertisingManager requestFromAdvertisingDataFromInstance:AddressChangeNotificationNeeded:];
    }

    v16 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = "[Privacy] ";
      *buf = 136316418;
      v18 = "[Ranging] ";
      if (!isRanging)
      {
        v18 = "";
      }

      v19 = "[AssertPower] ";
      if (!assertPower)
      {
        v19 = "";
      }

      if (!neededCopy)
      {
        v17 = "";
      }

      v26 = v17;
      v27 = 2080;
      v28 = v18;
      v29 = 2080;
      v30 = v19;
      v31 = 2080;
      v20 = "AddrChangeNotificationNeeded ";
      if (!neededCopy)
      {
        v20 = "";
      }

      v32 = v20;
      v33 = 2080;
      v34 = v14;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_272965000, v16, OS_LOG_TYPE_DEFAULT, "%s%s%sAdvertisingRulesiOS: %sadv packet: %s %@ ", buf, 0x3Eu);
    }
  }

  objc_autoreleasePoolPop(context);
LABEL_36:
  v21 = v15;

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)advertisingRulesCBStackAdvertiser
{
  v43 = *MEMORY[0x277D85DE8];
  isAdvertiserTestMode = [(WPDAdvertisingManager *)self isAdvertiserTestMode];
  v3 = [(WPDAdvertisingManager *)self heySiriAdvertActive:?];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  advertisingRequests = [(WPDAdvertisingManager *)self advertisingRequests];
  allRequests = [advertisingRequests allRequests];

  v6 = [allRequests countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v35;
    *&v7 = 138412546;
    v31 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(allRequests);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        if (-[WPDManager isAdvertisingAllowlistedForType:](self, "isAdvertisingAllowlistedForType:", [v11 clientType]))
        {
          if (!v3 || -[WPDAdvertisingManager isAdvPermittedDuringHeySiriForType:](self, "isAdvPermittedDuringHeySiriForType:", [v11 clientType]))
          {
            v12 = [(WPDAdvertisingManager *)self clientForAdvRequest:v11];
            v13 = v12;
            if (!isAdvertiserTestMode || v12 && (-[WPDManager server](self, "server"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isClientTestMode:v13], v14, (v15 & 1) != 0))
            {
              v16 = [(WPDAdvertisingManager *)self setWPDaemonAdvDataFromWPAdvertisingRequest:v11];
              v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v11, "clientType")}];
              [dictionary setObject:v16 forKeyedSubscript:v17];
            }

            else
            {
              if (WPLogInitOnce != -1)
              {
                [WPDAdvertisingManager advertisingRulesCBStackAdvertiser];
              }

              v23 = WiProxLog;
              if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
              {
                goto LABEL_23;
              }

              v16 = v23;
              clientType = [v11 clientType];
              *buf = v31;
              v39 = v13;
              v40 = 2048;
              v41 = clientType;
              _os_log_impl(&dword_272965000, v16, OS_LOG_TYPE_INFO, "Not advertising for non-test client UUID: %@ type (%ld) when in test mode", buf, 0x16u);
            }

LABEL_23:
            goto LABEL_24;
          }

          if (WPLogInitOnce != -1)
          {
            [WPDAdvertisingManager advertisingRulesCBStackAdvertiser];
          }

          v25 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
          {
            v13 = v25;
            clientType2 = [v11 clientType];
            *buf = 134217984;
            v39 = clientType2;
            v20 = v13;
            v21 = OS_LOG_TYPE_INFO;
            v22 = "Not advertising for client type (%ld) when HeySiri is active";
LABEL_17:
            _os_log_impl(&dword_272965000, v20, v21, v22, buf, 0xCu);
            goto LABEL_23;
          }
        }

        else
        {
          if (WPLogInitOnce != -1)
          {
            [WPDAdvertisingManager advertisingRulesCBStackAdvertiser];
          }

          v18 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v18;
            clientType3 = [v11 clientType];
            *buf = 134217984;
            v39 = clientType3;
            v20 = v13;
            v21 = OS_LOG_TYPE_DEFAULT;
            v22 = "Not advertising for client type (%ld) when denylisted or not allowlisted";
            goto LABEL_17;
          }
        }

LABEL_24:
        ++v10;
      }

      while (v8 != v10);
      v27 = [allRequests countByEnumeratingWithState:&v34 objects:v42 count:16];
      v8 = v27;
    }

    while (v27);
  }

  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingManager advertisingRulesCBStackAdvertiser];
  }

  v28 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = dictionary;
    _os_log_impl(&dword_272965000, v28, OS_LOG_TYPE_DEFAULT, "AdvertisingRulesCBStackAdvertiser - advertising rules: %@", buf, 0xCu);
  }

  v29 = *MEMORY[0x277D85DE8];

  return dictionary;
}

void __45__WPDAdvertisingManager_isAdvertiserTestMode__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
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

- (BOOL)heySiriAdvertActive:(BOOL)active
{
  activeCopy = active;
  v29 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  advertisingRequests = [(WPDAdvertisingManager *)self advertisingRequests];
  allRequests = [advertisingRequests allRequests];

  v7 = [allRequests countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(allRequests);
      }

      v11 = *(*(&v22 + 1) + 8 * v10);
      if ([v11 clientType] == 8)
      {
        if (!activeCopy)
        {
          break;
        }

        v12 = [(WPDAdvertisingManager *)self clientForAdvRequest:v11];
        if (v12)
        {
          v13 = v12;
          server = [(WPDManager *)self server];
          v15 = [server isClientTestMode:v13];

          if (v15)
          {
            break;
          }
        }
      }

      if (v8 == ++v10)
      {
        v8 = [allRequests countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        v16 = 0;
        goto LABEL_21;
      }
    }

    if ([(WPDManager *)self isAdvertisingAllowlistedForType:8])
    {
      v16 = 1;
      goto LABEL_21;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDAdvertisingManager heySiriAdvertActive:];
    }

    v17 = WiProxLog;
    v16 = 0;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272965000, v17, OS_LOG_TYPE_DEFAULT, "WPClientHeySiri advertising is denylisted or not allowlisted", buf, 2u);
      goto LABEL_20;
    }
  }

  else
  {

LABEL_20:
    v16 = 0;
  }

LABEL_21:
  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingManager heySiriAdvertActive:];
  }

  v18 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v19 = @"NO";
    if (v16)
    {
      v19 = @"YES";
    }

    *buf = 138412290;
    v27 = v19;
    _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_INFO, "heySiriAdvertActive: %@", buf, 0xCu);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)clientForAdvRequest:(id)request
{
  requestCopy = request;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  clientAdvertisingRequests = [(WPDAdvertisingManager *)self clientAdvertisingRequests];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__WPDAdvertisingManager_clientForAdvRequest___block_invoke;
  v9[3] = &unk_279E595C8;
  v6 = requestCopy;
  v10 = v6;
  v11 = &v12;
  [clientAdvertisingRequests enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __45__WPDAdvertisingManager_clientForAdvRequest___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 containsObject:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)informClientsAdvertisingPending:(id)pending
{
  pendingCopy = pending;
  v5 = [MEMORY[0x277CBEB58] set];
  clientAdvertisingRequests = [(WPDAdvertisingManager *)self clientAdvertisingRequests];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__WPDAdvertisingManager_informClientsAdvertisingPending___block_invoke;
  v12[3] = &unk_279E59900;
  v7 = pendingCopy;
  v13 = v7;
  v14 = v5;
  v8 = v5;
  [clientAdvertisingRequests enumerateKeysAndObjectsUsingBlock:v12];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__WPDAdvertisingManager_informClientsAdvertisingPending___block_invoke_2;
  v10[3] = &unk_279E59420;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v8 enumerateObjectsUsingBlock:v10];
}

void __57__WPDAdvertisingManager_informClientsAdvertisingPending___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) clientType];
        if (v11 == [*(a1 + 32) clientType])
        {
          [*(a1 + 40) addObject:v5];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __57__WPDAdvertisingManager_informClientsAdvertisingPending___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 server];
  v5 = [v6 getClientForUUID:v4];

  [v5 advertisingPendingOfType:{objc_msgSend(*(a1 + 40), "clientType")}];
}

- (void)resetAdvertisingManager
{
  server = [(WPDManager *)self server];
  statsManager = [server statsManager];
  [statsManager stopActivity:1];

  [(WPDAdvertisingManager *)self setCurrentConnectableAdvertisingData:0];
  [(WPDAdvertisingManager *)self setCurrentNonConnectableAdvertisingData:0];
  [(WPDAdvertisingManager *)self setCurrentNonConnectableSecondaryAdvertisingData:0];
  publishedServices = [(WPDAdvertisingManager *)self publishedServices];
  [publishedServices removeAllObjects];

  preallocatedServices = [(WPDAdvertisingManager *)self preallocatedServices];
  [preallocatedServices removeAllObjects];
}

- (void)update
{
  state = [(WPDManager *)self state];
  if (state > 1)
  {
    if (state == 3)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDAdvertisingManager update];
      }

      v9 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "Peripheral manager is powered on", v11, 2u);
      }

      [(WPDAdvertisingManager *)self preallocateServices];
    }

    else
    {
      if (state != 2)
      {
        return;
      }

      if (WPLogInitOnce != -1)
      {
        [WPDAdvertisingManager update];
      }

      v5 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_272965000, v5, OS_LOG_TYPE_DEFAULT, "Peripheral manager is powered off, unauthorized or not supported", v13, 2u);
      }

      server = [(WPDManager *)self server];
      statsManager = [server statsManager];
      [statsManager stopActivity:1];
    }

    [(WPDAdvertisingManager *)self updateAdvertiser];
  }

  else if (state)
  {
    if (state == 1)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDAdvertisingManager update];
      }

      v4 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, "Peripheral manager is resetting, clearing currently advertising manager data", buf, 2u);
      }

      [(WPDAdvertisingManager *)self resetAdvertisingManager];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDAdvertisingManager update];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "Peripheral manager is unknown state", v10, 2u);
    }
  }
}

- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  advertisingCopy = advertising;
  errorCopy = error;
  nonConnectablePeripheralManager = [(WPDAdvertisingManager *)self nonConnectablePeripheralManager];
  if (nonConnectablePeripheralManager != advertisingCopy)
  {
    nonConnectableSecondaryPeripheralManager = [(WPDAdvertisingManager *)self nonConnectableSecondaryPeripheralManager];
    v4 = nonConnectableSecondaryPeripheralManager;
    if (nonConnectableSecondaryPeripheralManager != advertisingCopy)
    {

LABEL_7:
      currentAdvertisers = [(WPDAdvertisingManager *)self currentAdvertisers];
      v14 = [currentAdvertisers count];

      if (v14)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDAdvertisingManager peripheralManagerDidStartAdvertising:error:];
        }

        v15 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
        {
          v16 = v15;
          getCurrentAdvertisers = [(WPDAdvertisingManager *)self getCurrentAdvertisers];
          *buf = 138543362;
          v29 = getCurrentAdvertisers;
          _os_log_impl(&dword_272965000, v16, OS_LOG_TYPE_INFO, "Current advertisers %{public}@", buf, 0xCu);
        }

        if (errorCopy)
        {
          if (WPLogInitOnce != -1)
          {
            [WPDAdvertisingManager peripheralManagerDidStartAdvertising:error:];
          }

          v18 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
          {
            [WPDAdvertisingManager peripheralManagerDidStartAdvertising:v18 error:errorCopy];
          }
        }

        v19 = [MEMORY[0x277CBEB58] set];
        currentAdvertisers2 = [(WPDAdvertisingManager *)self currentAdvertisers];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __68__WPDAdvertisingManager_peripheralManagerDidStartAdvertising_error___block_invoke_480;
        v26[3] = &unk_279E597A0;
        v27 = v19;
        v21 = v19;
        [currentAdvertisers2 enumerateIndexesUsingBlock:v26];

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __68__WPDAdvertisingManager_peripheralManagerDidStartAdvertising_error___block_invoke_483;
        v24[3] = &unk_279E59C48;
        v24[4] = self;
        v25 = errorCopy;
        [v21 enumerateObjectsUsingBlock:v24];
      }

      else
      {
        if (WPLogInitOnce != -1)
        {
          [WPDAdvertisingManager peripheralManagerDidStartAdvertising:error:];
        }

        v22 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_272965000, v22, OS_LOG_TYPE_DEFAULT, "Started advertising while client asked to stop advertising - stopping advertising", buf, 2u);
        }

        [advertisingCopy stopAdvertising];
      }

      goto LABEL_23;
    }
  }

  connectablePeripheralManager = [(WPDAdvertisingManager *)self connectablePeripheralManager];
  isAdvertising = [connectablePeripheralManager isAdvertising];

  if (nonConnectablePeripheralManager != advertisingCopy)
  {
  }

  if ((isAdvertising & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_23:

  v23 = *MEMORY[0x277D85DE8];
}

void __68__WPDAdvertisingManager_peripheralManagerDidStartAdvertising_error___block_invoke_480(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (WPLogInitOnce != -1)
    {
      __68__WPDAdvertisingManager_peripheralManagerDidStartAdvertising_error___block_invoke_480_cold_1();
    }

    v2 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272965000, v2, OS_LOG_TYPE_DEFAULT, "Got NSNotFound as an advertising index", buf, 2u);
    }
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a2];
    [v3 addObject:v4];
  }
}

void __68__WPDAdvertisingManager_peripheralManagerDidStartAdvertising_error___block_invoke_483(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = [*(a1 + 32) clientAdvertisingRequests];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__WPDAdvertisingManager_peripheralManagerDidStartAdvertising_error___block_invoke_2_484;
  v6[3] = &unk_279E59C20;
  v8 = v3;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __68__WPDAdvertisingManager_peripheralManagerDidStartAdvertising_error___block_invoke_2_484(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v29;
    v11 = &WPLogInitOnce;
    *&v8 = 67109378;
    v26 = v8;
    v27 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v28 + 1) + 8 * v12) clientType] == *(a1 + 48))
        {
          v13 = [*(a1 + 32) server];
          v14 = [v13 getClientForUUID:v5];

          if (*v11 != -1)
          {
            __68__WPDAdvertisingManager_peripheralManagerDidStartAdvertising_error___block_invoke_2_484_cold_1();
          }

          v15 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v9;
            v17 = v6;
            v18 = v5;
            v19 = v11;
            v20 = *(a1 + 48);
            v21 = *(a1 + 40);
            v22 = v15;
            v23 = [v21 localizedDescription];
            *buf = v26;
            v33 = v20;
            v11 = v19;
            v5 = v18;
            v6 = v17;
            v9 = v16;
            v34 = 2112;
            v35 = v23;
            _os_log_impl(&dword_272965000, v22, OS_LOG_TYPE_DEFAULT, "Started to advertise for type %d with error %@", buf, 0x12u);

            v10 = v27;
          }

          v24 = *(a1 + 40);
          if (v24)
          {
            [v14 advertisingFailedToStart:v24 ofType:*(a1 + 48)];
          }

          else
          {
            [v14 advertisingStartedOfType:*(a1 + 48)];
          }
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v9);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)peripheralManager:(id)manager didStopAdvertisingWithError:(id)error
{
  v48 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingManager peripheralManager:didStopAdvertisingWithError:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    localizedDescription = [errorCopy localizedDescription];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = localizedDescription;
    _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "[Privacy] Did stop advertising with error: %@", &buf, 0xCu);
  }

  if ([errorCopy code] == 8)
  {
    clientsToNotifyOnAddressChange = [(WPDAdvertisingManager *)self clientsToNotifyOnAddressChange];
    v12 = [clientsToNotifyOnAddressChange count] == 0;

    if (!v12)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v44 = 0x3032000000;
      v45 = __Block_byref_object_copy__4;
      v46 = __Block_byref_object_dispose__4;
      v47 = [MEMORY[0x277CBEB58] set];
      advertisingRequests = [(WPDAdvertisingManager *)self advertisingRequests];
      allRequests = [advertisingRequests allRequests];

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __71__WPDAdvertisingManager_peripheralManager_didStopAdvertisingWithError___block_invoke_492;
      v33[3] = &unk_279E59C70;
      v33[4] = self;
      v33[5] = &buf;
      [allRequests enumerateObjectsUsingBlock:v33];
      if (WPLogInitOnce != -1)
      {
        [WPDAdvertisingManager peripheralManager:didStopAdvertisingWithError:];
      }

      v15 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(*(&buf + 1) + 40);
        *v39 = 138412546;
        *&v39[4] = allRequests;
        *&v39[12] = 2112;
        *&v39[14] = v16;
        _os_log_impl(&dword_272965000, v15, OS_LOG_TYPE_DEFAULT, "[Privacy] current all adv requests: %@, advRequestsToRemove: %@", v39, 0x16u);
      }

      if (WPLogInitOnce != -1)
      {
        [WPDAdvertisingManager peripheralManager:didStopAdvertisingWithError:];
      }

      v17 = WiProxLog;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        clientAdvertisingRequests = [(WPDAdvertisingManager *)self clientAdvertisingRequests];
        *v39 = 138412290;
        *&v39[4] = clientAdvertisingRequests;
        _os_log_impl(&dword_272965000, v17, OS_LOG_TYPE_DEFAULT, "[Privacy] advertising clients: %@", v39, 0xCu);
      }

      nonConnectablePeripheralManager = [(WPDAdvertisingManager *)self nonConnectablePeripheralManager];
      v20 = nonConnectablePeripheralManager;
      if (nonConnectablePeripheralManager != managerCopy)
      {
        if (+[WPDaemonServer supportsNC2AdvertisingInstance])
        {
          nonConnectableSecondaryPeripheralManager = [(WPDAdvertisingManager *)self nonConnectableSecondaryPeripheralManager];
          v22 = nonConnectableSecondaryPeripheralManager == managerCopy;

          if (v22)
          {
            goto LABEL_24;
          }
        }

        else
        {
        }

        v24 = 1;
        goto LABEL_27;
      }

LABEL_24:
      v24 = 0;
LABEL_27:
      *v39 = 0;
      *&v39[8] = v39;
      *&v39[16] = 0x3032000000;
      v40 = __Block_byref_object_copy__4;
      v41 = __Block_byref_object_dispose__4;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v25 = *(*(&buf + 1) + 40);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __71__WPDAdvertisingManager_peripheralManager_didStopAdvertisingWithError___block_invoke_499;
      v31[3] = &unk_279E59CC0;
      v32 = v24;
      v31[4] = self;
      v31[5] = v39;
      [v25 enumerateObjectsUsingBlock:v31];
      if (WPLogInitOnce != -1)
      {
        [WPDAdvertisingManager peripheralManager:didStopAdvertisingWithError:];
      }

      v26 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(*&v39[8] + 40);
        LODWORD(v34) = 138412290;
        *(&v34 + 4) = v27;
        _os_log_impl(&dword_272965000, v26, OS_LOG_TYPE_DEFAULT, "[Privacy] advClientRequestsToRemoveDict: %@", &v34, 0xCu);
      }

      *&v34 = 0;
      *(&v34 + 1) = &v34;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__4;
      v37 = __Block_byref_object_dispose__4;
      v38 = 0;
      v28 = *(*&v39[8] + 40);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __71__WPDAdvertisingManager_peripheralManager_didStopAdvertisingWithError___block_invoke_503;
      v30[3] = &unk_279E59CE8;
      v30[4] = self;
      v30[5] = &v34;
      [v28 enumerateKeysAndObjectsUsingBlock:v30];
      _Block_object_dispose(&v34, 8);

      _Block_object_dispose(v39, 8);
      _Block_object_dispose(&buf, 8);

      goto LABEL_32;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDAdvertisingManager peripheralManager:didStopAdvertisingWithError:];
    }

    v23 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDAdvertisingManager peripheralManager:v23 didStopAdvertisingWithError:?];
    }
  }

LABEL_32:

  v29 = *MEMORY[0x277D85DE8];
}

void __71__WPDAdvertisingManager_peripheralManager_didStopAdvertisingWithError___block_invoke_492(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) clientsToNotifyOnAddressChange];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v6, "clientType")}];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }
}

void __71__WPDAdvertisingManager_peripheralManager_didStopAdvertisingWithError___block_invoke_499(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientAdvertisingRequests];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__WPDAdvertisingManager_peripheralManager_didStopAdvertisingWithError___block_invoke_2_500;
  v7[3] = &unk_279E59C98;
  v10 = *(a1 + 48);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
}

void __71__WPDAdvertisingManager_peripheralManager_didStopAdvertisingWithError___block_invoke_2_500(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 containsObject:*(a1 + 32)])
  {
    if (*(a1 + 48) == 1)
    {
      if ([*(a1 + 32) connectable])
      {
LABEL_6:
        [*(*(*(a1 + 40) + 8) + 40) setObject:*(a1 + 32) forKey:v5];
        goto LABEL_7;
      }

      if (*(a1 + 48))
      {
        goto LABEL_7;
      }
    }

    if ([*(a1 + 32) connectable])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_7:
}

void __71__WPDAdvertisingManager_peripheralManager_didStopAdvertisingWithError___block_invoke_503(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) server];
  v8 = [v7 getClientForUUID:v5];

  if (v8)
  {
    v9 = [*(a1 + 32) removeAdvertisingRequest:v6 forClient:v5 shouldUpdate:0];
    v10 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Local address changed, client %d restart advertisement", objc_msgSend(v6, "clientType")];
    v18[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v10 errorWithDomain:@"WPErrorDomain" code:28 userInfo:v12];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    [v8 advertisingStoppedOfType:objc_msgSend(v6 withError:{"clientType"), *(*(*(a1 + 40) + 8) + 40)}];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic
{
  v56 = *MEMORY[0x277D85DE8];
  centralCopy = central;
  characteristicCopy = characteristic;
  v39 = centralCopy;
  identifier = [centralCopy identifier];
  uUID = [characteristicCopy UUID];
  uUIDString = [uUID UUIDString];

  service = [characteristicCopy service];
  uUID2 = [service UUID];
  uUIDString2 = [uUID2 UUIDString];

  v38 = characteristicCopy;
  v13 = [(WPDAdvertisingManager *)self getClientUUIDsForCharacteristic:characteristicCopy];
  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingManager peripheralManager:central:didSubscribeToCharacteristic:];
  }

  v14 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    identifier2 = [v39 identifier];
    uUIDString3 = [identifier2 UUIDString];
    *buf = 138543874;
    v51 = v13;
    v52 = 2114;
    v53 = uUIDString;
    v54 = 2114;
    v55 = uUIDString3;
    _os_log_impl(&dword_272965000, v15, OS_LOG_TYPE_DEFAULT, "Clients %{public}@ subscribed for characteristic %{public}@ for central %{public}@", buf, 0x20u);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v13;
  v18 = [(WPDConnection *)obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v46;
    do
    {
      v21 = 0;
      do
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v45 + 1) + 8 * v21);
        server = [(WPDManager *)self server];
        v24 = [server getClientForUUID:v22];

        if (v24)
        {
          v25 = [v24 connectionForUUID:identifier];
          if (v25)
          {
            v26 = v25;
            if (WPLogInitOnce != -1)
            {
              [WPDAdvertisingManager peripheralManager:central:didSubscribeToCharacteristic:];
            }

            v27 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v51 = v26;
              v52 = 2112;
              v53 = v22;
              _os_log_error_impl(&dword_272965000, v27, OS_LOG_TYPE_ERROR, "We already have a %@ for client %@", buf, 0x16u);
            }

            getCentral = [(WPDConnection *)v26 getCentral];
            if (getCentral)
            {

              goto LABEL_28;
            }

            getPeripheral = [(WPDConnection *)v26 getPeripheral];

            if (getPeripheral)
            {
LABEL_28:
              if (![(WPDConnection *)v26 didConnectSent]&& (![(WPDConnection *)v26 fetchConnectionType]|| [(WPDConnection *)v26 fetchConnectionType]== 2))
              {
                if (WPLogInitOnce != -1)
                {
                  [WPDAdvertisingManager peripheralManager:central:didSubscribeToCharacteristic:];
                }

                v35 = WiProxLog;
                if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
                {
                  [WPDAdvertisingManager peripheralManager:v44 central:v35 didSubscribeToCharacteristic:?];
                }

                [v24 central:identifier subscribed:1 toCharacteristic:uUIDString inService:uUIDString2];
              }

              goto LABEL_36;
            }

            v30 = [(WPDAdvertisingManager *)self getCharacteristicForClient:v22];
            [(WPDConnection *)v26 updateWithCentral:v39 characteristic:v30];
            [v24 createdConnection:v26];
            if (WPLogInitOnce != -1)
            {
              [WPDAdvertisingManager peripheralManager:central:didSubscribeToCharacteristic:];
            }

            v31 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
            {
LABEL_25:
              v32 = v31;
              uUIDString4 = [(WPDConnection *)v22 UUIDString];
              *buf = 138543618;
              v51 = v26;
              v52 = 2114;
              v53 = uUIDString4;
              _os_log_impl(&dword_272965000, v32, OS_LOG_TYPE_DEFAULT, "Created central connection %{public}@ for client %{public}@ - send didSubscribe", buf, 0x16u);
            }
          }

          else
          {
            v30 = [(WPDAdvertisingManager *)self getCharacteristicForClient:v22];
            v26 = [[WPDConnection alloc] initWithCentral:v39 characteristic:v30];
            [(WPDConnection *)v26 setClient:v24];
            [v24 createdConnection:v26];
            if (WPLogInitOnce != -1)
            {
              [WPDAdvertisingManager peripheralManager:central:didSubscribeToCharacteristic:];
            }

            v31 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_25;
            }
          }

          [v24 central:identifier subscribed:1 toCharacteristic:uUIDString inService:uUIDString2];

LABEL_36:
          goto LABEL_37;
        }

        if (WPLogInitOnce != -1)
        {
          [WPDAdvertisingManager peripheralManager:central:didSubscribeToCharacteristic:];
        }

        v29 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v51 = v22;
          v52 = 2112;
          v53 = uUIDString;
          _os_log_error_impl(&dword_272965000, v29, OS_LOG_TYPE_ERROR, "Couldn't find client %@ associated with this characteristic %@ (subscribing)", buf, 0x16u);
        }

LABEL_37:

        ++v21;
      }

      while (v19 != v21);
      v36 = [(WPDConnection *)obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      v19 = v36;
    }

    while (v36);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic
{
  v53 = *MEMORY[0x277D85DE8];
  centralCopy = central;
  characteristicCopy = characteristic;
  identifier = [centralCopy identifier];
  uUID = [characteristicCopy UUID];
  uUIDString = [uUID UUIDString];

  service = [characteristicCopy service];
  uUID2 = [service UUID];
  uUIDString2 = [uUID2 UUIDString];

  v38 = characteristicCopy;
  v14 = [(WPDAdvertisingManager *)self getClientUUIDsForCharacteristic:characteristicCopy];
  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingManager peripheralManager:central:didUnsubscribeFromCharacteristic:];
  }

  v15 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    identifier2 = [centralCopy identifier];
    uUIDString3 = [identifier2 UUIDString];
    *buf = 138543874;
    v48 = v14;
    v49 = 2114;
    v50 = uUIDString;
    v51 = 2114;
    v52 = uUIDString3;
    _os_log_impl(&dword_272965000, v16, OS_LOG_TYPE_DEFAULT, "Clients %{public}@ unsubscribed for characteristic %{public}@ for central %{public}@", buf, 0x20u);
  }

  v39 = centralCopy;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v14;
  v19 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v43;
    do
    {
      v22 = 0;
      do
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v42 + 1) + 8 * v22);
        server = [(WPDManager *)self server];
        v25 = [server getClientForUUID:v23];

        v26 = [v25 connectionForUUID:identifier];
        v27 = v26;
        if (v25)
        {
          v28 = v26 == 0;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          if (![v26 fetchConnectionType] || objc_msgSend(v27, "fetchConnectionType") == 2)
          {
            if (WPLogInitOnce != -1)
            {
              [WPDAdvertisingManager peripheralManager:central:didUnsubscribeFromCharacteristic:];
            }

            v32 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
            {
              v33 = v32;
              clientUUID = [v25 clientUUID];
              *buf = 138543874;
              v48 = identifier;
              v49 = 2114;
              v50 = uUIDString;
              v51 = 2114;
              v52 = clientUUID;
              _os_log_impl(&dword_272965000, v33, OS_LOG_TYPE_DEFAULT, "Central %{public}@ unsubsribed from characteristic %{public}@ for client %{public}@ - send didUnSubsribe", buf, 0x20u);
            }

            [v25 central:identifier subscribed:0 toCharacteristic:uUIDString inService:uUIDString2];
            goto LABEL_37;
          }

LABEL_28:
          if (WPLogInitOnce != -1)
          {
            [WPDAdvertisingManager peripheralManager:central:didUnsubscribeFromCharacteristic:];
          }

          v35 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v48 = v23;
            v49 = 2112;
            v50 = uUIDString;
            v30 = v35;
            v31 = "Couldn't find client %@ associated with this characteristic %@ (unsubscribing)";
            goto LABEL_36;
          }

          goto LABEL_37;
        }

        if (!v25)
        {
          if (WPLogInitOnce != -1)
          {
            [WPDAdvertisingManager peripheralManager:central:didUnsubscribeFromCharacteristic:];
          }

          v36 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v48 = v23;
            v49 = 2112;
            v50 = uUIDString;
            v30 = v36;
            v31 = "client associated with client UUID %@ doesn't exist and characteristic %@ (unsubscribing)";
            goto LABEL_36;
          }

          goto LABEL_37;
        }

        if (v26)
        {
          goto LABEL_28;
        }

        if (WPLogInitOnce != -1)
        {
          [WPDAdvertisingManager peripheralManager:central:didUnsubscribeFromCharacteristic:];
        }

        v29 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v48 = v23;
          v49 = 2112;
          v50 = uUIDString;
          v30 = v29;
          v31 = "connection associated with client UUID %@ doesn't exist and characteristic %@ (unsubscribing)";
LABEL_36:
          _os_log_impl(&dword_272965000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 0x16u);
        }

LABEL_37:

        ++v22;
      }

      while (v20 != v22);
      v20 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v20);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request
{
  managerCopy = manager;
  requestCopy = request;
  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingManager peripheralManager:didReceiveReadRequest:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "Read request received, ignoring", v8, 2u);
  }
}

- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests
{
  v71 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = requests;
  v40 = [obj countByEnumeratingWithState:&v55 objects:v70 count:16];
  if (v40)
  {
    v39 = *v56;
    *&v7 = 138412290;
    v37 = v7;
    v44 = managerCopy;
    selfCopy = self;
    do
    {
      v8 = 0;
      do
      {
        if (*v56 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v55 + 1) + 8 * v8);
        characteristic = [v9 characteristic];
        v10 = [(WPDAdvertisingManager *)self getClientUUIDsForCharacteristic:?];
        if ([v10 count])
        {
          v41 = v10;
          v42 = v8;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v47 = v10;
          v50 = [v47 countByEnumeratingWithState:&v51 objects:v69 count:16];
          if (v50)
          {
            v49 = *v52;
            v45 = v9;
            do
            {
              v11 = 0;
              do
              {
                if (*v52 != v49)
                {
                  objc_enumerationMutation(v47);
                }

                v12 = *(*(&v51 + 1) + 8 * v11);
                server = [(WPDManager *)self server];
                v14 = [server getClientForUUID:v12];

                central = [v9 central];
                identifier = [central identifier];

                v17 = [v14 connectionForUUID:identifier];
                v18 = v17;
                if (v14)
                {
                  v19 = v17 == 0;
                }

                else
                {
                  v19 = 1;
                }

                if (v19)
                {
                  if (WPLogInitOnce != -1)
                  {
                    [WPDAdvertisingManager peripheralManager:didReceiveWriteRequests:];
                  }

                  v20 = WiProxLog;
                  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
                  {
                    v31 = v20;
                    clientUUID = [v14 clientUUID];
                    processName = [v14 processName];
                    fetchConnectionType = [v18 fetchConnectionType];
                    *buf = 134219010;
                    v60 = v14;
                    v61 = 2112;
                    v62 = clientUUID;
                    v63 = 2112;
                    v64 = processName;
                    v65 = 2048;
                    v66 = v18;
                    v67 = 2048;
                    v68 = fetchConnectionType;
                    _os_log_error_impl(&dword_272965000, v31, OS_LOG_TYPE_ERROR, "client %p, client UUID %@, client name %@, connection %p or connection type %ld is invalid, send RequestNotSupported", buf, 0x34u);
                  }

                  [managerCopy respondToRequest:v9 withResult:6];
                }

                else
                {
                  value = [v9 value];
                  uUID = [characteristic UUID];
                  uUIDString = [uUID UUIDString];

                  service = [characteristic service];
                  uUID2 = [service UUID];
                  uUIDString2 = [uUID2 UUIDString];

                  if (WPLogInitOnce != -1)
                  {
                    [WPDAdvertisingManager peripheralManager:didReceiveWriteRequests:];
                  }

                  v26 = WiProxLog;
                  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
                  {
                    v27 = v26;
                    uUIDString3 = [identifier UUIDString];
                    clientUUID2 = [v14 clientUUID];
                    uUIDString4 = [clientUUID2 UUIDString];
                    *buf = 138412802;
                    v60 = uUIDString3;
                    v61 = 2112;
                    v62 = uUIDString;
                    v63 = 2112;
                    v64 = uUIDString4;
                    _os_log_impl(&dword_272965000, v27, OS_LOG_TYPE_INFO, "Received Write Request from Central %@ for characteristic %@ for client %@", buf, 0x20u);

                    self = selfCopy;
                    managerCopy = v44;
                  }

                  [v14 receivedData:value fromCharacteristic:uUIDString inService:uUIDString2 forPeripheral:identifier];
                  v9 = v45;
                  [managerCopy respondToRequest:v45 withResult:0];
                }

                ++v11;
              }

              while (v50 != v11);
              v50 = [v47 countByEnumeratingWithState:&v51 objects:v69 count:16];
            }

            while (v50);
          }

          v10 = v41;
          v8 = v42;
        }

        else
        {
          if (WPLogInitOnce != -1)
          {
            [WPDAdvertisingManager peripheralManager:didReceiveWriteRequests:];
          }

          v35 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
          {
            *buf = v37;
            v60 = characteristic;
            _os_log_error_impl(&dword_272965000, v35, OS_LOG_TYPE_ERROR, "Received Write Request for characteristic %@ for which no centrals have subscribed, send RequestNotSupported", buf, 0xCu);
          }

          [managerCopy respondToRequest:v9 withResult:6];
        }

        ++v8;
      }

      while (v8 != v40);
      v40 = [obj countByEnumeratingWithState:&v55 objects:v70 count:16];
    }

    while (v40);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)subscribers
{
  subscribersCopy = subscribers;
  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingManager peripheralManagerIsReadyToUpdateSubscribers:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_272965000, v5, OS_LOG_TYPE_INFO, "Peripheral Manager is now ready to update subscribers", v8, 2u);
  }

  server = [(WPDManager *)self server];
  getAllClients = [server getAllClients];

  [getAllClients enumerateObjectsUsingBlock:&__block_literal_global_555_0];
}

- (BOOL)addressChangeNotificationNeeded:(id)needed advertiserTypeString:(id)string
{
  v24 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v7 = [MEMORY[0x277CBEB58] setWithSet:needed];
  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingManager addressChangeNotificationNeeded:advertiserTypeString:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    clientsToNotifyOnAddressChange = [(WPDAdvertisingManager *)self clientsToNotifyOnAddressChange];
    v18 = 138412802;
    v19 = stringCopy;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = clientsToNotifyOnAddressChange;
    _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "[Privacy] AdvertisingRulesiOS: current %@ advertisers: %@, current clients for address change notification: %@", &v18, 0x20u);
  }

  clientsToNotifyOnAddressChange2 = [(WPDAdvertisingManager *)self clientsToNotifyOnAddressChange];
  [v7 minusSet:clientsToNotifyOnAddressChange2];

  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingManager addressChangeNotificationNeeded:advertiserTypeString:];
  }

  v12 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    clientsToNotifyOnAddressChange3 = [(WPDAdvertisingManager *)self clientsToNotifyOnAddressChange];
    v18 = 138412802;
    v19 = stringCopy;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = clientsToNotifyOnAddressChange3;
    _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "[Privacy] AdvertisingRulesiOS: remaining %@ advertisers: %@, notification clients: %@", &v18, 0x20u);
  }

  v15 = [v7 count] == 0;

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (int)maxAdvertisingRules
{
  if (+[WPDaemonServer supportsNC2AdvertisingInstance])
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)NSUUIDfromCBUUID:(id)d
{
  v3 = MEMORY[0x277CCAD78];
  dCopy = d;
  v5 = [v3 alloc];
  uUIDString = [dCopy UUIDString];

  v7 = [v5 initWithUUIDString:uUIDString];

  return v7;
}

void __60__WPDAdvertisingManager_platformSupportsMultipleAdvertising__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) connectablePeripheralManager];
  platformSupportsMultipleAdvertising_supported = [v1 supportsMultipleAdvertising];

  if (WPLogInitOnce != -1)
  {
    __60__WPDAdvertisingManager_platformSupportsMultipleAdvertising__block_invoke_cold_1();
  }

  v2 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    if (platformSupportsMultipleAdvertising_supported)
    {
      v3 = "supports";
    }

    else
    {
      v3 = "doesn't support";
    }

    v5 = 136446210;
    v6 = v3;
    _os_log_impl(&dword_272965000, v2, OS_LOG_TYPE_DEFAULT, "Platform %{public}s multiple advertising", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)getClientUUIDsForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  array = [MEMORY[0x277CBEB18] array];
  publishedServices = [(WPDAdvertisingManager *)self publishedServices];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__WPDAdvertisingManager_getClientUUIDsForCharacteristic___block_invoke;
  v12[3] = &unk_279E59D10;
  v13 = characteristicCopy;
  v7 = array;
  v14 = v7;
  v8 = characteristicCopy;
  [publishedServices enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

void __57__WPDAdvertisingManager_getClientUUIDsForCharacteristic___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = getFirstCharacteristicForService(a3);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 UUID];
    v8 = [*(a1 + 32) UUID];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      [*(a1 + 40) addObject:v10];
    }
  }
}

- (id)getCharacteristicForClient:(id)client
{
  clientCopy = client;
  publishedServices = [(WPDAdvertisingManager *)self publishedServices];
  v6 = [publishedServices objectForKeyedSubscript:clientCopy];

  v7 = getFirstCharacteristicForService(v6);

  return v7;
}

- (void)statsExportTimerFired
{
  server = [(WPDManager *)self server];
  serverQueue = [server serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WPDAdvertisingManager_statsExportTimerFired__block_invoke;
  block[3] = &unk_279E59078;
  block[4] = self;
  dispatch_async(serverQueue, block);
}

void __46__WPDAdvertisingManager_statsExportTimerFired__block_invoke(uint64_t a1)
{
  v60[2] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) connectableAdvTotalCount])
  {
    v59[1] = @"DroppedAdvertisementTypePercent";
    v60[0] = @"ConnectableAdvertisements";
    v59[0] = @"DroppedAdvertisementType";
    v2 = [MEMORY[0x277CCABB0] numberWithDouble:{objc_msgSend(*(a1 + 32), "connectableAdvDropCount") / objc_msgSend(*(a1 + 32), "connectableAdvTotalCount") * 100.0}];
    v60[1] = v2;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];

    v4 = v3;
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"com.apple.Bluetooth.", @"AdvTypesBufferDropInfo"];
    v54 = v4;
    v6 = v4;
    AnalyticsSendEventLazy();
  }

  if ([*(a1 + 32) nonConnectableAdvTotalCount])
  {
    v57[1] = @"DroppedAdvertisementTypePercent";
    v58[0] = @"NonConnectableAdvertisements";
    v57[0] = @"DroppedAdvertisementType";
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:{objc_msgSend(*(a1 + 32), "nonConnectableAdvDropCount") / objc_msgSend(*(a1 + 32), "nonConnectableAdvTotalCount") * 100.0}];
    v58[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];

    v9 = v8;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"com.apple.Bluetooth.", @"AdvTypesBufferDropInfo"];
    v55 = v9;
    v11 = v9;
    AnalyticsSendEventLazy();
  }

  v12 = 0;
  v13 = 1;
  v14 = 0x277CBE000uLL;
  do
  {
    v15 = objc_alloc_init(*(v14 + 2872));
    v16 = objc_alloc_init(*(v14 + 2872));
    v17 = [*(a1 + 32) advMetrics];
    v18 = [v17 totalAdvCountforType:v13];

    v19 = [*(a1 + 32) advMetrics];
    v20 = [v19 totalDroppedAdvCountforType:v13];

    if (v20)
    {
      v21 = v18 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v53 = v16;
      v22 = 0;
      v23 = v18;
      v24 = 1;
      do
      {
        if (v12 + v24 != 1)
        {
          v25 = [*(a1 + 32) advMetrics];
          v26 = [v25 droppedAdvCountforType:v13 by:v24];

          v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Type%d", v24];

          v28 = [MEMORY[0x277CCABB0] numberWithDouble:v26 / v23 * 100.0];
          [v15 setObject:v28 forKeyedSubscript:v27];

          v22 = v27;
        }

        v24 = (v24 + 1);
      }

      while (v24 != 28);
      v29 = [v15 keysSortedByValueUsingComparator:&__block_literal_global_583];
      v30 = [v29 count];
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Type%d", v13];
      [v53 setObject:v31 forKeyedSubscript:@"DroppedAdvertisementType"];

      v32 = [MEMORY[0x277CCABB0] numberWithDouble:v20 / v23 * 100.0];
      [v53 setObject:v32 forKeyedSubscript:@"DroppedAdvertisementTypePercent"];

      if (v30)
      {
        v33 = [v29 objectAtIndexedSubscript:0];
        v34 = [v15 objectForKeyedSubscript:v33];

        if (v34)
        {
          v35 = [v29 objectAtIndexedSubscript:0];
          [v53 setObject:v35 forKeyedSubscript:@"HighestDropsByAdvertisementType"];

          v36 = [v29 objectAtIndexedSubscript:0];
          v37 = [v15 objectForKeyedSubscript:v36];
          [v53 setObject:v37 forKeyedSubscript:@"HighestDropsByAdvertisementTypePercent"];
        }

        if (v30 != 1)
        {
          v38 = [v29 objectAtIndexedSubscript:1];
          v39 = [v15 objectForKeyedSubscript:v38];

          if (v39)
          {
            v40 = [v29 objectAtIndexedSubscript:1];
            [v53 setObject:v40 forKeyedSubscript:@"SecondHighestDropsByAdvertisementType"];

            v41 = [v29 objectAtIndexedSubscript:1];
            v42 = [v15 objectForKeyedSubscript:v41];
            [v53 setObject:v42 forKeyedSubscript:@"SecondHighestDropsByAdvertisementTypePercent"];
          }

          if (v30 >= 3)
          {
            v43 = [v29 objectAtIndexedSubscript:2];
            v44 = [v15 objectForKeyedSubscript:v43];

            if (v44)
            {
              v45 = [v29 objectAtIndexedSubscript:2];
              [v53 setObject:v45 forKeyedSubscript:@"ThirdHighestDropsByAdvertismentType"];

              v46 = [v29 objectAtIndexedSubscript:2];
              v47 = [v15 objectForKeyedSubscript:v46];
              [v53 setObject:v47 forKeyedSubscript:@"ThirdHighestDropsByAdvertisementTypePercent"];
            }
          }
        }
      }

      v16 = v53;
      v48 = v53;
      v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"com.apple.Bluetooth.", @"AdvTypesBufferDropInfo"];
      v56 = v48;
      v50 = v48;
      AnalyticsSendEventLazy();

      v14 = 0x277CBE000;
    }

    v13 = (v13 + 1);
    --v12;
  }

  while (v13 != 28);
  v51 = [*(a1 + 32) advMetrics];
  [v51 resetAllCounters];

  v52 = *MEMORY[0x277D85DE8];
}

- (void)initWithServer:(unsigned __int8 *)a1 .cold.3(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addCharacteristic:(uint64_t)a1 forService:(void *)a2 forClient:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 uuid];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addCharacteristic:(uint64_t)a1 forService:(void *)a2 forClient:(void *)a3 .cold.5(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 uuid];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)peripheralManager:(void *)a1 didAddService:(void *)a2 error:(void *)a3 .cold.2(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 UUID];
  v7 = [a3 localizedDescription];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)enableRanging:(void *)a3 forClient:.cold.3(char a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1 & 1;
  v5 = a2;
  v6 = [a3 rangingClients];
  v8[0] = 67109378;
  v8[1] = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_272965000, v5, OS_LOG_TYPE_DEBUG, "WPAdvertisingManager ranging:%d for clients: %@", v8, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addAdvertisingRequest:(void *)a3 forClient:.cold.2(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  [a2 clientType];
  [a3 state];
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xEu);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)isAdvertiserTestMode
{
  v7 = *MEMORY[0x277D85DE8];
  *(*self + 24);
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)peripheralManagerDidStartAdvertising:(void *)a1 error:(void *)a2 .cold.3(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_272965000, v3, OS_LOG_TYPE_ERROR, "Error starting advertising - %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)peripheralManager:(uint8_t *)buf central:(_BYTE *)a2 didSubscribeToCharacteristic:(os_log_t)log .cold.4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_272965000, log, OS_LOG_TYPE_ERROR, "NOT Updating existing connection with a Central", buf, 2u);
}

@end