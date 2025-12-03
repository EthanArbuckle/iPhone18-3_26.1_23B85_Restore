@interface SBFZStackResolver
- (NSArray)_registeredParticipants;
- (NSString)debugDescription;
- (SBFZStackResolver)init;
- (id)acquireParticipantWithIdentifier:(int64_t)identifier delegate:(id)delegate;
- (id)addObserver:(id)observer ofParticipantWithIdentifier:(int64_t)identifier;
- (id)settingsOfParticipantWithIdentifier:(int64_t)identifier;
- (id)succinctDescription;
- (uint64_t)highestZStackParticipant;
- (uint64_t)participantObservers;
- (uint64_t)participants;
- (uint64_t)resolvedStackDescription;
- (uint64_t)sortedParticipants;
- (uint64_t)stateCaptureHandle;
- (void)_enumerateObserversOfParticipantWithIdentifier:(void *)identifier withBlock:;
- (void)_registerParticipant:(uint64_t)participant;
- (void)_resolveActivationStateOfSortedParticipants:(int)participants changedHandler:(int)handler prevailingHandler:(int)prevailingHandler;
- (void)_resolveAudioCategoriesDisablingVolumeHUDOfSortedParticipants:(uint64_t)participants changedHandler:(uint64_t)handler prevailingHandler:(uint64_t)prevailingHandler;
- (void)_resolveHomeGestureOwnershipOfSortedParticipants:(int)participants changedHandler:(int)handler prevailingHandler:(int)prevailingHandler;
- (void)_resolveOverrideKeyboardFocusTargetOfSortedParticipants:(int)participants changedHandler:(int)handler prevailingHandler:(int)prevailingHandler;
- (void)_resolveSystemApertureSuppressionOfSortedParticipants:(void *)participants changedHandler:(void *)handler prevailingHandler:;
- (void)_setNeedsUpdateFromParticipant:(uint64_t)participant;
- (void)_unregisterParticipant:(uint64_t)participant;
- (void)_updateResolutionsForAddedParticipant:(void *)participant removedParticipant:(void *)removedParticipant reason:;
- (void)appendDescriptionToStream:(id)stream;
- (void)dealloc;
- (void)removeObserver:(id)observer ofParticipantWithIdentifier:(int64_t)identifier;
- (void)setHighestZStackParticipant:(uint64_t)participant;
- (void)setParticipantObservers:(uint64_t)observers;
- (void)setParticipants:(uint64_t)participants;
- (void)setResolvedStackDescription:(void *)description;
- (void)setSortedParticipants:(uint64_t)participants;
- (void)setStateCaptureHandle:(uint64_t)handle;
@end

@implementation SBFZStackResolver

uint64_t __39__SBFZStackResolver__updateResolutions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 preferences];
  v7 = [v5 preferences];
  v8 = [v4 identifier];
  v9 = [v6 assertIsAboveParticipantIdentifiers];
  if (v9)
  {
    v10 = v9;
    v11 = [v6 assertIsAboveParticipantIdentifiers];
    v12 = [v11 lastIndex];

    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [v4 identifier];
      v13 = [v6 assertIsAboveParticipantIdentifiers];
      v14 = [v13 lastIndex];

      if (v8 <= v14)
      {
        v8 = v14;
      }
    }
  }

  v15 = [v5 identifier];
  v16 = [v7 assertIsAboveParticipantIdentifiers];
  if (v16)
  {
    v17 = v16;
    v18 = [v7 assertIsAboveParticipantIdentifiers];
    v19 = [v18 lastIndex];

    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [v5 identifier];
      v20 = [v7 assertIsAboveParticipantIdentifiers];
      v21 = [v20 lastIndex];

      if (v15 <= v21)
      {
        v15 = v21;
      }
    }
  }

  if (v8 >= v15)
  {
    if (v8 > v15)
    {
      v22 = 1;
      goto LABEL_15;
    }

    v23 = [v7 assertIsAboveParticipantIdentifiers];
    v24 = [v23 containsIndex:{objc_msgSend(v4, "identifier")}];

    if ((v24 & 1) == 0)
    {
      v25 = [v6 assertIsAboveParticipantIdentifiers];
      v26 = [v25 containsIndex:{objc_msgSend(v5, "identifier")}];

      v22 = v26;
      goto LABEL_15;
    }
  }

  v22 = -1;
LABEL_15:

  return v22;
}

- (SBFZStackResolver)init
{
  v16.receiver = self;
  v16.super_class = SBFZStackResolver;
  v2 = [(SBFZStackResolver *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    participants = v2->_participants;
    v2->_participants = v3;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    participantObservers = v2->_participantObservers;
    v2->_participantObservers = strongToStrongObjectsMapTable;

    v7 = [(SBFZStackResolver *)v2 acquireParticipantWithIdentifier:29 delegate:0];
    highestZStackParticipant = v2->_highestZStackParticipant;
    v2->_highestZStackParticipant = v7;

    objc_initWeak(&location, v2);
    v9 = MEMORY[0x1E69E96A0];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SpringBoard - Z Stack Resolver - %p", v2];
    objc_copyWeak(&v14, &location);
    v11 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureHandle = v2->_stateCaptureHandle;
    v2->_stateCaptureHandle = v11;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

id __25__SBFZStackResolver_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (id)acquireParticipantWithIdentifier:(int64_t)identifier delegate:(id)delegate
{
  delegateCopy = delegate;
  v7 = [[SBFZStackParticipant alloc] initWithIdentifier:identifier delegate:delegateCopy];

  [(SBFZStackResolver *)self _registerParticipant:v7];

  return v7;
}

- (NSArray)_registeredParticipants
{
  if (self)
  {
    v3 = self->_participants;
    highestZStackParticipant = self->_highestZStackParticipant;
  }

  else
  {
    v3 = 0;
    highestZStackParticipant = 0;
  }

  [(NSMutableArray *)v3 removeObject:highestZStackParticipant];
  v5 = [(NSMutableArray *)v3 copy];

  return v5;
}

BOOL __42__SBFZStackResolver__registerParticipant___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  return v5 < v6;
}

void __42__SBFZStackResolver__registerParticipant___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 zStackParticipantWithIdentifier:*(a1 + 40) wasAcquiredWithSettings:*(a1 + 32)];
  }
}

