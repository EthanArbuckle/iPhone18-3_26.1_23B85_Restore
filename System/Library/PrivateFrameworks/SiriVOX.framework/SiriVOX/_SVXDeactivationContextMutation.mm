@interface _SVXDeactivationContextMutation
- (_SVXDeactivationContextMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SVXDeactivationContextMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v5 = [[SVXDeactivationContext alloc] initWithSource:self->_source timestamp:self->_timestamp buttonEvent:self->_buttonEvent clientInfo:self->_clientInfo userInfo:self->_userInfo options:self->_options];
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
            clientInfo = self->_clientInfo;
          }

          else
          {
            clientInfo = [(SVXDeactivationContext *)self->_baseModel clientInfo];
          }

          v12 = clientInfo;
          if ((*&self->_mutationFlags & 0x20) != 0)
          {
            userInfo = self->_userInfo;
          }

          else
          {
            userInfo = [(SVXDeactivationContext *)self->_baseModel userInfo];
          }

          v14 = userInfo;
          if ((*&self->_mutationFlags & 0x40) != 0)
          {
            options = self->_options;
          }

          else
          {
            options = [(SVXDeactivationContext *)self->_baseModel options];
          }

          v16 = options;
          v6 = [[SVXDeactivationContext alloc] initWithSource:source timestamp:timestamp buttonEvent:v10 clientInfo:v12 userInfo:v14 options:options];

          goto LABEL_23;
        }

LABEL_12:
        buttonEvent = [(SVXDeactivationContext *)self->_baseModel buttonEvent];
        goto LABEL_13;
      }
    }

    else
    {
      source = [(SVXDeactivationContext *)baseModel source];
      mutationFlags = self->_mutationFlags;
      if ((mutationFlags & 4) != 0)
      {
        goto LABEL_8;
      }
    }

    timestamp = [(SVXDeactivationContext *)self->_baseModel timestamp];
    if ((*&self->_mutationFlags & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v5 = [(SVXDeactivationContext *)baseModel copy];
LABEL_5:
  v6 = v5;
LABEL_23:

  return v6;
}

- (_SVXDeactivationContextMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXDeactivationContextMutation;
  v6 = [(_SVXDeactivationContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end