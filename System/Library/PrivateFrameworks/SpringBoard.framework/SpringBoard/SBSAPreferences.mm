@interface SBSAPreferences
+ (id)instanceWithBlock:(id)a3;
- (BOOL)_doesUnanimatedTransitionDescriptionExistForProperty:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BSOrderedDictionary)dictionaryDescription;
- (NSString)description;
- (id)_effectiveTransitionDescriptionForPropertyForProperty:(id)a3 addingMilestonesAndCreatingUniqueDescriptionIfIndirect:(BOOL)a4;
- (id)animatedTransitionDescriptionForProperty:(id)a3;
- (id)copyByAddingActions:(id)a3;
- (id)copyByUpdatingBackgroundBlurDescription:(id)a3;
- (id)copyByUpdatingContainerViewDescriptions:(id)a3;
- (id)copyByUpdatingElementDescriptions:(id)a3;
- (id)copyByUpdatingMaintainedPreferences:(id)a3;
- (id)copyWithBlock:(id)a3;
- (id)copyWithCancellationOfGestureOfClass:(Class)a3 context:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)effectiveMilestoneProvidingAnimatedTransitionDescriptionForProperty:(id)a3;
- (unint64_t)hash;
- (void)_setCurtainRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)a3;
- (void)_setHighLevelCurtainRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)a3;
- (void)finalizePreferencesForApplication:(id)a3;
@end

@implementation SBSAPreferences

