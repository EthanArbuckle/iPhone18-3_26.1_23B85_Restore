@interface TRILogEvent(Factory)
+ (id)contextWithTrackingId:()Factory projectId:;
+ (id)currentTime;
+ (id)eventWithTrackingId:()Factory projectId:;
@end

@implementation TRILogEvent(Factory)

+ (id)currentTime
{
  v0 = MEMORY[0x277D73B30];
  date = [MEMORY[0x277CBEAA8] date];
  v2 = [v0 logTimeFromDate:date];

  return v2;
}

+ (id)contextWithTrackingId:()Factory projectId:
{
  v6 = a3;
  v7 = objc_opt_new();
  currentTime = [self currentTime];
  [v7 setDeviceLogTime:currentTime];

  v9 = MEMORY[0x277D73B30];
  time = [v6 time];
  v11 = [v9 logTimeFromDate:time];
  [v7 setDeviceTrackingTime:v11];

  uuid = [v6 uuid];

  uUIDString = [uuid UUIDString];
  [v7 setTrackingId:uUIDString];

  [v7 setProjectId:a4];

  return v7;
}

+ (id)eventWithTrackingId:()Factory projectId:
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  uUIDString = [v8 UUIDString];
  [v7 setLogEventId:uUIDString];

  v10 = [self contextWithTrackingId:v6 projectId:a4];
  [v7 setContext:v10];

  v11 = objc_opt_new();
  [v7 setDenormalizedEvent:v11];

  subject = [v6 subject];
  denormalizedEvent = [v7 denormalizedEvent];
  [denormalizedEvent setSubject:subject];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  treatments = [v6 treatments];
  v15 = [treatments countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(treatments);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        denormalizedEvent2 = [v7 denormalizedEvent];
        [denormalizedEvent2 addTreatment:v19];
      }

      v16 = [treatments countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

@end