- (void)_enumerateObserversOfParticipantWithIdentifier:(void *)identifier withBlock:
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (self && identifierCopy)
  {
    v7 = *(self + 32);
    v8 = MEMORY[0x1E696AD98];
    v9 = v7;
    v10 = [v8 numberWithInteger:a2];
    v11 = [v9 objectForKey:v10];

    if (v11)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      allObjects = [v11 allObjects];
      v13 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v18;
        do
        {
          v16 = 0;
          do
          {
            if (*v18 != v15)
            {
              objc_enumerationMutation(allObjects);
            }

            v6[2](v6, *(*(&v17 + 1) + 8 * v16++));
          }

          while (v14 != v16);
          v14 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v14);
      }
    }
  }
}

void __44__SBFZStackResolver__unregisterParticipant___block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 zStackParticipantWithIdentifier:*(a1 + 40) settingsDidChange:*(a1 + 32)];
  }
}

void __44__SBFZStackResolver__unregisterParticipant___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 zStackParticipantWasInvalidated:*(a1 + 32)];
  }
}

void __39__SBFZStackResolver__updateResolutions__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = _SBFZStackParticipantIdentifierDescription([a3 identifier]);
  [v4 setObject:v6 forKey:v5];
}

void __85__SBFZStackResolver__updateResolutionsForAddedParticipant_removedParticipant_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 zStackParticipantWithIdentifier:*(a1 + 40) settingsDidChange:*(a1 + 32)];
  }
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  [streamCopy appendProem:self block:&__block_literal_global_99];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SBFZStackResolver_appendDescriptionToStream___block_invoke_2;
  v6[3] = &unk_1E807F290;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendBodySectionWithName:0 block:v6];
}

- (void)dealloc
{
  selfCopy = self;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (self)
  {
    self = self->_participants;
  }

  v3 = [(SBFZStackResolver *)self copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        OUTLINED_FUNCTION_11_0();
        if (v8 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SBFZStackResolver *)selfCopy _unregisterParticipant:?];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(BSInvalidatable *)selfCopy->_stateCaptureHandle invalidate];
  v9.receiver = selfCopy;
  v9.super_class = SBFZStackResolver;
  [(SBFZStackResolver *)&v9 dealloc];
}

- (uint64_t)participants
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)_unregisterParticipant:(uint64_t)participant
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (participant)
  {
    identifier = [v3 identifier];
    v6 = *(participant + 16);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __44__SBFZStackResolver__unregisterParticipant___block_invoke;
    v25[3] = &__block_descriptor_40_e30_B16__0__SBFZStackParticipant_8l;
    v25[4] = identifier;
    v7 = [v6 bs_firstObjectPassingTest:v25];
    if (v7 != v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__unregisterParticipant_ object:participant file:@"SBFZStackResolver.m" lineNumber:178 description:{@"Cannot unregister participant, because it isn't registered to begin with. Participant to unregister:%@, registered participants:%@", v4, *(participant + 16)}];
    }

    v8 = SBLogZStack();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = _SBFZStackParticipantIdentifierDescription([v4 identifier]);
      v26 = 138543362;
      v27 = v9;
      OUTLINED_FUNCTION_18();
      _os_log_impl(v10, v11, v12, v13, v14, v15);
    }

    [*(participant + 16) removeObject:v4];
    [v4 setResolver:0];
    v16 = MEMORY[0x1E696AEC0];
    v17 = _SBFZStackParticipantIdentifierDescription([v4 identifier]);
    v18 = [v16 stringWithFormat:@"remove(%@)", v17];
    [(SBFZStackResolver *)participant _updateResolutionsForAddedParticipant:v4 removedParticipant:v18 reason:?];

    if ([v4 ownsHomeGesture])
    {
      [v4 setOwnsHomeGesture:0];
      delegate = [v4 delegate];
      [delegate zStackParticipantDidChange:v4];

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __44__SBFZStackResolver__unregisterParticipant___block_invoke_41;
      v22[3] = &unk_1E807FF60;
      v24 = identifier;
      v23 = v4;
      [(SBFZStackResolver *)participant _enumerateObserversOfParticipantWithIdentifier:identifier withBlock:v22];
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __44__SBFZStackResolver__unregisterParticipant___block_invoke_2;
    v21[3] = &__block_descriptor_40_e40_v16__0___SBFZStackParticipantObserver__8l;
    v21[4] = identifier;
    [(SBFZStackResolver *)participant _enumerateObserversOfParticipantWithIdentifier:identifier withBlock:v21];
  }
}

- (void)_registerParticipant:(uint64_t)participant
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (participant)
  {
    identifier = [v3 identifier];
    v6 = *(participant + 16);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __42__SBFZStackResolver__registerParticipant___block_invoke;
    v23[3] = &__block_descriptor_40_e30_B16__0__SBFZStackParticipant_8l;
    v23[4] = identifier;
    v7 = [v6 bs_firstObjectPassingTest:v23];
    if (v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__registerParticipant_ object:participant file:@"SBFZStackResolver.m" lineNumber:150 description:{@"Cannot register participant, there's already a participant with the same identifier. Participant to register:%@, registered participants:%@", v4, *(participant + 16)}];
    }

    v8 = SBLogZStack();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = _SBFZStackParticipantIdentifierDescription([v4 identifier]);
      v24 = 138543362;
      v25 = v9;
      OUTLINED_FUNCTION_18();
      _os_log_impl(v10, v11, v12, v13, v14, v15);
    }

    [*(participant + 16) addObject:v4];
    [*(participant + 16) sortUsingComparator:&__block_literal_global_20];
    [v4 _updatePreferences];
    [v4 setResolver:participant];
    v16 = MEMORY[0x1E696AEC0];
    v17 = _SBFZStackParticipantIdentifierDescription([v4 identifier]);
    v18 = [v16 stringWithFormat:@"add(%@)", v17];
    [(SBFZStackResolver *)participant _updateResolutionsForAddedParticipant:v4 removedParticipant:0 reason:v18];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__SBFZStackResolver__registerParticipant___block_invoke_2;
    v20[3] = &unk_1E807FF60;
    v22 = identifier;
    v21 = v4;
    [(SBFZStackResolver *)participant _enumerateObserversOfParticipantWithIdentifier:identifier withBlock:v20];
  }
}

