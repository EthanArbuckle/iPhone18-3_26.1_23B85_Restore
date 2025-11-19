__CFString *SiriCoreUUIDStringCreate()
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

id initWRM_iRATInterface()
{
  if (initWRM_iRATInterface_sOnce != -1)
  {
    dispatch_once(&initWRM_iRATInterface_sOnce, &__block_literal_global_132);
  }

  v1 = classWRM_iRATInterface;

  return v1;
}

Class __initWRM_iRATInterface_block_invoke()
{
  if (WirelessCoexManagerLibrary_sOnce != -1)
  {
    dispatch_once(&WirelessCoexManagerLibrary_sOnce, &__block_literal_global_38);
  }

  result = objc_getClass("WRM_iRATInterface");
  classWRM_iRATInterface = result;
  if (!result)
  {
    __assert_rtn("initWRM_iRATInterface_block_invoke", "SiriCoreLinkRecommendationInfo.m", 17, "classWRM_iRATInterface");
  }

  getWRM_iRATInterfaceClass = WRM_iRATInterfaceFunction;
  return result;
}

void *__WirelessCoexManagerLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/WirelessCoexManager.framework/WirelessCoexManager", 2);
  WirelessCoexManagerLibrary_sLib = result;
  return result;
}

void sub_2669D5000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2669D57E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2669D7328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

SiriCoreConnectionTCPInfoMetrics *SiriCoreConnectionTCPInfoMetricsCreate(void *a1, uint64_t a2)
{
  v26 = a1;
  if (v26)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"SiriCoreConnectionTCPInfoMetrics *SiriCoreConnectionTCPInfoMetricsCreate(NSString *__strong, const struct tcp_info *)"}];
    [v9 handleFailureInFunction:v10 file:@"SiriCoreConnectionMetrics.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"interfaceName != nil"}];

    if (a2)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x277CCA890] currentHandler];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"SiriCoreConnectionTCPInfoMetrics *SiriCoreConnectionTCPInfoMetricsCreate(NSString *__strong, const struct tcp_info *)"}];
  [v11 handleFailureInFunction:v12 file:@"SiriCoreConnectionMetrics.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"tcpInfo != NULL"}];

LABEL_3:
  v21 = [SiriCoreConnectionTCPInfoMetrics alloc];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 20)];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 24)];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 28)];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 32)];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a2 + 68)];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a2 + 76)];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a2 + 84)];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a2 + 92)];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a2 + 100)];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a2 + 108)];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a2 + 116)];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a2 + 124)];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 64)];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a2 + 132)];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a2 + 140)];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:(*(a2 + 244) >> 4) & 1];
  v22 = [(SiriCoreConnectionTCPInfoMetrics *)v21 initWithInterfaceName:v26 rttCurrent:v25 rttSmoothed:v23 rttVariance:v20 rttBest:v19 packetsSent:v18 bytesSent:v24 bytesRetransmitted:v16 bytesUnacked:v15 packetsReceived:v14 bytesReceived:v17 duplicateBytesReceived:v13 outOfOrderBytesReceived:v3 sendBufferBytes:v4 sendBandwidth:v5 synRetransmits:v6 tfoSynDataAcked:v7];

  return v22;
}

void sub_2669DF528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _SiriCoreSiriConnectionMethodGetNextSupported(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = *MEMORY[0x277D47CC8];
  while (1)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    [v6 addObject:v8];

    if (a1 == 3)
    {
      a1 = 4;
      if ([v5 isEqualToString:v7] & (a3 ^ 1))
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    if (a1 == 2)
    {
      break;
    }

    if (a1 == 4)
    {
      a1 = 2;
      goto LABEL_12;
    }

    a1 = 3;
    if (a3)
    {
      goto LABEL_12;
    }

LABEL_8:
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v10 = [v6 containsObject:v9];

    if (v10)
    {
      goto LABEL_12;
    }
  }

  a1 = 0;
LABEL_12:
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v12 = [v6 containsObject:v11];

  if (v12)
  {
    a1 = 0;
  }

  return a1;
}

void sub_2669E423C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