- (void)finalizePreferencesForApplication:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_finalizedForApplication = 1;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [(NSMutableDictionary *)self->_interfaceElementPropertiesToBehaviorSettings allKeys];
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [(SBSAPreferences *)self _effectiveTransitionDescriptionForPropertyForProperty:v10 addingMilestonesAndCreatingUniqueDescriptionIfIndirect:1];
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          [(NSMutableDictionary *)self->_interfaceElementPropertiesToBehaviorSettings setObject:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  v14 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = [(SBSAPreferences *)self containerViewDescriptions];
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * j);
        [v4 displayScale];
        v21 = [v20 copyByPixelAligningGeometryWithScale:?];
        [v14 addObject:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v17);
  }

  v22 = [v14 copy];
  [(SBSAPreferences *)self _setContainerViewDescriptions:v22];

  v23 = [(SBSAPreferences *)self containerParentViewDescription];
  [v4 displayScale];
  v24 = [v23 copyByPixelAligningGeometryWithScale:?];

  [(SBSAPreferences *)self _setContainerParentViewDescription:v24];
  v25 = [(SBSAPreferences *)self indicatorContainerViewDescription];
  [v4 displayScale];
  v26 = [v25 copyByPixelAligningGeometryWithScale:?];

  [(SBSAPreferences *)self _setIndicatorContainerViewDescription:v26];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v61 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 3221225472;
  v108[2] = __27__SBSAPreferences_isEqual___block_invoke;
  v108[3] = &unk_2783A94B0;
  v109 = v4;
  v110 = self;
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __27__SBSAPreferences_isEqual___block_invoke_2;
  v105[3] = &unk_2783A94B0;
  v5 = v109;
  v106 = v5;
  v107 = self;
  v60 = MEMORY[0x223D6F7F0](v105);
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3221225472;
  v102[2] = __27__SBSAPreferences_isEqual___block_invoke_3;
  v102[3] = &unk_2783A94B0;
  v6 = v5;
  v103 = v6;
  v104 = self;
  v59 = MEMORY[0x223D6F7F0](v102);
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __27__SBSAPreferences_isEqual___block_invoke_4;
  v99[3] = &unk_2783A94B0;
  v7 = v6;
  v100 = v7;
  v101 = self;
  v58 = MEMORY[0x223D6F7F0](v99);
  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = __27__SBSAPreferences_isEqual___block_invoke_5;
  v96[3] = &unk_2783A94B0;
  v8 = v7;
  v97 = v8;
  v98 = self;
  v57 = MEMORY[0x223D6F7F0](v96);
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __27__SBSAPreferences_isEqual___block_invoke_6;
  v93[3] = &unk_2783A94B0;
  v9 = v8;
  v94 = v9;
  v95 = self;
  v56 = MEMORY[0x223D6F7F0](v93);
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __27__SBSAPreferences_isEqual___block_invoke_7;
  v90[3] = &unk_2783A94B0;
  v10 = v9;
  v91 = v10;
  v92 = self;
  v55 = MEMORY[0x223D6F7F0](v90);
  v54 = [v61 appendEqualsBlocks:{v108, v60, v59, v58, v57, v56, v55, 0}];
  indicatorElementDescription = self->_indicatorElementDescription;
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __27__SBSAPreferences_isEqual___block_invoke_8;
  v88[3] = &unk_2783ACDB8;
  v12 = v10;
  v89 = v12;
  v53 = [v54 appendObject:indicatorElementDescription counterpart:v88];
  indicatorContainerViewDescription = self->_indicatorContainerViewDescription;
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __27__SBSAPreferences_isEqual___block_invoke_9;
  v86[3] = &unk_2783ACDB8;
  v14 = v12;
  v87 = v14;
  v52 = [v53 appendObject:indicatorContainerViewDescription counterpart:v86];
  secureFlipBookElementPreferences = self->_secureFlipBookElementPreferences;
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __27__SBSAPreferences_isEqual___block_invoke_10;
  v84[3] = &unk_2783ACDB8;
  v16 = v14;
  v85 = v16;
  v51 = [v52 appendObject:secureFlipBookElementPreferences counterpart:v84];
  containerParentViewDescription = self->_containerParentViewDescription;
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __27__SBSAPreferences_isEqual___block_invoke_11;
  v82[3] = &unk_2783ACDB8;
  v18 = v16;
  v83 = v18;
  v50 = [v51 appendObject:containerParentViewDescription counterpart:v82];
  elementLayoutTransition = self->_elementLayoutTransition;
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __27__SBSAPreferences_isEqual___block_invoke_12;
  v80[3] = &unk_2783ACDB8;
  v20 = v18;
  v81 = v20;
  v49 = [v50 appendObject:elementLayoutTransition counterpart:v80];
  lastChangingElementLayoutTransition = self->_lastChangingElementLayoutTransition;
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __27__SBSAPreferences_isEqual___block_invoke_13;
  v78[3] = &unk_2783ACDB8;
  v22 = v20;
  v79 = v22;
  v48 = [v49 appendObject:lastChangingElementLayoutTransition counterpart:v78];
  backgroundBlurDescription = self->_backgroundBlurDescription;
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __27__SBSAPreferences_isEqual___block_invoke_14;
  v76[3] = &unk_2783ACDB8;
  v24 = v22;
  v77 = v24;
  v25 = [v48 appendObject:backgroundBlurDescription counterpart:v76];
  maintainedPreferences = self->_maintainedPreferences;
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __27__SBSAPreferences_isEqual___block_invoke_15;
  v74[3] = &unk_2783ACDB8;
  v27 = v24;
  v75 = v27;
  v28 = [v25 appendObject:maintainedPreferences counterpart:v74];
  blobEnabled = self->_blobEnabled;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __27__SBSAPreferences_isEqual___block_invoke_16;
  v72[3] = &unk_2783ACE58;
  v30 = v27;
  v73 = v30;
  v31 = [v28 appendBool:blobEnabled counterpart:v72];
  blobRadius = self->_blobRadius;
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __27__SBSAPreferences_isEqual___block_invoke_17;
  v70[3] = &unk_2783ACE08;
  v33 = v30;
  v71 = v33;
  v34 = [v31 appendCGFloat:v70 counterpart:blobRadius];
  collisionImminent = self->_collisionImminent;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __27__SBSAPreferences_isEqual___block_invoke_18;
  v68[3] = &unk_2783ACE58;
  v36 = v33;
  v69 = v36;
  v37 = [v34 appendBool:collisionImminent counterpart:v68];
  systemApertureForcedToHardwareAdjacentPosition = self->_systemApertureForcedToHardwareAdjacentPosition;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __27__SBSAPreferences_isEqual___block_invoke_19;
  v66[3] = &unk_2783ACE58;
  v39 = v36;
  v67 = v39;
  v40 = [v37 appendBool:systemApertureForcedToHardwareAdjacentPosition counterpart:v66];
  interfaceElementPropertiesToBehaviorSettings = self->_interfaceElementPropertiesToBehaviorSettings;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __27__SBSAPreferences_isEqual___block_invoke_20;
  v64[3] = &unk_2783ACDB8;
  v42 = v39;
  v65 = v42;
  v43 = [v40 appendObject:interfaceElementPropertiesToBehaviorSettings counterpart:v64];
  interfaceElementPropertiesToMilestones = self->_interfaceElementPropertiesToMilestones;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __27__SBSAPreferences_isEqual___block_invoke_21;
  v62[3] = &unk_2783ACDB8;
  v63 = v42;
  v45 = v42;
  v46 = [v43 appendObject:interfaceElementPropertiesToMilestones counterpart:v62];
  LOBYTE(v42) = [v46 isEqual];

  return v42;
}

