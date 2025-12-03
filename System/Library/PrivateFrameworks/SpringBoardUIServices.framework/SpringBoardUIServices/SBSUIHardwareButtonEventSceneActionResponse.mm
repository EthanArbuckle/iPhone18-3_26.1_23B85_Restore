@interface SBSUIHardwareButtonEventSceneActionResponse
- (SBSUIHardwareButtonEventSceneActionResponse)initWithButtonEventHandlingResult:(int64_t)result error:(id)error;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (int64_t)buttonEventHandlingResult;
@end

@implementation SBSUIHardwareButtonEventSceneActionResponse

- (SBSUIHardwareButtonEventSceneActionResponse)initWithButtonEventHandlingResult:(int64_t)result error:(id)error
{
  v6 = MEMORY[0x1E698E700];
  errorCopy = error;
  v8 = objc_alloc_init(v6);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:result];
  [v8 setObject:v9 forSetting:2];

  v12.receiver = self;
  v12.super_class = SBSUIHardwareButtonEventSceneActionResponse;
  v10 = [(SBSUIHardwareButtonEventSceneActionResponse *)&v12 initWithInfo:v8 error:errorCopy];

  return v10;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 2)
  {
    return @"buttonEventHandlingResult";
  }

  else
  {
    return 0;
  }
}

- (int64_t)buttonEventHandlingResult
{
  info = [(SBSUIHardwareButtonEventSceneActionResponse *)self info];
  v3 = [info objectForSetting:2];
  integerValue = [v3 integerValue];

  return integerValue;
}

@end