id SiriCoreGetConnectionNetworkPathReport(void *a1, void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = MEMORY[0x277CBEB38];
    v5 = a2;
    v6 = a1;
    v2 = objc_alloc_init(v4);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:nw_path_get_status(v5)];
    [v2 setObject:v7 forKey:@"connectionPreparingPathStatus"];

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    enumerate_block[0] = MEMORY[0x277D85DD0];
    enumerate_block[1] = 3221225472;
    enumerate_block[2] = __SiriCoreGetConnectionNetworkPathReport_block_invoke;
    enumerate_block[3] = &unk_279BD5C90;
    v9 = v8;
    v25 = v9;
    nw_path_enumerate_interfaces(v5, enumerate_block);
    [v2 setObject:v9 forKey:@"connectionPreparingPathInterfaces"];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:MEMORY[0x26D5E5AD0](v5)];
    [v2 setObject:v10 forKey:@"connectionPreparingPathIsExpensive"];

    v11 = [MEMORY[0x277CCABB0] numberWithBool:MEMORY[0x26D5E5AC0](v5)];
    [v2 setObject:v11 forKey:@"connectionPreparingPathIsConstrained"];

    v12 = [MEMORY[0x277CCABB0] numberWithBool:nw_path_has_ipv4(v5)];
    [v2 setObject:v12 forKey:@"connectionPreparingPathHasIpv4"];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:nw_path_has_ipv6(v5)];
    [v2 setObject:v13 forKey:@"connectionPreparingPathHasIpv6"];

    v14 = [MEMORY[0x277CCABB0] numberWithBool:nw_path_has_dns(v5)];
    [v2 setObject:v14 forKey:@"connectionPreparingPathHasDNS"];

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __SiriCoreGetConnectionNetworkPathReport_block_invoke_2;
    v22 = &unk_279BD5CB8;
    v16 = v15;
    v23 = v16;
    nw_path_enumerate_gateways(v5, &v19);

    [v2 setObject:v16 forKey:{@"connectionPreparingPathGateways", v19, v20, v21, v22}];
    v17 = _getConnectionDescription(v6);

    if (v17)
    {
      [v2 setObject:v17 forKey:@"connectionInfo"];
    }
  }

  return v2;
}

uint64_t __SiriCoreGetConnectionNetworkPathReport_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:nw_interface_get_type(v3)];
    [v4 setObject:v5 forKey:@"type"];

    name = nw_interface_get_name(v3);
    if (name)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:name];
      if (v7)
      {
        [v4 setObject:v7 forKey:@"name"];
      }
    }

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:nw_interface_get_index(v3)];
    [v4 setObject:v8 forKey:@"index"];

    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  return 1;
}

uint64_t __SiriCoreGetConnectionNetworkPathReport_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = _getEndpointInfo(a2);
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

