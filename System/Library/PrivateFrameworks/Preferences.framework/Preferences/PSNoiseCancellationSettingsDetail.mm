@interface PSNoiseCancellationSettingsDetail
+ (BOOL)isEnabled;
+ (void)setEnabled:(BOOL)enabled;
@end

@implementation PSNoiseCancellationSettingsDetail

+ (void)setEnabled:(BOOL)enabled
{
  v3 = PSConnected298();
  if (v3)
  {
    v4 = v3;
    PSBTSetAccessoryListeningMode(v3);
    v3 = v4;
  }
}

+ (BOOL)isEnabled
{
  v2 = PSConnected298();
  v3 = v2;
  if (v2)
  {
    v4 = PSBTAccessoryListeningMode(v2) == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end