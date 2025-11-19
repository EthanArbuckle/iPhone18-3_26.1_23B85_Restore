@interface LSApplicationRecord
- (BOOL)ba_isAppClip;
@end

@implementation LSApplicationRecord

- (BOOL)ba_isAppClip
{
  v2 = [(LSApplicationRecord *)self appClipMetadata];
  v3 = v2 != 0;

  return v3;
}

@end