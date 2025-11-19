@interface SBSUIHandleDeviceLockSceneAction
- (SBSUIHandleDeviceLockSceneAction)initWithSourceType:(int64_t)a3 timeout:(double)a4 withResponseHandler:(id)a5;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)sourceType;
- (void)sendResponse:(id)a3;
@end

@implementation SBSUIHandleDeviceLockSceneAction

- (SBSUIHandleDeviceLockSceneAction)initWithSourceType:(int64_t)a3 timeout:(double)a4 withResponseHandler:(id)a5
{
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v9 setObject:v10 forSetting:1];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__SBSUIHandleDeviceLockSceneAction_initWithSourceType_timeout_withResponseHandler___block_invoke;
  v15[3] = &unk_1E789E448;
  v16 = v8;
  v14.receiver = self;
  v14.super_class = SBSUIHandleDeviceLockSceneAction;
  v11 = v8;
  v12 = [(SBSUIHandleDeviceLockSceneAction *)&v14 initWithInfo:v9 timeout:MEMORY[0x1E69E96A0] forResponseOnQueue:v15 withHandler:a4];

  return v12;
}

void __83__SBSUIHandleDeviceLockSceneAction_initWithSourceType_timeout_withResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v6;
    if ((isKindOfClass & 1) == 0)
    {
      v5 = 0;
    }

    (*(v4 + 16))(v4, v5);
  }
}

- (void)sendResponse:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBSUIHandleDeviceLockSceneAction *)a2 sendResponse:v5];
  }

  v6.receiver = self;
  v6.super_class = SBSUIHandleDeviceLockSceneAction;
  [(SBSUIHandleDeviceLockSceneAction *)&v6 sendResponse:v5];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"sourceType";
  }

  else
  {
    return 0;
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  if (a5 == 1)
  {
    v7 = SBSUIDeviceLockSourceTypeDescription([a4 integerValue]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)sourceType
{
  v2 = [(SBSUIHandleDeviceLockSceneAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (void)sendResponse:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSUIHandleDeviceLockSceneAction.m" lineNumber:40 description:{@"SBSUIHandleDeviceLockSceneActionResponse is the only supported response class.", a3}];
}

@end