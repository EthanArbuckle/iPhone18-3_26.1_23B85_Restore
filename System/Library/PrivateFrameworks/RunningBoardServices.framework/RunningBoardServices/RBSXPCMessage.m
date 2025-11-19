@interface RBSXPCMessage
+ (RBSXPCMessage)messageWithEncoder:(uint64_t)a1;
+ (id)messageForMethod:(SEL)a3 varguments:(id)a4;
+ (id)messageForXPCMessage:(id)a3;
+ (void)messageForMethod:(void *)a3 arguments:;
- (RBSXPCMessage)init;
- (RBSXPCMessageReply)reply;
- (SEL)invokeOnConnection:(uint64_t)a3 withReturnClass:(void *)a4 error:;
- (id)_initWithMessage:(id *)a1;
- (id)decodeArgumentCollection:(Class)a3 withClass:(Class)a4 atIndex:(unint64_t)a5 allowNil:(BOOL)a6 error:(id *)a7;
- (id)error;
- (id)invokeOnConnection:(uint64_t)a3 withReturnCollectionClass:(uint64_t)a4 entryClass:(void *)a5 error:;
- (id)sendToConnection:(id)a3 error:(id *)a4;
- (void)sendToConnection:(id)a3 completion:(id)a4;
- (void)sendToConnection:(id)a3 replyQueue:(id)a4 completion:(id)a5;
@end

@implementation RBSXPCMessage

- (RBSXPCMessage)init
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = [(RBSXPCMessage *)&self->super.isa _initWithMessage:v3];

  return v4;
}

- (RBSXPCMessageReply)reply
{
  xpc_message = self->_xpc_message;
  if (xpc_dictionary_expects_reply() && (reply = xpc_dictionary_create_reply(self->_xpc_message)) != 0)
  {
    v7 = reply;
    v5 = [[RBSXPCMessageReply alloc] _initWithMessage:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)error
{
  if (a1)
  {
    a1 = [a1[2] decodeObjectOfClass:objc_opt_class() forKey:@"__RBSXPCError__"];
    v1 = vars8;
  }

  return a1;
}

+ (RBSXPCMessage)messageWithEncoder:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(RBSXPCMessage);
  v4 = v3;
  if (v2)
  {
    (v2)[2](v2, v3->_payload);
  }

  return v4;
}

+ (void)messageForMethod:(void *)a3 arguments:
{
  v4 = a3;
  v5 = objc_opt_self();
  if (!a2)
  {
    [RBSXPCMessage messageForMethod:v5 arguments:?];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__RBSXPCMessage_messageForMethod_arguments___block_invoke;
  v9[3] = &unk_1E72769E8;
  v10 = v4;
  v11 = sel_messageForMethod_arguments_;
  v12 = v5;
  v13 = a2;
  v6 = v4;
  v7 = [RBSXPCMessage messageWithEncoder:v9];
  v7[3] = a2;

  return v7;
}

void __44__RBSXPCMessage_messageForMethod_arguments___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = [*(a1 + 32) objectAtIndex:0];
    [v6 encodeObject:v3 forKey:@"rbs_argument_0"];
  }

  else
  {
    v3 = 0;
  }

  if ([*(a1 + 32) count] >= 2)
  {
    v4 = [*(a1 + 32) objectAtIndex:1];

    [v6 encodeObject:v4 forKey:@"rbs_argument_1"];
    v3 = v4;
  }

  if ([*(a1 + 32) count] >= 3)
  {
    __44__RBSXPCMessage_messageForMethod_arguments___block_invoke_cold_1(a1);
  }

  v5 = NSStringFromSelector(*(a1 + 56));
  [v6 encodeObject:v5 forKey:@"rbs_selector"];
}

+ (id)messageForMethod:(SEL)a3 varguments:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v12 = &v14;
  if (v5)
  {
    v7 = 0;
    do
    {
      [v6 insertObject:v5 atIndex:v7];
      v8 = v12++;
      v9 = *v8;

      ++v7;
      v5 = v9;
    }

    while (v9);
  }

  v10 = [RBSXPCMessage messageForMethod:a3 arguments:v6];

  return v10;
}