id _getConnectionDescription(NSObject *a1)
{
  v1 = nw_connection_copy_description(a1);
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
    free(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id _getEndpointInfo(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    type = nw_endpoint_get_type(v1);
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:type];
    [v2 setObject:v4 forKey:@"type"];

    if ((type - 1) <= 1)
    {
      v5 = nw_endpoint_copy_port_string(v1);
      if (v5)
      {
        v6 = v5;
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
        [v2 setObject:v7 forKey:@"port"];
        free(v6);
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SiriCoreGetConnectionReadyReport(void *a1, void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = MEMORY[0x277CBEB38];
    v5 = a2;
    v6 = a1;
    v2 = objc_alloc_init(v4);
    duration_milliseconds = nw_establishment_report_get_duration_milliseconds(v5);
    attempt_started_after_milliseconds = nw_establishment_report_get_attempt_started_after_milliseconds(v5);
    previous_attempt_count = nw_establishment_report_get_previous_attempt_count(v5);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:duration_milliseconds];
    [v2 setObject:v10 forKey:@"connectionEstablishmentDuration"];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:attempt_started_after_milliseconds];
    [v2 setObject:v11 forKey:@"connectionEstablishmentAttemptDelay"];

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:previous_attempt_count];
    [v2 setObject:v12 forKey:@"connectionEstablishmentPreviousAttemptCount"];

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    enumerate_block[0] = MEMORY[0x277D85DD0];
    enumerate_block[1] = 3221225472;
    enumerate_block[2] = __SiriCoreGetConnectionReadyReport_block_invoke;
    enumerate_block[3] = &unk_279BD5CE0;
    v14 = v13;
    v30 = v14;
    nw_establishment_report_enumerate_protocols(v5, enumerate_block);
    [v2 setObject:v14 forKey:@"connectionEstablishmentProtocols"];
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __SiriCoreGetConnectionReadyReport_block_invoke_2;
    v27 = &unk_279BD5D08;
    v16 = v15;
    v28 = v16;
    nw_establishment_report_enumerate_resolutions(v5, &v24);
    [v2 setObject:v16 forKey:{@"connectionEstablishmentResolution", v24, v25, v26, v27}];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = &unk_287838258;
    if (nw_establishment_report_get_proxy_configured(v5))
    {
      v19 = &unk_287838240;
    }

    else
    {
      v19 = &unk_287838258;
    }

    if (nw_establishment_report_get_used_proxy(v5))
    {
      v18 = &unk_287838240;
    }

    [v17 setObject:v19 forKey:@"proxyConfigured"];
    [v17 setObject:v18 forKey:@"usingConfiguredProxy"];
    v20 = nw_establishment_report_copy_proxy_endpoint(v5);

    if (v20)
    {
      v21 = _getEndpointInfo(v20);
      if (v21)
      {
        [v17 setObject:v21 forKey:@"proxyEndpoint"];
      }
    }

    [v2 setObject:v17 forKey:@"connectionEstablishmentProxyConfiguration"];
    v22 = _getConnectionDescription(v6);

    if (v22)
    {
      [v2 setObject:v22 forKey:@"connectionInfo"];
    }
  }

  return v2;
}

uint64_t __SiriCoreGetConnectionReadyReport_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x277CBEB38];
  v8 = a2;
  v9 = objc_alloc_init(v7);
  v10 = [v8 description];

  if (v10)
  {
    [v9 setObject:v10 forKey:@"protocol"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v9 setObject:v11 forKey:@"handShakeDuration"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  [v9 setObject:v12 forKey:@"handShakeRTT"];

  [*(a1 + 32) addObject:v9];
  return 1;
}

uint64_t __SiriCoreGetConnectionReadyReport_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = MEMORY[0x277CBEB38];
  v13 = a5;
  v14 = objc_alloc_init(v12);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  [v14 setObject:v15 forKey:@"resolutionSource"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a4];
  [v14 setObject:v16 forKey:@"endpointCount"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v14 setObject:v17 forKey:@"duration"];

  v18 = _getEndpointInfo(v13);

  if (v18)
  {
    [v14 setObject:v18 forKey:@"successfulEndpoint"];
  }

  v19 = _getEndpointInfo(v11);
  if (v19)
  {
    [v14 setObject:v19 forKey:@"preferredEndpoint"];
  }

  [*(a1 + 32) addObject:v14];

  return 1;
}

id SiriCoreSQLiteQueryCreateColumnDefinition(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [v1 name];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 siriCoreSQLiteValue_escapedString:0];
    [v2 addObject:v5];
  }

  v6 = [v1 type];
  if (v6)
  {
    [v2 addObject:v6];
  }

  v23 = v6;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v1 constraints];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 name];
        if (v13)
        {
          [v2 addObject:@"CONSTRAINT"];
          v14 = [v13 siriCoreSQLiteValue_escapedString:0];
          [v2 addObject:v14];
        }

        v15 = [v12 type];
        if (v15 <= 2)
        {
          if (v15 == 1)
          {
            [v2 addObject:@"PRIMARY KEY"];
            if (([v12 options] & 1) == 0)
            {
              goto LABEL_23;
            }

            v16 = v2;
            v17 = @"AUTOINCREMENT";
          }

          else
          {
            if (v15 != 2)
            {
              goto LABEL_23;
            }

            v16 = v2;
            v17 = @"NOT NULL";
          }

          goto LABEL_22;
        }

        if (v15 == 3)
        {
          v16 = v2;
          v17 = @"UNIQUE";
LABEL_22:
          [v16 addObject:v17];
          goto LABEL_23;
        }

        if (v15 == 4)
        {
          [v2 addObject:@"DEFAULT"];
          v18 = [v12 value];
          v19 = [v18 siriCoreSQLiteValue_escapedString:0];
          [v2 addObject:v19];
        }

