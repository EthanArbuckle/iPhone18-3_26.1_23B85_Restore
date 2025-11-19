@interface _UIOrientationRequestAction
- (_UIOrientationRequestAction)initWithRequestedInterfaceOrientationMask:(unint64_t)a3 policy:(unint64_t)a4 callbackQueue:(id)a5 completion:(id)a6;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)settings:(id)a3 valueDescriptionForFlag:(int64_t)a4 object:(id)a5 ofSetting:(unint64_t)a6;
- (unint64_t)policy;
- (unint64_t)requestedInterfaceOrientationMask;
@end

@implementation _UIOrientationRequestAction

- (_UIOrientationRequestAction)initWithRequestedInterfaceOrientationMask:(unint64_t)a3 policy:(unint64_t)a4 callbackQueue:(id)a5 completion:(id)a6
{
  v11 = a5;
  v12 = a6;
  if (a4 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UIOrientationRequestAction.m" lineNumber:30 description:@"A valid policy must be provided."];
  }

  v13 = objc_alloc_init(MEMORY[0x1E698E700]);
  v14 = [MEMORY[0x1E698E5F8] responderWithHandler:v12];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v13 setObject:v15 forSetting:1];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v13 setObject:v16 forSetting:2];

  if (v11)
  {
    [v14 setQueue:v11];
  }

  [v14 setTimeout:{dispatch_time(0, 2000000000)}];
  v20.receiver = self;
  v20.super_class = _UIOrientationRequestAction;
  v17 = [(_UIOrientationRequestAction *)&v20 initWithInfo:v13 responder:v14];

  return v17;
}

- (unint64_t)requestedInterfaceOrientationMask
{
  v2 = [(_UIOrientationRequestAction *)self info];
  v3 = [v2 objectForSetting:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)policy
{
  v2 = [(_UIOrientationRequestAction *)self info];
  v3 = [v2 objectForSetting:2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v3 = @"Requested policy";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"Requested interface orientation mask";
  }

  else
  {
    return v3;
  }
}

- (id)settings:(id)a3 valueDescriptionForFlag:(int64_t)a4 object:(id)a5 ofSetting:(unint64_t)a6
{
  v8 = a3;
  v9 = a5;
  if (a6 != 2)
  {
    if (a6 == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 unsignedIntValue];
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

  v11 = [v9 unsignedIntValue];
  v12 = @"honor user preference";
  if (v11 != 2)
  {
    v12 = 0;
  }

  if (v11 == 1)
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