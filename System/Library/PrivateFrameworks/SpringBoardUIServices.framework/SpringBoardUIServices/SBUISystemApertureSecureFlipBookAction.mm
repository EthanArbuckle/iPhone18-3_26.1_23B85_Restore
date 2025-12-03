@interface SBUISystemApertureSecureFlipBookAction
- (NSNumber)layoutMode;
- (NSString)configurationName;
- (NSString)flipBookName;
- (NSString)toState;
- (SBUISystemApertureSecureFlipBookAction)initWithConfigurationName:(id)name layoutMode:(id)mode flipBookName:(id)bookName type:(int64_t)type toState:(id)state captureBoundsUpdateHandler:(id)handler completionHandler:(id)completionHandler;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (int64_t)type;
- (void)markComplete;
- (void)markCompleteWithUpdateCaptureBounds:(CGRect)bounds;
@end

@implementation SBUISystemApertureSecureFlipBookAction

- (SBUISystemApertureSecureFlipBookAction)initWithConfigurationName:(id)name layoutMode:(id)mode flipBookName:(id)bookName type:(int64_t)type toState:(id)state captureBoundsUpdateHandler:(id)handler completionHandler:(id)completionHandler
{
  nameCopy = name;
  modeCopy = mode;
  bookNameCopy = bookName;
  stateCopy = state;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (nameCopy)
  {
    if (bookNameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBUISystemApertureSecureFlipBookAction initWithConfigurationName:layoutMode:flipBookName:type:toState:captureBoundsUpdateHandler:completionHandler:];
    if (bookNameCopy)
    {
LABEL_3:
      if (modeCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  [SBUISystemApertureSecureFlipBookAction initWithConfigurationName:layoutMode:flipBookName:type:toState:captureBoundsUpdateHandler:completionHandler:];
  if (modeCopy)
  {
LABEL_4:
    if (stateCopy)
    {
      goto LABEL_5;
    }

LABEL_10:
    [SBUISystemApertureSecureFlipBookAction initWithConfigurationName:layoutMode:flipBookName:type:toState:captureBoundsUpdateHandler:completionHandler:];
    if (completionHandlerCopy)
    {
      goto LABEL_6;
    }

LABEL_11:
    [SBUISystemApertureSecureFlipBookAction initWithConfigurationName:layoutMode:flipBookName:type:toState:captureBoundsUpdateHandler:completionHandler:];
    goto LABEL_6;
  }

LABEL_9:
  [SBUISystemApertureSecureFlipBookAction initWithConfigurationName:layoutMode:flipBookName:type:toState:captureBoundsUpdateHandler:completionHandler:];
  if (!stateCopy)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (!completionHandlerCopy)
  {
    goto LABEL_11;
  }

LABEL_6:
  v21 = objc_alloc_init(MEMORY[0x1E698E700]);
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [v21 setObject:v22 forSetting:1];

  [v21 setObject:stateCopy forSetting:2];
  [v21 setObject:nameCopy forSetting:3];
  [v21 setObject:bookNameCopy forSetting:4];
  [v21 setObject:modeCopy forSetting:5];
  v23 = MEMORY[0x1E698E5F8];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __150__SBUISystemApertureSecureFlipBookAction_initWithConfigurationName_layoutMode_flipBookName_type_toState_captureBoundsUpdateHandler_completionHandler___block_invoke;
  v30[3] = &unk_1E789FBE0;
  v31 = handlerCopy;
  v32 = completionHandlerCopy;
  v24 = completionHandlerCopy;
  v25 = handlerCopy;
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
  info = [(SBUISystemApertureSecureFlipBookAction *)self info];
  v3 = [info objectForSetting:1];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (NSString)toState
{
  info = [(SBUISystemApertureSecureFlipBookAction *)self info];
  v3 = [info objectForSetting:2];
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
  info = [(SBUISystemApertureSecureFlipBookAction *)self info];
  v3 = [info objectForSetting:3];
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
  info = [(SBUISystemApertureSecureFlipBookAction *)self info];
  v3 = [info objectForSetting:4];
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
  info = [(SBUISystemApertureSecureFlipBookAction *)self info];
  v3 = [info objectForSetting:5];
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
    response = [MEMORY[0x1E698E600] response];
    [(SBUISystemApertureSecureFlipBookAction *)self sendResponse:response];
  }
}

- (void)markCompleteWithUpdateCaptureBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(SBUISystemApertureSecureFlipBookAction *)self isValid]&& [(SBUISystemApertureSecureFlipBookAction *)self canSendResponse])
  {
    v10 = objc_alloc_init(MEMORY[0x1E698E700]);
    v8 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
    [v10 setObject:v8 forSetting:6];

    v9 = [objc_alloc(MEMORY[0x1E698E600]) initWithInfo:v10 error:0];
    [(SBUISystemApertureSecureFlipBookAction *)self sendResponse:v9];
  }
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E789FC00[setting - 1];
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