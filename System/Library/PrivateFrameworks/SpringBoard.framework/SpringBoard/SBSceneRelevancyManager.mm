@interface SBSceneRelevancyManager
- (BOOL)shouldFreezeSceneEntity:(id)a3;
- (SBSceneRelevancyManager)initWithSceneRelevancySettings:(id)a3;
- (id)_addStateCaptureHandler;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (unint64_t)_computeScoreForSceneIdentifier:(id)a3;
- (unint64_t)scoreForSceneIdentifier:(id)a3;
- (void)configureWithZOrderedDeviceApplicationSceneEntities:(id)a3 deviceApplicationSceneEntitiesToOcclusionStates:(id)a4 firstMaximizedDeviceApplicationSceneEntity:(id)a5 isStageInPeek:(BOOL)a6;
- (void)dealloc;
@end

@implementation SBSceneRelevancyManager

- (SBSceneRelevancyManager)initWithSceneRelevancySettings:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBSceneRelevancyManager *)a2 initWithSceneRelevancySettings:?];
  }

  v12.receiver = self;
  v12.super_class = SBSceneRelevancyManager;
  v7 = [(SBSceneRelevancyManager *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_settings, a3);
    v9 = [(SBSceneRelevancyManager *)v8 _addStateCaptureHandler];
    stateCaptureInvalidatable = v8->_stateCaptureInvalidatable;
    v8->_stateCaptureInvalidatable = v9;

    v8->_firstMaximizedSceneZOrder = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  v3.receiver = self;
  v3.super_class = SBSceneRelevancyManager;
  [(SBSceneRelevancyManager *)&v3 dealloc];
}

- (void)configureWithZOrderedDeviceApplicationSceneEntities:(id)a3 deviceApplicationSceneEntitiesToOcclusionStates:(id)a4 firstMaximizedDeviceApplicationSceneEntity:(id)a5 isStageInPeek:(BOOL)a6
{
  v65 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v47 = a4;
  v48 = a5;
  v11 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:1282 capacity:{objc_msgSend(v10, "count")}];
  sceneIdentifierToScore = self->_sceneIdentifierToScore;
  self->_sceneIdentifierToScore = v11;

  objc_storeStrong(&self->_zOrderedDeviceApplicationSceneEntities, a3);
  [(NSArray *)self->_zOrderedDeviceApplicationSceneEntities enumerateObjectsUsingBlock:&__block_literal_global_342];
  objc_storeStrong(&self->_deviceApplicationSceneEntitiesToOcclusionStates, a4);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v13 = [(NSMapTable *)self->_deviceApplicationSceneEntitiesToOcclusionStates keyEnumerator];
  v14 = [v13 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v59;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v59 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v58 + 1) + 8 * i) setObject:0 forActivationSetting:69];
      }

      v15 = [v13 countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v15);
  }

  self->_firstMaximizedSceneZOrder = 0x7FFFFFFFFFFFFFFFLL;
  v18 = [(SBSceneRelevancySettings *)self->_settings freezeAllWindowsBelowMaximizedWindow];
  v19 = [(SBSceneRelevancyManager *)self maximumNumberOfVisibleScenesOnStage];
  v45 = [MEMORY[0x277CBEB18] array];
  v46 = [MEMORY[0x277CBEB18] array];
  if ([v10 count])
  {
    for (j = 0; j < [v10 count]; ++j)
    {
      v21 = [v10 objectAtIndex:j];
      v22 = [v47 objectForKey:v21];
      v23 = [v22 integerValue];
      v24 = [v21 uniqueIdentifier];
      if (v24)
      {
        if (self->_firstMaximizedSceneZOrder == 0x7FFFFFFFFFFFFFFFLL && [v21 isEqual:v48])
        {
          self->_firstMaximizedSceneZOrder = j;
        }

        if (v18 && j > self->_firstMaximizedSceneZOrder)
        {
          v25 = 7;
LABEL_25:
          NSMapInsert(self->_sceneIdentifierToScore, v24, v25);
          goto LABEL_26;
        }

        v26 = [SBSceneRelevancyResolver windowRelevancyScoreForZOrder:j occlusionState:v23 maximumNumberOfVisibleScenesOnStage:v19 settings:self->_settings];
        v27 = 3;
        if (v26 > 3)
        {
          v27 = v26;
        }

        if (a6)
        {
          v25 = v27;
          goto LABEL_25;
        }

        v25 = v26;
        if (v26 != 2)
        {
          goto LABEL_25;
        }

        if (v23 == 1)
        {
          v28 = v46;
          goto LABEL_29;
        }

        if (!v23)
        {
          v28 = v45;
LABEL_29:
          [v28 addObject:v21];
        }
      }

LABEL_26:
    }
  }

  v29 = [(SBSceneRelevancySettings *)self->_settings maximumWindowsInForegroundJetsamBand];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v30 = v45;
  v31 = [v30 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v55;
    v34 = 1;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v55 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v36 = [*(*(&v54 + 1) + 8 * k) uniqueIdentifier];
        v37 = self->_sceneIdentifierToScore;
        if (v34 >= v29)
        {
          NSMapInsert(v37, v36, 4);
        }

        else
        {
          NSMapInsert(v37, v36, 2);
          ++v34;
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v32);
  }

  else
  {
    v34 = 1;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v38 = v46;
  v39 = [v38 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v51;
    do
    {
      for (m = 0; m != v40; ++m)
      {
        if (*v51 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = [*(*(&v50 + 1) + 8 * m) uniqueIdentifier];
        v44 = self->_sceneIdentifierToScore;
        if (v34 >= v29)
        {
          NSMapInsert(v44, v43, 4);
        }

        else
        {
          NSMapInsert(v44, v43, 2);
          ++v34;
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v40);
  }
}

- (unint64_t)scoreForSceneIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBSceneRelevancyManager *)a2 scoreForSceneIdentifier:?];
  }

  v6 = self->_sceneIdentifierToScore;
  v7 = v6;
  if (v6)
  {
    v8 = NSMapGet(v6, v5);
    if (!v8)
    {
      v8 = [(SBSceneRelevancyManager *)self _computeScoreForSceneIdentifier:v5];
      NSMapInsert(v7, v5, v8);
    }
  }

  else
  {
    v8 = [(SBSceneRelevancyManager *)self _computeScoreForSceneIdentifier:v5];
  }

  return v8;
}

