@interface SBSAPreferencesMutator
- (SBSAPreferencesMutator)initWithPreferences:(id)a3;
- (SBSystemApertureContainerRenderingConfiguration)curtainRenderingConfiguration;
- (SBSystemApertureContainerRenderingConfiguration)highLevelCurtainRenderingConfiguration;
- (void)addMilestones:(id)a3 forPropertyIdentity:(id)a4;
- (void)associateAnimatedTransitionDescriptionOfProperty:(id)a3 overridingExistingUnanimatedSettings:(BOOL)a4 withProperty:(id)a5 withMilestones:(id)a6;
- (void)setAnimatedTransitionDescription:(id)a3 overridingExistingUnanimatedSettings:(BOOL)a4 forProperty:(id)a5 withMilestones:(id)a6;
- (void)setCurtainRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)a3;
- (void)setHighLevelCurtainRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)a3;
@end

@implementation SBSAPreferencesMutator

- (SBSAPreferencesMutator)initWithPreferences:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSAPreferencesMutator;
  v6 = [(SBSAPreferencesMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preferences, a3);
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

- (void)setCurtainRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)a3
{
  preferences = self->_preferences;
  v4 = *a3;
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

- (void)setHighLevelCurtainRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)a3
{
  preferences = self->_preferences;
  v4 = *a3;
  [(SBSAPreferences *)preferences _setHighLevelCurtainRenderingConfiguration:&v4];
}

- (void)setAnimatedTransitionDescription:(id)a3 overridingExistingUnanimatedSettings:(BOOL)a4 forProperty:(id)a5 withMilestones:(id)a6
{
  v8 = a4;
  v13 = a3;
  v10 = a5;
  v11 = a6;
  if (v13 && v10)
  {
    v12 = [(SBSAPreferences *)self->_preferences _interfaceElementPropertiesToBehaviorSettings];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(SBSAPreferences *)self->_preferences _setInterfaceElementPropertiesToBehaviorSettings:v12];
    }

    if (![(SBSAPreferences *)self->_preferences _doesUnanimatedTransitionDescriptionExistForProperty:v10]|| v8)
    {
      [v12 setObject:v13 forKey:v10];
    }

    if ([v11 count])
    {
      [(SBSAPreferencesMutator *)self addMilestones:v11 forPropertyIdentity:v10];
    }
  }
}

- (void)associateAnimatedTransitionDescriptionOfProperty:(id)a3 overridingExistingUnanimatedSettings:(BOOL)a4 withProperty:(id)a5 withMilestones:(id)a6
{
  v8 = a4;
  v19 = a3;
  v11 = a5;
  v12 = a6;
  if (v19 && v11)
  {
    if (BSEqualObjects())
    {
      [SBSAPreferencesMutator associateAnimatedTransitionDescriptionOfProperty:v19 overridingExistingUnanimatedSettings:v11 withProperty:a2 withMilestones:self];
    }

    v13 = [(SBSAPreferences *)self->_preferences _interfaceElementPropertiesToBehaviorSettings];
    v14 = [v13 objectForKey:v19];
    if (objc_opt_respondsToSelector())
    {
      while ((objc_opt_respondsToSelector() & 1) != 0)
      {
        if (BSEqualObjects())
        {
          v18 = [MEMORY[0x277CCA890] currentHandler];
          [v18 handleFailureInMethod:a2 object:self file:@"SBSAPreferences.m" lineNumber:629 description:@"Attempting to associate animated transition description with another causing cycle."];

          goto LABEL_24;
        }

        v15 = [v13 objectForKey:v14];

        v14 = v15;
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    v15 = v14;
LABEL_11:
    if ([(SBSAPreferences *)self->_preferences _doesUnanimatedTransitionDescriptionExistForProperty:v11])
    {
      v16 = !v8;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      [v13 setObject:v19 forKey:v11];
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

    if ([v12 count] && v17)
    {
      [(SBSAPreferencesMutator *)self addMilestones:v12 forPropertyIdentity:v11];
    }

LABEL_24:
  }
}

- (void)addMilestones:(id)a3 forPropertyIdentity:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  if (v6 && v7)
  {
    v8 = [(SBSAPreferences *)self->_preferences _interfaceElementPropertiesToMilestones];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(SBSAPreferences *)self->_preferences _setInterfaceElementPropertiesToMilestones:v8];
    }

    v9 = [v8 objectForKey:v6];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [v8 setObject:v9 forKey:v6];
    }

    [v9 unionSet:v10];
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