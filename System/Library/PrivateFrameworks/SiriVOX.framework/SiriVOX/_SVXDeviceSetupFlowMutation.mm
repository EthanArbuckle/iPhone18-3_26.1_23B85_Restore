@interface _SVXDeviceSetupFlowMutation
- (_SVXDeviceSetupFlowMutation)initWithBaseModel:(id)model;
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
        identifier = self->_identifier;
      }

      else
      {
        identifier = [(SVXDeviceSetupFlow *)baseModel identifier];
      }

      v7 = identifier;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        scenes = self->_scenes;
      }

      else
      {
        scenes = [(SVXDeviceSetupFlow *)self->_baseModel scenes];
      }

      v9 = scenes;
      v5 = [[SVXDeviceSetupFlow alloc] initWithIdentifier:v7 scenes:scenes];

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

- (_SVXDeviceSetupFlowMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXDeviceSetupFlowMutation;
  v6 = [(_SVXDeviceSetupFlowMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end