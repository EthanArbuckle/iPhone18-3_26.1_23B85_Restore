@interface _SVXDeviceSetupContextMutation
- (_SVXDeviceSetupContextMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SVXDeviceSetupContextMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v4 = [[SVXDeviceSetupContext alloc] initWithTimestamp:self->_timestamp options:self->_options flowScene:self->_flowScene beginDate:self->_beginDate endDate:self->_endDate];
    goto LABEL_5;
  }

  if (*&self->_mutationFlags)
  {
    if ((*&self->_mutationFlags & 2) != 0)
    {
      timestamp = self->_timestamp;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      timestamp = [(SVXDeviceSetupContext *)baseModel timestamp];
      if ((*&self->_mutationFlags & 4) != 0)
      {
LABEL_8:
        options = self->_options;
LABEL_11:
        v8 = options;
        if ((*&self->_mutationFlags & 8) != 0)
        {
          flowScene = self->_flowScene;
        }

        else
        {
          flowScene = [(SVXDeviceSetupContext *)self->_baseModel flowScene];
        }

        v10 = flowScene;
        if ((*&self->_mutationFlags & 0x10) != 0)
        {
          beginDate = self->_beginDate;
        }

        else
        {
          beginDate = [(SVXDeviceSetupContext *)self->_baseModel beginDate];
        }

        v12 = beginDate;
        if ((*&self->_mutationFlags & 0x20) != 0)
        {
          endDate = self->_endDate;
        }

        else
        {
          endDate = [(SVXDeviceSetupContext *)self->_baseModel endDate];
        }

        v14 = endDate;
        v5 = [[SVXDeviceSetupContext alloc] initWithTimestamp:timestamp options:v8 flowScene:v10 beginDate:v12 endDate:endDate];

        goto LABEL_21;
      }
    }

    options = [(SVXDeviceSetupContext *)self->_baseModel options];
    goto LABEL_11;
  }

  v4 = [(SVXDeviceSetupContext *)baseModel copy];
LABEL_5:
  v5 = v4;
LABEL_21:

  return v5;
}

- (_SVXDeviceSetupContextMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXDeviceSetupContextMutation;
  v6 = [(_SVXDeviceSetupContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end