- (id)addObserver:(id)observer ofParticipantWithIdentifier:(int64_t)identifier
{
  observerCopy = observer;
  if (observerCopy)
  {
    if (self)
    {
LABEL_3:
      participantObservers = self->_participantObservers;
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBFZStackResolver.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"observer != nil"}];

    if (self)
    {
      goto LABEL_3;
    }
  }

  participantObservers = 0;
LABEL_4:
  v9 = participantObservers;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
  weakObjectsHashTable = [(NSMapTable *)v9 objectForKey:v10];

  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
    [(NSMapTable *)v9 setObject:weakObjectsHashTable forKey:v12];
  }

  [weakObjectsHashTable addObject:observerCopy];
  v13 = [(SBFZStackResolver *)self settingsOfParticipantWithIdentifier:identifier];

  return v13;
}

- (uint64_t)participantObservers
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)removeObserver:(id)observer ofParticipantWithIdentifier:(int64_t)identifier
{
  observerCopy = observer;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBFZStackResolver.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"observer != nil"}];

    if (self)
    {
      goto LABEL_3;
    }

LABEL_11:
    participantObservers = 0;
    goto LABEL_4;
  }

  if (!self)
  {
    goto LABEL_11;
  }

LABEL_3:
  participantObservers = self->_participantObservers;
LABEL_4:
  v8 = participantObservers;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
  v10 = [(NSMapTable *)v8 objectForKey:v9];

  if (v10)
  {
    [v10 removeObject:observerCopy];
    allObjects = [v10 allObjects];
    v12 = [allObjects count];

    if (!v12)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
      [(NSMapTable *)v8 removeObjectForKey:v13];
    }
  }
}

