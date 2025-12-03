@interface _SVXDeactivationOptionsMutation
- (_SVXDeactivationOptionsMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SVXDeactivationOptionsMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (baseModel)
  {
    if ((*&self->_mutationFlags & 1) == 0)
    {
      v4 = [(SVXDeactivationOptions *)baseModel copy];
      goto LABEL_10;
    }

    if ((*&self->_mutationFlags & 2) != 0)
    {
      audioSessionDeactivationDelay = self->_audioSessionDeactivationDelay;
    }

    else
    {
      [(SVXDeactivationOptions *)baseModel audioSessionDeactivationDelay];
      audioSessionDeactivationDelay = v7;
    }

    v5 = [SVXDeactivationOptions alloc];
    v6 = audioSessionDeactivationDelay;
  }

  else
  {
    v5 = [SVXDeactivationOptions alloc];
    v6 = self->_audioSessionDeactivationDelay;
  }

  v4 = [(SVXDeactivationOptions *)v5 initWithAudioSessionDeactivationDelay:v6];
LABEL_10:

  return v4;
}

- (_SVXDeactivationOptionsMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXDeactivationOptionsMutation;
  v6 = [(_SVXDeactivationOptionsMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end