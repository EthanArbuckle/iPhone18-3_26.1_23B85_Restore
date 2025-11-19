@interface WLRecord
+ (BOOL)isInterrupted;
+ (void)startRecording;
+ (void)stopRecording;
@end

@implementation WLRecord

+ (BOOL)isInterrupted
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"record"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)startRecording
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v3 setObject:v2 forKey:@"record"];

  [v3 synchronize];
}

+ (void)stopRecording
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 removeObjectForKey:@"record"];
  [v2 synchronize];
}

@end