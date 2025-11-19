@interface SBSystemApertureDynamicsTestRecipe
- (id)_dynamicsDescriptions;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBSystemApertureDynamicsTestRecipe

- (void)handleVolumeIncrease
{
  v14 = [SBApp systemApertureControllerForMainDisplay];
  v3 = [(SBSystemApertureDynamicsTestRecipe *)self _dynamicsDescriptions];
  v4 = [v3 objectAtIndex:self->_activeDynamics];

  v5 = [v4 objectForKey:@"type"];
  v6 = BSEqualObjects();

  v7 = [v4 objectForKey:@"animation"];
  v8 = [v7 integerValue];

  if (v6)
  {
    animationAssertion = self->_animationAssertion;
    if (animationAssertion)
    {
      [(SAInvalidatable *)animationAssertion invalidateWithReason:@"test recipe button press"];
      v10 = self->_animationAssertion;
      self->_animationAssertion = 0;
    }

    else
    {
      v10 = [v14 _currentFirstElement];
      v12 = [v14 applyPersistentAnimationStyle:v8 toElement:v10];
      v13 = self->_animationAssertion;
      self->_animationAssertion = v12;
    }
  }

  else
  {
    v10 = [v14 _currentFirstElement];
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8 == 1;
    }

    if (!v11)
    {
      [v14 animateDiscreteAnimationStyle:v8 toElement:v10];
    }
  }
}

- (void)handleVolumeDecrease
{
  [(SAInvalidatable *)self->_animationAssertion invalidateWithReason:@"test recipe switching to new animation"];
  animationAssertion = self->_animationAssertion;
  self->_animationAssertion = 0;

  v4 = self->_activeDynamics + 1;
  v5 = [(SBSystemApertureDynamicsTestRecipe *)self _dynamicsDescriptions];
  self->_activeDynamics = v4 % [v5 count];
}

- (id)_dynamicsDescriptions
{
  v17[2] = *MEMORY[0x277D85DE8];
  dynamicsDescriptions = self->_dynamicsDescriptions;
  if (!dynamicsDescriptions)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    for (i = 1; i != 5; ++i)
    {
      v16[1] = @"animation";
      v17[0] = @"discrete";
      v16[0] = @"type";
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      v17[1] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
      [v4 addObject:v7];
    }

    for (j = 1; j != 3; ++j)
    {
      v14[1] = @"animation";
      v15[0] = @"persistent";
      v14[0] = @"type";
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:j];
      v15[1] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
      [v4 addObject:v10];
    }

    v11 = [v4 copy];
    v12 = self->_dynamicsDescriptions;
    self->_dynamicsDescriptions = v11;

    dynamicsDescriptions = self->_dynamicsDescriptions;
  }

  return dynamicsDescriptions;
}

@end