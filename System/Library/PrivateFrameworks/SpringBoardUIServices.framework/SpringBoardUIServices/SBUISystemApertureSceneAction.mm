@interface SBUISystemApertureSceneAction
- (SBUISystemApertureSceneAction)initWithCommand:(int64_t)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)command;
@end

@implementation SBUISystemApertureSceneAction

- (SBUISystemApertureSceneAction)initWithCommand:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v6 forSetting:0];

  v9.receiver = self;
  v9.super_class = SBUISystemApertureSceneAction;
  v7 = [(SBUISystemApertureSceneAction *)&v9 initWithInfo:v5 responder:0];

  return v7;
}

- (int64_t)command
{
  v2 = [(SBUISystemApertureSceneAction *)self info];
  v3 = [v2 objectForSetting:0];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return @"command";
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  if (a5)
  {
    v7 = 0;
  }

  else
  {
    v7 = SBUISystemApertureCommandDescription([a4 unsignedIntegerValue]);
  }

  return v7;
}

@end