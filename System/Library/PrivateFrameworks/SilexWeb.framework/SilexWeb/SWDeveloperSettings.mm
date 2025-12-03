@interface SWDeveloperSettings
- (SWDeveloperSettings)initWithAllowRemoteInspection:(BOOL)inspection;
@end

@implementation SWDeveloperSettings

- (SWDeveloperSettings)initWithAllowRemoteInspection:(BOOL)inspection
{
  v5.receiver = self;
  v5.super_class = SWDeveloperSettings;
  result = [(SWDeveloperSettings *)&v5 init];
  if (result)
  {
    result->_allowRemoteInspection = inspection;
  }

  return result;
}

@end