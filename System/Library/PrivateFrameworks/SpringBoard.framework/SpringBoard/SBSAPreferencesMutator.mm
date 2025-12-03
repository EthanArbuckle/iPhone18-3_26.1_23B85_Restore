@interface SBSAPreferencesMutator
- (SBSAPreferencesMutator)initWithPreferences:(id)preferences;
- (SBSystemApertureContainerRenderingConfiguration)curtainRenderingConfiguration;
- (SBSystemApertureContainerRenderingConfiguration)highLevelCurtainRenderingConfiguration;
- (void)addMilestones:(id)milestones forPropertyIdentity:(id)identity;
- (void)associateAnimatedTransitionDescriptionOfProperty:(id)property overridingExistingUnanimatedSettings:(BOOL)settings withProperty:(id)withProperty withMilestones:(id)milestones;
- (void)setAnimatedTransitionDescription:(id)description overridingExistingUnanimatedSettings:(BOOL)settings forProperty:(id)property withMilestones:(id)milestones;
- (void)setCurtainRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)configuration;
- (void)setHighLevelCurtainRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)configuration;
@end

@implementation SBSAPreferencesMutator

- (SBSAPreferencesMutator)initWithPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v9.receiver = self;
  v9.super_class = SBSAPreferencesMutator;
  v6 = [(SBSAPreferencesMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preferences, preferences);
  }

  return v7;
}

- (SBSystemApertureContainerRenderingConfiguration)curtainRenderingConfiguration
{
  result = self->_preferences;
  if (result)
  {
    return [(SBSystemApertureContainerRenderingConfiguration *)result curtainRenderingConfiguration];
  }

  retstr->renderingStyle = 0;
  retstr->cloningStyle = 0;
  *&retstr->alwaysRenderInSnapshots = 0;
  return result;
}

- (void)setCurtainRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)configuration
{
  preferences = self->_preferences;
  v4 = *configuration;
  [(SBSAPreferences *)preferences _setCurtainRenderingConfiguration:&v4];
}

- (SBSystemApertureContainerRenderingConfiguration)highLevelCurtainRenderingConfiguration
{
  result = self->_preferences;
  if (result)
  {
    return [(SBSystemApertureContainerRenderingConfiguration *)result highLevelCurtainRenderingConfiguration];
  }

  retstr->renderingStyle = 0;
  retstr->cloningStyle = 0;
  *&retstr->alwaysRenderInSnapshots = 0;
  return result;
}

- (void)setHighLevelCurtainRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)configuration
{
  preferences = self->_preferences;
  v4 = *configuration;
  [(SBSAPreferences *)preferences _setHighLevelCurtainRenderingConfiguration:&v4];
}

- (void)setAnimatedTransitionDescription:(id)description overridingExistingUnanimatedSettings:(BOOL)settings forProperty:(id)property withMilestones:(id)milestones
{
  settingsCopy = settings;
  descriptionCopy = description;
  propertyCopy = property;
  milestonesCopy = milestones;
  if (descriptionCopy && propertyCopy)
  {
    _interfaceElementPropertiesToBehaviorSettings = [(SBSAPreferences *)self->_preferences _interfaceElementPropertiesToBehaviorSettings];
    if (!_interfaceElementPropertiesToBehaviorSettings)
    {
      _interfaceElementPropertiesToBehaviorSettings = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(SBSAPreferences *)self->_preferences _setInterfaceElementPropertiesToBehaviorSettings:_interfaceElementPropertiesToBehaviorSettings];
    }

    if (![(SBSAPreferences *)self->_preferences _doesUnanimatedTransitionDescriptionExistForProperty:propertyCopy]|| settingsCopy)
    {
      [_interfaceElementPropertiesToBehaviorSettings setObject:descriptionCopy forKey:propertyCopy];
    }

    if ([milestonesCopy count])
    {
      [(SBSAPreferencesMutator *)self addMilestones:milestonesCopy forPropertyIdentity:propertyCopy];
    }
  }
}

