@interface TSgPTPClock
+ (id)diagnosticDescriptionForInfo:(id)a3 withIndent:(id)a4;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- (NSArray)ports;
- (TSgPTPClock)initWithImplDC:(id)a3;
- (id)getMetrics;
- (id)getMetricsWithDelta:(id)a3;
- (void)dealloc;
@end

@implementation TSgPTPClock

- (TSgPTPClock)initWithImplDC:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(TSgPTPClock *)self initWithImplDC:&v11];
    impl = v10;
    v5 = v11;
    goto LABEL_4;
  }

  v9.receiver = self;
  v9.super_class = TSgPTPClock;
  v5 = [(TSKernelClock *)&v9 initWithImplDC:v4];
  if (v5)
  {
    v6 = v4;
    impl = v5->_impl;
    v5->_impl = v6;
LABEL_4:
  }

  return v5;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v5 = [(TSDCgPTPClock *)self->_impl convertFromMachAbsoluteTo128BitgPTPTime:a3 grandmasterUsed:a4 portNumber:a5];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v5 = [(TSDCgPTPClock *)self->_impl convertFromTimeSyncTimeTo128BitgPTPTime:a3 grandmasterUsed:a4 portNumber:a5];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (id)getMetrics
{
  v2 = [(TSDCgPTPClock *)self->_impl getMetrics];
  if (v2)
  {
    v3 = [[TSClockMetrics alloc] initWithDaemonMetrics:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getMetricsWithDelta:(id)a3
{
  impl = self->_impl;
  v4 = [a3 toDaemonMetrics];
  v5 = [(TSDCgPTPClock *)impl getMetricsWithDelta:v4];

  if (v5)
  {
    v6 = [[TSClockMetrics alloc] initWithDaemonMetrics:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)ports
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(TSDCgPTPClock *)self->_impl ports];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [TSgPTPPort gPTPPortWithImplDC:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSgPTPClock;
  [(TSKernelClock *)&v2 dealloc];
}

+ (id)diagnosticDescriptionForInfo:(id)a3 withIndent:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v49.receiver = a1;
  v49.super_class = &OBJC_METACLASS___TSgPTPClock;
  v8 = objc_msgSendSuper2(&v49, sel_diagnosticDescriptionForInfo_withIndent_, v6, v7);
  [v8 appendFormat:@"%@    Grandmaster Clock Identity: ", v7];
  v9 = [v6 objectForKeyedSubscript:@"GrandmasterID"];
  v38 = v9;
  if (v9)
  {
    [v8 appendFormat:@"0x%016llx\n", objc_msgSend(v9, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    gPTP Path: ", v7];
  v10 = [v6 objectForKeyedSubscript:@"ASPath"];
  v37 = v10;
  if (v10)
  {
    v11 = v10;
    [v8 appendString:@"\n"];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v46;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v46 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v8 appendFormat:@"%@        0x%016llx\n", v7, objc_msgSend(*(*(&v45 + 1) + 8 * i), "unsignedLongLongValue"), v37, v38];
        }

        v14 = [v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v14);
    }
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Ports:\n", v7];
  v39 = v7;
  v17 = [v7 stringByAppendingString:@"        |"];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = v6;
  v18 = [v6 objectForKeyedSubscript:@"Ports"];
  v19 = [v18 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v42;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v41 + 1) + 8 * j);
        v24 = [v23 objectForKeyedSubscript:@"ClassName"];
        v25 = [v24 isEqualToString:@"IOTimeSyncEthernetPort"];
        v26 = off_279DBD2E0;
        if ((v25 & 1) == 0)
        {
          v27 = [v24 isEqualToString:@"IOTimeSyncUnicastLinkLayerPtPPort"];
          v26 = off_279DBD320;
          if ((v27 & 1) == 0)
          {
            v28 = [v24 isEqualToString:@"IOTimeSyncUnicastLinkLayerEtEPort"];
            v26 = off_279DBD318;
            if ((v28 & 1) == 0)
            {
              v29 = [v24 isEqualToString:@"IOTimeSyncUnicastUDPv4PtPPort"];
              v26 = off_279DBD330;
              if ((v29 & 1) == 0)
              {
                v30 = [v24 isEqualToString:@"IOTimeSyncUnicastUDPv6PtPPort"];
                v26 = off_279DBD340;
                if ((v30 & 1) == 0)
                {
                  v31 = [v24 isEqualToString:@"IOTimeSyncUnicastUDPv4EtEPort"];
                  v26 = off_279DBD328;
                  if ((v31 & 1) == 0)
                  {
                    v32 = [v24 isEqualToString:@"IOTimeSyncUnicastUDPv6EtEPort"];
                    v26 = off_279DBD338;
                    if ((v32 & 1) == 0)
                    {
                      if ([v24 isEqualToString:@"IOTimeSyncTimeSyncTimePort"] & 1) != 0 || (objc_msgSend(v24, "isEqualToString:", @"IOTimeSyncTimeOfDayPort"))
                      {
                        v26 = off_279DBD2E8;
                      }

                      else
                      {
                        v33 = [v24 isEqualToString:@"IOTimeSyncTimeOfDayAnchorPort"];
                        v26 = off_279DBD2E8;
                        if (!v33)
                        {
                          v26 = off_279DBD300;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v34 = [(__objc2_class *)*v26 diagnosticDescriptionForInfo:v23 withIndent:v17];
        [v8 appendString:v34];
      }

      v20 = [v18 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v20);
  }

  v35 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)initWithImplDC:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    v8 = "[kernelClock isKindOfClass:[TSDCgPTPClock class]]";
    v9 = 2048;
    v10 = 0;
    v11 = 2048;
    v12 = 0;
    v13 = 2080;
    v14 = "";
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSgPTPClock.m";
    v17 = 1024;
    v18 = 77;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", &v7, 0x3Au);
  }

  *a3 = 0;
  *a2 = a1;
  v6 = *MEMORY[0x277D85DE8];
}

@end