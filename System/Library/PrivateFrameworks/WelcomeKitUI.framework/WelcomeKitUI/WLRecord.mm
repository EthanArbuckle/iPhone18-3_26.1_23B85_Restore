@interface WLRecord
+ (BOOL)isInterrupted;
+ (void)startRecording;
+ (void)stopRecording;
@end

@implementation WLRecord

+ (BOOL)isInterrupted
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"record"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (void)startRecording
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [standardUserDefaults setObject:v2 forKey:@"record"];

  [standardUserDefaults synchronize];
}

+ (void)stopRecording
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"record"];
  [standardUserDefaults synchronize];
}

@end