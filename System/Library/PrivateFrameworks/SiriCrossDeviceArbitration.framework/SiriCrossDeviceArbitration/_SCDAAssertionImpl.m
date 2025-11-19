@interface _SCDAAssertionImpl
- (NSString)description;
- (_SCDAAssertionImpl)initWithUUID:(id)a3 context:(id)a4 relinquishmentHandler:(id)a5;
@end

@implementation _SCDAAssertionImpl

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = _SCDAAssertionImpl;
  v4 = [(_SCDAAssertionImpl *)&v8 description];
  v5 = _SCDAAssertionCreateDescriptionOfProperties(self);
  v6 = [v3 initWithFormat:@"%@ {%@}", v4, v5];

  return v6;
}

- (_SCDAAssertionImpl)initWithUUID:(id)a3 context:(id)a4 relinquishmentHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = _SCDAAssertionImpl;
  v11 = [(_SCDAAssertionImpl *)&v23 init];
  if (v11)
  {
    v12 = [v8 copy];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    v14 = [v9 copy];
    context = v11->_context;
    v11->_context = v14;

    v16 = [SCDATwoArgumentSafetyBlock alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65___SCDAAssertionImpl_initWithUUID_context_relinquishmentHandler___block_invoke;
    v21[3] = &unk_1E85D2C90;
    v22 = v10;
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kSCDAErrorDomain" code:40 userInfo:0];
    v18 = [(SCDATwoArgumentSafetyBlock *)v16 initWithBlock:v21 defaultValue1:0 defaultValue2:v17];
    relinquishmentHandler = v11->_relinquishmentHandler;
    v11->_relinquishmentHandler = v18;
  }

  return v11;
}

@end