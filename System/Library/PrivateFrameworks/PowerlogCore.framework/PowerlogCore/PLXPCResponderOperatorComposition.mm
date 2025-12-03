@interface PLXPCResponderOperatorComposition
- (PLOperator)operator;
- (PLXPCResponderOperatorComposition)initWithOperator:(id)operator withRegistration:(id)registration withBlock:(id)block;
- (PLXPCResponderOperatorComposition)initWithWorkQueue:(id)queue withRegistration:(id)registration withBlock:(id)block;
- (id)description;
- (id)respondToRequestForClientID:(signed __int16)d withProcessName:(id)name withKey:(id)key withPayload:(id)payload;
@end

@implementation PLXPCResponderOperatorComposition

- (PLXPCResponderOperatorComposition)initWithOperator:(id)operator withRegistration:(id)registration withBlock:(id)block
{
  operatorCopy = operator;
  blockCopy = block;
  registrationCopy = registration;
  workQueue = [operatorCopy workQueue];
  v12 = [(PLXPCResponderOperatorComposition *)self initWithWorkQueue:workQueue withRegistration:registrationCopy withBlock:blockCopy];

  if (v12)
  {
    objc_storeWeak(&v12->_operator, operatorCopy);
  }

  return v12;
}

- (PLXPCResponderOperatorComposition)initWithWorkQueue:(id)queue withRegistration:(id)registration withBlock:(id)block
{
  v21[2] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  registrationCopy = registration;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = PLXPCResponderOperatorComposition;
  v12 = [(PLXPCResponderOperatorComposition *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, queue);
    v14 = MEMORY[0x1DA71B0D0](blockCopy);
    operatorBlock = v13->_operatorBlock;
    v13->_operatorBlock = v14;

    objc_storeStrong(&v13->_registration, registration);
    v20[0] = @"type";
    v20[1] = @"registration";
    v21[0] = @"Query";
    v21[1] = registrationCopy;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    [PLUtilities postNotificationName:@"register.PLXPCService" object:v13 userInfo:v16];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)respondToRequestForClientID:(signed __int16)d withProcessName:(id)name withKey:(id)key withPayload:(id)payload
{
  nameCopy = name;
  keyCopy = key;
  payloadCopy = payload;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  workQueue = [(PLXPCResponderOperatorComposition *)self workQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __101__PLXPCResponderOperatorComposition_respondToRequestForClientID_withProcessName_withKey_withPayload___block_invoke;
  v19[3] = &unk_1E85191C0;
  v22 = payloadCopy;
  v23 = &v25;
  dCopy = d;
  v19[4] = self;
  v20 = nameCopy;
  v21 = keyCopy;
  v14 = payloadCopy;
  v15 = keyCopy;
  v16 = nameCopy;
  dispatch_sync(workQueue, v19);

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
  operator = [(PLXPCResponderOperatorComposition *)self operator];
  className = [operator className];
  registration = [(PLXPCResponderOperatorComposition *)self registration];
  v7 = [registration description];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F539D228];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\t" withString:&stru_1F539D228];
  v10 = [v3 stringWithFormat:@"<PLXPCResponderOperatorComposition(%@-%@): %p>", className, v9, self];

  return v10;
}

- (PLOperator)operator
{
  WeakRetained = objc_loadWeakRetained(&self->_operator);

  return WeakRetained;
}

@end