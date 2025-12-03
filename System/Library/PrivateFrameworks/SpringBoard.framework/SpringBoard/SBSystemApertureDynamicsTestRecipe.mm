@interface SBSystemApertureDynamicsTestRecipe
- (id)_dynamicsDescriptions;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBSystemApertureDynamicsTestRecipe

- (void)handleVolumeIncrease
{
  systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
  _dynamicsDescriptions = [(SBSystemApertureDynamicsTestRecipe *)self _dynamicsDescriptions];
  v4 = [_dynamicsDescriptions objectAtIndex:self->_activeDynamics];

  v5 = [v4 objectForKey:@"type"];
  v6 = BSEqualObjects();

  v7 = [v4 objectForKey:@"animation"];
  integerValue = [v7 integerValue];

  if (v6)
  {
    animationAssertion = self->_animationAssertion;
    if (animationAssertion)
    {
      [(SAInvalidatable *)animationAssertion invalidateWithReason:@"test recipe button press"];
      _currentFirstElement = self->_animationAssertion;
      self->_animationAssertion = 0;
    }

    else
    {
      _currentFirstElement = [systemApertureControllerForMainDisplay _currentFirstElement];
      v12 = [systemApertureControllerForMainDisplay applyPersistentAnimationStyle:integerValue toElement:_currentFirstElement];
      v13 = self->_animationAssertion;
      self->_animationAssertion = v12;
    }
  }

  else
  {
    _currentFirstElement = [systemApertureControllerForMainDisplay _currentFirstElement];
    if (_currentFirstElement)
    {
      v11 = 0;
    }

    else
    {
      v11 = integerValue == 1;
    }

    if (!v11)
    {
      [systemApertureControllerForMainDisplay animateDiscreteAnimationStyle:integerValue toElement:_currentFirstElement];
    }
  }
}

- (void)handleVolumeDecrease
{
  [(SAInvalidatable *)self->_animationAssertion invalidateWithReason:@"test recipe switching to new animation"];
  animationAssertion = self->_animationAssertion;
  self->_animationAssertion = 0;

  v4 = self->_activeDynamics + 1;
  _dynamicsDescriptions = [(SBSystemApertureDynamicsTestRecipe *)self _dynamicsDescriptions];
  self->_activeDynamics = v4 % [_dynamicsDescriptions count];
}

- (id)_dynamicsDescriptions
{
  v17[2] = *MEMORY[0x277D85DE8];
  dynamicsDescriptions = self->_dynamicsDescriptions;
  if (!dynamicsDescriptions)
  {
    array = [MEMORY[0x277CBEB18] array];
    for (i = 1; i != 5; ++i)
    {
      v16[1] = @"animation";
      v17[0] = @"discrete";
      v16[0] = @"type";
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      v17[1] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
      [array addObject:v7];
    }

    for (j = 1; j != 3; ++j)
    {
      v14[1] = @"animation";
      v15[0] = @"persistent";
      v14[0] = @"type";
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:j];
      v15[1] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
      [array addObject:v10];
    }

    v11 = [array copy];
    v12 = self->_dynamicsDescriptions;
    self->_dynamicsDescriptions = v11;

    dynamicsDescriptions = self->_dynamicsDescriptions;
  }

  return dynamicsDescriptions;
}

@end