@interface TSgPTPLocalClockPort
+ (id)diagnosticDescriptionForInfo:(id)a3 withIndent:(id)a4;
- (TSgPTPLocalClockPort)initWithImplDC:(id)a3;
@end

@implementation TSgPTPLocalClockPort

- (TSgPTPLocalClockPort)initWithImplDC:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TSgPTPLocalClockPort initWithImplDC:];
    impl = v10;
    v5 = v11;
    goto LABEL_4;
  }

  v9.receiver = self;
  v9.super_class = TSgPTPLocalClockPort;
  v5 = [(TSgPTPPort *)&v9 initWithImplDC:v4];
  if (v5)
  {
    v6 = v4;
    impl = v5->_impl;
    v5->_impl = v6;
LABEL_4:
  }

  return v5;
}

+ (id)diagnosticDescriptionForInfo:(id)a3 withIndent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v44.receiver = a1;
  v44.super_class = &OBJC_METACLASS___TSgPTPLocalClockPort;
  v8 = objc_msgSendSuper2(&v44, sel_diagnosticDescriptionForInfo_withIndent_, v6, v7);
  [v8 appendFormat:@"%@    Announce Clock Priority 1: ", v7];
  v9 = [v6 objectForKeyedSubscript:@"ClockPriority1"];
  v10 = v9;
  if (v9)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v9, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Clock Class: ", v7];
  v11 = [v6 objectForKeyedSubscript:@"ClockClass"];

  if (v11)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v11, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Clock Accuracy: ", v7];
  v12 = [v6 objectForKeyedSubscript:@"ClockAccuracy"];

  if (v12)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v12, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Offset Scaled Log Variance: ", v7];
  v13 = [v6 objectForKeyedSubscript:@"OffsetScaledLogVariance"];

  if (v13)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v13, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Clock Priority 2: ", v7];
  v14 = [v6 objectForKeyedSubscript:@"ClockPriority2"];

  if (v14)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v14, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Grandmaster Identity: ", v7];
  v15 = [v6 objectForKeyedSubscript:@"GrandmasterID"];

  if (v15)
  {
    [v8 appendFormat:@"%016llx\n", objc_msgSend(v15, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Steps Removed: ", v7];
  v16 = [v6 objectForKeyedSubscript:@"StepsRemoved"];

  if (v16)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v16, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Time Source: ", v7];
  v17 = [v6 objectForKeyedSubscript:@"TimeSource"];

  if (v17)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v17, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Priority 1: ", v7];
  v18 = [v6 objectForKeyedSubscript:@"ReceivedClockPriority1"];

  if (v18)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v18, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Class: ", v7];
  v19 = [v6 objectForKeyedSubscript:@"ReceivedClockClass"];

  if (v19)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v19, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Accuracy: ", v7];
  v20 = [v6 objectForKeyedSubscript:@"ReceivedClockAccuracy"];

  if (v20)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v20, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Offset Scaled Log Variance: ", v7];
  v21 = [v6 objectForKeyedSubscript:@"ReceivedOffsetScaledLogVariance"];

  if (v21)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v21, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Priority 2: ", v7];
  v22 = [v6 objectForKeyedSubscript:@"ReceivedClockPriority2"];

  if (v22)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v22, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Grandmaster Identity: ", v7];
  v23 = [v6 objectForKeyedSubscript:@"ReceivedGrandmasterID"];

  if (v23)
  {
    [v8 appendFormat:@"%016llx\n", objc_msgSend(v23, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Steps Removed: ", v7];
  v24 = [v6 objectForKeyedSubscript:@"ReceivedStepsRemoved"];

  if (v24)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v24, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Time Source: ", v7];
  v25 = [v6 objectForKeyedSubscript:@"ReceivedTimeSource"];

  if (v25)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v25, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Battery Powered: ", v7];
  v26 = [v6 objectForKeyedSubscript:@"BatteryPowered"];

  if (v26)
  {
    if ([v26 BOOLValue])
    {
      v27 = @"YES\n";
    }

    else
    {
      v27 = @"NO\n";
    }

    [v8 appendString:v27];
  }

  [v8 appendFormat:@"%@    External Power Connected: ", v7];
  v28 = [v6 objectForKeyedSubscript:@"ExternalPowerConnected"];

  if (v28)
  {
    if ([v28 BOOLValue])
    {
      v29 = @"YES\n";
    }

    else
    {
      v29 = @"NO\n";
    }

    [v8 appendString:v29];
  }

  [v8 appendFormat:@"%@    Has Wired Ethernet Link Active: ", v7];
  v30 = [v6 objectForKeyedSubscript:@"HasWiredEthernetLinkActive"];

  if (v30)
  {
    if ([v30 BOOLValue])
    {
      v31 = @"YES\n";
    }

    else
    {
      v31 = @"NO\n";
    }

    [v8 appendString:v31];
  }

  [v8 appendFormat:@"%@    Has Ethernet Hardware Timestamping: ", v7];
  v32 = [v6 objectForKeyedSubscript:@"HasEthernetHardwareTimestamping"];

  if (v32)
  {
    if ([v32 BOOLValue])
    {
      v33 = @"YES\n";
    }

    else
    {
      v33 = @"NO\n";
    }

    [v8 appendString:v33];
  }

  [v8 appendFormat:@"%@    Has WiFi Hardware Timestamping: ", v7];
  v34 = [v6 objectForKeyedSubscript:@"HasWiFiHardwareTimestamping"];

  if (v34)
  {
    if ([v34 BOOLValue])
    {
      v35 = @"YES\n";
    }

    else
    {
      v35 = @"NO\n";
    }

    [v8 appendString:v35];
  }

  [v8 appendFormat:@"%@    Local Oscillator Type: ", v7];
  v36 = [v6 objectForKeyedSubscript:@"LocalOscillatorType"];

  if (!v36)
  {
    v38 = @"Could not read property\n";
    goto LABEL_81;
  }

  v37 = [v36 unsignedCharValue];
  if (v37 > 4)
  {
    if (v37 <= 6)
    {
      if (v37 == 5)
      {
        v38 = @"VCYCXO\n";
      }

      else
      {
        v38 = @"OCXO\n";
      }

      goto LABEL_81;
    }

    if (v37 == 7)
    {
      v38 = @"DOCXO\n";
      goto LABEL_81;
    }

    if (v37 == 8)
    {
      v38 = @"VCOCXO\n";
      goto LABEL_81;
    }

    if (v37 != 9)
    {
      goto LABEL_113;
    }

    v38 = @"VCDOCXO\n";
LABEL_81:
    [v8 appendString:v38];
    goto LABEL_82;
  }

  if (v37 > 1)
  {
    if (v37 == 2)
    {
      v38 = @"MEMS\n";
    }

    else if (v37 == 3)
    {
      v38 = @"TCXO\n";
    }

    else
    {
      v38 = @"VCO\n";
    }

    goto LABEL_81;
  }

  if (!v37)
  {
    v38 = @"Unknown\n";
    goto LABEL_81;
  }

  if (v37 == 1)
  {
    v38 = @"Crystal\n";
    goto LABEL_81;
  }

LABEL_113:
  [v8 appendFormat:@"Undefined oscillator type %hhu\n", objc_msgSend(v36, "unsignedCharValue")];
LABEL_82:
  [v8 appendFormat:@"%@    Local Frequency Tolerance Lower: ", v7];
  v39 = [v6 objectForKeyedSubscript:@"LocalFrequencyToleranceLower"];

  if (v39)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v39, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Local Frequency Tolerance Upper: ", v7];
  v40 = [v6 objectForKeyedSubscript:@"LocalFrequencyToleranceUpper"];

  if (v40)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v40, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Local Frequency Stability Lower: ", v7];
  v41 = [v6 objectForKeyedSubscript:@"LocalFrequencyStabilityLower"];

  if (v41)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v41, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Local Frequency Stability Upper: ", v7];
  v42 = [v6 objectForKeyedSubscript:@"LocalFrequencyStabilityUpper"];

  if (v42)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v42, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  return v8;
}

- (void)initWithImplDC:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3_0();
  v5 = *MEMORY[0x277D85DE8];
}

@end