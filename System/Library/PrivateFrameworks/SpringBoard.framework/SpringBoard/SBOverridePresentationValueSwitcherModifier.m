@interface SBOverridePresentationValueSwitcherModifier
- (SBOverridePresentationValueSwitcherModifier)initWithAnimatablePropertyKeys:(id)a3 presentationValue:(double)a4;
- (double)presentationValueForAnimatableProperty:(id)a3;
@end

@implementation SBOverridePresentationValueSwitcherModifier

- (SBOverridePresentationValueSwitcherModifier)initWithAnimatablePropertyKeys:(id)a3 presentationValue:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SBOverridePresentationValueSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    keys = v7->_keys;
    v7->_keys = v8;

    v7->_presentationValue = a4;
  }

  return v7;
}

- (double)presentationValueForAnimatableProperty:(id)a3
{
  v4 = a3;
  if ([(NSSet *)self->_keys containsObject:v4])
  {
    presentationValue = self->_presentationValue;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBOverridePresentationValueSwitcherModifier;
    [(SBOverridePresentationValueSwitcherModifier *)&v8 presentationValueForAnimatableProperty:v4];
    presentationValue = v6;
  }

  return presentationValue;
}

@end