- (id)settingsOfParticipantWithIdentifier:(int64_t)identifier
{
  if (self)
  {
    self = self->_participants;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__SBFZStackResolver_settingsOfParticipantWithIdentifier___block_invoke;
  v5[3] = &__block_descriptor_40_e30_B16__0__SBFZStackParticipant_8l;
  v5[4] = identifier;
  v3 = [(SBFZStackResolver *)self bs_firstObjectPassingTest:v5];

  return v3;
}

- (uint64_t)highestZStackParticipant
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (void)_updateResolutionsForAddedParticipant:(void *)participant removedParticipant:(void *)removedParticipant reason:
{
  v213 = *MEMORY[0x1E69E9840];
  v8 = a2;
  participantCopy = participant;
  removedParticipantCopy = removedParticipant;
  if (!self)
  {
    goto LABEL_172;
  }

  v11 = *(self + 16);
  v12 = v8;
  v165 = participantCopy;
  if (v8 || (v12 = participantCopy) != 0)
  {
    v187 = v12;
  }

  else
  {
    v187 = 0;
  }

  v164 = removedParticipantCopy;
  physicalButtonSceneTargets = objc_alloc_init(MEMORY[0x1E695DF90]);
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v195 objects:v208 count:16];
  if (v15)
  {
    v16 = v15;
    removedParticipantCopy = *v196;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v196 != removedParticipantCopy)
        {
          objc_enumerationMutation(v14);
        }

        v17 = *(*(&v195 + 1) + 8 * i);
        v18 = _SBFZStackParticipantIdentifierDescription([v17 identifier]);
        [v17 copy];
        [OUTLINED_FUNCTION_12() setObject:? forKey:?];
      }

      v16 = [v14 countByEnumeratingWithState:&v195 objects:v208 count:16];
    }

    while (v16);
  }

  selfCopy = self;
  [(SBFZStackResolver *)self _updateResolutions];
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  obj = v194 = 0u;
  v19 = [obj countByEnumeratingWithState:&v191 objects:v207 count:16];
  if (v19)
  {
    v20 = v19;
    removedParticipantCopy = *v192;
    i = v190;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v192 != removedParticipantCopy)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v191 + 1) + 8 * j);
        if (v22 != v187)
        {
          delegate = [*(*(&v191 + 1) + 8 * j) delegate];
          [delegate zStackParticipantDidChange:v22];

          identifier = [v22 identifier];
          v190[0] = MEMORY[0x1E69E9820];
          v190[1] = 3221225472;
          v190[2] = __85__SBFZStackResolver__updateResolutionsForAddedParticipant_removedParticipant_reason___block_invoke;
          v190[3] = &unk_1E807FF60;
          v190[4] = v22;
          v190[5] = identifier;
          [(SBFZStackResolver *)self _enumerateObserversOfParticipantWithIdentifier:identifier withBlock:v190];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v191 objects:v207 count:16];
    }

    while (v20);
  }

  if ([obj count] < 2)
  {
    v131 = SBLogZStack();
    removedParticipantCopy = v164;
    participantCopy = v165;
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v211 = v164;
      OUTLINED_FUNCTION_18();
      _os_log_impl(v132, v133, v134, v135, v136, v137);
    }

    i = v14;
    goto LABEL_171;
  }

  v25 = *(self + 24);
  v167 = physicalButtonSceneTargets;
  v26 = v25;
  v168 = v8;
  v186 = objc_alloc_init(MEMORY[0x1E698E6F8]);
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  v163 = v26;
  bs_reverse = [v26 bs_reverse];
  v27 = 0x1E696A000uLL;
  v170 = v8;
  v171 = [bs_reverse countByEnumeratingWithState:&v203 objects:buf count:16];
  if (!v171)
  {
    v174 = 0;
    goto LABEL_157;
  }

  v174 = 0;
  v169 = *v204;
  do
  {
    v28 = 0;
    do
    {
      if (*v204 != v169)
      {
        objc_enumerationMutation(bs_reverse);
      }

      v185 = v28;
      v29 = *(*(&v203 + 1) + 8 * v28);
      identifier2 = [v29 identifier];
      v31 = _SBFZStackParticipantIdentifierDescription(identifier2);
      if (v8 && identifier2 == [v168 identifier])
      {
        v32 = v168;
        v33 = @"++";
      }

      else
      {
        v32 = [v167 objectForKey:v31];
        v33 = &stru_1F3D19FF0;
      }

      v183 = v33;
      v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
      ownsHomeGesture = [v29 ownsHomeGesture];
      ownsHomeGesture2 = [v32 ownsHomeGesture];
      v184 = v31;
      if (ownsHomeGesture == ownsHomeGesture2)
      {
        if (ownsHomeGesture)
        {
          [v34 addObject:@"ownsHomeGesture"];
        }
      }

      else
      {
        v37 = MEMORY[0x1E696AEC0];
        if (ownsHomeGesture2)
        {
          v38 = @"Y";
        }

        else
        {
          v38 = @"N";
        }

        v39 = v38;
        [OUTLINED_FUNCTION_17() stringWithFormat:@"ownsHomeGesture: %@->%@"];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_12() addObject:?];
      }

      [v29 activationState];
      activationState = [OUTLINED_FUNCTION_26() activationState];
      if (ownsHomeGesture > 2)
      {
        v41 = 0;
      }

      else
      {
        v41 = off_1E8080158[ownsHomeGesture];
      }

      if (ownsHomeGesture == activationState)
      {
        [v34 addObject:v41];
      }

      else
      {
        if (activationState > 2)
        {
          v42 = 0;
        }

        else
        {
          v42 = off_1E8080158[activationState];
        }

        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@->%@", v42, v41];
        [v34 addObject:v43];
      }

      homeAffordanceDrawingSuppressed = [v29 homeAffordanceDrawingSuppressed];
      homeAffordanceDrawingSuppressed2 = [v32 homeAffordanceDrawingSuppressed];
      if (homeAffordanceDrawingSuppressed == homeAffordanceDrawingSuppressed2)
      {
        if (homeAffordanceDrawingSuppressed)
        {
          [v34 addObject:@"homeAffordanceDrawingSuppressed"];
        }
      }

      else
      {
        v46 = MEMORY[0x1E696AEC0];
        if (homeAffordanceDrawingSuppressed2)
        {
          v47 = @"Y";
        }

        else
        {
          v47 = @"N";
        }

        v48 = v47;
        [OUTLINED_FUNCTION_17() stringWithFormat:@"homeAffordanceDrawingSuppressed: %@->%@"];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_12() addObject:?];
      }

      systemApertureSuppressedForSystemChromeSuppression = [v29 systemApertureSuppressedForSystemChromeSuppression];
      systemApertureSuppressedForSystemChromeSuppression2 = [v32 systemApertureSuppressedForSystemChromeSuppression];
      if (systemApertureSuppressedForSystemChromeSuppression == systemApertureSuppressedForSystemChromeSuppression2)
      {
        if (systemApertureSuppressedForSystemChromeSuppression)
        {
          [v34 addObject:@"systemApertureSuppressed"];
        }
      }

      else
      {
        v51 = MEMORY[0x1E696AEC0];
        if (systemApertureSuppressedForSystemChromeSuppression2)
        {
          v52 = @"Y";
        }

        else
        {
          v52 = @"N";
        }

        v53 = v52;
        [OUTLINED_FUNCTION_17() stringWithFormat:@"systemApertureSuppressed: %@->%@"];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_12() addObject:?];
      }

      [v29 associatedBundleIdentifiersToSuppressInSystemAperture];
      objc_claimAutoreleasedReturnValue();
      associatedBundleIdentifiersToSuppressInSystemAperture = [OUTLINED_FUNCTION_26() associatedBundleIdentifiersToSuppressInSystemAperture];
      v189 = systemApertureSuppressedForSystemChromeSuppression;
      v182 = associatedBundleIdentifiersToSuppressInSystemAperture;
      if (BSEqualSets())
      {
        if (![systemApertureSuppressedForSystemChromeSuppression count])
        {
          goto LABEL_73;
        }

        allObjects = [systemApertureSuppressedForSystemChromeSuppression allObjects];
        v56 = [allObjects componentsJoinedByString:{@", "}];

        v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"suppressedBundles: %@", v56];
      }

      else
      {
        allObjects2 = [associatedBundleIdentifiersToSuppressInSystemAperture allObjects];
        v59 = [allObjects2 componentsJoinedByString:{@", "}];
        v60 = v59;
        if (v59)
        {
          v61 = v59;
        }

        else
        {
          v61 = @"(none)";
        }

        v56 = v61;

        allObjects3 = [systemApertureSuppressedForSystemChromeSuppression allObjects];
        v63 = [allObjects3 componentsJoinedByString:{@", "}];
        v64 = v63;
        if (v63)
        {
          v65 = v63;
        }

        else
        {
          v65 = @"(none)";
        }

        v66 = v65;

        v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"suppressedBundles: %@->%@", v56, v66];
      }

      [v34 addObject:v57];

LABEL_73:
      associatedSceneIdentifiersToSuppressInSystemAperture = [v29 associatedSceneIdentifiersToSuppressInSystemAperture];
      associatedSceneIdentifiersToSuppressInSystemAperture2 = [v32 associatedSceneIdentifiersToSuppressInSystemAperture];
      v188 = associatedSceneIdentifiersToSuppressInSystemAperture;
      v181 = associatedSceneIdentifiersToSuppressInSystemAperture2;
      if (BSEqualSets())
      {
        v69 = v34;
        if (![associatedSceneIdentifiersToSuppressInSystemAperture count])
        {
          goto LABEL_78;
        }

        [associatedSceneIdentifiersToSuppressInSystemAperture count];
        v70 = [OUTLINED_FUNCTION_23() stringWithFormat:@"suppressedScenes: %d"];
      }

      else
      {
        v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"suppressedScenes: %d->%d", objc_msgSend(associatedSceneIdentifiersToSuppressInSystemAperture2, "count"), objc_msgSend(associatedSceneIdentifiersToSuppressInSystemAperture, "count")];
        v69 = v34;
      }

      [v69 addObject:v70];

