@interface SVXDeactivationContext
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXDeactivationContext)initWithCoder:(id)coder;
- (SVXDeactivationContext)initWithSource:(int64_t)source timestamp:(unint64_t)timestamp buttonEvent:(id)event clientInfo:(id)info userInfo:(id)userInfo options:(id)options;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXDeactivationContext

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  source = self->_source;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:source];
  [coderCopy encodeObject:v6 forKey:@"SVXDeactivationContext::source"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  [coderCopy encodeObject:v7 forKey:@"SVXDeactivationContext::timestamp"];

  [coderCopy encodeObject:self->_buttonEvent forKey:@"SVXDeactivationContext::buttonEvent"];
  [coderCopy encodeObject:self->_clientInfo forKey:@"SVXDeactivationContext::clientInfo"];
  [coderCopy encodeObject:self->_userInfo forKey:@"SVXDeactivationContext::userInfo"];
  [coderCopy encodeObject:self->_options forKey:@"SVXDeactivationContext::options"];
}

- (SVXDeactivationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeactivationContext::source"];
  integerValue = [v4 integerValue];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeactivationContext::timestamp"];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeactivationContext::buttonEvent"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeactivationContext::clientInfo"];
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
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"SVXDeactivationContext::userInfo"];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeactivationContext::options"];

  v19 = [(SVXDeactivationContext *)self initWithSource:integerValue timestamp:unsignedLongLongValue buttonEvent:v23 clientInfo:v22 userInfo:v17 options:v18];
  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      source = self->_source;
      if (source == [(SVXDeactivationContext *)v5 source]&& (timestamp = self->_timestamp, timestamp == [(SVXDeactivationContext *)v5 timestamp]))
      {
        buttonEvent = [(SVXDeactivationContext *)v5 buttonEvent];
        buttonEvent = self->_buttonEvent;
        if (buttonEvent == buttonEvent || [(SVXButtonEvent *)buttonEvent isEqual:buttonEvent])
        {
          clientInfo = [(SVXDeactivationContext *)v5 clientInfo];
          clientInfo = self->_clientInfo;
          if (clientInfo == clientInfo || [(SVXClientInfo *)clientInfo isEqual:clientInfo])
          {
            userInfo = [(SVXDeactivationContext *)v5 userInfo];
            userInfo = self->_userInfo;
            if (userInfo == userInfo || [(NSDictionary *)userInfo isEqual:userInfo])
            {
              options = [(SVXDeactivationContext *)v5 options];
              options = self->_options;
              v16 = options == options || [(SVXDeactivationOptions *)options isEqual:options];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (SVXDeactivationContext)initWithSource:(int64_t)source timestamp:(unint64_t)timestamp buttonEvent:(id)event clientInfo:(id)info userInfo:(id)userInfo options:(id)options
{
  eventCopy = event;
  infoCopy = info;
  userInfoCopy = userInfo;
  optionsCopy = options;
  v29.receiver = self;
  v29.super_class = SVXDeactivationContext;
  v18 = [(SVXDeactivationContext *)&v29 init];
  v19 = v18;
  if (v18)
  {
    v18->_source = source;
    v18->_timestamp = timestamp;
    v20 = [eventCopy copy];
    buttonEvent = v19->_buttonEvent;
    v19->_buttonEvent = v20;

    v22 = [infoCopy copy];
    clientInfo = v19->_clientInfo;
    v19->_clientInfo = v22;

    v24 = [userInfoCopy copy];
    userInfo = v19->_userInfo;
    v19->_userInfo = v24;

    v26 = [optionsCopy copy];
    options = v19->_options;
    v19->_options = v26;
  }

  return v19;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXDeactivationContextMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXDeactivationContextMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXDeactivationContext *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXDeactivationContextMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXDeactivationContextMutation *)v4 generate];

  return generate;
}

@end