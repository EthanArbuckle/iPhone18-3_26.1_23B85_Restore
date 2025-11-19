@interface SVXActivationContext
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXActivationContext)initWithCoder:(id)a3;
- (SVXActivationContext)initWithSource:(int64_t)a3 timestamp:(unint64_t)a4 buttonEvent:(id)a5 systemEvent:(id)a6 clientInfo:(id)a7 requestInfo:(id)a8 userInfo:(id)a9;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXActivationContext

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  source = self->_source;
  v8 = a3;
  v6 = [v4 numberWithInteger:source];
  [v8 encodeObject:v6 forKey:@"SVXActivationContext::source"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  [v8 encodeObject:v7 forKey:@"SVXActivationContext::timestamp"];

  [v8 encodeObject:self->_buttonEvent forKey:@"SVXActivationContext::buttonEvent"];
  [v8 encodeObject:self->_systemEvent forKey:@"SVXActivationContext::systemEvent"];
  [v8 encodeObject:self->_clientInfo forKey:@"SVXActivationContext::clientInfo"];
  [v8 encodeObject:self->_requestInfo forKey:@"SVXActivationContext::requestInfo"];
  [v8 encodeObject:self->_userInfo forKey:@"SVXActivationContext::userInfo"];
}

- (SVXActivationContext)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXActivationContext::source"];
  v25 = [v4 integerValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXActivationContext::timestamp"];
  v24 = [v5 unsignedLongLongValue];

  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXActivationContext::buttonEvent"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXActivationContext::systemEvent"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXActivationContext::clientInfo"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXActivationContext::requestInfo"];
  v20 = MEMORY[0x277CBEB98];
  v19 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v20 setWithObjects:{v19, v7, v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  v16 = [v3 decodeObjectOfClasses:v15 forKey:@"SVXActivationContext::userInfo"];

  v17 = [(SVXActivationContext *)self initWithSource:v25 timestamp:v24 buttonEvent:v23 systemEvent:v22 clientInfo:v21 requestInfo:v6 userInfo:v16];
  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      source = self->_source;
      if (source == [(SVXActivationContext *)v5 source]&& (timestamp = self->_timestamp, timestamp == [(SVXActivationContext *)v5 timestamp]))
      {
        v8 = [(SVXActivationContext *)v5 buttonEvent];
        buttonEvent = self->_buttonEvent;
        if (buttonEvent == v8 || [(SVXButtonEvent *)buttonEvent isEqual:v8])
        {
          v10 = [(SVXActivationContext *)v5 systemEvent];
          systemEvent = self->_systemEvent;
          if (systemEvent == v10 || [(SVXSystemEvent *)systemEvent isEqual:v10])
          {
            v12 = [(SVXActivationContext *)v5 clientInfo];
            clientInfo = self->_clientInfo;
            if (clientInfo == v12 || [(SVXClientInfo *)clientInfo isEqual:v12])
            {
              v14 = [(SVXActivationContext *)v5 requestInfo];
              requestInfo = self->_requestInfo;
              if (requestInfo == v14 || [(AFRequestInfo *)requestInfo isEqual:v14])
              {
                v16 = [(SVXActivationContext *)v5 userInfo];
                userInfo = self->_userInfo;
                v18 = userInfo == v16 || [(NSDictionary *)userInfo isEqual:v16];
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_source];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  v6 = [v5 hash] ^ v4;
  v7 = [(SVXButtonEvent *)self->_buttonEvent hash];
  v8 = v7 ^ [(SVXSystemEvent *)self->_systemEvent hash];
  v9 = v8 ^ [(SVXClientInfo *)self->_clientInfo hash];
  v10 = v6 ^ v9 ^ [(AFRequestInfo *)self->_requestInfo hash];
  v11 = [(NSDictionary *)self->_userInfo hash];

  return v10 ^ v11;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v11.receiver = self;
  v11.super_class = SVXActivationContext;
  v5 = [(SVXActivationContext *)&v11 description];
  source = self->_source;
  if (source > 9)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_279C67C58[source];
  }

  v8 = v7;
  v9 = [v4 initWithFormat:@"%@ {source = %@, timestamp = %llu, buttonEvent = %@, systemEvent = %@, clientInfo = %@, requestInfo = %@, userInfo = %@}", v5, v8, self->_timestamp, self->_buttonEvent, self->_systemEvent, self->_clientInfo, self->_requestInfo, self->_userInfo];

  return v9;
}

- (SVXActivationContext)initWithSource:(int64_t)a3 timestamp:(unint64_t)a4 buttonEvent:(id)a5 systemEvent:(id)a6 clientInfo:(id)a7 requestInfo:(id)a8 userInfo:(id)a9
{
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v33.receiver = self;
  v33.super_class = SVXActivationContext;
  v20 = [(SVXActivationContext *)&v33 init];
  v21 = v20;
  if (v20)
  {
    v20->_source = a3;
    v20->_timestamp = a4;
    v22 = [v15 copy];
    buttonEvent = v21->_buttonEvent;
    v21->_buttonEvent = v22;

    v24 = [v16 copy];
    systemEvent = v21->_systemEvent;
    v21->_systemEvent = v24;

    v26 = [v17 copy];
    clientInfo = v21->_clientInfo;
    v21->_clientInfo = v26;

    v28 = [v18 copy];
    requestInfo = v21->_requestInfo;
    v21->_requestInfo = v28;

    v30 = [v19 copy];
    userInfo = v21->_userInfo;
    v21->_userInfo = v30;
  }

  return v21;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXActivationContextMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXActivationContextMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXActivationContext *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXActivationContextMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXActivationContextMutation *)v4 generate];

  return v5;
}

@end