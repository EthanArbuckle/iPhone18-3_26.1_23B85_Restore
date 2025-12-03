@interface SBSAAnimatedTransitionDescriptionMutator
- (SBSAAnimatedTransitionDescriptionMutator)initWithAnimatedTransitionDescription:(id)description;
- (id)auxillaryBehaviorSettingsForKeyPath:(id)path;
- (void)setAuxillaryBehaviorSettings:(id)settings forKeyPath:(id)path;
@end

@implementation SBSAAnimatedTransitionDescriptionMutator

- (SBSAAnimatedTransitionDescriptionMutator)initWithAnimatedTransitionDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = SBSAAnimatedTransitionDescriptionMutator;
  v6 = [(SBSAAnimatedTransitionDescriptionMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animatedTransitionDescription, description);
  }

  return v7;
}

- (void)setAuxillaryBehaviorSettings:(id)settings forKeyPath:(id)path
{
  settingsCopy = settings;
  pathCopy = path;
  keyPathsToAuxillaryBehaviorSettingsMap = [(SBSAAnimatedTransitionDescription *)self->_animatedTransitionDescription keyPathsToAuxillaryBehaviorSettingsMap];
  v8 = settingsCopy;
  v9 = keyPathsToAuxillaryBehaviorSettingsMap;
  if (settingsCopy)
  {
    if (!keyPathsToAuxillaryBehaviorSettingsMap)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v8 = settingsCopy;
      v9 = dictionary;
    }

    [v9 setObject:v8 forKey:pathCopy];
  }

  else
  {
    [keyPathsToAuxillaryBehaviorSettingsMap removeObjectForKey:pathCopy];
    if (![v9 count])
    {

      v9 = 0;
    }
  }

  [(SBSAAnimatedTransitionDescription *)self->_animatedTransitionDescription _setKeyPathsToAuxillaryBehaviorSettingsMap:v9];
}

- (id)auxillaryBehaviorSettingsForKeyPath:(id)path
{
  animatedTransitionDescription = self->_animatedTransitionDescription;
  pathCopy = path;
  keyPathsToAuxillaryBehaviorSettingsMap = [(SBSAAnimatedTransitionDescription *)animatedTransitionDescription keyPathsToAuxillaryBehaviorSettingsMap];
  v6 = [keyPathsToAuxillaryBehaviorSettingsMap objectForKey:pathCopy];

  return v6;
}

@end