- (void)associateAnimatedTransitionDescriptionOfProperty:(id)property overridingExistingUnanimatedSettings:(BOOL)settings withProperty:(id)withProperty withMilestones:(id)milestones
{
  settingsCopy = settings;
  propertyCopy = property;
  withPropertyCopy = withProperty;
  milestonesCopy = milestones;
  if (propertyCopy && withPropertyCopy)
  {
    if (BSEqualObjects())
    {
      [SBSAPreferencesMutator associateAnimatedTransitionDescriptionOfProperty:propertyCopy overridingExistingUnanimatedSettings:withPropertyCopy withProperty:a2 withMilestones:self];
    }

    _interfaceElementPropertiesToBehaviorSettings = [(SBSAPreferences *)self->_preferences _interfaceElementPropertiesToBehaviorSettings];
    v14 = [_interfaceElementPropertiesToBehaviorSettings objectForKey:propertyCopy];
    if (objc_opt_respondsToSelector())
    {
      while ((objc_opt_respondsToSelector() & 1) != 0)
      {
        if (BSEqualObjects())
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"SBSAPreferences.m" lineNumber:629 description:@"Attempting to associate animated transition description with another causing cycle."];

          goto LABEL_24;
        }

        v15 = [_interfaceElementPropertiesToBehaviorSettings objectForKey:v14];

        v14 = v15;
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    v15 = v14;
LABEL_11:
    if ([(SBSAPreferences *)self->_preferences _doesUnanimatedTransitionDescriptionExistForProperty:withPropertyCopy])
    {
      v16 = !settingsCopy;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      [_interfaceElementPropertiesToBehaviorSettings setObject:propertyCopy forKey:withPropertyCopy];
    }

    v17 = objc_opt_class();
    v14 = v15;
    if (v17)
    {
      if (objc_opt_isKindOfClass())
      {
        v17 = v14;
      }

      else
      {
        v17 = 0;
      }
    }

    if ([milestonesCopy count] && v17)
    {
      [(SBSAPreferencesMutator *)self addMilestones:milestonesCopy forPropertyIdentity:withPropertyCopy];
    }

LABEL_24:
  }
}

- (void)addMilestones:(id)milestones forPropertyIdentity:(id)identity
{
  milestonesCopy = milestones;
  identityCopy = identity;
  v7 = [milestonesCopy count];
  if (identityCopy && v7)
  {
    _interfaceElementPropertiesToMilestones = [(SBSAPreferences *)self->_preferences _interfaceElementPropertiesToMilestones];
    if (!_interfaceElementPropertiesToMilestones)
    {
      _interfaceElementPropertiesToMilestones = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(SBSAPreferences *)self->_preferences _setInterfaceElementPropertiesToMilestones:_interfaceElementPropertiesToMilestones];
    }

    v9 = [_interfaceElementPropertiesToMilestones objectForKey:identityCopy];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [_interfaceElementPropertiesToMilestones setObject:v9 forKey:identityCopy];
    }

    [v9 unionSet:milestonesCopy];
  }
}

- (void)associateAnimatedTransitionDescriptionOfProperty:(void *)a1 overridingExistingUnanimatedSettings:(void *)a2 withProperty:(uint64_t)a3 withMilestones:(uint64_t)a4 .cold.1(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = [MEMORY[0x277CCA890] currentHandler];
  v7 = MEMORY[0x277CCACA8];
  v8 = [a1 associatedInterfaceElementIdentifier];
  v9 = [v8 UUIDString];
  v10 = [a1 interfaceElementProperty];
  v11 = [v7 stringWithFormat:@"%@-%@", v9, v10];
  v12 = MEMORY[0x277CCACA8];
  v13 = [a2 associatedInterfaceElementIdentifier];
  v14 = [v13 UUIDString];
  v15 = [a2 interfaceElementProperty];
  v16 = [v12 stringWithFormat:@"%@-%@", v14, v15];
  [v18 handleFailureInMethod:a3 object:a4 file:@"SBSAPreferences.m" lineNumber:619 description:{@"Existing property and property should be different:\n%@\n%@", v11, v16}];
}

@end