+ (id)messageForXPCMessage:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && MEMORY[0x193AD5A20](v3) == MEMORY[0x1E69E9E80])
  {
    v5 = [[RBSXPCMessage alloc] _initWithMessage:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sendToConnection:(id)a3 error:(id *)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    if (a4)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A250];
      v22 = *MEMORY[0x1E696A588];
      v23[0] = @"The connection does not exist";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *a4 = [v10 errorWithDomain:v11 code:4099 userInfo:v12];
    }

    goto LABEL_6;
  }

  v7 = NSStringFromSelector(self->_method);
  v8 = [v7 hasPrefix:@"async_"];

  if (v8)
  {
    v9 = [(RBSXPCCoder *)self->_payload createMessage];
    xpc_connection_send_message(v6, v9);

LABEL_6:
    v13 = 0;
    goto LABEL_22;
  }

  v14 = NSStringFromSelector(self->_method);
  v15 = [v14 hasPrefix:@"void_"];

  v16 = [(RBSXPCCoder *)self->_payload createMessage];
  v17 = xpc_connection_send_message_with_reply_sync(v6, v16);

  if (v15)
  {
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v17)
  {
    if (MEMORY[0x193AD5A20](v17) == MEMORY[0x1E69E9E80])
    {
      v13 = [RBSXPCCoder coderWithMessage:v17];
      if (!a4)
      {
        goto LABEL_21;
      }

      v19 = [v13 decodeObjectOfClass:objc_opt_class() forKey:@"__RBSXPCError__"];
      goto LABEL_20;
    }

LABEL_12:
    if (MEMORY[0x193AD5A20](v17) != MEMORY[0x1E69E9E98])
    {
      goto LABEL_13;
    }

    v18 = rbs_connection_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [RBSXPCMessage sendToConnection:v18 error:?];
    }

    if (!a4)
    {
      goto LABEL_13;
    }

    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4101 userInfo:0];
    v13 = 0;
LABEL_20:
    *a4 = v19;
    goto LABEL_21;
  }

LABEL_13:
  v13 = 0;
LABEL_21:

LABEL_22:
  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)sendToConnection:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[RBSWorkloop sharedBackgroundWorkloop];
  [(RBSXPCMessage *)self sendToConnection:v7 replyQueue:v8 completion:v6];
}

- (void)sendToConnection:(id)a3 replyQueue:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = +[RBSWorkloop sharedBackgroundWorkloop];
    if (v9)
    {
LABEL_3:
      method = self->_method;
      if (method)
      {
        v13 = NSStringFromSelector(method);
        v14 = [v13 hasPrefix:@"async_"];

        if ((v14 & 1) == 0)
        {
          [RBSXPCMessage sendToConnection:a2 replyQueue:self completion:?];
        }
      }

      v15 = [(RBSXPCCoder *)self->_payload createMessage];
      if (!v11)
      {
        xpc_connection_send_message(v9, v15);

        goto LABEL_13;
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __56__RBSXPCMessage_sendToConnection_replyQueue_completion___block_invoke_2;
      v17[3] = &unk_1E7276A38;
      v18 = v11;
      xpc_connection_send_message_with_reply(v9, v15, v10, v17);

      v16 = v18;
      goto LABEL_11;
    }
  }

  if (v11)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__RBSXPCMessage_sendToConnection_replyQueue_completion___block_invoke;
    block[3] = &unk_1E7276A10;
    v20 = v11;
    dispatch_async(v10, block);
    v16 = v20;
LABEL_11:
  }

LABEL_13:
}

void __56__RBSXPCMessage_sendToConnection_replyQueue_completion___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A250];
  v7 = *MEMORY[0x1E696A588];
  v8[0] = @"The connection does not exist";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:v3 code:4099 userInfo:v4];
  (*(v1 + 16))(v1, v5);

  v6 = *MEMORY[0x1E69E9840];
}

void __56__RBSXPCMessage_sendToConnection_replyQueue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    goto LABEL_4;
  }

  if (MEMORY[0x193AD5A20]() == MEMORY[0x1E69E9E80])
  {
    __56__RBSXPCMessage_sendToConnection_replyQueue_completion___block_invoke_2_cold_1(v4, &v5);
    v3 = v5;
  }

  else
  {
    if (MEMORY[0x193AD5A20](v4) != MEMORY[0x1E69E9E98])
    {
LABEL_4:
      v3 = 0;
      goto LABEL_6;
    }

    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4101 userInfo:0];
  }

LABEL_6:
  (*(*(a1 + 32) + 16))();
}

