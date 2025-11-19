@interface VUITipKitConfigEntry
- (VUITipKitConfigEntry)init;
@end

@implementation VUITipKitConfigEntry

- (VUITipKitConfigEntry)init
{
  v3.receiver = self;
  v3.super_class = VUITipKitConfigEntry;
  result = [(VUITipKitConfigEntry *)&v3 init];
  if (result)
  {
    result->_isEnabled = 1;
    result->_maxDisplayCount = 2;
  }

  return result;
}

@end