uint64_t __27__SBSAPreferences_isEqual___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) gestureDescriptions];
  v2 = BSEqualArrays();

  return v2;
}

uint64_t __27__SBSAPreferences_isEqual___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) timerDescriptions];
  v2 = BSEqualArrays();

  return v2;
}

uint64_t __27__SBSAPreferences_isEqual___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) actions];
  v2 = BSEqualArrays();

  return v2;
}

uint64_t __27__SBSAPreferences_isEqual___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) containerViewDescriptions];
  v2 = BSEqualArrays();

  return v2;
}

uint64_t __27__SBSAPreferences_isEqual___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) elementDescriptions];
  v2 = BSEqualArrays();

  return v2;
}

BOOL __27__SBSAPreferences_isEqual___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 curtainRenderingConfiguration];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v3 = *(a1 + 40);
  v5 = *(v3 + 144);
  v6 = *(v3 + 160);
  return SBSystemApertureContainerRenderingConfigurationEqualToConfiguration(v7, &v5);
}

BOOL __27__SBSAPreferences_isEqual___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 highLevelCurtainRenderingConfiguration];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v3 = *(a1 + 40);
  v5 = *(v3 + 168);
  v6 = *(v3 + 184);
  return SBSystemApertureContainerRenderingConfigurationEqualToConfiguration(v7, &v5);
}

- (unint64_t)hash
{
  v28 = [MEMORY[0x277CF0C40] builder];
  v27 = [v28 appendObject:self->_gestureDescriptions];
  v26 = [v27 appendObject:self->_timerDescriptions];
  v25 = [v26 appendObject:self->_actions];
  v24 = [v25 appendObject:self->_containerParentViewDescription];
  v23 = [v24 appendObject:self->_containerViewDescriptions];
  v22 = [v23 appendObject:self->_elementDescriptions];
  v21 = [v22 appendObject:self->_indicatorContainerViewDescription];
  v20 = [v21 appendObject:self->_indicatorElementDescription];
  v19 = [v20 appendObject:self->_secureFlipBookElementPreferences];
  v18 = [v19 appendObject:self->_elementLayoutTransition];
  v17 = [v18 appendObject:self->_lastChangingElementLayoutTransition];
  v16 = [v17 appendObject:self->_backgroundBlurDescription];
  v15 = [v16 appendObject:self->_maintainedPreferences];
  v3 = [v15 appendInteger:self->_curtainRenderingConfiguration.renderingStyle];
  v4 = [v3 appendInteger:self->_curtainRenderingConfiguration.cloningStyle];
  v5 = [v4 appendInteger:self->_highLevelCurtainRenderingConfiguration.renderingStyle];
  v6 = [v5 appendInteger:self->_highLevelCurtainRenderingConfiguration.cloningStyle];
  v7 = [v6 appendBool:self->_blobEnabled];
  v8 = [v7 appendCGFloat:self->_blobRadius];
  v9 = [v8 appendBool:self->_collisionImminent];
  v10 = [v9 appendBool:self->_systemApertureForcedToHardwareAdjacentPosition];
  v11 = [v10 appendObject:self->_interfaceElementPropertiesToBehaviorSettings];
  v12 = [v11 appendObject:self->_interfaceElementPropertiesToMilestones];
  v14 = [v12 hash];

  return v14;
}

