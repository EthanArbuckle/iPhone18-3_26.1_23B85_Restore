@interface SVXActivationContext
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXActivationContext)initWithCoder:(id)coder;
- (SVXActivationContext)initWithSource:(int64_t)source timestamp:(unint64_t)timestamp buttonEvent:(id)event systemEvent:(id)systemEvent clientInfo:(id)info requestInfo:(id)requestInfo userInfo:(id)userInfo;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXActivationContext

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  source = self->_source;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:source];
  [coderCopy encodeObject:v6 forKey:@"SVXActivationContext::source"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  [coderCopy encodeObject:v7 forKey:@"SVXActivationContext::timestamp"];

  [coderCopy encodeObject:self->_buttonEvent forKey:@"SVXActivationContext::buttonEvent"];
  [coderCopy encodeObject:self->_systemEvent forKey:@"SVXActivationContext::systemEvent"];
  [coderCopy encodeObject:self->_clientInfo forKey:@"SVXActivationContext::clientInfo"];
  [coderCopy encodeObject:self->_requestInfo forKey:@"SVXActivationContext::requestInfo"];
  [coderCopy encodeObject:self->_userInfo forKey:@"SVXActivationContext::userInfo"];
}

- (SVXActivationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXActivationContext::source"];
  integerValue = [v4 integerValue];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXActivationContext::timestamp"];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXActivationContext::buttonEvent"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXActivationContext::systemEvent"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXActivationContext::clientInfo"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXActivationContext::requestInfo"];
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
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"SVXActivationContext::userInfo"];

  v17 = [(SVXActivationContext *)self initWithSource:integerValue timestamp:unsignedLongLongValue buttonEvent:v23 systemEvent:v22 clientInfo:v21 requestInfo:v6 userInfo:v16];
  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      source = self->_source;
      if (source == [(SVXActivationContext *)v5 source]&& (timestamp = self->_timestamp, timestamp == [(SVXActivationContext *)v5 timestamp]))
      {
        buttonEvent = [(SVXActivationContext *)v5 buttonEvent];
        buttonEvent = self->_buttonEvent;
        if (buttonEvent == buttonEvent || [(SVXButtonEvent *)buttonEvent isEqual:buttonEvent])
        {
          systemEvent = [(SVXActivationContext *)v5 systemEvent];
          systemEvent = self->_systemEvent;
          if (systemEvent == systemEvent || [(SVXSystemEvent *)systemEvent isEqual:systemEvent])
          {
            clientInfo = [(SVXActivationContext *)v5 clientInfo];
            clientInfo = self->_clientInfo;
            if (clientInfo == clientInfo || [(SVXClientInfo *)clientInfo isEqual:clientInfo])
            {
              requestInfo = [(SVXActivationContext *)v5 requestInfo];
              requestInfo = self->_requestInfo;
              if (requestInfo == requestInfo || [(AFRequestInfo *)requestInfo isEqual:requestInfo])
              {
                userInfo = [(SVXActivationContext *)v5 userInfo];
                userInfo = self->_userInfo;
                v18 = userInfo == userInfo || [(NSDictionary *)userInfo isEqual:userInfo];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (SVXActivationContext)initWithSource:(int64_t)source timestamp:(unint64_t)timestamp buttonEvent:(id)event systemEvent:(id)systemEvent clientInfo:(id)info requestInfo:(id)requestInfo userInfo:(id)userInfo
{
  eventCopy = event;
  systemEventCopy = systemEvent;
  infoCopy = info;
  requestInfoCopy = requestInfo;
  userInfoCopy = userInfo;
  v33.receiver = self;
  v33.super_class = SVXActivationContext;
  v20 = [(SVXActivationContext *)&v33 init];
  v21 = v20;
  if (v20)
  {
    v20->_source = source;
    v20->_timestamp = timestamp;
    v22 = [eventCopy copy];
    buttonEvent = v21->_buttonEvent;
    v21->_buttonEvent = v22;

    v24 = [systemEventCopy copy];
    systemEvent = v21->_systemEvent;
    v21->_systemEvent = v24;

    v26 = [infoCopy copy];
    clientInfo = v21->_clientInfo;
    v21->_clientInfo = v26;

    v28 = [requestInfoCopy copy];
    requestInfo = v21->_requestInfo;
    v21->_requestInfo = v28;

    v30 = [userInfoCopy copy];
    userInfo = v21->_userInfo;
    v21->_userInfo = v30;
  }

  return v21;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXActivationContextMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXActivationContextMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXActivationContext *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXActivationContextMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXActivationContextMutation *)v4 generate];

  return generate;
}

@end