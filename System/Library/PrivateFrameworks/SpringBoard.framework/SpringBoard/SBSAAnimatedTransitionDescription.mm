@interface SBSAAnimatedTransitionDescription
+ (id)animatedTransitionDescriptionWithAnimatedTransitionIdentifier:(id)identifier behaviorSettings:(id)settings milestones:(id)milestones responsibleProvider:(id)provider;
+ (id)instanceWithBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBSAAnimatedTransitionDescription)initWithAnimatedTransitionDescription:(id)description;
- (id)auxillaryBehaviorSettingsForKeyPath:(id)path;
- (id)copyBySettingAuxillaryBehaviorSettings:(id)settings forKeyPath:(id)path;
- (id)copyWithBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAAnimatedTransitionDescription

+ (id)animatedTransitionDescriptionWithAnimatedTransitionIdentifier:(id)identifier behaviorSettings:(id)settings milestones:(id)milestones responsibleProvider:(id)provider
{
  identifierCopy = identifier;
  settingsCopy = settings;
  milestonesCopy = milestones;
  providerCopy = provider;
  v15 = objc_alloc_init(SBSAAnimatedTransitionDescription);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __147__SBSAAnimatedTransitionDescription_animatedTransitionDescriptionWithAnimatedTransitionIdentifier_behaviorSettings_milestones_responsibleProvider___block_invoke;
  v22[3] = &unk_2783BC698;
  v27 = a2;
  selfCopy = self;
  v23 = identifierCopy;
  v24 = settingsCopy;
  v25 = providerCopy;
  v26 = milestonesCopy;
  v16 = milestonesCopy;
  v17 = providerCopy;
  v18 = settingsCopy;
  v19 = identifierCopy;
  v20 = [(SBSAAnimatedTransitionDescription *)v15 copyWithBlock:v22];

  return v20;
}

void __147__SBSAAnimatedTransitionDescription_animatedTransitionDescriptionWithAnimatedTransitionIdentifier_behaviorSettings_milestones_responsibleProvider___block_invoke(void *a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_opt_self();
    v4 = v7;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __147__SBSAAnimatedTransitionDescription_animatedTransitionDescriptionWithAnimatedTransitionIdentifier_behaviorSettings_milestones_responsibleProvider___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setAnimatedTransitionIdentifier:a1[4]];
  [v6 setBehaviorSettings:a1[5]];
  [v6 setResponsibleProviderDebugString:a1[6]];
  [v6 setMilestones:a1[7]];
}

- (SBSAAnimatedTransitionDescription)initWithAnimatedTransitionDescription:(id)description
{
  v38 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v36.receiver = self;
  v36.super_class = SBSAAnimatedTransitionDescription;
  v5 = [(SBSAAnimatedTransitionDescription *)&v36 init];
  if (v5)
  {
    animatedTransitionIdentifier = [descriptionCopy animatedTransitionIdentifier];
    v7 = [animatedTransitionIdentifier copy];
    animatedTransitionIdentifier = v5->_animatedTransitionIdentifier;
    v5->_animatedTransitionIdentifier = v7;

    behaviorSettings = [descriptionCopy behaviorSettings];
    v10 = [behaviorSettings copy];
    behaviorSettings = v5->_behaviorSettings;
    v5->_behaviorSettings = v10;

    keyPathsToAuxillaryBehaviorSettingsMap = [descriptionCopy keyPathsToAuxillaryBehaviorSettingsMap];
    if (keyPathsToAuxillaryBehaviorSettingsMap)
    {
      v31 = descriptionCopy;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      keyPathsToAuxillaryBehaviorSettingsMap = v5->_keyPathsToAuxillaryBehaviorSettingsMap;
      v5->_keyPathsToAuxillaryBehaviorSettingsMap = dictionary;

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      allKeys = [keyPathsToAuxillaryBehaviorSettingsMap allKeys];
      v16 = [allKeys countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v33;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v33 != v18)
            {
              objc_enumerationMutation(allKeys);
            }

            v20 = *(*(&v32 + 1) + 8 * i);
            v21 = v5->_keyPathsToAuxillaryBehaviorSettingsMap;
            v22 = [keyPathsToAuxillaryBehaviorSettingsMap objectForKeyedSubscript:v20];
            v23 = [v22 copy];
            [(NSMutableDictionary *)v21 setObject:v23 forKey:v20];
          }

          v17 = [allKeys countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v17);
      }

      descriptionCopy = v31;
    }

    responsibleProviderDebugString = [descriptionCopy responsibleProviderDebugString];
    v25 = [responsibleProviderDebugString copy];
    responsibleProviderDebugString = v5->_responsibleProviderDebugString;
    v5->_responsibleProviderDebugString = v25;

    milestones = [descriptionCopy milestones];
    v28 = [milestones copy];
    milestones = v5->_milestones;
    v5->_milestones = v28;
  }

  return v5;
}