- (NSString)description
{
  v2 = [(SBSAPreferences *)self dictionaryDescription];
  v3 = SBSAStringFromDictionaryDescription(v2);

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSArray *)self->_gestureDescriptions copy];
  v6 = *(v4 + 13);
  *(v4 + 13) = v5;

  v7 = [(NSArray *)self->_timerDescriptions copy];
  v8 = *(v4 + 14);
  *(v4 + 14) = v7;

  v9 = [(NSArray *)self->_actions copy];
  v10 = *(v4 + 15);
  *(v4 + 15) = v9;

  v11 = [(SBSAViewDescription *)self->_containerParentViewDescription copy];
  v12 = *(v4 + 6);
  *(v4 + 6) = v11;

  v13 = [(NSArray *)self->_containerViewDescriptions copy];
  v14 = *(v4 + 2);
  *(v4 + 2) = v13;

  v15 = [(SBSAContainerViewDescription *)self->_indicatorContainerViewDescription copy];
  v16 = *(v4 + 3);
  *(v4 + 3) = v15;

  v17 = [(SBSASecureFlipBookElementPreferences *)self->_secureFlipBookElementPreferences copy];
  v18 = *(v4 + 5);
  *(v4 + 5) = v17;

  v19 = [(SBSAIndicatorElementDescription *)self->_indicatorElementDescription copy];
  v20 = *(v4 + 4);
  *(v4 + 4) = v19;

  v21 = [(NSArray *)self->_elementDescriptions copy];
  v22 = *(v4 + 7);
  *(v4 + 7) = v21;

  v23 = [(SBSAElementLayoutTransition *)self->_elementLayoutTransition copy];
  v24 = *(v4 + 8);
  *(v4 + 8) = v23;

  v25 = [(SBSAElementLayoutTransition *)self->_lastChangingElementLayoutTransition copy];
  v26 = *(v4 + 9);
  *(v4 + 9) = v25;

  v27 = [(SBSABackgroundBlurDescription *)self->_backgroundBlurDescription copy];
  v28 = *(v4 + 10);
  *(v4 + 10) = v27;

  v29 = [(SBSAMaintainedPreferences *)self->_maintainedPreferences copy];
  v30 = *(v4 + 11);
  *(v4 + 11) = v29;

  v31 = *&self->_curtainRenderingConfiguration.renderingStyle;
  *(v4 + 20) = *&self->_curtainRenderingConfiguration.alwaysRenderInSnapshots;
  *(v4 + 9) = v31;
  v32 = *&self->_highLevelCurtainRenderingConfiguration.alwaysRenderInSnapshots;
  *(v4 + 168) = *&self->_highLevelCurtainRenderingConfiguration.renderingStyle;
  *(v4 + 23) = v32;
  v4[9] = self->_blobEnabled;
  *(v4 + 12) = *&self->_blobRadius;
  v4[10] = self->_collisionImminent;
  v33 = [(NSMutableDictionary *)self->_interfaceElementPropertiesToBehaviorSettings mutableCopy];
  v34 = *(v4 + 16);
  *(v4 + 16) = v33;

  v35 = [(NSMutableDictionary *)self->_interfaceElementPropertiesToMilestones mutableCopy];
  v36 = *(v4 + 17);
  *(v4 + 17) = v35;

  v4[11] = self->_systemApertureForcedToHardwareAdjacentPosition;
  return v4;
}

