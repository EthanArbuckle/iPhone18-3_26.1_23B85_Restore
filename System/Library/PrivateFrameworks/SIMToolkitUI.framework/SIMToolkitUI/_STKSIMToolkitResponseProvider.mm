@interface _STKSIMToolkitResponseProvider
- (_STKSIMToolkitResponseProvider)initWithQueue:(id)queue telephonyClient:(id)client context:(id)context options:(id)options logger:(id)logger;
- (__CFString)_responseFromResponseType:(int64_t)type;
- (void)sendResponse:(int64_t)response;
- (void)sendResponse:(int64_t)response withBOOLResult:(BOOL)result;
- (void)sendResponse:(int64_t)response withStringResult:(id)result;
- (void)sendSuccessWithSelectedIndex:(unint64_t)index;
@end

@implementation _STKSIMToolkitResponseProvider

- (_STKSIMToolkitResponseProvider)initWithQueue:(id)queue telephonyClient:(id)client context:(id)context options:(id)options logger:(id)logger
{
  queueCopy = queue;
  clientCopy = client;
  contextCopy = context;
  optionsCopy = options;
  loggerCopy = logger;
  if (queueCopy)
  {
    if (clientCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_STKSIMToolkitResponseProvider initWithQueue:telephonyClient:context:options:logger:];
    if (clientCopy)
    {
LABEL_3:
      if (contextCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      [_STKSIMToolkitResponseProvider initWithQueue:telephonyClient:context:options:logger:];
      if (optionsCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [_STKSIMToolkitResponseProvider initWithQueue:telephonyClient:context:options:logger:];
  if (!contextCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (optionsCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  [_STKSIMToolkitResponseProvider initWithQueue:telephonyClient:context:options:logger:];
LABEL_5:
  v23.receiver = self;
  v23.super_class = _STKSIMToolkitResponseProvider;
  v18 = [(_STKSIMToolkitResponseProvider *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_telephonyClient, client);
    objc_storeStrong(&v19->_context, context);
    v20 = [optionsCopy copy];
    options = v19->_options;
    v19->_options = v20;

    objc_storeStrong(&v19->_queue, queue);
    objc_storeStrong(&v19->_logger, logger);
  }

  return v19;
}

- (void)sendResponse:(int64_t)response
{
  if (!self->_hasSentResponse)
  {
    self->_hasSentResponse = 1;
    logger = self->_logger;
    v6 = os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG);
    if (response == 7)
    {
      if (v6)
      {
        [(_STKSIMToolkitResponseProvider *)self sendResponse:?];
      }

      queue = self->_queue;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __47___STKSIMToolkitResponseProvider_sendResponse___block_invoke;
      v10[3] = &unk_279B4C428;
      v10[4] = self;
      v8 = v10;
    }

    else
    {
      if (v6)
      {
        [(_STKSIMToolkitResponseProvider *)self sendResponse:response];
      }

      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47___STKSIMToolkitResponseProvider_sendResponse___block_invoke_23;
      block[3] = &unk_279B4C390;
      block[4] = self;
      block[5] = response;
      v8 = block;
    }

    dispatch_async(queue, v8);
  }
}

- (void)sendResponse:(int64_t)response withBOOLResult:(BOOL)result
{
  v22 = *MEMORY[0x277D85DE8];
  if (!self->_hasSentResponse)
  {
    resultCopy = result;
    self->_hasSentResponse = 1;
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      if (self->_telephonyClient)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = logger;
      v12 = [(_STKSIMToolkitResponseProvider *)self _responseFromResponseType:response];
      *buf = 138412802;
      if (resultCopy)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v17 = v10;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_debug_impl(&dword_262BB4000, v11, OS_LOG_TYPE_DEBUG, "Really sending response to CT: sendSIMToolkitBooleanResponse - hasClient: %@, response: %@, result: %@", buf, 0x20u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62___STKSIMToolkitResponseProvider_sendResponse_withBOOLResult___block_invoke;
    block[3] = &unk_279B4C820;
    block[4] = self;
    block[5] = response;
    v15 = resultCopy;
    dispatch_async(queue, block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sendResponse:(int64_t)response withStringResult:(id)result
{
  v21 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  if (!self->_hasSentResponse)
  {
    self->_hasSentResponse = 1;
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      if (self->_telephonyClient)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = logger;
      *buf = 138412802;
      v16 = v10;
      v17 = 2112;
      v18 = [(_STKSIMToolkitResponseProvider *)self _responseFromResponseType:response];
      v19 = 2112;
      v20 = resultCopy;
      _os_log_debug_impl(&dword_262BB4000, v11, OS_LOG_TYPE_DEBUG, "Really sending response to CT: sendSIMToolkitStringResponse - hasClient: %@, response: %@, result: %@", buf, 0x20u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64___STKSIMToolkitResponseProvider_sendResponse_withStringResult___block_invoke;
    block[3] = &unk_279B4C3B8;
    block[4] = self;
    responseCopy = response;
    v13 = resultCopy;
    dispatch_async(queue, block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sendSuccessWithSelectedIndex:(unint64_t)index
{
  if (!self->_hasSentResponse)
  {
    self->_hasSentResponse = 1;
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      [(_STKSIMToolkitResponseProvider *)self sendSuccessWithSelectedIndex:index];
    }

    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63___STKSIMToolkitResponseProvider_sendSuccessWithSelectedIndex___block_invoke;
    v7[3] = &unk_279B4C390;
    v7[4] = self;
    v7[5] = index;
    dispatch_async(queue, v7);
  }
}

- (__CFString)_responseFromResponseType:(int64_t)type
{
  if (type > 3)
  {
    if ((type - 6) < 2)
    {
      v3 = MEMORY[0x277CC3FF0];
    }

    else if (type == 4)
    {
      v3 = MEMORY[0x277CC3FD8];
    }

    else
    {
      if (type != 5)
      {
        return self;
      }

      v3 = MEMORY[0x277CC3FE0];
    }
  }

  else if (type > 1)
  {
    if (type == 2)
    {
      v3 = MEMORY[0x277CC4008];
    }

    else
    {
      v3 = MEMORY[0x277CC3FF8];
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      return self;
    }

    v3 = MEMORY[0x277CC3FE8];
  }

  else
  {
    v3 = MEMORY[0x277CC4000];
  }

  return *v3;
}

- (void)initWithQueue:telephonyClient:context:options:logger:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

- (void)initWithQueue:telephonyClient:context:options:logger:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:@"telephonyClient" object:? file:? lineNumber:? description:?];
}

- (void)initWithQueue:telephonyClient:context:options:logger:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:@"context" object:? file:? lineNumber:? description:?];
}

- (void)initWithQueue:telephonyClient:context:options:logger:.cold.4()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:@"options" object:? file:? lineNumber:? description:?];
}

- (void)sendResponse:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  a1[2];
  v5 = a2;
  [a1 _responseFromResponseType:a3];
  OUTLINED_FUNCTION_1_1();
  v9 = v6;
  _os_log_debug_impl(&dword_262BB4000, v5, OS_LOG_TYPE_DEBUG, "Really sending response to CT: sendSIMToolkitResponse - hasClient: %@, response: %@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendResponse:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_262BB4000, a2, OS_LOG_TYPE_DEBUG, "Really sending response to CT: sendSIMToolkitUserActivity - hasClient: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)sendSuccessWithSelectedIndex:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  a1[2];
  v5 = a2;
  v6 = [a1 _responseFromResponseType:0];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  OUTLINED_FUNCTION_1_1();
  v12 = v6;
  v13 = v8;
  v14 = v9;
  _os_log_debug_impl(&dword_262BB4000, v5, OS_LOG_TYPE_DEBUG, "Really sending response to CT: selectSIMToolkitListItem - hasClient: %@, response: %@, result: %@", v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

@end