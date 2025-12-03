@interface SBOverridePresentationValueSwitcherModifier
- (SBOverridePresentationValueSwitcherModifier)initWithAnimatablePropertyKeys:(id)keys presentationValue:(double)value;
- (double)presentationValueForAnimatableProperty:(id)property;
@end

@implementation SBOverridePresentationValueSwitcherModifier

- (SBOverridePresentationValueSwitcherModifier)initWithAnimatablePropertyKeys:(id)keys presentationValue:(double)value
{
  keysCopy = keys;
  v11.receiver = self;
  v11.super_class = SBOverridePresentationValueSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v11 init];
  if (v7)
  {
    v8 = [keysCopy copy];
    keys = v7->_keys;
    v7->_keys = v8;

    v7->_presentationValue = value;
  }

  return v7;
}

- (double)presentationValueForAnimatableProperty:(id)property
{
  propertyCopy = property;
  if ([(NSSet *)self->_keys containsObject:propertyCopy])
  {
    presentationValue = self->_presentationValue;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBOverridePresentationValueSwitcherModifier;
    [(SBOverridePresentationValueSwitcherModifier *)&v8 presentationValueForAnimatableProperty:propertyCopy];
    presentationValue = v6;
  }

  return presentationValue;
}

@end