@interface _SASPresentationStateMutation
- (_SASPresentationStateMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SASPresentationStateMutation

- (_SASPresentationStateMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SASPresentationStateMutation;
  v6 = [(_SASPresentationStateMutation *)&v9 init];
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
        presentationIdentifier = self->_presentationIdentifier;
      }

      else
      {
        presentationIdentifier = [(SASPresentationState *)baseModel presentationIdentifier];
      }

      v7 = presentationIdentifier;
      v5 = [[SASPresentationState alloc] initWithPresentationIdentifier:presentationIdentifier];

      goto LABEL_10;
    }

    v4 = [(SASPresentationState *)baseModel copy];
  }

  else
  {
    v4 = [[SASPresentationState alloc] initWithPresentationIdentifier:self->_presentationIdentifier];
  }

  v5 = v4;
LABEL_10:

  return v5;
}

@end