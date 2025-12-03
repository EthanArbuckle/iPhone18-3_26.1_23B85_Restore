@interface SBUISystemApertureSceneAction
- (SBUISystemApertureSceneAction)initWithCommand:(int64_t)command;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)command;
@end

@implementation SBUISystemApertureSceneAction

- (SBUISystemApertureSceneAction)initWithCommand:(int64_t)command
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:command];
  [v5 setObject:v6 forSetting:0];

  v9.receiver = self;
  v9.super_class = SBUISystemApertureSceneAction;
  v7 = [(SBUISystemApertureSceneAction *)&v9 initWithInfo:v5 responder:0];

  return v7;
}

- (int64_t)command
{
  info = [(SBUISystemApertureSceneAction *)self info];
  v3 = [info objectForSetting:0];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting)
  {
    return 0;
  }

  else
  {
    return @"command";
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  if (setting)
  {
    v7 = 0;
  }

  else
  {
    v7 = SBUISystemApertureCommandDescription([object unsignedIntegerValue]);
  }

  return v7;
}

@end