- (BSOrderedDictionary)dictionaryDescription
{
  v3 = objc_alloc(MEMORY[0x277CF0C78]);
  v4 = [MEMORY[0x277CF0C98] sortByInsertionOrder];
  v5 = [v3 initWithKeyOrderingStrategy:v4];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 setObject:v6 forKey:v8];

  if ([(NSArray *)self->_gestureDescriptions count])
  {
    v9 = [(NSArray *)self->_gestureDescriptions description];
    [v5 setObject:v9 forKey:@"gestureDescriptions"];
  }

  if ([(NSArray *)self->_timerDescriptions count])
  {
    v10 = [(NSArray *)self->_timerDescriptions description];
    [v5 setObject:v10 forKey:@"timerDescriptions"];
  }

  if ([(NSArray *)self->_actions count])
  {
    v11 = [(NSArray *)self->_actions description];
    [v5 setObject:v11 forKey:@"actions"];
  }

  v12 = [(SBSAContainerViewDescription *)self->_indicatorContainerViewDescription description];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"nil";
  }

  [v5 setObject:v14 forKey:@"indicatorContainerViewDescription"];

  v15 = [(SBSAIndicatorElementDescription *)self->_indicatorElementDescription description];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"nil";
  }

  [v5 setObject:v17 forKey:@"indicatorElementDescription"];

  v18 = [(SBSAAbstractDictionaryBackedPreferences *)self->_secureFlipBookElementPreferences description];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"nil";
  }

  [v5 setObject:v20 forKey:@"secureFlipBookElementPreferences"];

  containerParentViewDescription = self->_containerParentViewDescription;
  if (containerParentViewDescription)
  {
    v22 = [(SBSAViewDescription *)containerParentViewDescription description];
    [v5 setObject:v22 forKey:@"containerParentViewDescription"];
  }

  if ([(NSArray *)self->_containerViewDescriptions count])
  {
    [v5 setObject:self->_containerViewDescriptions forKey:@"containerViewDescriptions"];
  }

  if ([(NSArray *)self->_elementDescriptions count])
  {
    [v5 setObject:self->_elementDescriptions forKey:@"elementDescriptions"];
  }

  elementLayoutTransition = self->_elementLayoutTransition;
  if (elementLayoutTransition)
  {
    v24 = [(SBSAElementLayoutTransition *)elementLayoutTransition description];
    [v5 setObject:v24 forKey:@"elementLayoutTransition"];
  }

  lastChangingElementLayoutTransition = self->_lastChangingElementLayoutTransition;
  if (lastChangingElementLayoutTransition)
  {
    v26 = [(SBSAElementLayoutTransition *)lastChangingElementLayoutTransition description];
    [v5 setObject:v26 forKey:@"lastChangingElementLayoutTransition"];
  }

  backgroundBlurDescription = self->_backgroundBlurDescription;
  if (backgroundBlurDescription)
  {
    v28 = [(SBSABackgroundBlurDescription *)backgroundBlurDescription description];
    [v5 setObject:v28 forKey:@"backgroundBlurDescription"];
  }

  v29 = [(SBSAMaintainedPreferences *)self->_maintainedPreferences description];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = @"nil";
  }

  [v5 setObject:v31 forKey:@"maintainedPreferences"];

  v39 = *&self->_curtainRenderingConfiguration.renderingStyle;
  v40 = *&self->_curtainRenderingConfiguration.alwaysRenderInSnapshots;
  v32 = SBStringFromSystemApertureContainerRenderingConfiguration(&v39);
  [v5 setObject:v32 forKey:@"curtainRenderingConfiguration"];

  v39 = *&self->_highLevelCurtainRenderingConfiguration.renderingStyle;
  v40 = *&self->_highLevelCurtainRenderingConfiguration.alwaysRenderInSnapshots;
  v33 = SBStringFromSystemApertureContainerRenderingConfiguration(&v39);
  [v5 setObject:v33 forKey:@"highLevelCurtainRenderingConfiguration"];

  v34 = NSStringFromBOOL();
  [v5 setObject:v34 forKey:@"blobEnabled"];

  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *&self->_blobRadius];
  [v5 setObject:v35 forKey:@"blobRadius"];

  v36 = NSStringFromBOOL();
  [v5 setObject:v36 forKey:@"collisionImminent"];

  v37 = NSStringFromBOOL();
  [v5 setObject:v37 forKey:@"systemApertureForcedToHardwareAdjacentPosition"];

  if ([(NSMutableDictionary *)self->_interfaceElementPropertiesToBehaviorSettings count])
  {
    [v5 setObject:self->_interfaceElementPropertiesToBehaviorSettings forKey:@"interfaceElementPropertiesToBehaviorSettings"];
  }

  if ([(NSMutableDictionary *)self->_interfaceElementPropertiesToMilestones count])
  {
    [v5 setObject:self->_interfaceElementPropertiesToMilestones forKey:@"interfaceElementPropertiesToMilestones"];
  }

  return v5;
}