LABEL_78:
      physicalButtonSceneTargets = [v29 physicalButtonSceneTargets];
      physicalButtonSceneTargets2 = [v32 physicalButtonSceneTargets];
      v180 = physicalButtonSceneTargets2;
      if (BSEqualArrays())
      {
        if (![physicalButtonSceneTargets count])
        {
          goto LABEL_83;
        }

        v72 = MEMORY[0x1E696AEC0];
        [physicalButtonSceneTargets count];
        v73 = OUTLINED_FUNCTION_23();
        v74 = @"physicalButtonTargets: %lu";
      }

      else
      {
        v72 = [physicalButtonSceneTargets2 count];
        [physicalButtonSceneTargets count];
        v73 = OUTLINED_FUNCTION_15();
        v74 = @"physicalButtonTargets: %lu->%lu";
      }

      v75 = [v73 stringWithFormat:v74];
      OUTLINED_FUNCTION_21(v75);

LABEL_83:
      captureButtonFullFidelityEventRequestingScenes = [v29 captureButtonFullFidelityEventRequestingScenes];
      captureButtonFullFidelityEventRequestingScenes2 = [v32 captureButtonFullFidelityEventRequestingScenes];
      v178 = captureButtonFullFidelityEventRequestingScenes2;
      if (BSEqualArrays())
      {
        if (![captureButtonFullFidelityEventRequestingScenes count])
        {
          goto LABEL_88;
        }

        v78 = MEMORY[0x1E696AEC0];
        [captureButtonFullFidelityEventRequestingScenes count];
        v79 = OUTLINED_FUNCTION_23();
        v80 = @"captureButtonScenes: %lu";
      }

      else
      {
        v78 = [captureButtonFullFidelityEventRequestingScenes2 count];
        [captureButtonFullFidelityEventRequestingScenes count];
        v79 = OUTLINED_FUNCTION_15();
        v80 = @"captureButtonScenes: %lu->%lu";
      }

      v81 = [v79 stringWithFormat:v80];
      OUTLINED_FUNCTION_21(v81);

LABEL_88:
      foregroundCaptureSceneTargets = [v29 foregroundCaptureSceneTargets];
      foregroundCaptureSceneTargets2 = [v32 foregroundCaptureSceneTargets];
      v176 = foregroundCaptureSceneTargets2;
      if (BSEqualArrays())
      {
        if (![foregroundCaptureSceneTargets count])
        {
          goto LABEL_93;
        }

        foregroundCaptureSceneTargets2 = MEMORY[0x1E696AEC0];
        [foregroundCaptureSceneTargets count];
        v84 = OUTLINED_FUNCTION_23();
        v85 = @"fgCaptureButtonTargets: %lu";
      }

      else
      {
        foregroundCaptureSceneTargets2 = [foregroundCaptureSceneTargets2 count];
        [foregroundCaptureSceneTargets count];
        v84 = OUTLINED_FUNCTION_15();
        v85 = @"fgCaptureButtonTargets: %lu->%lu";
      }

      v86 = [v84 stringWithFormat:v85];
      OUTLINED_FUNCTION_21(v86);

LABEL_93:
      v179 = captureButtonFullFidelityEventRequestingScenes;
      [v29 audioCategoriesDisablingVolumeHUD];
      objc_claimAutoreleasedReturnValue();
      audioCategoriesDisablingVolumeHUD = [OUTLINED_FUNCTION_26() audioCategoriesDisablingVolumeHUD];
      v177 = foregroundCaptureSceneTargets;
      v175 = audioCategoriesDisablingVolumeHUD;
      if (BSEqualSets())
      {
        if (![foregroundCaptureSceneTargets2 count])
        {
          goto LABEL_104;
        }

        allObjects4 = [foregroundCaptureSceneTargets2 allObjects];
        v89 = [allObjects4 componentsJoinedByString:{@", "}];

        v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"audioCategories: %@", v89];
      }

      else
      {
        allObjects5 = [audioCategoriesDisablingVolumeHUD allObjects];
        v92 = [allObjects5 componentsJoinedByString:{@", "}];
        v93 = v92;
        if (v92)
        {
          v94 = v92;
        }

        else
        {
          v94 = @"(none)";
        }

        v89 = v94;

        allObjects6 = [foregroundCaptureSceneTargets2 allObjects];
        v96 = [allObjects6 componentsJoinedByString:{@", "}];
        v97 = v96;
        if (v96)
        {
          v98 = v96;
        }

        else
        {
          v98 = @"(none)";
        }

        v99 = v98;

        v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"audioCategories: %@->%@", v89, v99];
      }

      [v69 addObject:v90];