LABEL_23:
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  if ([v2 count])
  {
    v20 = [v2 componentsJoinedByString:@" "];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

__CFString *SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 count];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [v3 objectAtIndex:0];
      v6 = [v5 siriCoreSQLiteValue_escapedString:a2];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v3;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v16 + 1) + 8 * i) siriCoreSQLiteValue_escapedString:{a2, v16}];
            [v5 addObject:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      v6 = [v5 componentsJoinedByString:{@", "}];
    }

    v7 = v6;
  }

  else
  {
    v7 = &stru_28782DDB0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

__CFString *SiriCoreSQLiteQueryCreateParametrizedAndCommaSeparatedString(unint64_t a1)
{
  if (a1 >= 0x11)
  {
    v3 = malloc_type_malloc(3 * a1 - 2, 0x37F01F11uLL);
    bzero(v3, 3 * a1 - 2);
    v4 = a1 - 1;
    v5 = v3;
    do
    {
      *v5 = 11327;
      v5[2] = 32;
      v5 += 3;
      --v4;
    }

    while (v4);
    *v5 = 63;
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v3 length:3 * a1 - 2 encoding:1 freeWhenDone:1];
  }

  else
  {
    v2 = off_279BD5D48[a1];
  }

  return v2;
}

id SiriCoreSQLiteQueryCreateCriterionExpression(void *a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 columnName];
  v3 = [v1 value];
  v4 = [v1 comparisonOperator] - 1;
  if (v4 <= 5)
  {
    v5 = off_279BD5DD0[v4];
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = [v2 siriCoreSQLiteValue_escapedString:1];
    v8 = [v3 siriCoreSQLiteValue_escapedString:0];
    v9 = [v6 initWithFormat:v5, v7, v8];

    if (v9)
    {
      v10 = v9;
      goto LABEL_55;
    }
  }

  v11 = [v1 values];
  v12 = [v1 subcriteria];
  v13 = [v1 logicalOperator];
  v10 = 0;
  if (v13 <= 6)
  {
    if (v13 <= 3)
    {
      if (v13 != 1)
      {
        if (v13 != 2)
        {
          if (v13 != 3)
          {
            goto LABEL_54;
          }

          v14 = objc_alloc(MEMORY[0x277CCACA8]);
          v15 = [v2 siriCoreSQLiteValue_escapedString:1];
          v16 = SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(v11, 0);
          v17 = [v14 initWithFormat:@"%@ IN (%@)", v15, v16];
          goto LABEL_50;
        }

        v42 = objc_alloc(MEMORY[0x277CCACA8]);
        v15 = [v2 siriCoreSQLiteValue_escapedString:1];
        v16 = [v11 firstObject];
        [v16 siriCoreSQLiteValue_escapedString:0];
        v43 = v56 = v12;
        v44 = [v11 lastObject];
        v45 = [v44 siriCoreSQLiteValue_escapedString:0];
        v46 = [v42 initWithFormat:@"%@ BETWEEN %@ AND %@", v15, v43, v45];
LABEL_48:
        v10 = v46;

        v12 = v56;
LABEL_51:

        goto LABEL_52;
      }

      v52 = v11;
      v53 = v3;
      v54 = v2;
      v31 = [v12 count];
      v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v31];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v55 = v12;
      v32 = v12;
      v33 = [v32 countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v62;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v62 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = SiriCoreSQLiteQueryCreateCriterionExpression(*(*(&v61 + 1) + 8 * i));
            if (v37)
            {
              v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@)", v37];
              [v22 addObject:v38];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v61 objects:v66 count:16];
        }

        while (v34);
      }

      if ([v22 count])
      {
        v30 = @" AND ";
        goto LABEL_42;
      }

      goto LABEL_60;
    }

    if (v13 == 4)
    {
      v40 = objc_alloc(MEMORY[0x277CCACA8]);
      v15 = [v2 siriCoreSQLiteValue_escapedString:1];
      v16 = [v3 siriCoreSQLiteValue_escapedString:0];
      v17 = [v40 initWithFormat:@"%@ IS %@", v15, v16];
    }

    else
    {
      if (v13 != 5)
      {
        v19 = objc_alloc(MEMORY[0x277CCACA8]);
        v15 = [v2 siriCoreSQLiteValue_escapedString:1];
        v20 = [v19 initWithFormat:@"%@ ISNULL", v15];
        goto LABEL_59;
      }

      v48 = objc_alloc(MEMORY[0x277CCACA8]);
      v15 = [v2 siriCoreSQLiteValue_escapedString:1];
      v16 = [v3 siriCoreSQLiteValue_escapedString:0];
      v17 = [v48 initWithFormat:@"%@ IS NOT %@", v15, v16];
    }

