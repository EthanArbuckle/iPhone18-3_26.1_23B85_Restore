@interface _SBSADynamicPersistentAnimationAssertion
- (_SBSADynamicPersistentAnimationAssertion)initWithElementIdentity:(id)identity animation:(int64_t)animation;
- (id)_descriptionConstituents;
@end

@implementation _SBSADynamicPersistentAnimationAssertion

- (_SBSADynamicPersistentAnimationAssertion)initWithElementIdentity:(id)identity animation:(int64_t)animation
{
  identityCopy = identity;
  if (!identityCopy)
  {
    [_SBSADynamicPersistentAnimationAssertion initWithElementIdentity:animation:];
  }

  v11.receiver = self;
  v11.super_class = _SBSADynamicPersistentAnimationAssertion;
  v7 = [(SAAssertion *)&v11 init];
  if (v7)
  {
    v8 = [identityCopy copyWithZone:0];
    elementIdentity = v7->_elementIdentity;
    v7->_elementIdentity = v8;

    v7->_animationType = animation;
  }

  return v7;
}

- (id)_descriptionConstituents
{
  v15[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = _SBSADynamicPersistentAnimationAssertion;
  _descriptionConstituents = [(SAAssertion *)&v11 _descriptionConstituents];
  v14 = @"elementIdentity";
  v4 = [(SAElementIdentifying *)self->_elementIdentity description];
  v15[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v6 = [_descriptionConstituents arrayByAddingObject:v5];

  v12 = @"animationType";
  v7 = SBStringFromSBSADynamicPersistentAnimation(self->_animationType);
  v13 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v9 = [v6 arrayByAddingObject:v8];

  return v9;
}

- (void)initWithElementIdentity:animation:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"elementIdentity" object:? file:? lineNumber:? description:?];
}

@end