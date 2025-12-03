@interface NSURL(TelephonyPreferences)
+ (id)tps_telephonyTapToRadarURLForError:()TelephonyPreferences;
@end

@implementation NSURL(TelephonyPreferences)

+ (id)tps_telephonyTapToRadarURLForError:()TelephonyPreferences
{
  v3 = a3;
  userInfo = [v3 userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA068]];

  localizedFailureReason = [v3 localizedFailureReason];

  if ([v5 length] && objc_msgSend(localizedFailureReason, "length"))
  {
    v7 = objc_alloc_init(MEMORY[0x277CCACE0]);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Classification" value:@"Other Bug"];
    [v8 addObject:v9];
    v10 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentID" value:@"230851"];

    [v8 addObject:v10];
    v11 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentName" value:@"Telephony"];

    [v8 addObject:v11];
    v12 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentVersion" value:@"iOS"];

    [v8 addObject:v12];
    v13 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"DeviceClasses" value:@"iPhone"];

    [v8 addObject:v13];
    v14 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Reproducibility" value:@"Always"];

    [v8 addObject:v14];
    v15 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Title" value:localizedFailureReason];

    [v8 addObject:v15];
    v16 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Description" value:v5];

    [v8 addObject:v16];
    [v7 setScheme:@"tap-to-radar"];
    [v7 setHost:@"new"];
    [v7 setQueryItems:v8];
    v17 = [v7 URL];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end