LABEL_50:
    v10 = v17;
    goto LABEL_51;
  }

  if (v13 <= 9)
  {
    if (v13 == 7)
    {
      v39 = objc_alloc(MEMORY[0x277CCACA8]);
      v15 = [v2 siriCoreSQLiteValue_escapedString:1];
      v16 = [v3 siriCoreSQLiteValue_escapedString:0];
      v17 = [v39 initWithFormat:@"%@ LIKE %@", v15, v16];
    }

    else
    {
      if (v13 == 8)
      {
        v47 = objc_alloc(MEMORY[0x277CCACA8]);
        v15 = [v2 siriCoreSQLiteValue_escapedString:1];
        v16 = [v11 firstObject];
        [v16 siriCoreSQLiteValue_escapedString:0];
        v43 = v56 = v12;
        v44 = [v11 lastObject];
        v45 = [v44 siriCoreSQLiteValue_escapedString:0];
        v46 = [v47 initWithFormat:@"%@ NOT BETWEEN %@ AND %@", v15, v43, v45];
        goto LABEL_48;
      }

      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v15 = [v2 siriCoreSQLiteValue_escapedString:1];
      v16 = SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(v11, 0);
      v17 = [v18 initWithFormat:@"%@ NOT IN (%@)", v15, v16];
    }

    goto LABEL_50;
  }

  if (v13 == 10)
  {
    v41 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [v2 siriCoreSQLiteValue_escapedString:1];
    v16 = [v3 siriCoreSQLiteValue_escapedString:0];
    v17 = [v41 initWithFormat:@"%@ NOT LIKE %@", v15, v16];
    goto LABEL_50;
  }

  if (v13 != 11)
  {
    if (v13 != 12)
    {
      goto LABEL_54;
    }

    v52 = v11;
    v53 = v3;
    v54 = v2;
    v21 = [v12 count];
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v21];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v55 = v12;
    v23 = v12;
    v24 = [v23 countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v58;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v58 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = SiriCoreSQLiteQueryCreateCriterionExpression(*(*(&v57 + 1) + 8 * j));
          if (v28)
          {
            v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@)", v28];
            [v22 addObject:v29];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v57 objects:v65 count:16];
      }

      while (v25);
    }

    if ([v22 count])
    {
      v30 = @" OR ";
LABEL_42:
      v10 = [v22 componentsJoinedByString:v30];
      goto LABEL_61;
    }

LABEL_60:
    v10 = 0;
LABEL_61:
    v3 = v53;
    v2 = v54;
    v11 = v52;

    v12 = v55;
    if (!v10)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v51 = objc_alloc(MEMORY[0x277CCACA8]);
  v15 = [v2 siriCoreSQLiteValue_escapedString:1];
  v20 = [v51 initWithFormat:@"%@ NOTNULL", v15];
LABEL_59:
  v10 = v20;
LABEL_52:

  if (v10)
  {
LABEL_53:
    v10 = v10;
  }

LABEL_54:

