@interface _SVXActivationContextMutation
- (_SVXActivationContextMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SVXActivationContextMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v5 = [[SVXActivationContext alloc] initWithSource:self->_source timestamp:self->_timestamp buttonEvent:self->_buttonEvent systemEvent:self->_systemEvent clientInfo:self->_clientInfo requestInfo:self->_requestInfo userInfo:self->_userInfo];
    goto LABEL_5;
  }

  mutationFlags = self->_mutationFlags;
  if (mutationFlags)
  {
    if ((*&self->_mutationFlags & 2) != 0)
    {
      source = self->_source;
      if ((*&self->_mutationFlags & 4) != 0)
      {
LABEL_8:
        timestamp = self->_timestamp;
        if ((mutationFlags & 8) != 0)
        {
LABEL_9:
          buttonEvent = self->_buttonEvent;
LABEL_13:
          v10 = buttonEvent;
          if ((*&self->_mutationFlags & 0x10) != 0)
          {
            systemEvent = self->_systemEvent;
          }

          else
          {
            systemEvent = [(SVXActivationContext *)self->_baseModel systemEvent];
          }

          v12 = systemEvent;
          if ((*&self->_mutationFlags & 0x20) != 0)
          {
            clientInfo = self->_clientInfo;
          }

          else
          {
            clientInfo = [(SVXActivationContext *)self->_baseModel clientInfo];
          }

          v14 = clientInfo;
          if ((*&self->_mutationFlags & 0x40) != 0)
          {
            requestInfo = self->_requestInfo;
          }

          else
          {
            requestInfo = [(SVXActivationContext *)self->_baseModel requestInfo];
          }

          v16 = requestInfo;
          if ((*&self->_mutationFlags & 0x80000000) != 0)
          {
            userInfo = self->_userInfo;
          }

          else
          {
            userInfo = [(SVXActivationContext *)self->_baseModel userInfo];
          }

          v18 = userInfo;
          v6 = [[SVXActivationContext alloc] initWithSource:source timestamp:timestamp buttonEvent:v10 systemEvent:v12 clientInfo:v14 requestInfo:v16 userInfo:userInfo];

          goto LABEL_26;
        }

LABEL_12:
        buttonEvent = [(SVXActivationContext *)self->_baseModel buttonEvent];
        goto LABEL_13;
      }
    }

    else
    {
      source = [(SVXActivationContext *)baseModel source];
      mutationFlags = self->_mutationFlags;
      if ((mutationFlags & 4) != 0)
      {
        goto LABEL_8;
      }
    }

    timestamp = [(SVXActivationContext *)self->_baseModel timestamp];
    if ((*&self->_mutationFlags & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v5 = [(SVXActivationContext *)baseModel copy];
LABEL_5:
  v6 = v5;
LABEL_26:

  return v6;
}

- (_SVXActivationContextMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXActivationContextMutation;
  v6 = [(_SVXActivationContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end