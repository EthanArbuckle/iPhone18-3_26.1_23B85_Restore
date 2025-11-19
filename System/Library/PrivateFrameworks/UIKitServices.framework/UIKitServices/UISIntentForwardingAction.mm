@interface UISIntentForwardingAction
- (INIntent)intent;
- (INIntentForwardingAction)intentForwardingAction;
- (UISIntentForwardingAction)initWithIntent:(id)a3 responseQueue:(id)a4 reply:(id)a5;
- (UISIntentForwardingAction)initWithIntentForwardingAction:(id)a3 responseQueue:(id)a4 responseHandler:(id)a5;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation UISIntentForwardingAction

- (UISIntentForwardingAction)initWithIntentForwardingAction:(id)a3 responseQueue:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E698E700]);
  if ([v8 conformsToProtocol:&unk_1F0A86238])
  {
    [v11 setObject:v8 forSetting:5];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v12 encodeObject:v8 forKey:@"INIntentForwardingActionObjectKey"];
    v13 = [v12 encodedData];
    [v11 setObject:v13 forSetting:3];
  }

  v14 = MEMORY[0x1E698E5F8];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __90__UISIntentForwardingAction_initWithIntentForwardingAction_responseQueue_responseHandler___block_invoke;
  v20[3] = &unk_1E74593F0;
  v21 = v10;
  v15 = v10;
  v16 = [v14 responderWithHandler:v20];
  v17 = v16;
  if (v9)
  {
    [v16 setQueue:v9];
  }

  [v17 setTimeout:{dispatch_time(0, 10000000000)}];
  v18 = [(UISIntentForwardingAction *)self initWithInfo:v11 responder:v17];

  return v18;
}

void __90__UISIntentForwardingAction_initWithIntentForwardingAction_responseQueue_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [v5 intentForwardingActionResponse];
    (*(v3 + 16))(v3, v4);
  }
}

- (UISIntentForwardingAction)initWithIntent:(id)a3 responseQueue:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E698E700]);
  v12 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v12 encodeObject:v8 forKey:@"INIntentObjectKey"];
  v13 = [v12 encodedData];
  [v11 setObject:v13 forSetting:1];

  v14 = MEMORY[0x1E698E5F8];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__UISIntentForwardingAction_initWithIntent_responseQueue_reply___block_invoke;
  v20[3] = &unk_1E74593F0;
  v21 = v10;
  v15 = v10;
  v16 = [v14 responderWithHandler:v20];
  v17 = v16;
  if (v9)
  {
    [v16 setQueue:v9];
  }

  [v17 setTimeout:{dispatch_time(0, 10000000000)}];
  v18 = [(UISIntentForwardingAction *)self initWithInfo:v11 responder:v17];

  return v18;
}

void __64__UISIntentForwardingAction_initWithIntent_responseQueue_reply___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [v5 intentResponse];
    (*(v3 + 16))(v3, v4);
  }
}

- (INIntent)intent
{
  cachedIntent = self->_cachedIntent;
  if (cachedIntent)
  {
LABEL_6:
    v11 = cachedIntent;
    goto LABEL_7;
  }

  v4 = [(UISIntentForwardingAction *)self info];
  v5 = [v4 objectForSetting:1];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:0];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v7 = getINIntentClass_softClass;
    v17 = getINIntentClass_softClass;
    if (!getINIntentClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getINIntentClass_block_invoke;
      v13[3] = &unk_1E7459080;
      v13[4] = &v14;
      __getINIntentClass_block_invoke(v13);
      v7 = v15[3];
    }

    v8 = v7;
    _Block_object_dispose(&v14, 8);
    v9 = [v6 decodeObjectOfClass:v7 forKey:@"INIntentObjectKey"];
    v10 = self->_cachedIntent;
    self->_cachedIntent = v9;

    [v6 finishDecoding];
    cachedIntent = self->_cachedIntent;
    goto LABEL_6;
  }

  NSLog(&cfstr_SInvalidUisint.isa, "[UISIntentForwardingAction intent]", self);
  v11 = 0;
LABEL_7:

  return v11;
}

- (INIntentForwardingAction)intentForwardingAction
{
  cachedIntentForwardingAction = self->_cachedIntentForwardingAction;
  if (cachedIntentForwardingAction)
  {
    goto LABEL_9;
  }

  v4 = [(UISIntentForwardingAction *)self info];
  v5 = [v4 objectForSetting:5];

  if (v5)
  {
    objc_storeStrong(&self->_cachedIntentForwardingAction, v5);
LABEL_8:

    cachedIntentForwardingAction = self->_cachedIntentForwardingAction;
LABEL_9:
    v13 = cachedIntentForwardingAction;
    goto LABEL_10;
  }

  v6 = [(UISIntentForwardingAction *)self info];
  v7 = [v6 objectForSetting:3];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v7 error:0];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v9 = getINIntentForwardingActionClass_softClass;
    v19 = getINIntentForwardingActionClass_softClass;
    if (!getINIntentForwardingActionClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getINIntentForwardingActionClass_block_invoke;
      v15[3] = &unk_1E7459080;
      v15[4] = &v16;
      __getINIntentForwardingActionClass_block_invoke(v15);
      v9 = v17[3];
    }

    v10 = v9;
    _Block_object_dispose(&v16, 8);
    v11 = [v8 decodeObjectOfClass:v9 forKey:@"INIntentForwardingActionObjectKey"];
    v12 = self->_cachedIntentForwardingAction;
    self->_cachedIntentForwardingAction = v11;

    [v8 finishDecoding];
    goto LABEL_8;
  }

  NSLog(&cfstr_SInvalidUisint.isa, "[UISIntentForwardingAction intentForwardingAction]", self);
  v13 = 0;
LABEL_10:

  return v13;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v3 = @"intent forwarding action";
  if (a3 != 3)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"intent";
  }

  else
  {
    return v3;
  }
}

@end