LABEL_55:
  v49 = *MEMORY[0x277D85DE8];

  return v10;
}

id SiriCoreSQLiteQueryCreateOrderExpression(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 columnNames];
    if ([v3 count] && (v4 = objc_msgSend(v2, "mode"), v4 <= 2))
    {
      v5 = off_279BD5E00[v4];
      v6 = objc_alloc(MEMORY[0x277CCACA8]);
      v7 = SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(v3, 1);
      v8 = [v6 initWithFormat:v5, v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id SiriCoreSQLiteQueryCreateRangeExpression(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 offset];
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = [v2 limit];
    if (v3)
    {
      v6 = [v4 initWithFormat:@"LIMIT %tu OFFSET %tu", v5, v3];
    }

    else
    {
      v6 = [v4 initWithFormat:@"LIMIT %tu", v5, v9];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __Block_byref_object_copy__1683(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _RouteHostStringIsAcceptable(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 hasSuffix:@"apple.com"] & 1) == 0)
  {
    v3 = [v2 hasPrefix:@"17."];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t __Block_byref_object_copy__2390(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id initWRM_iRATInterface_2578()
{
  if (initWRM_iRATInterface_sOnce_2579 != -1)
  {
    dispatch_once(&initWRM_iRATInterface_sOnce_2579, &__block_literal_global_298);
  }

  v1 = classWRM_iRATInterface_2580;

  return v1;
}

Class __initWRM_iRATInterface_block_invoke_2582()
{
  if (WirelessCoexManagerLibrary_sOnce_2583 != -1)
  {
    dispatch_once(&WirelessCoexManagerLibrary_sOnce_2583, &__block_literal_global_301);
  }

  result = objc_getClass("WRM_iRATInterface");
  classWRM_iRATInterface_2580 = result;
  getWRM_iRATInterfaceClass_2574 = WRM_iRATInterfaceFunction_2585;
  return result;
}

void *__WirelessCoexManagerLibrary_block_invoke_2587()
{
  result = dlopen("/System/Library/PrivateFrameworks/WirelessCoexManager.framework/WirelessCoexManager", 2);
  WirelessCoexManagerLibrary_sLib_2588 = result;
  return result;
}

void sub_2669F6278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 160), 8);
  _Block_object_dispose((v45 - 240), 8);
  _Block_object_dispose((v45 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2589(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2669F7A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SiriCoreNetworkQuality(BOOL *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = +[SiriCoreNetworkManager sharedInstance];
    v5 = v4;
    if (a2)
    {
      if (a2 == 2)
      {
        v6 = [v4 anyNetworkQuality];
      }

      else
      {
        v6 = [v4 cellularNetworkQuality];
      }
    }

    else
    {
      v6 = [v4 wifiNetworkQuality];
    }

    v7 = v6;

    if (v7)
    {
      *a1 = v7 != 2;
    }
  }
}

__CFString *SiriCoreConnectionTechnologyGetDescription(uint64_t a1)
{
  if (a1 > 2999)
  {
    if (a1 <= 3002)
    {
      if (a1 != 3000)
      {
        if (a1 == 3001)
        {
          return @"LedBelly";
        }

        else
        {
          return @"IDS";
        }
      }
    }

    else
    {
      if (a1 <= 3004)
      {
        if (a1 == 3003)
        {
          return @"POP";
        }

        else
        {
          return @"Florence";
        }
      }

      if (a1 == 3005)
      {
        return @"Local";
      }

      if (a1 != 3006)
      {
        return @"Unknown";
      }
    }

    return @"MPTCP";
  }

  v1 = a1 - 2000;
  result = @"UTRAN";
  switch(v1)
  {
    case 0:
      result = @"WWAN";
      break;
    case 1:
      return result;
    case 2:
      result = @"2G CDMA1x";
      break;
    case 3:
      result = @"LTE";
      break;
    case 4:
      result = @"2G GPRS";
      break;
    case 5:
      result = @"2G Edge";
      break;
    case 6:
      result = @"3G WCDMA";
      break;
    case 7:
      result = @"3G HSDPA";
      break;
    case 8:
      result = @"3G HSUPA";
      break;
    case 9:
      result = @"3G EVDORev0";
      break;
    case 10:
      result = @"3G EVDORevA";
      break;
    case 11:
      result = @"CDMA EVDORevB";
      break;
    case 12:
      result = @"HRPD";
      break;
    case 13:
      result = @"5G NRNSA";
      break;
    case 14:
      result = @"5G NR";
      break;
    default:
      if (@"UTRAN" != 1000)
      {
        return @"Unknown";
      }

      result = @"Wi-Fi";
      break;
  }

  return result;
}

id SiriCoreSQLiteDatabaseCreateSQLiteAPIErrorFromResultCode(int a1, uint64_t a2)
{
  if (a1)
  {
    v4 = sqlite3_errstr(a1);
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v4];
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v7 = v6;
      if (v5)
      {
        [v6 setObject:v5 forKey:*MEMORY[0x277CCA450]];
      }
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    [v7 setObject:v9 forKey:@"SiriCoreSQLiteAPIErrorExtendedCode"];

    v10 = MEMORY[0x277CCA9B8];
    v11 = [v7 copy];
    v8 = [v10 errorWithDomain:@"SiriCoreSQLiteAPIErrorDomain" code:a1 userInfo:v11];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL SiriCoreSQLiteDatabaseIsErrorUnrecoverable(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if (![v2 isEqualToString:@"SiriCoreSQLiteDatabaseErrorDomain"])
  {
    goto LABEL_10;
  }

  v3 = [v1 code];

  if (v3 != 2)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v4 = [v1 userInfo];
  v2 = [v4 objectForKey:*MEMORY[0x277CCA7E8]];

  v5 = [v2 domain];
  v6 = [v5 isEqualToString:@"SiriCoreSQLiteAPIErrorDomain"];

  if (v6)
  {
    v7 = [v2 code];
    v9 = v7 == 11 || v7 == 26;
  }

  else
  {
LABEL_10:
    v9 = 0;
  }

LABEL_13:
  return v9;
}

void sub_2669FB808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2930(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2669FBDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id _SiriCoreSQLiteApplyIndexToQuery(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && [v3 length])
  {
    v5 = [v4 stringByAppendingFormat:@" INDEXED BY %@", v3];

    v4 = v5;
  }

  return v4;
}

void sub_2669FE604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2669FFB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_266A02098(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 120));
  _Unwind_Resume(a1);
}

id SiriCoreUserAgentStringCreate(void *a1)
{
  v1 = a1;
  v2 = AFProductType();
  v3 = MEMORY[0x277CCACA8];
  v4 = AFDeviceName();
  if (v1)
  {
    v5 = [v1 stringByAppendingString:v2];
  }

  else
  {
    v5 = v2;
  }

  v6 = AFProductName();
  v7 = AFProductVersion();
  v8 = AFBuildVersion();
  v9 = [v3 stringWithFormat:@"Assistant(%@/%@ %@/%@/%@) Ace/%@", v4, v5, v6, v7, v8, *MEMORY[0x277D47C38]];;

  if (v1)
  {
  }

  return v9;
}

id productTypeFromUserAgentString(void *a1)
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 characterSetWithCharactersInString:@"(/)"];;
  v4 = [v2 componentsSeparatedByCharactersInSet:v3];

  if ([v4 count] >= 3)
  {
    v5 = [v4 objectAtIndex:2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id buildVersionFromUserAgentString(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CCA900];
    v2 = a1;
    v3 = [v1 characterSetWithCharactersInString:@"(/)"];;
    v4 = [v2 componentsSeparatedByCharactersInSet:v3];

    if ([v4 count] >= 6)
    {
      v5 = [v4 objectAtIndex:5];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_266A05534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3941(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _SiriCoreSharedResourcesDirectory()
{
  if (_SiriCoreSharedResourcesDirectory_once != -1)
  {
    dispatch_once(&_SiriCoreSharedResourcesDirectory_once, &__block_literal_global_4027);
  }

  v1 = _SiriCoreSharedResourcesDirectory_sUserSupportDirectoryPath;

  return v1;
}