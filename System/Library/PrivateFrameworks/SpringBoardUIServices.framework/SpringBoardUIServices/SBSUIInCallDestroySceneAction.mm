@interface SBSUIInCallDestroySceneAction
- (NSString)analyticsSource;
- (SBSUIInCallDestroySceneAction)initWithDestructionReason:(int64_t)reason analyticsSource:(id)source timeout:(double)timeout withResponseHandler:(id)handler;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)destructionReason;
@end

@implementation SBSUIInCallDestroySceneAction

- (SBSUIInCallDestroySceneAction)initWithDestructionReason:(int64_t)reason analyticsSource:(id)source timeout:(double)timeout withResponseHandler:(id)handler
{
  sourceCopy = source;
  handlerCopy = handler;
  v12 = objc_alloc_init(MEMORY[0x1E698E700]);
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  [v12 setObject:v13 forSetting:1];

  if (sourceCopy)
  {
    [v12 setObject:sourceCopy forSetting:2];
  }

  v16.receiver = self;
  v16.super_class = SBSUIInCallDestroySceneAction;
  v14 = [(SBSUIInCallDestroySceneAction *)&v16 initWithInfo:v12 timeout:MEMORY[0x1E69E96A0] forResponseOnQueue:handlerCopy withHandler:timeout];

  return v14;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v3 = @"analyticsSource";
  if (setting != 2)
  {
    v3 = 0;
  }

  if (setting == 1)
  {
    return @"destructionReason";
  }

  else
  {
    return v3;
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v7 = objectCopy;
  if (setting == 2)
  {
    v8 = objectCopy;
    goto LABEL_5;
  }

  if (setting == 1)
  {
    v8 = SBSUIInCallWindowSceneSessionDestructionReasonDescription([objectCopy integerValue]);
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (NSString)analyticsSource
{
  info = [(SBSUIInCallDestroySceneAction *)self info];
  v3 = [info objectForSetting:2];

  return v3;
}

- (int64_t)destructionReason
{
  info = [(SBSUIInCallDestroySceneAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

@end