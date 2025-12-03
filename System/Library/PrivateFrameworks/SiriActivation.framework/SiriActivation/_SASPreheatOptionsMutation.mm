@interface _SASPreheatOptionsMutation
- (_SASPreheatOptionsMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SASPreheatOptionsMutation

- (_SASPreheatOptionsMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SASPreheatOptionsMutation;
  v6 = [(_SASPreheatOptionsMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

- (id)generate
{
  baseModel = self->_baseModel;
  if (baseModel)
  {
    if (*&self->_mutationFlags)
    {
      if ((*&self->_mutationFlags & 2) != 0)
      {
        preheatRequest = self->_preheatRequest;
      }

      else
      {
        preheatRequest = [(SASPreheatOptions *)baseModel preheatRequest];
      }

      v7 = preheatRequest;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        lockState = self->_lockState;
      }

      else
      {
        lockState = [(SASPreheatOptions *)self->_baseModel lockState];
      }

      v5 = [[SASPreheatOptions alloc] initWithPreheatRequest:v7 lockState:lockState];

      goto LABEL_13;
    }

    v4 = [(SASPreheatOptions *)baseModel copy];
  }

  else
  {
    v4 = [[SASPreheatOptions alloc] initWithPreheatRequest:self->_preheatRequest lockState:self->_lockState];
  }

  v5 = v4;
LABEL_13:

  return v5;
}

@end