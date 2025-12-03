@interface PNPersonDeduper
- (PNPersonDeduper)initWithPersonClusterManager:(id)manager andInvalidCandidatesMapping:(id)mapping profile:(id)profile;
- (PNPersonPromoter)personPromoter;
- (PNPersonPromoterDelegate)delegate;
- (PNPetPromoter)petPromoter;
- (id)basicSequence;
- (id)dedupeNewVerifiedPersons:(id)persons withExistingVerifiedPersons:(id)verifiedPersons updateBlock:(id)block;
- (id)dedupeUnverifiedPersons:(id)persons updateBlock:(id)block;
- (id)dedupeUnverifiedPersons:(id)persons withVerifiedPersons:(id)verifiedPersons updateBlock:(id)block;
- (void)_executeStepsInSequences:(id)sequences forPersons:(id)persons andOtherPersons:(id)otherPersons updateBlock:(id)block resultBlock:(id)resultBlock;
@end

@implementation PNPersonDeduper

- (PNPersonPromoter)personPromoter
{
  WeakRetained = objc_loadWeakRetained(&self->_personPromoter);

  return WeakRetained;
}

- (PNPetPromoter)petPromoter
{
  WeakRetained = objc_loadWeakRetained(&self->_petPromoter);

  return WeakRetained;
}

