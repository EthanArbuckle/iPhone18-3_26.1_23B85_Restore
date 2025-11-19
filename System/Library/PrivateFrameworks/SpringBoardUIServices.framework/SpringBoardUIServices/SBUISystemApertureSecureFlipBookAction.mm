@interface SBUISystemApertureSecureFlipBookAction
- (NSNumber)layoutMode;
- (NSString)configurationName;
- (NSString)flipBookName;
- (NSString)toState;
- (SBUISystemApertureSecureFlipBookAction)initWithConfigurationName:(id)a3 layoutMode:(id)a4 flipBookName:(id)a5 type:(int64_t)a6 toState:(id)a7 captureBoundsUpdateHandler:(id)a8 completionHandler:(id)a9;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (int64_t)type;
- (void)markComplete;
- (void)markCompleteWithUpdateCaptureBounds:(CGRect)a3;
@end

@implementation SBUISystemApertureSecureFlipBookAction

- (SBUISystemApertureSecureFlipBookAction)initWithConfigurationName:(id)a3 layoutMode:(id)a4 flipBookName:(id)a5 type:(int64_t)a6 toState:(id)a7 captureBoundsUpdateHandler:(id)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (v15)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBUISystemApertureSecureFlipBookAction initWithConfigurationName:layoutMode:flipBookName:type:toState:captureBoundsUpdateHandler:completionHandler:];
    if (v17)
    {
LABEL_3:
      if (v16)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  [SBUISystemApertureSecureFlipBookAction initWithConfigurationName:layoutMode:flipBookName:type:toState:captureBoundsUpdateHandler:completionHandler:];
  if (v16)
  {
LABEL_4:
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_10:
    [SBUISystemApertureSecureFlipBookAction initWithConfigurationName:layoutMode:flipBookName:type:toState:captureBoundsUpdateHandler:completionHandler:];
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_11:
    [SBUISystemApertureSecureFlipBookAction initWithConfigurationName:layoutMode:flipBookName:type:toState:captureBoundsUpdateHandler:completionHandler:];
    goto LABEL_6;
  }

LABEL_9:
  [SBUISystemApertureSecureFlipBookAction initWithConfigurationName:layoutMode:flipBookName:type:toState:captureBoundsUpdateHandler:completionHandler:];
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (!v20)
  {
    goto LABEL_11;
  }

LABEL_6:
  v21 = objc_alloc_init(MEMORY[0x1E698E700]);
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
  [v21 setObject:v22 forSetting:1];

  [v21 setObject:v18 forSetting:2];
  [v21 setObject:v15 forSetting:3];
  [v21 setObject:v17 forSetting:4];
  [v21 setObject:v16 forSetting:5];
  v23 = MEMORY[0x1E698E5F8];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __150__SBUISystemApertureSecureFlipBookAction_initWithConfigurationName_layoutMode_flipBookName_type_toState_captureBoundsUpdateHandler_completionHandler___block_invoke;
  v30[3] = &unk_1E789FBE0;
  v31 = v19;
  v32 = v20;
  v24 = v20;
  v25 = v19;
  v26 = [v23 responderWithHandler:v30];
  [v26 setQueue:MEMORY[0x1E69E96A0]];
  v29.receiver = self;
  v29.super_class = SBUISystemApertureSecureFlipBookAction;
  v27 = [(SBUISystemApertureSecureFlipBookAction *)&v29 initWithInfo:v21 responder:v26];

  return v27;
}

void __150__SBUISystemApertureSecureFlipBookAction_initWithConfigurationName_layoutMode_flipBookName_type_toState_captureBoundsUpdateHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 info];
  v9 = [v3 objectForSetting:6];

  if (v9)
  {
    [v9 CGRectValue];
  }

  else
  {
    v4.n128_u64[0] = *MEMORY[0x1E695F058];
    v5.n128_u64[0] = *(MEMORY[0x1E695F058] + 8);
    v6.n128_u64[0] = *(MEMORY[0x1E695F058] + 16);
    v7.n128_u64[0] = *(MEMORY[0x1E695F058] + 24);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v4.n128_f64[0] = (*(v8 + 16))(v4, v5, v6, v7);
  }

  (*(*(a1 + 40) + 16))(v4, v5, v6, v7);
}

- (int64_t)type
{
  v2 = [(SBUISystemApertureSecureFlipBookAction *)self info];
  v3 = [v2 objectForSetting:1];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (NSString)toState
{
  v2 = [(SBUISystemApertureSecureFlipBookAction *)self info];
  v3 = [v2 objectForSetting:2];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (NSString)configurationName
{
  v2 = [(SBUISystemApertureSecureFlipBookAction *)self info];
  v3 = [v2 objectForSetting:3];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (NSString)flipBookName
{
  v2 = [(SBUISystemApertureSecureFlipBookAction *)self info];
  v3 = [v2 objectForSetting:4];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (NSNumber)layoutMode
{
  v2 = [(SBUISystemApertureSecureFlipBookAction *)self info];
  v3 = [v2 objectForSetting:5];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (void)markComplete
{
  if ([(SBUISystemApertureSecureFlipBookAction *)self isValid]&& [(SBUISystemApertureSecureFlipBookAction *)self canSendResponse])
  {
    v3 = [MEMORY[0x1E698E600] response];
    [(SBUISystemApertureSecureFlipBookAction *)self sendResponse:v3];
  }
}

- (void)markCompleteWithUpdateCaptureBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(SBUISystemApertureSecureFlipBookAction *)self isValid]&& [(SBUISystemApertureSecureFlipBookAction *)self canSendResponse])
  {
    v10 = objc_alloc_init(MEMORY[0x1E698E700]);
    v8 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
    [v10 setObject:v8 forSetting:6];

    v9 = [objc_alloc(MEMORY[0x1E698E600]) initWithInfo:v10 error:0];
    [(SBUISystemApertureSecureFlipBookAction *)self sendResponse:v9];
  }
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E789FC00[a3 - 1];
  }
}

- (void)initWithConfigurationName:layoutMode:flipBookName:type:toState:captureBoundsUpdateHandler:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"configurationName" object:? file:? lineNumber:? description:?];
}

- (void)initWithConfigurationName:layoutMode:flipBookName:type:toState:captureBoundsUpdateHandler:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"flipBookName" object:? file:? lineNumber:? description:?];
}

- (void)initWithConfigurationName:layoutMode:flipBookName:type:toState:captureBoundsUpdateHandler:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"layoutMode" object:? file:? lineNumber:? description:?];
}

- (void)initWithConfigurationName:layoutMode:flipBookName:type:toState:captureBoundsUpdateHandler:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"state" object:? file:? lineNumber:? description:?];
}

- (void)initWithConfigurationName:layoutMode:flipBookName:type:toState:captureBoundsUpdateHandler:completionHandler:.cold.5()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completionHandler" object:? file:? lineNumber:? description:?];
}

@end