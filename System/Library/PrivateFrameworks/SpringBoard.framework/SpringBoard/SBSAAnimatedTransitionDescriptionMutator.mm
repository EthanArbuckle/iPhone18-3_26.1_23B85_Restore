@interface SBSAAnimatedTransitionDescriptionMutator
- (SBSAAnimatedTransitionDescriptionMutator)initWithAnimatedTransitionDescription:(id)a3;
- (id)auxillaryBehaviorSettingsForKeyPath:(id)a3;
- (void)setAuxillaryBehaviorSettings:(id)a3 forKeyPath:(id)a4;
@end

@implementation SBSAAnimatedTransitionDescriptionMutator

- (SBSAAnimatedTransitionDescriptionMutator)initWithAnimatedTransitionDescription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSAAnimatedTransitionDescriptionMutator;
  v6 = [(SBSAAnimatedTransitionDescriptionMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animatedTransitionDescription, a3);
  }

  return v7;
}

- (void)setAuxillaryBehaviorSettings:(id)a3 forKeyPath:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(SBSAAnimatedTransitionDescription *)self->_animatedTransitionDescription keyPathsToAuxillaryBehaviorSettingsMap];
  v8 = v11;
  v9 = v7;
  if (v11)
  {
    if (!v7)
    {
      v10 = [MEMORY[0x277CBEB38] dictionary];
      v8 = v11;
      v9 = v10;
    }

    [v9 setObject:v8 forKey:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
    if (![v9 count])
    {

      v9 = 0;
    }
  }

  [(SBSAAnimatedTransitionDescription *)self->_animatedTransitionDescription _setKeyPathsToAuxillaryBehaviorSettingsMap:v9];
}

- (id)auxillaryBehaviorSettingsForKeyPath:(id)a3
{
  animatedTransitionDescription = self->_animatedTransitionDescription;
  v4 = a3;
  v5 = [(SBSAAnimatedTransitionDescription *)animatedTransitionDescription keyPathsToAuxillaryBehaviorSettingsMap];
  v6 = [v5 objectForKey:v4];

  return v6;
}

@end