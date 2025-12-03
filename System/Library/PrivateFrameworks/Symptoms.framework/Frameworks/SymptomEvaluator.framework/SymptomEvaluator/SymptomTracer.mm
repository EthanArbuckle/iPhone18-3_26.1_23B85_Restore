@interface SymptomTracer
+ (void)initialize;
+ (void)traceBasicSymptom:(id)symptom;
- (void)traceBasicSymptom:(id)symptom;
@end

@implementation SymptomTracer

+ (void)initialize
{
  v2 = objc_alloc_init(SymptomTracer);
  v3 = defaultSymptomTracer;
  defaultSymptomTracer = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

+ (void)traceBasicSymptom:(id)symptom
{
  if (defaultSymptomTracer)
  {
    [defaultSymptomTracer traceBasicSymptom:symptom];
  }
}

- (void)traceBasicSymptom:(id)symptom
{
  v53 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  v49.tv_sec = 0;
  *&v49.tv_usec = 0;
  eventData = [symptomCopy eventData];
  gettimeofday(&v49, 0);
  v37 = *(eventData + 8);
  v5 = *(eventData + 12) / 0x3E8u;
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

  v11 = *(eventData + 16);
  v12 = (v11 >> 20);
  0xFFFFF = [SymptomStore nameFromSymptomId:v11 & 0xFFFFF];
  v14 = [SymptomStore nameFromReporterId:v12];
  v44 = symptomCopy;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", objc_msgSend(symptomCopy, "processName")];
  if (!0xFFFFF)
  {
    0xFFFFF = [symptomCopy eventKey];
  }

  if (!v14)
  {
    v14 = @"-----";
  }

  v16 = [0xFFFFF stringByPaddingToLength:40 withString:@" " startingAtIndex:0];

  v43 = [(__CFString *)v14 stringByPaddingToLength:5 withString:@" " startingAtIndex:0];

  v42 = [v15 stringByPaddingToLength:16 withString:@" " startingAtIndex:0];

  v17 = [0 stringByPaddingToLength:22 withString:@" " startingAtIndex:0];
  if (*(eventData + 4))
  {
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%08llx", *(eventData + 24)];
  }

  else
  {
    v41 = @"--------";
  }

  if ((*(eventData + 4) & 2) != 0)
  {
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%08llx", *(eventData + 32)];
  }

  else
  {
    v40 = @"--------";
  }

  if ((*(eventData + 4) & 4) != 0)
  {
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%08llx", *(eventData + 40)];
  }

  else
  {
    v39 = @"--------";
  }

  if ((*(eventData + 4) & 8) != 0)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%08llx", *(eventData + 48)];
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
  eventQualifiers = [v44 eventQualifiers];
  v22 = [eventQualifiers countByEnumeratingWithState:&v45 objects:v52 count:16];
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
          objc_enumerationMutation(eventQualifiers);
        }

        v26 = *(*(&v45 + 1) + 8 * i);
        eventQualifiers2 = [v44 eventQualifiers];
        v28 = [eventQualifiers2 objectForKeyedSubscript:v26];

        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%lu bytes>", objc_msgSend(v28, "length")];
        [v20 appendFormat:@" [%@ %@]", v26, v29];
      }

      v23 = [eventQualifiers countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v23);
  }

  v30 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
  {
    v31 = v20;
    v32 = v30;
    uTF8String = [v20 UTF8String];
    *buf = 136315138;
    v51 = uTF8String;
    _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v34 = *MEMORY[0x277D85DE8];
}

@end