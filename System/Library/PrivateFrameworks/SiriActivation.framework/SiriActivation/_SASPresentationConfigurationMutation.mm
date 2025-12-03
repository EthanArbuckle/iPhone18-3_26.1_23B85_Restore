@interface _SASPresentationConfigurationMutation
- (_SASPresentationConfigurationMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SASPresentationConfigurationMutation

- (_SASPresentationConfigurationMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SASPresentationConfigurationMutation;
  v6 = [(_SASPresentationConfigurationMutation *)&v9 init];
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
        presentationIdentifier = [(SASPresentationConfiguration *)baseModel presentationIdentifier];
      }

      v7 = presentationIdentifier;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        sourceActiveOverridePreference = self->_sourceActiveOverridePreference;
      }

      else
      {
        sourceActiveOverridePreference = [(SASPresentationConfiguration *)self->_baseModel sourceActiveOverridePreference];
      }

      v9 = sourceActiveOverridePreference;
      if ((*&self->_mutationFlags & 8) != 0)
      {
        desiresDismissalSignalsEvenWhenOff = self->_desiresDismissalSignalsEvenWhenOff;
      }

      else
      {
        desiresDismissalSignalsEvenWhenOff = [(SASPresentationConfiguration *)self->_baseModel desiresDismissalSignalsEvenWhenOff];
      }

      v5 = [[SASPresentationConfiguration alloc] initWithPresentationIdentifier:v7 sourceActiveOverridePreference:v9 desiresDismissalSignalsEvenWhenOff:desiresDismissalSignalsEvenWhenOff];

      goto LABEL_16;
    }

    v4 = [(SASPresentationConfiguration *)baseModel copy];
  }

  else
  {
    v4 = [[SASPresentationConfiguration alloc] initWithPresentationIdentifier:self->_presentationIdentifier sourceActiveOverridePreference:self->_sourceActiveOverridePreference desiresDismissalSignalsEvenWhenOff:self->_desiresDismissalSignalsEvenWhenOff];
  }

  v5 = v4;
LABEL_16:

  return v5;
}

@end