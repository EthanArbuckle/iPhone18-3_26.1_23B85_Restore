@interface PLXPCResponderOperatorComposition
- (PLOperator)operator;
- (PLXPCResponderOperatorComposition)initWithOperator:(id)a3 withRegistration:(id)a4 withBlock:(id)a5;
- (PLXPCResponderOperatorComposition)initWithWorkQueue:(id)a3 withRegistration:(id)a4 withBlock:(id)a5;
- (id)description;
- (id)respondToRequestForClientID:(signed __int16)a3 withProcessName:(id)a4 withKey:(id)a5 withPayload:(id)a6;
@end

@implementation PLXPCResponderOperatorComposition

- (PLXPCResponderOperatorComposition)initWithOperator:(id)a3 withRegistration:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 workQueue];
  v12 = [(PLXPCResponderOperatorComposition *)self initWithWorkQueue:v11 withRegistration:v10 withBlock:v9];

  if (v12)
  {
    objc_storeWeak(&v12->_operator, v8);
  }

  return v12;
}

- (PLXPCResponderOperatorComposition)initWithWorkQueue:(id)a3 withRegistration:(id)a4 withBlock:(id)a5
{
  v21[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = PLXPCResponderOperatorComposition;
  v12 = [(PLXPCResponderOperatorComposition *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, a3);
    v14 = MEMORY[0x1DA71B0D0](v11);
    operatorBlock = v13->_operatorBlock;
    v13->_operatorBlock = v14;

    objc_storeStrong(&v13->_registration, a4);
    v20[0] = @"type";
    v20[1] = @"registration";
    v21[0] = @"Query";
    v21[1] = v10;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    [PLUtilities postNotificationName:@"register.PLXPCService" object:v13 userInfo:v16];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)respondToRequestForClientID:(signed __int16)a3 withProcessName:(id)a4 withKey:(id)a5 withPayload:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  v13 = [(PLXPCResponderOperatorComposition *)self workQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __101__PLXPCResponderOperatorComposition_respondToRequestForClientID_withProcessName_withKey_withPayload___block_invoke;
  v19[3] = &unk_1E85191C0;
  v22 = v12;
  v23 = &v25;
  v24 = a3;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_sync(v13, v19);

  v17 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v17;
}

void __101__PLXPCResponderOperatorComposition_respondToRequestForClientID_withProcessName_withKey_withPayload___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) operatorBlock];
  v4 = v3[2](v3, *(a1 + 72), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLXPCResponderOperatorComposition *)self operator];
  v5 = [v4 className];
  v6 = [(PLXPCResponderOperatorComposition *)self registration];
  v7 = [v6 description];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F539D228];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\t" withString:&stru_1F539D228];
  v10 = [v3 stringWithFormat:@"<PLXPCResponderOperatorComposition(%@-%@): %p>", v5, v9, self];

  return v10;
}

- (PLOperator)operator
{
  WeakRetained = objc_loadWeakRetained(&self->_operator);

  return WeakRetained;
}

@end