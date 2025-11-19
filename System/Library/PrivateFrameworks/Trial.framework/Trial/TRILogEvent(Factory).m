@interface TRILogEvent(Factory)
+ (id)contextWithTrackingId:()Factory projectId:;
+ (id)currentTime;
+ (id)eventWithTrackingId:()Factory projectId:;
@end

@implementation TRILogEvent(Factory)

+ (id)currentTime
{
  v0 = MEMORY[0x277D73B30];
  v1 = [MEMORY[0x277CBEAA8] date];
  v2 = [v0 logTimeFromDate:v1];

  return v2;
}

+ (id)contextWithTrackingId:()Factory projectId:
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [a1 currentTime];
  [v7 setDeviceLogTime:v8];

  v9 = MEMORY[0x277D73B30];
  v10 = [v6 time];
  v11 = [v9 logTimeFromDate:v10];
  [v7 setDeviceTrackingTime:v11];

  v12 = [v6 uuid];

  v13 = [v12 UUIDString];
  [v7 setTrackingId:v13];

  [v7 setProjectId:a4];

  return v7;
}

+ (id)eventWithTrackingId:()Factory projectId:
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [v8 UUIDString];
  [v7 setLogEventId:v9];

  v10 = [a1 contextWithTrackingId:v6 projectId:a4];
  [v7 setContext:v10];

  v11 = objc_opt_new();
  [v7 setDenormalizedEvent:v11];

  v12 = [v6 subject];
  v13 = [v7 denormalizedEvent];
  [v13 setSubject:v12];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [v6 treatments];
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        v20 = [v7 denormalizedEvent];
        [v20 addTreatment:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

@end