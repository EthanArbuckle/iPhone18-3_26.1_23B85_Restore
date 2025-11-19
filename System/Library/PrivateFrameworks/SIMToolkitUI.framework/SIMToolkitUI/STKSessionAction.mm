@interface STKSessionAction
+ (id)_sessionActionFromBSAction:(id)a3;
- (BSXPCCoding)sessionData;
- (STKSessionAction)initWithBehavior:(id)a3 data:(id)a4 responseBlock:(id)a5;
- (STKSessionBehavior)behavior;
- (id)_init;
- (id)_initWithBSAction:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)sendResponse:(int64_t)a3 withContext:(id)a4;
@end

@implementation STKSessionAction

+ (id)_sessionActionFromBSAction:(id)a3
{
  v3 = a3;
  v4 = [v3 info];
  v5 = [v4 objectForSetting:1];

  v6 = NSClassFromString(v5);
  if ([(objc_class *)v6 isSubclassOfClass:objc_opt_class()])
  {
    v7 = [[v6 alloc] _initWithBSAction:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = STKSessionAction;
  return [(STKSessionAction *)&v3 init];
}

- (id)_initWithBSAction:(id)a3
{
  v5 = a3;
  v6 = [(STKSessionAction *)self _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 3, a3);
  }

  return v7;
}

- (STKSessionAction)initWithBehavior:(id)a3 data:(id)a4 responseBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    [STKSessionAction initWithBehavior:data:responseBlock:];
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [STKSessionAction initWithBehavior:data:responseBlock:];
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  [STKSessionAction initWithBehavior:data:responseBlock:];
LABEL_4:
  v13 = __56__STKSessionAction_initWithBehavior_data_responseBlock___block_invoke(v11, v9);
  v14 = __56__STKSessionAction_initWithBehavior_data_responseBlock___block_invoke(v13, v10);
  v15 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [v15 setObject:v17 forSetting:1];

  [v15 setObject:v13 forSetting:2];
  [v15 setObject:v14 forSetting:3];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  [v15 setObject:v19 forSetting:4];

  v20 = [(STKSessionAction *)self _init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(v20 + 1, a3);
    objc_storeStrong(&v21->_data, a4);
    v22 = objc_alloc(MEMORY[0x277CF0B58]);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __56__STKSessionAction_initWithBehavior_data_responseBlock___block_invoke_2;
    v26[3] = &unk_279B4C9A8;
    v27 = v12;
    v23 = [v22 initWithInfo:v15 timeout:0 forResponseOnQueue:v26 withHandler:0.0];
    action = v21->_action;
    v21->_action = v23;
  }

  return v21;
}

id __56__STKSessionAction_initWithBehavior_data_responseBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = xpc_dictionary_create(0, 0, 0);
  [v2 encodeWithXPCDictionary:v3];

  return v3;
}

void __56__STKSessionAction_initWithBehavior_data_responseBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 error];

  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = [v8 info];
    v5 = [v4 objectForSetting:1];

    if (v5)
    {
      [v5 unsignedIntegerValue];
    }

    v6 = [v8 info];
    v7 = [v6 objectForSetting:2];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (STKSessionBehavior)behavior
{
  behavior = self->_behavior;
  if (!behavior)
  {
    v4 = [(BSAction *)self->_action info];
    v5 = [v4 objectForSetting:2];

    if ([v5 conformsToProtocol:&unk_287590CC0])
    {
      v6 = [[STKSessionBehavior alloc] initWithXPCDictionary:v5];
      v7 = self->_behavior;
      self->_behavior = v6;
    }

    behavior = self->_behavior;
  }

  return behavior;
}

- (BSXPCCoding)sessionData
{
  data = self->_data;
  if (!data)
  {
    v4 = [(BSAction *)self->_action info];
    v5 = [v4 objectForSetting:3];

    if ([v5 conformsToProtocol:&unk_287590CC0])
    {
      v6 = [(BSAction *)self->_action info];
      v7 = [v6 objectForSetting:4];

      v8 = NSClassFromString(v7);
      if (v8)
      {
        v9 = [[v8 alloc] initWithXPCDictionary:v5];
        v10 = self->_data;
        self->_data = v9;
      }
    }

    data = self->_data;
  }

  return data;
}

- (void)sendResponse:(int64_t)a3 withContext:(id)a4
{
  v6 = MEMORY[0x277CF0C80];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v8 setObject:v9 forSetting:1];

  [v8 setObject:v7 forSetting:2];
  v10 = self->_action;
  action = self->_action;
  self->_action = 0;

  v12 = [MEMORY[0x277CF0B68] responseWithInfo:v8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__STKSessionAction_sendResponse_withContext___block_invoke;
  v14[3] = &unk_279B4C9D0;
  v15 = v10;
  v13 = v10;
  [(BSAction *)v13 sendResponse:v12 withCompletion:v14];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(BSAction *)self->_action invalidate];
    action = self->_action;
    self->_action = 0;
  }
}

- (void)initWithBehavior:data:responseBlock:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:@"behavior" object:? file:? lineNumber:? description:?];
}

- (void)initWithBehavior:data:responseBlock:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:@"data" object:? file:? lineNumber:? description:?];
}

- (void)initWithBehavior:data:responseBlock:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:@"responseBlock" object:? file:? lineNumber:? description:?];
}

@end