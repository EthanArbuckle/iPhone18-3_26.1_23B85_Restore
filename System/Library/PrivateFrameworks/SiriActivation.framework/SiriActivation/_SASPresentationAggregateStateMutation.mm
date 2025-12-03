@interface _SASPresentationAggregateStateMutation
- (_SASPresentationAggregateStateMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SASPresentationAggregateStateMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (baseModel)
  {
    mutationFlags = self->_mutationFlags;
    if ((mutationFlags & 1) == 0)
    {
      v5 = [(SASPresentationAggregateState *)baseModel copy];
      goto LABEL_14;
    }

    if ((*&self->_mutationFlags & 2) != 0)
    {
      canAcceptNewActivations = self->_canAcceptNewActivations;
      if ((*&self->_mutationFlags & 4) != 0)
      {
LABEL_7:
        didNewActivationAcceptanceChange = self->_didNewActivationAcceptanceChange;
        if ((mutationFlags & 8) != 0)
        {
LABEL_8:
          requestState = self->_requestState;
LABEL_12:
          v6 = [SASPresentationAggregateState alloc];
          v7 = canAcceptNewActivations;
          v8 = didNewActivationAcceptanceChange;
          v9 = requestState;
          goto LABEL_13;
        }

LABEL_11:
        requestState = [(SASPresentationAggregateState *)self->_baseModel requestState];
        goto LABEL_12;
      }
    }

    else
    {
      canAcceptNewActivations = [(SASPresentationAggregateState *)baseModel canAcceptNewActivations];
      mutationFlags = self->_mutationFlags;
      if ((mutationFlags & 4) != 0)
      {
        goto LABEL_7;
      }
    }

    didNewActivationAcceptanceChange = [(SASPresentationAggregateState *)self->_baseModel didNewActivationAcceptanceChange];
    if ((*&self->_mutationFlags & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v6 = [SASPresentationAggregateState alloc];
  v7 = self->_canAcceptNewActivations;
  v8 = self->_didNewActivationAcceptanceChange;
  v9 = self->_requestState;
LABEL_13:
  v5 = [(SASPresentationAggregateState *)v6 initWithCanAcceptNewActivations:v7 didNewActivationAcceptanceChange:v8 requestState:v9];
LABEL_14:

  return v5;
}

- (_SASPresentationAggregateStateMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SASPresentationAggregateStateMutation;
  v6 = [(_SASPresentationAggregateStateMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end