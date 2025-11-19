@interface SWDeveloperSettings
- (SWDeveloperSettings)initWithAllowRemoteInspection:(BOOL)a3;
@end

@implementation SWDeveloperSettings

- (SWDeveloperSettings)initWithAllowRemoteInspection:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SWDeveloperSettings;
  result = [(SWDeveloperSettings *)&v5 init];
  if (result)
  {
    result->_allowRemoteInspection = a3;
  }

  return result;
}

@end