- (id)effectiveMilestoneProvidingAnimatedTransitionDescriptionForProperty:(id)a3
{
  v4 = a3;
  if (!self->_finalizedForApplication)
  {
    [SBSAPreferences effectiveMilestoneProvidingAnimatedTransitionDescriptionForProperty:];
  }

  v5 = [(SBSAPreferences *)self _effectiveTransitionDescriptionForPropertyForProperty:v4 addingMilestonesAndCreatingUniqueDescriptionIfIndirect:1];

  return v5;
}

- (BOOL)_doesUnanimatedTransitionDescriptionExistForProperty:(id)a3
{
  v3 = [(SBSAPreferences *)self _effectiveTransitionDescriptionForPropertyForProperty:a3 addingMilestonesAndCreatingUniqueDescriptionIfIndirect:0];
  v4 = [v3 behaviorSettings];
  v5 = [v4 isUnanimated];

  return v5;
}

- (id)_effectiveTransitionDescriptionForPropertyForProperty:(id)a3 addingMilestonesAndCreatingUniqueDescriptionIfIndirect:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_interfaceElementPropertiesToBehaviorSettings objectForKey:v7];
    if (objc_opt_respondsToSelector())
    {
      v9 = objc_opt_respondsToSelector();
      v10 = 0;
      if (v9)
      {
        do
        {
          v11 = v10;
          v10 = v8;

          v8 = [(NSMutableDictionary *)self->_interfaceElementPropertiesToBehaviorSettings objectForKey:v10];
        }

        while ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0);
      }

      v12 = v9 ^ 1;
    }

    else
    {
      v10 = 0;
      v12 = 1;
    }

    v14 = objc_opt_class();
    v15 = v8;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v13 = v16;

    if (v4)
    {
      if (!(v12 & 1 | (v13 == 0)))
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __128__SBSAPreferences__effectiveTransitionDescriptionForPropertyForProperty_addingMilestonesAndCreatingUniqueDescriptionIfIndirect___block_invoke;
        v23[3] = &unk_2783AD750;
        v25 = a2;
        v23[4] = self;
        v24 = v10;
        v17 = [v13 copyWithBlock:v23];

        v13 = v17;
      }

      if (v13)
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __128__SBSAPreferences__effectiveTransitionDescriptionForPropertyForProperty_addingMilestonesAndCreatingUniqueDescriptionIfIndirect___block_invoke_2;
        v20[3] = &unk_2783AD750;
        v22 = a2;
        v20[4] = self;
        v21 = v7;
        v18 = [v13 copyWithBlock:v20];

        v13 = v18;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __128__SBSAPreferences__effectiveTransitionDescriptionForPropertyForProperty_addingMilestonesAndCreatingUniqueDescriptionIfIndirect___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if (v12)
  {
    v3 = objc_opt_self();
    v4 = v12;
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
      __128__SBSAPreferences__effectiveTransitionDescriptionForPropertyForProperty_addingMilestonesAndCreatingUniqueDescriptionIfIndirect___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CCAD78] UUID];
  [v6 setAnimatedTransitionIdentifier:v7];

  v8 = MEMORY[0x277CCACA8];
  v9 = [*(a1 + 40) associatedInterfaceElementIdentifier];
  v10 = [*(a1 + 40) interfaceElementProperty];
  v11 = [v8 stringWithFormat:@"Associated with: %@-(%@)", v9, v10];
  [v6 setResponsibleProviderDebugString:v11];
}

void __128__SBSAPreferences__effectiveTransitionDescriptionForPropertyForProperty_addingMilestonesAndCreatingUniqueDescriptionIfIndirect___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = objc_opt_self();
    v4 = v8;
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
      __128__SBSAPreferences__effectiveTransitionDescriptionForPropertyForProperty_addingMilestonesAndCreatingUniqueDescriptionIfIndirect___block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(*(a1 + 32) + 136) objectForKey:*(a1 + 40)];
  [v6 setMilestones:v7];
}

