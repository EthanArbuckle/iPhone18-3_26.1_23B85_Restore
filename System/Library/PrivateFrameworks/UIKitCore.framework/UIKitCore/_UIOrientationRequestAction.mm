@interface _UIOrientationRequestAction
- (_UIOrientationRequestAction)initWithRequestedInterfaceOrientationMask:(unint64_t)mask policy:(unint64_t)policy callbackQueue:(id)queue completion:(id)completion;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)settings:(id)settings valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (unint64_t)policy;
- (unint64_t)requestedInterfaceOrientationMask;
@end

@implementation _UIOrientationRequestAction

- (_UIOrientationRequestAction)initWithRequestedInterfaceOrientationMask:(unint64_t)mask policy:(unint64_t)policy callbackQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (policy - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIOrientationRequestAction.m" lineNumber:30 description:@"A valid policy must be provided."];
  }

  v13 = objc_alloc_init(MEMORY[0x1E698E700]);
  v14 = [MEMORY[0x1E698E5F8] responderWithHandler:completionCopy];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mask];
  [v13 setObject:v15 forSetting:1];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:policy];
  [v13 setObject:v16 forSetting:2];

  if (queueCopy)
  {
    [v14 setQueue:queueCopy];
  }

  [v14 setTimeout:{dispatch_time(0, 2000000000)}];
  v20.receiver = self;
  v20.super_class = _UIOrientationRequestAction;
  v17 = [(_UIOrientationRequestAction *)&v20 initWithInfo:v13 responder:v14];

  return v17;
}

- (unint64_t)requestedInterfaceOrientationMask
{
  info = [(_UIOrientationRequestAction *)self info];
  v3 = [info objectForSetting:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (unint64_t)policy
{
  info = [(_UIOrientationRequestAction *)self info];
  v3 = [info objectForSetting:2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v3 = @"Requested policy";
  if (setting != 2)
  {
    v3 = 0;
  }

  if (setting == 1)
  {
    return @"Requested interface orientation mask";
  }

  else
  {
    return v3;
  }
}

- (id)settings:(id)settings valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  settingsCopy = settings;
  objectCopy = object;
  if (setting != 2)
  {
    if (setting == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [objectCopy unsignedIntValue];
        v10 = BSInterfaceOrientationMaskDescription();
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  unsignedIntValue = [objectCopy unsignedIntValue];
  v12 = @"honor user preference";
  if (unsignedIntValue != 2)
  {
    v12 = 0;
  }

  if (unsignedIntValue == 1)
  {
    v10 = @"default";
  }

  else
  {
    v10 = v12;
  }

LABEL_12:

  return v10;
}

@end