- (BOOL)shouldFreezeSceneEntity:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBSceneRelevancyManager *)a2 shouldFreezeSceneEntity:?];
  }

  v6 = [v5 uniqueIdentifier];
  v7 = [(SBSceneRelevancyManager *)self scoreForSceneIdentifier:v6];

  LOBYTE(v7) = [SBSceneRelevancyResolver shouldFreezeWindowWithRelevancyScore:v7];
  return v7;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SBSceneRelevancyManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

void __65__SBSceneRelevancyManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"maximumNumberOfVisibleScenesOnStage"), @"maximumNumberOfVisibleScenesOnStage"}];
  v3 = *(a1 + 32);
  v4 = [v3 activeMultilinePrefix];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__SBSceneRelevancyManager_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v8[3] = &unk_2783A92D8;
  v7 = *(a1 + 32);
  v5 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  [v3 appendBodySectionWithName:@"scoreToZOrderedDeviceApplicationSceneEntities" multilinePrefix:v4 block:v8];

  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"sceneIdentifierToScore"];
  [*(a1 + 32) appendArraySection:*(*(a1 + 40) + 40) withName:@"zOrderedDeviceApplicationSceneEntities" skipIfEmpty:0];
}

void __65__SBSceneRelevancyManager_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__SBSceneRelevancyManager_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v4[3] = &unk_2783BF818;
  v4[4] = v2;
  v5 = v1;
  [v3 enumerateObjectsUsingBlock:v4];
}

void __65__SBSceneRelevancyManager_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v13 = [v5 uniqueIdentifier];
  v6 = [*(*(a1 + 32) + 48) objectForKey:v5];

  v7 = [v6 integerValue];
  v8 = *(a1 + 40);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"score %lu - %@", objc_msgSend(*(a1 + 32), "scoreForSceneIdentifier:", v13), v13];
  v10 = MEMORY[0x277CCACA8];
  v11 = SBSceneRelevancyHintDescription(v7);
  v12 = [v10 stringWithFormat:@"z-order %lu %@", a3, v11];
  [v8 appendString:v9 withName:v12];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSceneRelevancyManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (unint64_t)_computeScoreForSceneIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBSceneRelevancyManager *)self zOrderedDeviceApplicationSceneEntities];
  if (v5)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__SBSceneRelevancyManager__computeScoreForSceneIdentifier___block_invoke;
    v13[3] = &unk_2783BF840;
    v14 = v4;
    v6 = [v5 indexOfObjectPassingTest:v13];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v8 = v6;
      if (v6 > self->_firstMaximizedSceneZOrder && [(SBSceneRelevancySettings *)self->_settings freezeAllWindowsBelowMaximizedWindow])
      {
        v7 = 7;
      }

      else
      {
        v9 = [v5 objectAtIndex:v8];
        v10 = [(SBSceneRelevancyManager *)self deviceApplicationSceneEntitiesToOcclusionStates];
        v11 = [v10 objectForKey:v9];
        v7 = +[SBSceneRelevancyResolver windowRelevancyScoreForZOrder:occlusionState:maximumNumberOfVisibleScenesOnStage:settings:](SBSceneRelevancyResolver, "windowRelevancyScoreForZOrder:occlusionState:maximumNumberOfVisibleScenesOnStage:settings:", v8, [v11 integerValue], -[SBSceneRelevancyManager maximumNumberOfVisibleScenesOnStage](self, "maximumNumberOfVisibleScenesOnStage"), self->_settings);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __59__SBSceneRelevancyManager__computeScoreForSceneIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_addStateCaptureHandler
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"SpringBoard - %@ - %p", v5, self];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v10, &location);
  v8 = BSLogAddStateCaptureBlockWithTitle();
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v8;
}

__CFString *__50__SBSceneRelevancyManager__addStateCaptureHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained description];
  }

  else
  {
    v3 = &stru_283094718;
  }

  return v3;
}

- (void)initWithSceneRelevancySettings:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneRelevancyManager.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"sceneRelevancySettings"}];
}

- (void)scoreForSceneIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneRelevancyManager.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"sceneIdentifier"}];
}

- (void)shouldFreezeSceneEntity:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneRelevancyManager.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"deviceApplicationSceneEntity"}];
}

@end