LABEL_104:
      participantBelowAllowsDimming = [v29 participantBelowAllowsDimming];
      participantBelowAllowsDimming2 = [v32 participantBelowAllowsDimming];
      if (participantBelowAllowsDimming == participantBelowAllowsDimming2)
      {
        if (participantBelowAllowsDimming)
        {
          [v69 addObject:@"belowAllowsDimming"];
        }
      }

      else
      {
        v102 = MEMORY[0x1E696AEC0];
        if (participantBelowAllowsDimming2)
        {
          v103 = @"Y";
        }

        else
        {
          v103 = @"N";
        }

        if (participantBelowAllowsDimming)
        {
          v104 = @"Y";
        }

        else
        {
          v104 = @"N";
        }

        v105 = v103;
        v104 = [v102 stringWithFormat:@"belowAllowsDimming: %@->%@", v105, v104];
        [v69 addObject:v104];
      }

      allowsKeyboardArbiterToDetermineFocusTarget = [v29 allowsKeyboardArbiterToDetermineFocusTarget];
      allowsKeyboardArbiterToDetermineFocusTarget2 = [v32 allowsKeyboardArbiterToDetermineFocusTarget];
      if (allowsKeyboardArbiterToDetermineFocusTarget == allowsKeyboardArbiterToDetermineFocusTarget2)
      {
        if (allowsKeyboardArbiterToDetermineFocusTarget)
        {
          [v69 addObject:@"keyboardArbiter"];
        }
      }

      else
      {
        v109 = MEMORY[0x1E696AEC0];
        if (allowsKeyboardArbiterToDetermineFocusTarget2)
        {
          v110 = @"Y";
        }

        else
        {
          v110 = @"N";
        }

        if (allowsKeyboardArbiterToDetermineFocusTarget)
        {
          v111 = @"Y";
        }

        else
        {
          v111 = @"N";
        }

        v112 = v110;
        v111 = [v109 stringWithFormat:@"keyboardArbiter: %@->%@", v112, v111];
        [v69 addObject:v111];
      }

      overrideKeyboardFocusTarget = [v29 overrideKeyboardFocusTarget];
      i = [v32 overrideKeyboardFocusTarget];
      if (BSEqualObjects())
      {
        if (overrideKeyboardFocusTarget)
        {
          [v69 addObject:@"overrideKeyboardTarget"];
        }
      }

      else
      {
        v115 = MEMORY[0x1E696AEC0];
        if (i)
        {
          v116 = @"Y";
        }

        else
        {
          v116 = @"N";
        }

        if (overrideKeyboardFocusTarget)
        {
          v117 = @"Y";
        }

        else
        {
          v117 = @"N";
        }

        v118 = v116;
        v117 = [v115 stringWithFormat:@"overrideKeyboardTarget: %@->%@", v118, v117];
        [v69 addObject:v117];
      }

      allowCameraButtonDeferringWhileFocusLocked = [v29 allowCameraButtonDeferringWhileFocusLocked];
      allowCameraButtonDeferringWhileFocusLocked2 = [v32 allowCameraButtonDeferringWhileFocusLocked];
      if (allowCameraButtonDeferringWhileFocusLocked == allowCameraButtonDeferringWhileFocusLocked2)
      {
        v127 = v174;
        if (allowCameraButtonDeferringWhileFocusLocked)
        {
          [v69 addObject:@"allowCameraButtonDeferringWhileFocusLocked"];
        }
      }

      else
      {
        v122 = MEMORY[0x1E696AEC0];
        if (allowCameraButtonDeferringWhileFocusLocked2)
        {
          v123 = @"Y";
        }

        else
        {
          v123 = @"N";
        }

        if (allowCameraButtonDeferringWhileFocusLocked)
        {
          v124 = @"Y";
        }

        else
        {
          v124 = @"N";
        }

        v125 = v123;
        v124 = [v122 stringWithFormat:@"allowCameraButtonDeferringWhileFocusLocked: %@->%@", v125, v124];
        [v69 addObject:v124];

        v127 = v174;
      }

      if ([v69 count])
      {
        v128 = [v69 componentsJoinedByString:@" "];;
      }

      else
      {
        v128 = @"no changes";
      }

      v27 = 0x1E696A000uLL;
      if (([(__CFString *)v128 isEqual:v127]& 1) != 0)
      {
        v129 = @"⬇ ";
      }

      else
      {
        v129 = v128;
        v128 = v127;
        v174 = v129;
      }

      removedParticipantCopy = v184;
      v184 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@:", v183, v184];
      [v186 setObject:v129 forKey:v184];

      v28 = v185 + 1;
      v8 = v170;
    }

    while (v171 != v185 + 1);
    v171 = [bs_reverse countByEnumeratingWithState:&v203 objects:buf count:16];
  }

  while (v171);
LABEL_157:

  v138 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  allKeys = [v186 allKeys];
  bs_reverse2 = [allKeys bs_reverse];

  v143 = OUTLINED_FUNCTION_19(v141, v142, &v199, v209);
  if (v143)
  {
    removedParticipantCopy = v143;
    v144 = *v200;
    do
    {
      for (k = 0; k != removedParticipantCopy; k = k + 1)
      {
        if (*v200 != v144)
        {
          objc_enumerationMutation(bs_reverse2);
        }

        v146 = *(*(&v199 + 1) + 8 * k);
        v147 = *(v27 + 3776);
        v148 = [v186 objectForKey:v146];
        i = [v147 stringWithFormat:@"%@ %@", v146, v148];

        v27 = 0x1E696A000;
        [v138 addObject:i];
      }

      removedParticipantCopy = OUTLINED_FUNCTION_19(v149, v150, &v199, v209);
    }

    while (removedParticipantCopy);
  }

  participantCopy = [MEMORY[0x1E698E688] descriptionForRootObject:v138];
  v131 = [participantCopy stringByReplacingOccurrencesOfString:@"com.apple." withString:&stru_1F3D19FF0];

  if (BSEqualStrings())
  {
    v152 = SBLogZStack();
    os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_24();
    if (v154)
    {
      *buf = 138543362;
      *(v153 + 4) = removedParticipantCopy;
      OUTLINED_FUNCTION_18();
      goto LABEL_169;
    }
  }

  else
  {
    objc_setProperty_nonatomic_copy(selfCopy, v151, v131, 48);
    v152 = SBLogZStack();
    os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_24();
    if (v162)
    {
      *buf = 138543618;
      *(v161 + 4) = removedParticipantCopy;
      v212 = 2114;
      *(v161 + 14) = v131;
      v155 = &dword_1BEA11000;
      v158 = "Resolved Stack (%{public}@) %{public}@";
      v159 = buf;
      v156 = v152;
      v157 = OS_LOG_TYPE_DEFAULT;
      v160 = 22;
LABEL_169:
      _os_log_impl(v155, v156, v157, v158, v159, v160);
    }
  }

  v8 = v170;

LABEL_171:
LABEL_172:
}

- (void)_setNeedsUpdateFromParticipant:(uint64_t)participant
{
  if (participant)
  {
    v3 = MEMORY[0x1E696AEC0];
    v5 = _SBFZStackParticipantIdentifierDescription([a2 identifier]);
    v4 = [v3 stringWithFormat:@"update(%@)", v5];
    [(SBFZStackResolver *)participant _updateResolutionsForAddedParticipant:0 removedParticipant:v4 reason:?];
  }
}

