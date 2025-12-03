@interface PLXPCListenerOperatorComposition
- (PLOperator)operator;
- (PLXPCListenerOperatorComposition)initWithOperator:(id)operator withRegistration:(id)registration withBlock:(id)block;
- (id)description;
- (void)messageRecievedForClientID:(signed __int16)d withProcessName:(id)name withKey:(id)key withPayload:(id)payload;
@end

@implementation PLXPCListenerOperatorComposition

- (PLOperator)operator
{
  WeakRetained = objc_loadWeakRetained(&self->_operator);

  return WeakRetained;
}

- (PLXPCListenerOperatorComposition)initWithOperator:(id)operator withRegistration:(id)registration withBlock:(id)block
{
  v20[2] = *MEMORY[0x1E69E9840];
  operatorCopy = operator;
  registrationCopy = registration;
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = PLXPCListenerOperatorComposition;
  v11 = [(PLXPCListenerOperatorComposition *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_operator, operatorCopy);
    v13 = MEMORY[0x1DA71B0D0](blockCopy);
    operatorBlock = v12->_operatorBlock;
    v12->_operatorBlock = v13;

    objc_storeStrong(&v12->_registration, registration);
    v19[0] = @"type";
    v19[1] = @"registration";
    v20[0] = @"Post";
    v20[1] = registrationCopy;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [PLUtilities postNotificationName:@"register.PLXPCService" object:v12 userInfo:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)messageRecievedForClientID:(signed __int16)d withProcessName:(id)name withKey:(id)key withPayload:(id)payload
{
  nameCopy = name;
  keyCopy = key;
  payloadCopy = payload;
  operator = [(PLXPCListenerOperatorComposition *)self operator];
  workQueue = [operator workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PLXPCListenerOperatorComposition_messageRecievedForClientID_withProcessName_withKey_withPayload___block_invoke;
  block[3] = &unk_1E851B098;
  dCopy = d;
  block[4] = self;
  v19 = nameCopy;
  v20 = keyCopy;
  v21 = payloadCopy;
  v15 = payloadCopy;
  v16 = keyCopy;
  v17 = nameCopy;
  dispatch_async(workQueue, block);
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
  operator = [(PLXPCListenerOperatorComposition *)self operator];
  className = [operator className];
  registration = [(PLXPCListenerOperatorComposition *)self registration];
  v7 = [registration description];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F539D228];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\t" withString:&stru_1F539D228];
  v10 = [v3 stringWithFormat:@"<PLXPCListenerOperatorComposition(%@-%@): %p>", className, v9, self];

  return v10;
}

@end