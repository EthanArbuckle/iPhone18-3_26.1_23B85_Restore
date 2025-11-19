@interface SVXDeactivationContext
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXDeactivationContext)initWithCoder:(id)a3;
- (SVXDeactivationContext)initWithSource:(int64_t)a3 timestamp:(unint64_t)a4 buttonEvent:(id)a5 clientInfo:(id)a6 userInfo:(id)a7 options:(id)a8;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXDeactivationContext

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  source = self->_source;
  v8 = a3;
  v6 = [v4 numberWithInteger:source];
  [v8 encodeObject:v6 forKey:@"SVXDeactivationContext::source"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  [v8 encodeObject:v7 forKey:@"SVXDeactivationContext::timestamp"];

  [v8 encodeObject:self->_buttonEvent forKey:@"SVXDeactivationContext::buttonEvent"];
  [v8 encodeObject:self->_clientInfo forKey:@"SVXDeactivationContext::clientInfo"];
  [v8 encodeObject:self->_userInfo forKey:@"SVXDeactivationContext::userInfo"];
  [v8 encodeObject:self->_options forKey:@"SVXDeactivationContext::options"];
}

- (SVXDeactivationContext)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeactivationContext::source"];
  v25 = [v4 integerValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeactivationContext::timestamp"];
  v24 = [v5 unsignedLongLongValue];

  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeactivationContext::buttonEvent"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeactivationContext::clientInfo"];
  v21 = MEMORY[0x277CBEB98];
  v22 = v6;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v21 setWithObjects:{v7, v8, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
  v17 = [v3 decodeObjectOfClasses:v16 forKey:@"SVXDeactivationContext::userInfo"];

  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeactivationContext::options"];

  v19 = [(SVXDeactivationContext *)self initWithSource:v25 timestamp:v24 buttonEvent:v23 clientInfo:v22 userInfo:v17 options:v18];
  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      source = self->_source;
      if (source == [(SVXDeactivationContext *)v5 source]&& (timestamp = self->_timestamp, timestamp == [(SVXDeactivationContext *)v5 timestamp]))
      {
        v8 = [(SVXDeactivationContext *)v5 buttonEvent];
        buttonEvent = self->_buttonEvent;
        if (buttonEvent == v8 || [(SVXButtonEvent *)buttonEvent isEqual:v8])
        {
          v10 = [(SVXDeactivationContext *)v5 clientInfo];
          clientInfo = self->_clientInfo;
          if (clientInfo == v10 || [(SVXClientInfo *)clientInfo isEqual:v10])
          {
            v12 = [(SVXDeactivationContext *)v5 userInfo];
            userInfo = self->_userInfo;
            if (userInfo == v12 || [(NSDictionary *)userInfo isEqual:v12])
            {
              v14 = [(SVXDeactivationContext *)v5 options];
              options = self->_options;
              v16 = options == v14 || [(SVXDeactivationOptions *)options isEqual:v14];
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_source];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  v6 = [v5 hash] ^ v4;
  v7 = [(SVXButtonEvent *)self->_buttonEvent hash];
  v8 = v7 ^ [(SVXClientInfo *)self->_clientInfo hash];
  v9 = v8 ^ [(NSDictionary *)self->_userInfo hash];
  v10 = v9 ^ [(SVXDeactivationOptions *)self->_options hash];

  return v6 ^ v10;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v11.receiver = self;
  v11.super_class = SVXDeactivationContext;
  v5 = [(SVXDeactivationContext *)&v11 description];
  source = self->_source;
  if (source > 5)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_279C66840[source];
  }

  v8 = v7;
  v9 = [v4 initWithFormat:@"%@ {source = %@, timestamp = %llu, buttonEvent = %@, clientInfo = %@, userInfo = %@, options = %@}", v5, v8, self->_timestamp, self->_buttonEvent, self->_clientInfo, self->_userInfo, self->_options];

  return v9;
}

- (SVXDeactivationContext)initWithSource:(int64_t)a3 timestamp:(unint64_t)a4 buttonEvent:(id)a5 clientInfo:(id)a6 userInfo:(id)a7 options:(id)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v29.receiver = self;
  v29.super_class = SVXDeactivationContext;
  v18 = [(SVXDeactivationContext *)&v29 init];
  v19 = v18;
  if (v18)
  {
    v18->_source = a3;
    v18->_timestamp = a4;
    v20 = [v14 copy];
    buttonEvent = v19->_buttonEvent;
    v19->_buttonEvent = v20;

    v22 = [v15 copy];
    clientInfo = v19->_clientInfo;
    v19->_clientInfo = v22;

    v24 = [v16 copy];
    userInfo = v19->_userInfo;
    v19->_userInfo = v24;

    v26 = [v17 copy];
    options = v19->_options;
    v19->_options = v26;
  }

  return v19;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXDeactivationContextMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXDeactivationContextMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXDeactivationContext *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXDeactivationContextMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXDeactivationContextMutation *)v4 generate];

  return v5;
}

@end