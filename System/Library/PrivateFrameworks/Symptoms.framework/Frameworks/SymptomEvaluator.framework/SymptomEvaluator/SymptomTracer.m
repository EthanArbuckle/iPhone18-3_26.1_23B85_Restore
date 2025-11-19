@interface SymptomTracer
+ (void)initialize;
+ (void)traceBasicSymptom:(id)a3;
- (void)traceBasicSymptom:(id)a3;
@end

@implementation SymptomTracer

+ (void)initialize
{
  v2 = objc_alloc_init(SymptomTracer);
  v3 = defaultSymptomTracer;
  defaultSymptomTracer = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

+ (void)traceBasicSymptom:(id)a3
{
  if (defaultSymptomTracer)
  {
    [defaultSymptomTracer traceBasicSymptom:a3];
  }
}

- (void)traceBasicSymptom:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v49.tv_sec = 0;
  *&v49.tv_usec = 0;
  v4 = [v3 eventData];
  gettimeofday(&v49, 0);
  v37 = *(v4 + 8);
  v5 = *(v4 + 12) / 0x3E8u;
  tv_sec = v49.tv_sec;
  v8 = v49.tv_usec - v5;
  v7 = v49.tv_usec < v5;
  v9 = v49.tv_usec - v5 + 1000000;
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(v4 + 16);
  v12 = (v11 >> 20);
  v13 = [SymptomStore nameFromSymptomId:v11 & 0xFFFFF];
  v14 = [SymptomStore nameFromReporterId:v12];
  v44 = v3;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", objc_msgSend(v3, "processName")];
  if (!v13)
  {
    v13 = [v3 eventKey];
  }

  if (!v14)
  {
    v14 = @"-----";
  }

  v16 = [v13 stringByPaddingToLength:40 withString:@" " startingAtIndex:0];

  v43 = [(__CFString *)v14 stringByPaddingToLength:5 withString:@" " startingAtIndex:0];

  v42 = [v15 stringByPaddingToLength:16 withString:@" " startingAtIndex:0];

  v17 = [0 stringByPaddingToLength:22 withString:@" " startingAtIndex:0];
  if (*(v4 + 4))
  {
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%08llx", *(v4 + 24)];
  }

  else
  {
    v41 = @"--------";
  }

  if ((*(v4 + 4) & 2) != 0)
  {
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%08llx", *(v4 + 32)];
  }

  else
  {
    v40 = @"--------";
  }

  if ((*(v4 + 4) & 4) != 0)
  {
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%08llx", *(v4 + 40)];
  }

  else
  {
    v39 = @"--------";
  }

  if ((*(v4 + 4) & 8) != 0)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%08llx", *(v4 + 48)];
  }

  else
  {
    v18 = @"--------";
  }

  v19 = (tv_sec - v37 + (v8 >> 31));
  v35 = v18;
  v36 = v17;
  v38 = v16;
  v20 = [MEMORY[0x277CCAB68] stringWithFormat:@"[%d.%03d] %5llu %@ %@ %@ %@ %@ %@ %@ %@", v19, (v10 / 1000), objc_msgSend(v44, "processId"), v42, v17, v16, v43, v41, v40, v39, v18];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v21 = [v44 eventQualifiers];
  v22 = [v21 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v46;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v46 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v45 + 1) + 8 * i);
        v27 = [v44 eventQualifiers];
        v28 = [v27 objectForKeyedSubscript:v26];

        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%lu bytes>", objc_msgSend(v28, "length")];
        [v20 appendFormat:@" [%@ %@]", v26, v29];
      }

      v23 = [v21 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v23);
  }

  v30 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
  {
    v31 = v20;
    v32 = v30;
    v33 = [v20 UTF8String];
    *buf = 136315138;
    v51 = v33;
    _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v34 = *MEMORY[0x277D85DE8];
}

@end