- (void)_resolveActivationStateOfSortedParticipants:(int)participants changedHandler:(int)handler prevailingHandler:(int)prevailingHandler
{
  OUTLINED_FUNCTION_27();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v51;
  if (v55)
  {
    [v53 reverseObjectEnumerator];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_13();
    obja = v59;
    v60 = [v59 countByEnumeratingWithState:? objects:? count:?];
    if (!v60)
    {
      goto LABEL_20;
    }

    v61 = v60;
    v62 = 0;
    v63 = 0;
    v64 = *a15;
    while (1)
    {
      for (i = 0; i != v61; ++i)
      {
        if (*a15 != v64)
        {
          objc_enumerationMutation(obja);
        }

        v66 = *(a14 + 8 * i);
        if ([v66 activationState] != v62)
        {
          v57[2](v57, v66);
          [v66 setActivationState:v62];
        }

        preferences = [v66 preferences];
        activationPolicyForParticipantsBelow = [preferences activationPolicyForParticipantsBelow];
        v69 = activationPolicyForParticipantsBelow;
        if (activationPolicyForParticipantsBelow == 2)
        {
          if ((v62 > 1) | v63 & 1)
          {
            v62 = 2;
            goto LABEL_18;
          }

LABEL_17:
          v71 = OUTLINED_FUNCTION_9();
          v72(v71, @"activationState", v66);
          v63 = 1;
          v62 = v69;
          goto LABEL_18;
        }

        if (activationPolicyForParticipantsBelow == 1)
        {
          v70 = (v62 != 0) | v63;
          if (!v62)
          {
            v62 = 1;
          }

          if ((v70 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

LABEL_18:
      }

      OUTLINED_FUNCTION_13();
      v61 = [obja countByEnumeratingWithState:? objects:? count:?];
      if (!v61)
      {
LABEL_20:

        break;
      }
    }
  }

  OUTLINED_FUNCTION_28();
}

- (void)_resolveHomeGestureOwnershipOfSortedParticipants:(int)participants changedHandler:(int)handler prevailingHandler:(int)prevailingHandler
{
  OUTLINED_FUNCTION_8();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v46;
  if (v50)
  {
    [v48 reverseObjectEnumerator];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_5();
    obja = v54;
    if (![v54 countByEnumeratingWithState:? objects:? count:?])
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_6();
    v56 = *v55;
    while (1)
    {
      for (i = 0; i != v50; ++i)
      {
        OUTLINED_FUNCTION_11_0();
        if (v58 != v56)
        {
          objc_enumerationMutation(obja);
        }

        v59 = *(8 * i);
        preferences = [v59 preferences];
        if (((v44 ^ [v59 ownsHomeGesture]) & 1) == 0)
        {
          v52[2](v52, v59);
          [v59 setOwnsHomeGesture:!v44];
        }

        homeGestureConsumption = [preferences homeGestureConsumption];
        if (homeGestureConsumption == 1)
        {
          v64 = OUTLINED_FUNCTION_9();
          v65(v64, @"ownsHomeGesture", v59);
        }

        else
        {
          if (homeGestureConsumption)
          {
            goto LABEL_15;
          }

          if (!v44)
          {
            v62 = OUTLINED_FUNCTION_9();
            v63(v62, @"ownsHomeGesture", v59);
            v44 = [preferences activationPolicyForParticipantsBelow] != 0;
            goto LABEL_15;
          }
        }

        v44 = 1;
LABEL_15:
      }

      v50 = OUTLINED_FUNCTION_3(v66, v67);
      if (!v50)
      {
LABEL_17:

        break;
      }
    }
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)_resolveSystemApertureSuppressionOfSortedParticipants:(void *)participants changedHandler:(void *)handler prevailingHandler:
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a2;
  participantsCopy = participants;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (self)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = OUTLINED_FUNCTION_29(handlerCopy, v9, &v42, v46);
    v11 = 0;
    v12 = 0;
    if (!v41)
    {
      goto LABEL_30;
    }

    v13 = 0;
    v40 = *v43;
    obj = v7;
    while (1)
    {
      v14 = 0;
      associatedSceneIdentifiersToSuppressInSystemAperture2 = v12;
      do
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v42 + 1) + 8 * v14);
        activationState = [v16 activationState];
        activationState2 = [v16 activationState];
        preferences = [v16 preferences];
        v20 = preferences;
        if (activationState)
        {
          v13 = 0;
        }

        else
        {
          v13 |= [preferences suppressSystemApertureForSystemChromeSuppression];
        }

        if (activationState2 == 2)
        {
          if (v11)
          {

            v21 = OUTLINED_FUNCTION_4();
            v22(v21, @"associatedSceneIdentifiersToSuppressInSystemAperture", v16);
          }

          v23 = 0;
          v12 = 0;
          v11 = 0;
          v24 = @"associatedBundleIdentifiersToSuppressInSystemAperture";
          if (associatedSceneIdentifiersToSuppressInSystemAperture2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          associatedBundleIdentifiersToSuppressInSystemAperture = [v20 associatedBundleIdentifiersToSuppressInSystemAperture];
          v26 = [associatedBundleIdentifiersToSuppressInSystemAperture count];

          if (v26)
          {
            if (!associatedSceneIdentifiersToSuppressInSystemAperture2)
            {
              associatedSceneIdentifiersToSuppressInSystemAperture2 = [MEMORY[0x1E695DFA8] set];
            }

            [v20 associatedBundleIdentifiersToSuppressInSystemAperture];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_26() unionSet:associatedBundleIdentifiersToSuppressInSystemAperture];

            v27 = OUTLINED_FUNCTION_4();
            v28(v27, @"associatedBundleIdentifiersToSuppressInSystemAperture", v16);
          }

          v12 = associatedSceneIdentifiersToSuppressInSystemAperture2;
          associatedSceneIdentifiersToSuppressInSystemAperture = [v20 associatedSceneIdentifiersToSuppressInSystemAperture];
          v30 = [associatedSceneIdentifiersToSuppressInSystemAperture count];

          if (v30)
          {
            if (!v11)
            {
              v11 = [MEMORY[0x1E695DFA8] set];
            }

            associatedSceneIdentifiersToSuppressInSystemAperture2 = [v20 associatedSceneIdentifiersToSuppressInSystemAperture];
            [v11 unionSet:associatedSceneIdentifiersToSuppressInSystemAperture2];
            v24 = @"associatedSceneIdentifiersToSuppressInSystemAperture";
            v23 = v11;
LABEL_23:

            v31 = OUTLINED_FUNCTION_4();
            v32(v31, v24, v16);
            v11 = v23;
          }
        }

        systemApertureSuppressedForSystemChromeSuppression = [v16 systemApertureSuppressedForSystemChromeSuppression];
        associatedBundleIdentifiersToSuppressInSystemAperture2 = [v16 associatedBundleIdentifiersToSuppressInSystemAperture];
        associatedSceneIdentifiersToSuppressInSystemAperture3 = [v16 associatedSceneIdentifiersToSuppressInSystemAperture];
        if (!BSEqualSets() || !BSEqualSets() || ((v13 ^ systemApertureSuppressedForSystemChromeSuppression) & 1) != 0)
        {
          participantsCopy[2](participantsCopy, v16);
          [v16 setSystemApertureSuppressedForSystemChromeSuppression:v13 & 1];
          [v16 setAssociatedSceneIdentifiersToSuppressInSystemAperture:v11];
          [v16 setAssociatedBundleIdentifiersToSuppressInSystemAperture:v12];
        }

        ++v14;
        associatedSceneIdentifiersToSuppressInSystemAperture2 = v12;
      }

      while (v41 != v14);
      v7 = obj;
      v41 = OUTLINED_FUNCTION_29(v36, v37, &v42, v46);
      if (!v41)
      {
LABEL_30:

        break;
      }
    }
  }
}