- (void)_setCurtainRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)a3
{
  v3 = *&a3->renderingStyle;
  *&self->_curtainRenderingConfiguration.alwaysRenderInSnapshots = *&a3->alwaysRenderInSnapshots;
  *&self->_curtainRenderingConfiguration.renderingStyle = v3;
}

- (void)_setHighLevelCurtainRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)a3
{
  v3 = *&a3->renderingStyle;
  *&self->_highLevelCurtainRenderingConfiguration.alwaysRenderInSnapshots = *&a3->alwaysRenderInSnapshots;
  *&self->_highLevelCurtainRenderingConfiguration.renderingStyle = v3;
}

- (id)copyByAddingActions:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__SBSAPreferences_Private__copyByAddingActions___block_invoke;
    v8[3] = &unk_2783AD750;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    v6 = [(SBSAPreferences *)self copyWithBlock:v8];
  }

  else
  {
    v6 = self;
  }

  return v6;
}

void __48__SBSAPreferences_Private__copyByAddingActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v11;
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

    v3 = v11;
    if (!v7)
    {
      __48__SBSAPreferences_Private__copyByAddingActions___block_invoke_cold_1();
      v3 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 actions];
  if (v8)
  {
    v9 = [*(a1 + 40) bs_differenceWithArray:v8];
    v10 = [v8 arrayByAddingObjectsFromArray:v9];
    [v7 setActions:v10];
  }

  else
  {
    [v7 setActions:*(a1 + 40)];
  }
}

- (id)copyWithCancellationOfGestureOfClass:(Class)a3 context:(id)a4
{
  v7 = a4;
  v8 = [(NSArray *)self->_gestureDescriptions bs_firstObjectOfClass:a3];
  if (v8 || (([v7 gestureDescriptions], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "bs_firstObjectOfClass:", a3), v10 = objc_claimAutoreleasedReturnValue(), (v11 = v10) == 0) ? (v12 = objc_alloc_init(a3)) : (v12 = v10), v8 = v12, v11, v9, v8))
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __73__SBSAPreferences_Private__copyWithCancellationOfGestureOfClass_context___block_invoke;
    v16[3] = &unk_2783AD750;
    v17 = v8;
    v18 = a2;
    v16[4] = self;
    v13 = v8;
    v14 = [(SBSAPreferences *)self copyWithBlock:v16];
  }

  else
  {
    v14 = self;
  }

  return v14;
}

void __73__SBSAPreferences_Private__copyWithCancellationOfGestureOfClass_context___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
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

    if (!v7)
    {
      __73__SBSAPreferences_Private__copyWithCancellationOfGestureOfClass_context___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 gestureDescriptions];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  v11 = v10;

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__SBSAPreferences_Private__copyWithCancellationOfGestureOfClass_context___block_invoke_2;
  v16[3] = &unk_2783A93E8;
  v12 = a1[5];
  v13 = a1[6];
  v16[4] = a1[4];
  v16[5] = v13;
  v14 = [v12 copyWithBlock:v16];
  v15 = [v11 sbsa_arrayByAddingOrReplacingObjectMatchingClass:v14];
  [v7 setGestureDescriptions:v15];
}

void __73__SBSAPreferences_Private__copyWithCancellationOfGestureOfClass_context___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v2 = objc_opt_self();
    v3 = v6;
    if (v2)
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    if (!v5)
    {
      __73__SBSAPreferences_Private__copyWithCancellationOfGestureOfClass_context___block_invoke_2_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

  [v5 setGestureRecognizerState:4];
}

- (id)copyByUpdatingContainerViewDescriptions:(id)a3
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__SBSAPreferences_Private__copyByUpdatingContainerViewDescriptions___block_invoke;
  v9[3] = &unk_2783AD750;
  v10 = v5;
  v11 = a2;
  v9[4] = self;
  v6 = v5;
  v7 = [(SBSAPreferences *)self copyWithBlock:v9];

  return v7;
}

void __68__SBSAPreferences_Private__copyByUpdatingContainerViewDescriptions___block_invoke(uint64_t a1, void *a2)
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
      __68__SBSAPreferences_Private__copyByUpdatingContainerViewDescriptions___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setContainerViewDescriptions:*(a1 + 40)];
}

