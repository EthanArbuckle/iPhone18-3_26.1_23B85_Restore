@interface _SVXDeactivationContextMutation
- (_SVXDeactivationContextMutation)initWithBaseModel:(id)a3;
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
          v9 = self->_buttonEvent;
LABEL_13:
          v10 = v9;
          if ((*&self->_mutationFlags & 0x10) != 0)
          {
            v11 = self->_clientInfo;
          }

          else
          {
            v11 = [(SVXDeactivationContext *)self->_baseModel clientInfo];
          }

          v12 = v11;
          if ((*&self->_mutationFlags & 0x20) != 0)
          {
            v13 = self->_userInfo;
          }

          else
          {
            v13 = [(SVXDeactivationContext *)self->_baseModel userInfo];
          }

          v14 = v13;
          if ((*&self->_mutationFlags & 0x40) != 0)
          {
            v15 = self->_options;
          }

          else
          {
            v15 = [(SVXDeactivationContext *)self->_baseModel options];
          }

          v16 = v15;
          v6 = [[SVXDeactivationContext alloc] initWithSource:source timestamp:timestamp buttonEvent:v10 clientInfo:v12 userInfo:v14 options:v15];

          goto LABEL_23;
        }

LABEL_12:
        v9 = [(SVXDeactivationContext *)self->_baseModel buttonEvent];
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

- (_SVXDeactivationContextMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXDeactivationContextMutation;
  v6 = [(_SVXDeactivationContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end