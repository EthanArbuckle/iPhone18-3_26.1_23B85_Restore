@interface _SVXDeviceSetupFlowMutation
- (_SVXDeviceSetupFlowMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SVXDeviceSetupFlowMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (baseModel)
  {
    if (*&self->_mutationFlags)
    {
      if ((*&self->_mutationFlags & 2) != 0)
      {
        v6 = self->_identifier;
      }

      else
      {
        v6 = [(SVXDeviceSetupFlow *)baseModel identifier];
      }

      v7 = v6;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        v8 = self->_scenes;
      }

      else
      {
        v8 = [(SVXDeviceSetupFlow *)self->_baseModel scenes];
      }

      v9 = v8;
      v5 = [[SVXDeviceSetupFlow alloc] initWithIdentifier:v7 scenes:v8];

      goto LABEL_13;
    }

    v4 = [(SVXDeviceSetupFlow *)baseModel copy];
  }

  else
  {
    v4 = [[SVXDeviceSetupFlow alloc] initWithIdentifier:self->_identifier scenes:self->_scenes];
  }

  v5 = v4;
LABEL_13:

  return v5;
}

- (_SVXDeviceSetupFlowMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXDeviceSetupFlowMutation;
  v6 = [(_SVXDeviceSetupFlowMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end