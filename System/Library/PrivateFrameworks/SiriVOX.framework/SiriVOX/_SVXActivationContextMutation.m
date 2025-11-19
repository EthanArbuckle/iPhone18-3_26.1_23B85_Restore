@interface _SVXActivationContextMutation
- (_SVXActivationContextMutation)initWithBaseModel:(id)a3;
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
          v9 = self->_buttonEvent;
LABEL_13:
          v10 = v9;
          if ((*&self->_mutationFlags & 0x10) != 0)
          {
            v11 = self->_systemEvent;
          }

          else
          {
            v11 = [(SVXActivationContext *)self->_baseModel systemEvent];
          }

          v12 = v11;
          if ((*&self->_mutationFlags & 0x20) != 0)
          {
            v13 = self->_clientInfo;
          }

          else
          {
            v13 = [(SVXActivationContext *)self->_baseModel clientInfo];
          }

          v14 = v13;
          if ((*&self->_mutationFlags & 0x40) != 0)
          {
            v15 = self->_requestInfo;
          }

          else
          {
            v15 = [(SVXActivationContext *)self->_baseModel requestInfo];
          }

          v16 = v15;
          if ((*&self->_mutationFlags & 0x80000000) != 0)
          {
            v17 = self->_userInfo;
          }

          else
          {
            v17 = [(SVXActivationContext *)self->_baseModel userInfo];
          }

          v18 = v17;
          v6 = [[SVXActivationContext alloc] initWithSource:source timestamp:timestamp buttonEvent:v10 systemEvent:v12 clientInfo:v14 requestInfo:v16 userInfo:v17];

          goto LABEL_26;
        }

LABEL_12:
        v9 = [(SVXActivationContext *)self->_baseModel buttonEvent];
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

- (_SVXActivationContextMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXActivationContextMutation;
  v6 = [(_SVXActivationContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end