- (id)decodeArgumentCollection:(Class)a3 withClass:(Class)a4 atIndex:(unint64_t)a5 allowNil:(BOOL)a6 error:(id *)a7
{
  v27[3] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (a5 != 1)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A588];
      v27[0] = @"requested argument index not supported";
      v26[0] = v14;
      v26[1] = @"method-name";
      v15 = NSStringFromSelector(self->_method);
      v27[1] = v15;
      v26[2] = @"argument-index";
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
      v27[2] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
      v18 = [v13 errorWithDomain:@"RBSXPCCodingErrorDomain" code:1 userInfo:v17];
      v19 = 0;
      goto LABEL_12;
    }

    v11 = @"rbs_argument_1";
  }

  else
  {
    v11 = @"rbs_argument_0";
  }

  payload = self->_payload;
  if (a3)
  {
    [(RBSXPCCoder *)payload decodeCollectionOfClass:a3 containingClass:a4 forKey:v11];
  }

  else
  {
    [(RBSXPCCoder *)payload decodeObjectOfClass:a4 forKey:v11];
  }
  v19 = ;
  if (v19 || a6)
  {
    goto LABEL_13;
  }

  v20 = MEMORY[0x1E696ABC0];
  v21 = *MEMORY[0x1E696A588];
  v25[0] = @"nil argument when nonnil expected";
  v24[0] = v21;
  v24[1] = @"method-name";
  v15 = NSStringFromSelector(self->_method);
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a5, v24[0], @"method-name", @"argument-index", @"nil argument when nonnil expected", v15}];
  v25[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v18 = [v20 errorWithDomain:@"RBSXPCCodingErrorDomain" code:1 userInfo:v17];
LABEL_12:
  *a7 = v18;

LABEL_13:
  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_initWithMessage:(id *)a1
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (!v4 || MEMORY[0x193AD5A20](v4) != MEMORY[0x1E69E9E80])
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:sel__initWithMessage_ object:a1 file:@"RBSXPCUtilities.m" lineNumber:209 description:@"can only init messages with dictionaries"];
    }

    v12.receiver = a1;
    v12.super_class = RBSXPCMessage;
    v6 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 1, a2);
      v7 = [RBSXPCCoder coderWithMessage:v5];
      v8 = a1[2];
      a1[2] = v7;

      v9 = [a1[2] decodeStringForKey:@"rbs_selector"];
      a1[3] = NSSelectorFromString(v9);
    }
  }

  return a1;
}

- (id)invokeOnConnection:(uint64_t)a3 withReturnCollectionClass:(uint64_t)a4 entryClass:(void *)a5 error:
{
  v9 = a2;
  if (a1)
  {
    if (!a1[3])
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:sel_invokeOnConnection_withReturnCollectionClass_entryClass_error_ object:a1 file:@"RBSXPCUtilities.m" lineNumber:317 description:@"must initialize message with a method to use this mechanism"];
    }

    v10 = [(SEL *)a1 sendToConnection:v9 error:a5];
    v11 = v10;
    if (a5 && [v10 containsValueForKey:@"__RBSXPCError__"])
    {
      *a5 = [v11 decodeObjectOfClass:objc_opt_class() forKey:@"__RBSXPCError__"];
    }

    if ([v11 containsValueForKey:@"return-value"])
    {
      if (a3)
      {
        [v11 decodeCollectionOfClass:a3 containingClass:a4 forKey:@"return-value"];
      }

      else
      {
        [v11 decodeObjectOfClass:a4 forKey:@"return-value"];
      }
      v12 = ;
      if (v12)
      {
        goto LABEL_14;
      }

      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = NSStringFromSelector(a1[3]);
      [v13 handleFailureInMethod:sel_invokeOnConnection_withReturnCollectionClass_entryClass_error_ object:a1 file:@"RBSXPCUtilities.m" lineNumber:332 description:{@"failed to decode return value for %@", v14}];
    }

    v12 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (SEL)invokeOnConnection:(uint64_t)a3 withReturnClass:(void *)a4 error:
{
  if (a1)
  {
    a1 = [(RBSXPCMessage *)a1 invokeOnConnection:a2 withReturnCollectionClass:0 entryClass:a3 error:a4];
    v4 = vars8;
  }

  return a1;
}

+ (void)messageForMethod:(uint64_t)a1 arguments:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSXPCUtilities.m" lineNumber:165 description:@"method must be specified"];
}

void __44__RBSXPCMessage_messageForMethod_arguments___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 48) file:@"RBSXPCUtilities.m" lineNumber:177 description:@"Only up to two arguments supported by RBSXPCMessage"];
}

- (void)sendToConnection:(SEL *)a1 replyQueue:(uint64_t)a2 completion:(uint64_t)a3 .cold.1(SEL *a1, uint64_t a2, uint64_t a3)
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = NSStringFromSelector(*a1);
  [v7 handleFailureInMethod:a2 object:a3 file:@"RBSXPCUtilities.m" lineNumber:293 description:{@"syncronous method cannot be sent async: %@", v6}];
}

void __56__RBSXPCMessage_sendToConnection_replyQueue_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  v3 = [RBSXPCMessage messageForXPCMessage:a1];
  *a2 = [(RBSXPCMessage *)v3 error];
}

@end