- (PNPersonPromoterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)dedupeNewVerifiedPersons:(id)persons withExistingVerifiedPersons:(id)verifiedPersons updateBlock:(id)block
{
  v35[2] = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  verifiedPersonsCopy = verifiedPersons;
  blockCopy = block;
  if (verifiedPersonsCopy)
  {
    if (personsCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PNPersonDeduper.m" lineNumber:219 description:{@"Invalid parameter not satisfying: %@", @"newVerifiedPersons"}];

    if (blockCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PNPersonDeduper.m" lineNumber:218 description:{@"Invalid parameter not satisfying: %@", @"existingVerifiedPersons"}];

  if (!personsCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (blockCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PNPersonDeduper.m" lineNumber:220 description:{@"Invalid parameter not satisfying: %@", @"updateBlock"}];

LABEL_4:
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4025;
  v32 = __Block_byref_object_dispose__4026;
  v33 = [personsCopy mutableCopy];
  v12 = [(PNPersonDeduperProfile *)self->_profile copy];
  [v12 setShouldRelaxThreshold:1];
  v13 = [(PNPersonDeduperStep *)[PNPersonDeduperSocialGroupTimeWarpingStep alloc] initWithPersonClusterManager:self->_personClusterManager invalidCandidatesMapping:self->_invalidCandidatesMapping profile:v12];
  delegate = [(PNPersonDeduper *)self delegate];
  [(PNPersonDeduperStep *)v13 setDelegate:delegate];

  v35[0] = v13;
  v15 = [(PNPersonDeduperStep *)[PNPersonDeduperTimeStep alloc] initWithPersonClusterManager:self->_personClusterManager invalidCandidatesMapping:self->_invalidCandidatesMapping profile:v12];
  v35[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];

  v17 = v29[5];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __84__PNPersonDeduper_dedupeNewVerifiedPersons_withExistingVerifiedPersons_updateBlock___block_invoke;
  v27[3] = &unk_1E82A2780;
  v27[4] = &v28;
  [(PNPersonDeduper *)self _executeStepsInSequences:v16 forPersons:verifiedPersonsCopy andOtherPersons:v17 updateBlock:blockCopy resultBlock:v27];
  if ([v29[5] count] >= 2)
  {
    v18 = [(PNPersonDeduperStep *)[PNPersonDeduperTimeStep alloc] initWithPersonClusterManager:self->_personClusterManager invalidCandidatesMapping:self->_invalidCandidatesMapping profile:v12];
    v34 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];

    v20 = v29[5];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __84__PNPersonDeduper_dedupeNewVerifiedPersons_withExistingVerifiedPersons_updateBlock___block_invoke_2;
    v26[3] = &unk_1E82A2780;
    v26[4] = &v28;
    [(PNPersonDeduper *)self _executeStepsInSequences:v19 forPersons:v20 andOtherPersons:v20 updateBlock:blockCopy resultBlock:v26];
  }

  v21 = v29[5];

  _Block_object_dispose(&v28, 8);

  return v21;
}

- (id)dedupeUnverifiedPersons:(id)persons updateBlock:(id)block
{
  personsCopy = persons;
  blockCopy = block;
  v9 = blockCopy;
  if (personsCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PNPersonDeduper.m" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"unverifiedPersons"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PNPersonDeduper.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"updateBlock"}];

LABEL_3:
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4025;
  v20 = __Block_byref_object_dispose__4026;
  v21 = [personsCopy mutableCopy];
  basicSequence = [(PNPersonDeduper *)self basicSequence];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__PNPersonDeduper_dedupeUnverifiedPersons_updateBlock___block_invoke;
  v15[3] = &unk_1E82A2780;
  v15[4] = &v16;
  [(PNPersonDeduper *)self _executeStepsInSequences:basicSequence forPersons:personsCopy andOtherPersons:personsCopy updateBlock:v9 resultBlock:v15];

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

- (id)dedupeUnverifiedPersons:(id)persons withVerifiedPersons:(id)verifiedPersons updateBlock:(id)block
{
  personsCopy = persons;
  verifiedPersonsCopy = verifiedPersons;
  blockCopy = block;
  if (personsCopy)
  {
    if (verifiedPersonsCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PNPersonDeduper.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"verifiedPersons"}];

    if (blockCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PNPersonDeduper.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"unverifiedPersons"}];

  if (!verifiedPersonsCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (blockCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PNPersonDeduper.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"updateBlock"}];

LABEL_4:
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4025;
  v23 = __Block_byref_object_dispose__4026;
  v24 = [personsCopy mutableCopy];
  if ([verifiedPersonsCopy count])
  {
    basicSequence = [(PNPersonDeduper *)self basicSequence];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__PNPersonDeduper_dedupeUnverifiedPersons_withVerifiedPersons_updateBlock___block_invoke;
    v18[3] = &unk_1E82A2780;
    v18[4] = &v19;
    [(PNPersonDeduper *)self _executeStepsInSequences:basicSequence forPersons:verifiedPersonsCopy andOtherPersons:personsCopy updateBlock:blockCopy resultBlock:v18];
  }

  v13 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v13;
}

- (id)basicSequence
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = [(PNPersonDeduperStep *)[PNPersonDeduperTimeStep alloc] initWithPersonClusterManager:self->_personClusterManager invalidCandidatesMapping:self->_invalidCandidatesMapping profile:self->_profile];
  v4 = [(PNPersonDeduperStep *)[PNPersonDeduperLocationStep alloc] initWithPersonClusterManager:self->_personClusterManager invalidCandidatesMapping:self->_invalidCandidatesMapping profile:self->_profile];
  v5 = [(PNPersonDeduperStep *)[PNPersonDeduperSocialGroupComplementStep alloc] initWithPersonClusterManager:self->_personClusterManager invalidCandidatesMapping:self->_invalidCandidatesMapping profile:self->_profile];
  v6 = [(PNPersonDeduperStep *)[PNPersonDeduperSocialGroupOverlaps alloc] initWithPersonClusterManager:self->_personClusterManager invalidCandidatesMapping:self->_invalidCandidatesMapping profile:self->_profile];
  delegate = [(PNPersonDeduper *)self delegate];
  [(PNPersonDeduperStep *)v4 setDelegate:delegate];
  [(PNPersonDeduperStep *)v5 setDelegate:delegate];
  [(PNPersonDeduperStep *)v6 setDelegate:delegate];
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];

  return v8;
}

- (void)_executeStepsInSequences:(id)sequences forPersons:(id)persons andOtherPersons:(id)otherPersons updateBlock:(id)block resultBlock:(id)resultBlock
{
  v53 = *MEMORY[0x1E69E9840];
  sequencesCopy = sequences;
  personsCopy = persons;
  otherPersonsCopy = otherPersons;
  blockCopy = block;
  resultBlockCopy = resultBlock;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__4025;
  v50 = __Block_byref_object_dispose__4026;
  v24 = personsCopy;
  v51 = [personsCopy mutableCopy];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__4025;
  v44 = __Block_byref_object_dispose__4026;
  v45 = [otherPersonsCopy mutableCopy];
  detectionType = [(PNPersonClusterManager *)self->_personClusterManager detectionType];
  v39 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = sequencesCopy;
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v52 count:16];
  if (v15)
  {
    v16 = 0;
    v27 = *v36;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v35 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        date = [MEMORY[0x1E695DF00] date];
        v21 = v47[5];
        v22 = v41[5];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __95__PNPersonDeduper__executeStepsInSequences_forPersons_andOtherPersons_updateBlock_resultBlock___block_invoke;
        v30[3] = &unk_1E82A2758;
        v32 = &v46;
        v33 = &v40;
        v34 = detectionType;
        v30[4] = self;
        v30[5] = v18;
        v23 = date;
        v31 = v23;
        [v18 dedupePersons:v21 withOtherPersons:v22 updateBlock:blockCopy resultBlock:v30];
        blockCopy[2](blockCopy, &v39, v16 / [v14 count]);
        LOBYTE(v18) = v39;

        objc_autoreleasePoolPop(v19);
        if (v18)
        {

          goto LABEL_11;
        }

        ++v17;
        ++v16;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v35 objects:v52 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  resultBlockCopy[2](resultBlockCopy, v47[5], v41[5]);
LABEL_11:
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
}

void __95__PNPersonDeduper__executeStepsInSequences_forPersons_andOtherPersons_updateBlock_resultBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA8] setWithObject:*(*(*(a1 + 56) + 8) + 40)];
  [v7 unionSet:*(*(*(a1 + 64) + 8) + 40)];
  v8 = [MEMORY[0x1E695DFA8] setWithObject:v5];
  [v8 unionSet:v6];
  v9 = [v7 count];
  v10 = v9 - [v8 count];
  v11 = *(a1 + 32);
  if (*(a1 + 72) == 1)
  {
    v12 = [v11 personPromoter];
    v13 = [*(a1 + 40) metricsKey];
    [v12 incrementMetricForKey:v13 withValue:v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v14 = [*(a1 + 40) name];
      v15 = [MEMORY[0x1E695DF00] date];
      [v15 timeIntervalSinceDate:*(a1 + 48)];
      v27 = 138412802;
      v28 = v14;
      v29 = 2048;
      v30 = v16;
      v31 = 2048;
      v32 = v10;
      v17 = MEMORY[0x1E69E9C10];
      v18 = "[PersonPromoter] [Step: %@] (%.4fs) - %ld persons merged";
LABEL_6:
      _os_log_impl(&dword_1C6F5C000, v17, OS_LOG_TYPE_INFO, v18, &v27, 0x20u);
    }
  }

  else
  {
    v19 = [v11 petPromoter];
    v20 = [*(a1 + 40) metricsKey];
    [v19 incrementMetricForKey:v20 withValue:v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v14 = [*(a1 + 40) name];
      v15 = [MEMORY[0x1E695DF00] date];
      [v15 timeIntervalSinceDate:*(a1 + 48)];
      v27 = 138412802;
      v28 = v14;
      v29 = 2048;
      v30 = v21;
      v31 = 2048;
      v32 = v10;
      v17 = MEMORY[0x1E69E9C10];
      v18 = "[PersonPromoter] [Step: %@] (%.4fs) - %ld pets merged";
      goto LABEL_6;
    }
  }

  v22 = *(*(a1 + 56) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v5;
  v24 = v5;

  v25 = *(*(a1 + 64) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v6;
}

- (PNPersonDeduper)initWithPersonClusterManager:(id)manager andInvalidCandidatesMapping:(id)mapping profile:(id)profile
{
  managerCopy = manager;
  mappingCopy = mapping;
  profileCopy = profile;
  v15.receiver = self;
  v15.super_class = PNPersonDeduper;
  v12 = [(PNPersonDeduper *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_personClusterManager, manager);
    objc_storeStrong(&v13->_invalidCandidatesMapping, mapping);
    objc_storeStrong(&v13->_profile, profile);
  }

  return v13;
}

@end