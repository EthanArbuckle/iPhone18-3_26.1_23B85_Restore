@interface RSDoorWindowOfflineDetector
- (RSDoorWindowOfflineDetector)init;
@end

@implementation RSDoorWindowOfflineDetector

- (RSDoorWindowOfflineDetector)init
{
  v7.receiver = self;
  v7.super_class = RSDoorWindowOfflineDetector;
  v2 = [(RSDoorWindowOfflineDetector *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    doorWindowDetector = v2->_doorWindowDetector;
    v2->_doorWindowDetector = v3;

    v5 = v2->_doorWindowDetector;
    if (v5)
    {
      v5->normalizedOutput = 0;
    }

    v2->_isCurvedWindowDoorEnabled = 0;
  }

  return v2;
}

@end