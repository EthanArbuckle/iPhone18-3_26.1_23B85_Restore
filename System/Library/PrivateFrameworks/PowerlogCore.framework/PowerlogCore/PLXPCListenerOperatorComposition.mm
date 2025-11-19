@interface PLXPCListenerOperatorComposition
- (PLOperator)operator;
- (PLXPCListenerOperatorComposition)initWithOperator:(id)a3 withRegistration:(id)a4 withBlock:(id)a5;
- (id)description;
- (void)messageRecievedForClientID:(signed __int16)a3 withProcessName:(id)a4 withKey:(id)a5 withPayload:(id)a6;
@end

@implementation PLXPCListenerOperatorComposition

- (PLOperator)operator
{
  WeakRetained = objc_loadWeakRetained(&self->_operator);

  return WeakRetained;
}

- (PLXPCListenerOperatorComposition)initWithOperator:(id)a3 withRegistration:(id)a4 withBlock:(id)a5
{
  v20[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = PLXPCListenerOperatorComposition;
  v11 = [(PLXPCListenerOperatorComposition *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_operator, v8);
    v13 = MEMORY[0x1DA71B0D0](v10);
    operatorBlock = v12->_operatorBlock;
    v12->_operatorBlock = v13;

    objc_storeStrong(&v12->_registration, a4);
    v19[0] = @"type";
    v19[1] = @"registration";
    v20[0] = @"Post";
    v20[1] = v9;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [PLUtilities postNotificationName:@"register.PLXPCService" object:v12 userInfo:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)messageRecievedForClientID:(signed __int16)a3 withProcessName:(id)a4 withKey:(id)a5 withPayload:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(PLXPCListenerOperatorComposition *)self operator];
  v14 = [v13 workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PLXPCListenerOperatorComposition_messageRecievedForClientID_withProcessName_withKey_withPayload___block_invoke;
  block[3] = &unk_1E851B098;
  v22 = a3;
  block[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  dispatch_async(v14, block);
}

void __99__PLXPCListenerOperatorComposition_messageRecievedForClientID_withProcessName_withKey_withPayload___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) operatorBlock];
  v3[2](v3, *(a1 + 64), *(a1 + 40), *(a1 + 48), *(a1 + 56));

  objc_autoreleasePoolPop(v2);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLXPCListenerOperatorComposition *)self operator];
  v5 = [v4 className];
  v6 = [(PLXPCListenerOperatorComposition *)self registration];
  v7 = [v6 description];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F539D228];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\t" withString:&stru_1F539D228];
  v10 = [v3 stringWithFormat:@"<PLXPCListenerOperatorComposition(%@-%@): %p>", v5, v9, self];

  return v10;
}

@end