- (id)copyByUpdatingElementDescriptions:(id)a3
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__SBSAPreferences_Private__copyByUpdatingElementDescriptions___block_invoke;
  v9[3] = &unk_2783AD750;
  v10 = v5;
  v11 = a2;
  v9[4] = self;
  v6 = v5;
  v7 = [(SBSAPreferences *)self copyWithBlock:v9];

  return v7;
}

void __62__SBSAPreferences_Private__copyByUpdatingElementDescriptions___block_invoke(uint64_t a1, void *a2)
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
      __62__SBSAPreferences_Private__copyByUpdatingElementDescriptions___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setElementDescriptions:*(a1 + 40)];
}

- (id)copyByUpdatingBackgroundBlurDescription:(id)a3
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__SBSAPreferences_Private__copyByUpdatingBackgroundBlurDescription___block_invoke;
  v9[3] = &unk_2783AD750;
  v10 = v5;
  v11 = a2;
  v9[4] = self;
  v6 = v5;
  v7 = [(SBSAPreferences *)self copyWithBlock:v9];

  return v7;
}

void __68__SBSAPreferences_Private__copyByUpdatingBackgroundBlurDescription___block_invoke(uint64_t a1, void *a2)
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
      __68__SBSAPreferences_Private__copyByUpdatingBackgroundBlurDescription___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setBackgroundBlurDescription:*(a1 + 40)];
}

- (id)copyByUpdatingMaintainedPreferences:(id)a3
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__SBSAPreferences_Private__copyByUpdatingMaintainedPreferences___block_invoke;
  v9[3] = &unk_2783B5748;
  v10 = v5;
  v11 = a2;
  v9[4] = self;
  v6 = v5;
  v7 = [(SBSAPreferences *)self copyWithBlock:v9];

  return v7;
}

void __64__SBSAPreferences_Private__copyByUpdatingMaintainedPreferences___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = objc_opt_self();
    v4 = v8;
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
      __64__SBSAPreferences_Private__copyByUpdatingMaintainedPreferences___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(*(a1 + 32) + 88) copyWithBlock:*(a1 + 40)];
  [v6 setMaintainedPreferences:v7];
}

+ (id)instanceWithBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v4 copyWithBlock:v3];

  return v5;
}

- (id)copyWithBlock:(id)a3
{
  v4 = a3;
  if (self->_finalizedForApplication)
  {
    [SBSAPreferences(Private) copyWithBlock:];
  }

  v5 = [(SBSAPreferences *)self copy];
  if (v4)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    v4[2](v4, v6);
  }

  return v5;
}

- (id)animatedTransitionDescriptionForProperty:(id)a3
{
  if (a3)
  {
    v3 = [(NSMutableDictionary *)self->_interfaceElementPropertiesToBehaviorSettings objectForKey:?];
    v4 = objc_opt_class();
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
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)effectiveMilestoneProvidingAnimatedTransitionDescriptionForProperty:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBSAPreferences.m" lineNumber:266 description:@"Preferences must be finalized before being applied; this method should only be used when applying preferences by the host"];
}

void __128__SBSAPreferences__effectiveTransitionDescriptionForPropertyForProperty_addingMilestonesAndCreatingUniqueDescriptionIfIndirect___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaanimatedtr.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __128__SBSAPreferences__effectiveTransitionDescriptionForPropertyForProperty_addingMilestonesAndCreatingUniqueDescriptionIfIndirect___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaanimatedtr.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __48__SBSAPreferences_Private__copyByAddingActions___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __73__SBSAPreferences_Private__copyWithCancellationOfGestureOfClass_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __73__SBSAPreferences_Private__copyWithCancellationOfGestureOfClass_context___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsagesturedes.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __68__SBSAPreferences_Private__copyByUpdatingContainerViewDescriptions___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __62__SBSAPreferences_Private__copyByUpdatingElementDescriptions___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __68__SBSAPreferences_Private__copyByUpdatingBackgroundBlurDescription___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __64__SBSAPreferences_Private__copyByUpdatingMaintainedPreferences___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

@end