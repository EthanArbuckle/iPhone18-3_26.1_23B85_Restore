@interface LSApplicationRecord
- (BOOL)ba_isAppClip;
@end

@implementation LSApplicationRecord

- (BOOL)ba_isAppClip
{
  appClipMetadata = [(LSApplicationRecord *)self appClipMetadata];
  v3 = appClipMetadata != 0;

  return v3;
}

@end