@interface _SASPreheatRequestMutation
- (_SASPreheatRequestMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SASPreheatRequestMutation

- (_SASPreheatRequestMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SASPreheatRequestMutation;
  v6 = [(_SASPreheatRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v6 = [SASPreheatRequest alloc];
    if ((*&self->_mutationFlags & 2) != 0)
    {
      requestSource = self->_requestSource;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      requestSource = 0;
      if ((*&self->_mutationFlags & 4) != 0)
      {
LABEL_6:
        configuration = self->_configuration;
LABEL_13:
        v5 = [(SASPreheatRequest *)v6 initWithRequestSource:requestSource configuration:configuration activationReferenceIdentifier:self->_activationReferenceIdentifier];
        goto LABEL_14;
      }
    }

    configuration = 0;
    goto LABEL_13;
  }

  mutationFlags = self->_mutationFlags;
  if ((mutationFlags & 1) == 0)
  {
    v5 = [(SASPreheatRequest *)baseModel copy];
LABEL_14:
    v12 = v5;
    goto LABEL_19;
  }

  if ((*&self->_mutationFlags & 2) == 0)
  {
    v9 = [(SASPreheatRequest *)baseModel requestSource];
    mutationFlags = self->_mutationFlags;
    if ((mutationFlags & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v10 = [(SASPreheatRequest *)self->_baseModel configuration];
    if ((*&self->_mutationFlags & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    v11 = [(SASPreheatRequest *)self->_baseModel activationReferenceIdentifier];
    goto LABEL_18;
  }

  v9 = self->_requestSource;
  if ((*&self->_mutationFlags & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v10 = self->_configuration;
  if ((mutationFlags & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v11 = self->_activationReferenceIdentifier;
LABEL_18:
  v13 = v11;
  v12 = [[SASPreheatRequest alloc] initWithRequestSource:v9 configuration:v10 activationReferenceIdentifier:v11];

LABEL_19:

  return v12;
}

@end