- (id)copyBySettingAuxillaryBehaviorSettings:(id)settings forKeyPath:(id)path
{
  settingsCopy = settings;
  pathCopy = path;
  if (settingsCopy && [settingsCopy isUnanimated])
  {
    [SBSAAnimatedTransitionDescription copyBySettingAuxillaryBehaviorSettings:forKeyPath:];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__SBSAAnimatedTransitionDescription_copyBySettingAuxillaryBehaviorSettings_forKeyPath___block_invoke;
  v13[3] = &unk_2783AD778;
  v13[4] = self;
  v14 = settingsCopy;
  v15 = pathCopy;
  v16 = a2;
  v9 = pathCopy;
  v10 = settingsCopy;
  v11 = [(SBSAAnimatedTransitionDescription *)self copyWithBlock:v13];

  return v11;
}

void __87__SBSAAnimatedTransitionDescription_copyBySettingAuxillaryBehaviorSettings_forKeyPath___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_opt_self();
    v4 = v7;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __87__SBSAAnimatedTransitionDescription_copyBySettingAuxillaryBehaviorSettings_forKeyPath___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setAuxillaryBehaviorSettings:*(a1 + 40) forKeyPath:*(a1 + 48)];
}

- (id)auxillaryBehaviorSettingsForKeyPath:(id)path
{
  v3 = [(NSMutableDictionary *)self->_keyPathsToAuxillaryBehaviorSettingsMap objectForKey:path];
  v4 = objc_opt_self();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:self ofExpectedClass:objc_opt_class()];
  animatedTransitionIdentifier = self->_animatedTransitionIdentifier;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __45__SBSAAnimatedTransitionDescription_isEqual___block_invoke;
  v25[3] = &unk_2783ACDB8;
  v7 = equalCopy;
  v26 = v7;
  v8 = [v5 appendObject:animatedTransitionIdentifier counterpart:v25];
  behaviorSettings = self->_behaviorSettings;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __45__SBSAAnimatedTransitionDescription_isEqual___block_invoke_2;
  v23[3] = &unk_2783ACDB8;
  v10 = v7;
  v24 = v10;
  v11 = [v8 appendObject:behaviorSettings counterpart:v23];
  keyPathsToAuxillaryBehaviorSettingsMap = self->_keyPathsToAuxillaryBehaviorSettingsMap;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __45__SBSAAnimatedTransitionDescription_isEqual___block_invoke_3;
  v21[3] = &unk_2783ACDB8;
  v13 = v10;
  v22 = v13;
  v14 = [v11 appendObject:keyPathsToAuxillaryBehaviorSettingsMap counterpart:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45__SBSAAnimatedTransitionDescription_isEqual___block_invoke_4;
  v19[3] = &unk_2783A94B0;
  v19[4] = self;
  v20 = v13;
  v15 = v13;
  v16 = [v14 appendEqualsBlocks:{v19, 0}];
  v17 = [v16 isEqual];

  return v17;
}

uint64_t __45__SBSAAnimatedTransitionDescription_isEqual___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 40) milestones];
  v2 = BSEqualSets();

  return v2;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_animatedTransitionIdentifier];
  v5 = [v4 appendObject:self->_behaviorSettings];
  v6 = [v5 appendObject:self->_keyPathsToAuxillaryBehaviorSettingsMap];
  v7 = [v6 appendObject:self->_milestones];
  v8 = [v7 hash];

  return v8;
}

- (NSString)description
{
  v25 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_keyPathsToAuxillaryBehaviorSettingsMap allKeys];
  v4 = [allKeys count];

  if (v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = self->_keyPathsToAuxillaryBehaviorSettingsMap;
    v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = MEMORY[0x277CCACA8];
          v13 = [(NSMutableDictionary *)self->_keyPathsToAuxillaryBehaviorSettingsMap objectForKey:v11];
          v14 = [v12 stringWithFormat:@"<%@ : %@>", v11, v13];
          [array addObject:v14];
        }

        v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v15 = MEMORY[0x277CCACA8];
    v16 = [array componentsJoinedByString:{@", "}];
    v17 = [v15 stringWithFormat:@"[%@]", v16];
  }

  else
  {
    v17 = @"<none>";
  }

  v18 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@: %p; animatedTransitionIdentifier: %@; responsibleProvider: %@; behaviorSettings: %@; auxillaryBehaviorSettings: %@", objc_opt_class(), self, self->_animatedTransitionIdentifier, self->_responsibleProviderDebugString, self->_behaviorSettings, v17];
  if ([(NSSet *)self->_milestones count])
  {
    [v18 appendFormat:@" milestones: %@", self->_milestones];
  }

  [v18 appendString:@">"];

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithAnimatedTransitionDescription:self];
}

+ (id)instanceWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v4 copyWithBlock:blockCopy];

  return v5;
}

- (id)copyWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(SBSAAnimatedTransitionDescription *)self copy];
  if (blockCopy)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    blockCopy[2](blockCopy, v6);
  }

  return v5;
}

void __147__SBSAAnimatedTransitionDescription_animatedTransitionDescriptionWithAnimatedTransitionIdentifier_behaviorSettings_milestones_responsibleProvider___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = NSClassFromString(&cfstr_Sbsaanimatedtr.isa);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:v2 object:v1 file:@"SBSAAnimatedTransitionDescription.m" lineNumber:49 description:{@"Unexpected class – expected '%@', got '%@'", v3, v5}];
}

- (void)copyBySettingAuxillaryBehaviorSettings:forKeyPath:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBSAAnimatedTransitionDescription.m" lineNumber:76 description:@"Only animated behavior settings (or nil) are acceptable"];
}

void __87__SBSAAnimatedTransitionDescription_copyBySettingAuxillaryBehaviorSettings_forKeyPath___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = NSClassFromString(&cfstr_Sbsaanimatedtr.isa);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:v1 object:v2 file:@"SBSAAnimatedTransitionDescription.m" lineNumber:78 description:{@"Unexpected class – expected '%@', got '%@'", v3, v5}];
}

@end