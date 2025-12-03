@interface UISIntentForwardingActionResponse
+ (id)responseWithIntentForwardingActionResponse:(id)response;
+ (id)responseWithIntentResponse:(id)response;
- (INIntentForwardingActionResponse)intentForwardingActionResponse;
- (INIntentResponse)intentResponse;
- (UISIntentForwardingActionResponse)initWithIntentForwardingActionResponse:(id)response;
- (UISIntentForwardingActionResponse)initWithIntentResponse:(id)response;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation UISIntentForwardingActionResponse

- (UISIntentForwardingActionResponse)initWithIntentForwardingActionResponse:(id)response
{
  responseCopy = response;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v6 encodeObject:responseCopy forKey:@"INIntentForwardingActionResponseObjectKey"];
  encodedData = [v6 encodedData];
  [v5 setObject:encodedData forSetting:4];

  v8 = [(UISIntentForwardingActionResponse *)self initWithInfo:v5 error:0];
  return v8;
}

+ (id)responseWithIntentForwardingActionResponse:(id)response
{
  responseCopy = response;
  v5 = [[self alloc] initWithIntentForwardingActionResponse:responseCopy];

  return v5;
}

- (UISIntentForwardingActionResponse)initWithIntentResponse:(id)response
{
  responseCopy = response;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v6 encodeObject:responseCopy forKey:@"INIntentResponseObjectKey"];
  encodedData = [v6 encodedData];
  [v5 setObject:encodedData forSetting:2];

  v8 = [(UISIntentForwardingActionResponse *)self initWithInfo:v5 error:0];
  return v8;
}

+ (id)responseWithIntentResponse:(id)response
{
  responseCopy = response;
  v5 = [[self alloc] initWithIntentResponse:responseCopy];

  return v5;
}

- (INIntentResponse)intentResponse
{
  cachedIntentResponse = self->_cachedIntentResponse;
  if (cachedIntentResponse)
  {
LABEL_6:
    v11 = cachedIntentResponse;
    goto LABEL_7;
  }

  info = [(UISIntentForwardingActionResponse *)self info];
  v5 = [info objectForSetting:2];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:0];
    [v6 setRequiresSecureCoding:1];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v7 = getINIntentResponseClass_softClass;
    v17 = getINIntentResponseClass_softClass;
    if (!getINIntentResponseClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getINIntentResponseClass_block_invoke;
      v13[3] = &unk_1E7459080;
      v13[4] = &v14;
      __getINIntentResponseClass_block_invoke(v13);
      v7 = v15[3];
    }

    v8 = v7;
    _Block_object_dispose(&v14, 8);
    v9 = [v6 decodeObjectOfClass:v7 forKey:@"INIntentResponseObjectKey"];
    v10 = self->_cachedIntentResponse;
    self->_cachedIntentResponse = v9;

    [v6 finishDecoding];
    cachedIntentResponse = self->_cachedIntentResponse;
    goto LABEL_6;
  }

  NSLog(&cfstr_SInvalidUisint_0.isa, "[UISIntentForwardingActionResponse intentResponse]", self);
  v11 = 0;
LABEL_7:

  return v11;
}

- (INIntentForwardingActionResponse)intentForwardingActionResponse
{
  cachedIntentForwardingActionResponse = self->_cachedIntentForwardingActionResponse;
  if (cachedIntentForwardingActionResponse)
  {
LABEL_6:
    v11 = cachedIntentForwardingActionResponse;
    goto LABEL_7;
  }

  info = [(UISIntentForwardingActionResponse *)self info];
  v5 = [info objectForSetting:4];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:0];
    [v6 setRequiresSecureCoding:1];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v7 = getINIntentForwardingActionResponseClass_softClass;
    v17 = getINIntentForwardingActionResponseClass_softClass;
    if (!getINIntentForwardingActionResponseClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getINIntentForwardingActionResponseClass_block_invoke;
      v13[3] = &unk_1E7459080;
      v13[4] = &v14;
      __getINIntentForwardingActionResponseClass_block_invoke(v13);
      v7 = v15[3];
    }

    v8 = v7;
    _Block_object_dispose(&v14, 8);
    v9 = [v6 decodeObjectOfClass:v7 forKey:@"INIntentForwardingActionResponseObjectKey"];
    v10 = self->_cachedIntentForwardingActionResponse;
    self->_cachedIntentForwardingActionResponse = v9;

    [v6 finishDecoding];
    cachedIntentForwardingActionResponse = self->_cachedIntentForwardingActionResponse;
    goto LABEL_6;
  }

  NSLog(&cfstr_SInvalidUisint_0.isa, "[UISIntentForwardingActionResponse intentForwardingActionResponse]", self);
  v11 = 0;
LABEL_7:

  return v11;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v3 = @"intent forwarding action response";
  if (setting != 4)
  {
    v3 = 0;
  }

  if (setting == 2)
  {
    return @"intent response";
  }

  else
  {
    return v3;
  }
}

@end