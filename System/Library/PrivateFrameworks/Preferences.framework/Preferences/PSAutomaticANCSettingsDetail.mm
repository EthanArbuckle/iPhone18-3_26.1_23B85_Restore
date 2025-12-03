@interface PSAutomaticANCSettingsDetail
+ (BOOL)isEnabled;
+ (void)setEnabled:(BOOL)enabled;
@end

@implementation PSAutomaticANCSettingsDetail

+ (void)setEnabled:(BOOL)enabled
{
  v3 = PSConnected698();
  if (v3)
  {
    v4 = v3;
    PSBTSetAccessoryListeningMode(v3);
    v3 = v4;
  }
}

+ (BOOL)isEnabled
{
  v2 = PSConnected698();
  v3 = v2;
  if (v2)
  {
    v4 = PSBTAccessoryListeningMode(v2) == 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end