- (void)_resolveAudioCategoriesDisablingVolumeHUDOfSortedParticipants:(uint64_t)participants changedHandler:(uint64_t)handler prevailingHandler:(uint64_t)prevailingHandler
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  v19 = v18;
  v36 = v15;
  v20 = v16;
  if (v17)
  {
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_13();
    v21 = [v19 countByEnumeratingWithState:? objects:? count:?];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = *a15;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*a15 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(a14 + 8 * i);
          if ([v26 activationState] == 2)
          {
            if (v23)
            {

              v27 = OUTLINED_FUNCTION_4();
              v28(v27, @"audioCategoriesDisablingVolumeHUD", v26);
              v23 = 0;
            }
          }

          else
          {
            preferences = [v26 preferences];
            [preferences audioCategoriesDisablingVolumeHUD];
            v31 = v30 = v19;
            v32 = SBFAudioCategoriesDisablingVolumeHUDUnion(v23, v31);

            v19 = v30;
            v33 = OUTLINED_FUNCTION_4();
            v34(v33, @"audioCategoriesDisablingVolumeHUD", v26);

            v23 = v32;
          }

          audioCategoriesDisablingVolumeHUD = [v26 audioCategoriesDisablingVolumeHUD];
          if ((BSEqualSets() & 1) == 0)
          {
            v36[2](v36, v26);
            [v26 setAudioCategoriesDisablingVolumeHUD:v23];
          }
        }

        OUTLINED_FUNCTION_13();
        v22 = [v19 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v22);
    }
  }

  OUTLINED_FUNCTION_28();
}

- (void)_resolveOverrideKeyboardFocusTargetOfSortedParticipants:(int)participants changedHandler:(int)handler prevailingHandler:(int)prevailingHandler
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  v54 = v53;
  v74 = v50;
  v55 = v51;
  if (v52)
  {
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_13();
    obja = v54;
    v60 = OUTLINED_FUNCTION_19(v56, v57, v58, v59);
    if (!v60)
    {
      v62 = 0;
      goto LABEL_18;
    }

    v61 = v60;
    v62 = 0;
    v63 = *a15;
    while (1)
    {
      for (i = 0; i != v61; ++i)
      {
        if (*a15 != v63)
        {
          objc_enumerationMutation(obja);
        }

        v65 = *(a14 + 8 * i);
        preferences = [v65 preferences];
        activationPolicyForParticipantsBelow = [preferences activationPolicyForParticipantsBelow];
        overrideKeyboardFocusTarget = [preferences overrideKeyboardFocusTarget];
        v69 = overrideKeyboardFocusTarget;
        if (overrideKeyboardFocusTarget)
        {
          v70 = overrideKeyboardFocusTarget;
        }

        else
        {
          if (!activationPolicyForParticipantsBelow)
          {
            goto LABEL_12;
          }

          v70 = 0;
        }

        v71 = OUTLINED_FUNCTION_4();
        v72(v71, @"overrideKeyboardFocusTarget", v65);
        v62 = v70;
LABEL_12:
        overrideKeyboardFocusTarget2 = [v65 overrideKeyboardFocusTarget];
        if ((BSEqualObjects() & 1) == 0)
        {
          v74[2](v74, v65);
          [v65 setOverrideKeyboardFocusTarget:v62];
        }
      }

      OUTLINED_FUNCTION_13();
      v61 = [obja countByEnumeratingWithState:? objects:? count:?];
      if (!v61)
      {
LABEL_18:

        v54 = obja;
        break;
      }
    }
  }

  OUTLINED_FUNCTION_28();
}

- (void)setResolvedStackDescription:(void *)description
{
  if (description)
  {
    objc_setProperty_nonatomic_copy(description, newValue, newValue, 48);
  }
}

- (id)succinctDescription
{
  selfCopy = self;
  if (self)
  {
    v2 = MEMORY[0x1E698E688];
    succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
    selfCopy = [v2 descriptionForRootObject:selfCopy withStyle:succinctStyle];
  }

  return selfCopy;
}

id __47__SBFZStackResolver_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  return [v2 appendObject:v4 withName:@"participants"];
}

- (uint64_t)stateCaptureHandle
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (void)setStateCaptureHandle:(uint64_t)handle
{
  if (handle)
  {
    objc_storeStrong((handle + 8), a2);
  }
}

- (void)setParticipants:(uint64_t)participants
{
  if (participants)
  {
    objc_storeStrong((participants + 16), a2);
  }
}

- (uint64_t)sortedParticipants
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)setSortedParticipants:(uint64_t)participants
{
  if (participants)
  {
    objc_storeStrong((participants + 24), a2);
  }
}

- (void)setParticipantObservers:(uint64_t)observers
{
  if (observers)
  {
    objc_storeStrong((observers + 32), a2);
  }
}

- (void)setHighestZStackParticipant:(uint64_t)participant
{
  if (participant)
  {
    objc_storeStrong((participant + 40), a2);
  }
}

- (uint64_t)resolvedStackDescription
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

@end