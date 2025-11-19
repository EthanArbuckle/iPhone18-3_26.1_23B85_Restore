@interface WiFiUsageLQMSample
+ (BOOL)isPerSecond:(id)a3;
+ (id)allLQMProperties;
+ (id)binLabelfromFieldName:(id)a3 value:(int64_t)a4;
+ (int64_t)subtract:(int64_t)a3 From:(int64_t)a4;
+ (void)initialize;
- (id)asDictionaryInto:(id)a3;
- (id)description;
- (id)numberForKeyPath:(id)a3;
@end

@implementation WiFiUsageLQMSample

+ (id)allLQMProperties
{
  outCount = 0;
  v3 = objc_opt_new();
  if ([a1 isSubclassOfClass:objc_opt_class()])
  {
    while (1)
    {
      v4 = class_copyPropertyList(a1, &outCount);
      if (outCount)
      {
        break;
      }

      a1 = [a1 superclass];
      if (v4)
      {
        goto LABEL_12;
      }

LABEL_13:
      if (([a1 isSubclassOfClass:objc_opt_class()] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    for (i = 0; i < outCount; ++i)
    {
      Attributes = property_getAttributes(v4[i]);
      if (!Attributes)
      {
        goto LABEL_8;
      }

      v7 = Attributes;
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:Attributes];
      v9 = [v8 hasPrefix:@"T@"];

      if ((v9 & 1) == 0)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
        v11 = [v10 hasPrefix:@"T#"];

        if ((v11 & 1) == 0)
        {
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
          v13 = [v12 hasPrefix:@"T:"];

          if ((v13 & 1) == 0)
          {
LABEL_8:
            v14 = [MEMORY[0x277CCACA8] stringWithCString:property_getName(v4[i]) encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
            [v3 addObject:v14];
          }
        }
      }
    }

    a1 = [a1 superclass];
LABEL_12:
    free(v4);
    goto LABEL_13;
  }

LABEL_14:
  v15 = [v3 copy];

  return v15;
}

- (id)numberForKeyPath:(id)a3
{
  v3 = [(WiFiUsageLQMSample *)self valueForKeyPath:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 unsignedLongValue] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [objc_opt_class() allLQMProperties];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(WiFiUsageLQMSample *)self numberForKeyPath:v9];
        [v3 appendFormat:@"%@:%@, ", v9, v10, v14];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [MEMORY[0x277CCACA8] stringWithString:v3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)isPerSecond:(id)a3
{
  v3 = WiFiUsageLQMFieldNameToRoundMethod;
  v4 = a3;
  v5 = [v3 allKeys];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@PerSecond", v4];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (id)asDictionaryInto:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v4 = objc_opt_new();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [objc_opt_class() allLQMProperties];
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v8 = @"perCoreRssiInUse";
    do
    {
      v9 = 0;
      v26 = v6;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        v11 = [(WiFiUsageLQMSample *)self numberForKeyPath:v10];
        [v4 setObject:v11 forKeyedSubscript:v10];

        if ([objc_opt_class() isPerSecond:v10])
        {
          v12 = v7;
          v13 = v8;
          v14 = MEMORY[0x277CCABB0];
          v15 = [v4 objectForKeyedSubscript:v10];
          [v15 doubleValue];
          v17 = v16;
          v18 = [(WiFiUsageLQMSample *)self numberForKeyPath:@"duration"];
          v19 = [v14 numberWithLong:{(v17 / objc_msgSend(v18, "integerValue"))}];
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@PerSecond", v10];
          [v4 setObject:v19 forKeyedSubscript:v20];

          v8 = v13;
          v7 = v12;
          v6 = v26;
        }

        if ([v10 isEqualToString:v8])
        {
          v21 = [v4 objectForKeyedSubscript:v10];
          v22 = [v21 unsignedIntValue];

          v23 = [WiFiUsagePrivacyFilter getLabelForCoreRssiMode:v22];
          [v4 setObject:v23 forKeyedSubscript:v10];
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)initialize
{
  v2 = objc_opt_new();
  v3 = WiFiUsageLQMFieldNameToFeatureMethod;
  WiFiUsageLQMFieldNameToFeatureMethod = v2;

  defaultForPercentages = 2;
  v21 = objc_alloc(MEMORY[0x277CBEAC0]);
  v97 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v20 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v96 = [MEMORY[0x277CCABB0] numberWithInt:5];
  v19 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v95 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v18 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v94 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v17 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v93 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v92 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v91 = [MEMORY[0x277CCABB0] numberWithInt:13];
  v90 = [MEMORY[0x277CCABB0] numberWithInt:13];
  v89 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v88 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v87 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v86 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v85 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v84 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v83 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v82 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v81 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v80 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v79 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v78 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v77 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v76 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v75 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v74 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v73 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v72 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v71 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v70 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v69 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v68 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v67 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v66 = [MEMORY[0x277CCABB0] numberWithInt:11];
  v65 = [MEMORY[0x277CCABB0] numberWithInt:11];
  v64 = [MEMORY[0x277CCABB0] numberWithInt:12];
  v63 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v62 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v61 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v60 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v59 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v58 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v57 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v56 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v55 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v54 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v53 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v52 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v51 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v50 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v49 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v48 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v47 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v46 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v45 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v44 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v43 = [MEMORY[0x277CCABB0] numberWithInt:7];
  v42 = [MEMORY[0x277CCABB0] numberWithInt:7];
  v41 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v40 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v39 = [MEMORY[0x277CCABB0] numberWithInt:7];
  v38 = [MEMORY[0x277CCABB0] numberWithInt:7];
  v37 = [MEMORY[0x277CCABB0] numberWithInt:7];
  v36 = [MEMORY[0x277CCABB0] numberWithInt:7];
  v35 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v34 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v33 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v32 = [MEMORY[0x277CCABB0] numberWithInt:11];
  v31 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v30 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v29 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v28 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v27 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v26 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v25 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v24 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v22 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:27];
  v8 = [v21 initWithObjectsAndKeys:{v97, @"rssi", v20, @"noise", v96, @"snr", v19, @"selfCca", v95, @"otherCca", v18, @"interference", v94, @"totalReportedCca", v17, @"decodingAttemptsPerSecond", v93, @"rxStartOverDecodingAttemptsPercentage", v16, @"rxCrsGlitchOverDecodingAttemptsPercentage", v92, @"rxBadPlcpOverDecodingAttemptsPercentage", v91, @"ofdmDesense", v90, @"bPhyDesense", v89, @"txLatencyP95", v88, @"rxDecodingErrorsOverRxStart", v87, @"rxUcastOverRxStart", v86, @"rxBeaconOverRxStart", v85, @"rxAnyErrOverDecodingErrors", v84, @"rxBadFCSOverDecodingErrors", v83, @"rxFifo0OvflOverDecodingErrors", v82, @"rxFifo1OvflOverDecodingErrors", v81, @"rxFrmTooLongOverDecodingErrors", v80, @"rxFrmTooShrtOverDecodingErrors", v79, @"rxNoDelimOverDecodingErrors", v78, @"rxResponseTimeoutOverDecodingErrors", v77, @"rxUcastCtrlPercentage", v76, @"rxUcastMgmtPercentage", v75, @"rxUcastDataPercentage", v74, @"rxBACKOverRxCtrlFrmsPercentage", v73, @"rxUcastACKOverRxCtrlFrmsPercentage", v72}];
  v9 = WiFiUsageLQMFieldNameToRoundMethod;
  WiFiUsageLQMFieldNameToRoundMethod = v8;
}

+ (id)binLabelfromFieldName:(id)a3 value:(int64_t)a4
{
  v5 = a3;
  v6 = [WiFiUsageLQMFieldNameToRoundMethod objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  if (v7)
  {
    goto LABEL_5;
  }

  if (([v5 hasSuffix:@"Perc"] & 1) != 0 || objc_msgSend(v5, "hasSuffix:", @"Percentage"))
  {
    v7 = defaultForPercentages;
LABEL_5:
    switch(v7)
    {
      case 0:
        break;
      case 1:
        v11 = a4;
        v12 = 0;
        goto LABEL_25;
      case 2:
        v21 = a4;
        v22 = 0;
        goto LABEL_20;
      case 3:
        v9 = a4;
        v10 = 0;
        goto LABEL_22;
      case 4:
        v15 = a4;
        v16 = 0;
        goto LABEL_27;
      case 5:
        v25 = a4;
        v26 = 0;
        goto LABEL_35;
      case 6:
        v31 = a4;
        v32 = 0;
        goto LABEL_42;
      case 7:
        v23 = a4;
        v24 = 0;
        goto LABEL_29;
      case 8:
        v27 = a4;
        v28 = 0;
        goto LABEL_38;
      case 9:
        v19 = a4;
        v20 = 0;
        goto LABEL_40;
      case 10:
        v33 = a4;
        v34 = 0;
        goto LABEL_44;
      case 11:
        v13 = a4;
        v14 = 0;
        goto LABEL_17;
      case 12:
        v17 = a4;
        v18 = 0;
        goto LABEL_15;
      case 13:
        v29 = a4;
        v30 = 0;
        goto LABEL_47;
      case 14:
        v11 = a4;
        v12 = 2;
LABEL_25:
        v8 = [WiFiUsagePrivacyFilter getBinEvery10Over100:v11 As:v12];
        goto LABEL_48;
      case 15:
        v21 = a4;
        v22 = 2;
LABEL_20:
        v8 = [WiFiUsageLQMTransformations getBinEvery10thOverRatioScale:v21 As:v22];
        goto LABEL_48;
      case 16:
        v9 = a4;
        v10 = 2;
LABEL_22:
        v8 = [WiFiUsageLQMTransformations getBinRssi:v9 As:v10];
        goto LABEL_48;
      case 17:
        v15 = a4;
        v16 = 2;
LABEL_27:
        v8 = [WiFiUsageLQMTransformations getBinNoise:v15 As:v16];
        goto LABEL_48;
      case 18:
        v25 = a4;
        v26 = 2;
LABEL_35:
        v8 = [WiFiUsageLQMTransformations getBinSnr:v25 As:v26];
        goto LABEL_48;
      case 19:
        v31 = a4;
        v32 = 2;
LABEL_42:
        v8 = [WiFiUsageLQMTransformations getBinDecodingAttempts:v31 As:v32];
        goto LABEL_48;
      case 20:
        v23 = a4;
        v24 = 2;
LABEL_29:
        v8 = [WiFiUsageLQMTransformations getBinBytesPerFrame:v23 As:v24];
        goto LABEL_48;
      case 21:
        v27 = a4;
        v28 = 2;
LABEL_38:
        v8 = [WiFiUsageLQMTransformations getBinBytesPerPacket:v27 As:v28];
        goto LABEL_48;
      case 22:
        v19 = a4;
        v20 = 2;
LABEL_40:
        v8 = [WiFiUsageLQMTransformations getBinFrames:v19 As:v20];
        goto LABEL_48;
      case 23:
        v33 = a4;
        v34 = 2;
LABEL_44:
        v8 = [WiFiUsageLQMTransformations getBinRetries:v33 As:v34];
        goto LABEL_48;
      case 24:
        v13 = a4;
        v14 = 2;
LABEL_17:
        v8 = [WiFiUsageLQMTransformations getBinMpduDensity:v13 As:v14];
        goto LABEL_48;
      case 25:
        v17 = a4;
        v18 = 2;
LABEL_15:
        v8 = [WiFiUsageLQMTransformations getBinQueuedAmpdu:v17 As:v18];
        goto LABEL_48;
      case 26:
        v29 = a4;
        v30 = 2;
LABEL_47:
        v8 = [WiFiUsageLQMTransformations getBinDesense:v29 As:v30];
        goto LABEL_48;
      case 27:
        v8 = [WiFiUsageLQMTransformations getLabelTrafficState:a4];
        goto LABEL_48;
      default:
        v35 = 0;
        goto LABEL_49;
    }
  }

  v8 = [MEMORY[0x277CCABB0] numberWithLong:a4];
LABEL_48:
  v35 = v8;
LABEL_49:

  return v35;
}

+ (int64_t)subtract:(int64_t)a3 From:(int64_t)a4
{
  if (a4 == 0x7FFFFFFFFFFFFFFFLL || a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return a4 - a3;
  }
}

@end