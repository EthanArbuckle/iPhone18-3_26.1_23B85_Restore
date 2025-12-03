@interface TSgPTPLocalClockPort
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
- (TSgPTPLocalClockPort)initWithImplDC:(id)c;
@end

@implementation TSgPTPLocalClockPort

- (TSgPTPLocalClockPort)initWithImplDC:(id)c
{
  cCopy = c;
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
  v5 = [(TSgPTPPort *)&v9 initWithImplDC:cCopy];
  if (v5)
  {
    v6 = cCopy;
    impl = v5->_impl;
    v5->_impl = v6;
LABEL_4:
  }

  return v5;
}

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  infoCopy = info;
  indentCopy = indent;
  v44.receiver = self;
  v44.super_class = &OBJC_METACLASS___TSgPTPLocalClockPort;
  v8 = objc_msgSendSuper2(&v44, sel_diagnosticDescriptionForInfo_withIndent_, infoCopy, indentCopy);
  [v8 appendFormat:@"%@    Announce Clock Priority 1: ", indentCopy];
  v9 = [infoCopy objectForKeyedSubscript:@"ClockPriority1"];
  v10 = v9;
  if (v9)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v9, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Clock Class: ", indentCopy];
  v11 = [infoCopy objectForKeyedSubscript:@"ClockClass"];

  if (v11)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v11, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Clock Accuracy: ", indentCopy];
  v12 = [infoCopy objectForKeyedSubscript:@"ClockAccuracy"];

  if (v12)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v12, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Offset Scaled Log Variance: ", indentCopy];
  v13 = [infoCopy objectForKeyedSubscript:@"OffsetScaledLogVariance"];

  if (v13)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v13, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Clock Priority 2: ", indentCopy];
  v14 = [infoCopy objectForKeyedSubscript:@"ClockPriority2"];

  if (v14)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v14, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Grandmaster Identity: ", indentCopy];
  v15 = [infoCopy objectForKeyedSubscript:@"GrandmasterID"];

  if (v15)
  {
    [v8 appendFormat:@"%016llx\n", objc_msgSend(v15, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Steps Removed: ", indentCopy];
  v16 = [infoCopy objectForKeyedSubscript:@"StepsRemoved"];

  if (v16)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v16, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Time Source: ", indentCopy];
  v17 = [infoCopy objectForKeyedSubscript:@"TimeSource"];

  if (v17)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v17, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Priority 1: ", indentCopy];
  v18 = [infoCopy objectForKeyedSubscript:@"ReceivedClockPriority1"];

  if (v18)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v18, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Class: ", indentCopy];
  v19 = [infoCopy objectForKeyedSubscript:@"ReceivedClockClass"];

  if (v19)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v19, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Accuracy: ", indentCopy];
  v20 = [infoCopy objectForKeyedSubscript:@"ReceivedClockAccuracy"];

  if (v20)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v20, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Offset Scaled Log Variance: ", indentCopy];
  v21 = [infoCopy objectForKeyedSubscript:@"ReceivedOffsetScaledLogVariance"];

  if (v21)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v21, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Priority 2: ", indentCopy];
  v22 = [infoCopy objectForKeyedSubscript:@"ReceivedClockPriority2"];

  if (v22)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v22, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Grandmaster Identity: ", indentCopy];
  v23 = [infoCopy objectForKeyedSubscript:@"ReceivedGrandmasterID"];

  if (v23)
  {
    [v8 appendFormat:@"%016llx\n", objc_msgSend(v23, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Steps Removed: ", indentCopy];
  v24 = [infoCopy objectForKeyedSubscript:@"ReceivedStepsRemoved"];

  if (v24)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v24, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Time Source: ", indentCopy];
  v25 = [infoCopy objectForKeyedSubscript:@"ReceivedTimeSource"];

  if (v25)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v25, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Battery Powered: ", indentCopy];
  v26 = [infoCopy objectForKeyedSubscript:@"BatteryPowered"];

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

  [v8 appendFormat:@"%@    External Power Connected: ", indentCopy];
  v28 = [infoCopy objectForKeyedSubscript:@"ExternalPowerConnected"];

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

  [v8 appendFormat:@"%@    Has Wired Ethernet Link Active: ", indentCopy];
  v30 = [infoCopy objectForKeyedSubscript:@"HasWiredEthernetLinkActive"];

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

  [v8 appendFormat:@"%@    Has Ethernet Hardware Timestamping: ", indentCopy];
  v32 = [infoCopy objectForKeyedSubscript:@"HasEthernetHardwareTimestamping"];

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

  [v8 appendFormat:@"%@    Has WiFi Hardware Timestamping: ", indentCopy];
  v34 = [infoCopy objectForKeyedSubscript:@"HasWiFiHardwareTimestamping"];

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

  [v8 appendFormat:@"%@    Local Oscillator Type: ", indentCopy];
  v36 = [infoCopy objectForKeyedSubscript:@"LocalOscillatorType"];

  if (!v36)
  {
    v38 = @"Could not read property\n";
    goto LABEL_81;
  }

  unsignedCharValue = [v36 unsignedCharValue];
  if (unsignedCharValue > 4)
  {
    if (unsignedCharValue <= 6)
    {
      if (unsignedCharValue == 5)
      {
        v38 = @"VCYCXO\n";
      }

      else
      {
        v38 = @"OCXO\n";
      }

      goto LABEL_81;
    }

    if (unsignedCharValue == 7)
    {
      v38 = @"DOCXO\n";
      goto LABEL_81;
    }

    if (unsignedCharValue == 8)
    {
      v38 = @"VCOCXO\n";
      goto LABEL_81;
    }

    if (unsignedCharValue != 9)
    {
      goto LABEL_113;
    }

    v38 = @"VCDOCXO\n";
LABEL_81:
    [v8 appendString:v38];
    goto LABEL_82;
  }

  if (unsignedCharValue > 1)
  {
    if (unsignedCharValue == 2)
    {
      v38 = @"MEMS\n";
    }

    else if (unsignedCharValue == 3)
    {
      v38 = @"TCXO\n";
    }

    else
    {
      v38 = @"VCO\n";
    }

    goto LABEL_81;
  }

  if (!unsignedCharValue)
  {
    v38 = @"Unknown\n";
    goto LABEL_81;
  }

  if (unsignedCharValue == 1)
  {
    v38 = @"Crystal\n";
    goto LABEL_81;
  }

LABEL_113:
  [v8 appendFormat:@"Undefined oscillator type %hhu\n", objc_msgSend(v36, "unsignedCharValue")];
LABEL_82:
  [v8 appendFormat:@"%@    Local Frequency Tolerance Lower: ", indentCopy];
  v39 = [infoCopy objectForKeyedSubscript:@"LocalFrequencyToleranceLower"];

  if (v39)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v39, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Local Frequency Tolerance Upper: ", indentCopy];
  v40 = [infoCopy objectForKeyedSubscript:@"LocalFrequencyToleranceUpper"];

  if (v40)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v40, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Local Frequency Stability Lower: ", indentCopy];
  v41 = [infoCopy objectForKeyedSubscript:@"LocalFrequencyStabilityLower"];

  if (v41)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v41, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Local Frequency Stability Upper: ", indentCopy];
  v42 = [infoCopy objectForKeyedSubscript:@"LocalFrequencyStabilityUpper"];

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