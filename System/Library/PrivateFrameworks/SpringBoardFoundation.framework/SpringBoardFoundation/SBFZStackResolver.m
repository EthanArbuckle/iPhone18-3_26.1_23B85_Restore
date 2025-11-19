@interface SBFZStackResolver
- (NSArray)_registeredParticipants;
- (NSString)debugDescription;
- (SBFZStackResolver)init;
- (id)acquireParticipantWithIdentifier:(int64_t)a3 delegate:(id)a4;
- (id)addObserver:(id)a3 ofParticipantWithIdentifier:(int64_t)a4;
- (id)settingsOfParticipantWithIdentifier:(int64_t)a3;
- (id)succinctDescription;
- (uint64_t)highestZStackParticipant;
- (uint64_t)participantObservers;
- (uint64_t)participants;
- (uint64_t)resolvedStackDescription;
- (uint64_t)sortedParticipants;
- (uint64_t)stateCaptureHandle;
- (void)_enumerateObserversOfParticipantWithIdentifier:(void *)a3 withBlock:;
- (void)_registerParticipant:(uint64_t)a1;
- (void)_resolveActivationStateOfSortedParticipants:(int)a3 changedHandler:(int)a4 prevailingHandler:(int)a5;
- (void)_resolveAudioCategoriesDisablingVolumeHUDOfSortedParticipants:(uint64_t)a3 changedHandler:(uint64_t)a4 prevailingHandler:(uint64_t)a5;
- (void)_resolveHomeGestureOwnershipOfSortedParticipants:(int)a3 changedHandler:(int)a4 prevailingHandler:(int)a5;
- (void)_resolveOverrideKeyboardFocusTargetOfSortedParticipants:(int)a3 changedHandler:(int)a4 prevailingHandler:(int)a5;
- (void)_resolveSystemApertureSuppressionOfSortedParticipants:(void *)a3 changedHandler:(void *)a4 prevailingHandler:;
- (void)_setNeedsUpdateFromParticipant:(uint64_t)a1;
- (void)_unregisterParticipant:(uint64_t)a1;
- (void)_updateResolutionsForAddedParticipant:(void *)a3 removedParticipant:(void *)a4 reason:;
- (void)appendDescriptionToStream:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3 ofParticipantWithIdentifier:(int64_t)a4;
- (void)setHighestZStackParticipant:(uint64_t)a1;
- (void)setParticipantObservers:(uint64_t)a1;
- (void)setParticipants:(uint64_t)a1;
- (void)setResolvedStackDescription:(void *)a1;
- (void)setSortedParticipants:(uint64_t)a1;
- (void)setStateCaptureHandle:(uint64_t)a1;
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

    v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    participantObservers = v2->_participantObservers;
    v2->_participantObservers = v5;

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

- (id)acquireParticipantWithIdentifier:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = [[SBFZStackParticipant alloc] initWithIdentifier:a3 delegate:v6];

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

- (void)_enumerateObserversOfParticipantWithIdentifier:(void *)a3 withBlock:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a1 && v5)
  {
    v7 = *(a1 + 32);
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
      v12 = [v11 allObjects];
      v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
              objc_enumerationMutation(v12);
            }

            v6[2](v6, *(*(&v17 + 1) + 8 * v16++));
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  [v4 appendProem:self block:&__block_literal_global_99];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SBFZStackResolver_appendDescriptionToStream___block_invoke_2;
  v6[3] = &unk_1E807F290;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendBodySectionWithName:0 block:v6];
}

- (void)dealloc
{
  v2 = self;
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

        [(SBFZStackResolver *)v2 _unregisterParticipant:?];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(BSInvalidatable *)v2->_stateCaptureHandle invalidate];
  v9.receiver = v2;
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

- (void)_unregisterParticipant:(uint64_t)a1
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 identifier];
    v6 = *(a1 + 16);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __44__SBFZStackResolver__unregisterParticipant___block_invoke;
    v25[3] = &__block_descriptor_40_e30_B16__0__SBFZStackParticipant_8l;
    v25[4] = v5;
    v7 = [v6 bs_firstObjectPassingTest:v25];
    if (v7 != v4)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:sel__unregisterParticipant_ object:a1 file:@"SBFZStackResolver.m" lineNumber:178 description:{@"Cannot unregister participant, because it isn't registered to begin with. Participant to unregister:%@, registered participants:%@", v4, *(a1 + 16)}];
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

    [*(a1 + 16) removeObject:v4];
    [v4 setResolver:0];
    v16 = MEMORY[0x1E696AEC0];
    v17 = _SBFZStackParticipantIdentifierDescription([v4 identifier]);
    v18 = [v16 stringWithFormat:@"remove(%@)", v17];
    [(SBFZStackResolver *)a1 _updateResolutionsForAddedParticipant:v4 removedParticipant:v18 reason:?];

    if ([v4 ownsHomeGesture])
    {
      [v4 setOwnsHomeGesture:0];
      v19 = [v4 delegate];
      [v19 zStackParticipantDidChange:v4];

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __44__SBFZStackResolver__unregisterParticipant___block_invoke_41;
      v22[3] = &unk_1E807FF60;
      v24 = v5;
      v23 = v4;
      [(SBFZStackResolver *)a1 _enumerateObserversOfParticipantWithIdentifier:v5 withBlock:v22];
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __44__SBFZStackResolver__unregisterParticipant___block_invoke_2;
    v21[3] = &__block_descriptor_40_e40_v16__0___SBFZStackParticipantObserver__8l;
    v21[4] = v5;
    [(SBFZStackResolver *)a1 _enumerateObserversOfParticipantWithIdentifier:v5 withBlock:v21];
  }
}

- (void)_registerParticipant:(uint64_t)a1
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 identifier];
    v6 = *(a1 + 16);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __42__SBFZStackResolver__registerParticipant___block_invoke;
    v23[3] = &__block_descriptor_40_e30_B16__0__SBFZStackParticipant_8l;
    v23[4] = v5;
    v7 = [v6 bs_firstObjectPassingTest:v23];
    if (v7)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:sel__registerParticipant_ object:a1 file:@"SBFZStackResolver.m" lineNumber:150 description:{@"Cannot register participant, there's already a participant with the same identifier. Participant to register:%@, registered participants:%@", v4, *(a1 + 16)}];
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

    [*(a1 + 16) addObject:v4];
    [*(a1 + 16) sortUsingComparator:&__block_literal_global_20];
    [v4 _updatePreferences];
    [v4 setResolver:a1];
    v16 = MEMORY[0x1E696AEC0];
    v17 = _SBFZStackParticipantIdentifierDescription([v4 identifier]);
    v18 = [v16 stringWithFormat:@"add(%@)", v17];
    [(SBFZStackResolver *)a1 _updateResolutionsForAddedParticipant:v4 removedParticipant:0 reason:v18];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__SBFZStackResolver__registerParticipant___block_invoke_2;
    v20[3] = &unk_1E807FF60;
    v22 = v5;
    v21 = v4;
    [(SBFZStackResolver *)a1 _enumerateObserversOfParticipantWithIdentifier:v5 withBlock:v20];
  }
}

- (id)addObserver:(id)a3 ofParticipantWithIdentifier:(int64_t)a4
{
  v7 = a3;
  if (v7)
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
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SBFZStackResolver.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"observer != nil"}];

    if (self)
    {
      goto LABEL_3;
    }
  }

  participantObservers = 0;
LABEL_4:
  v9 = participantObservers;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v11 = [(NSMapTable *)v9 objectForKey:v10];

  if (!v11)
  {
    v11 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMapTable *)v9 setObject:v11 forKey:v12];
  }

  [v11 addObject:v7];
  v13 = [(SBFZStackResolver *)self settingsOfParticipantWithIdentifier:a4];

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

- (void)removeObserver:(id)a3 ofParticipantWithIdentifier:(int64_t)a4
{
  v15 = a3;
  if (!v15)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SBFZStackResolver.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"observer != nil"}];

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
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v10 = [(NSMapTable *)v8 objectForKey:v9];

  if (v10)
  {
    [v10 removeObject:v15];
    v11 = [v10 allObjects];
    v12 = [v11 count];

    if (!v12)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
      [(NSMapTable *)v8 removeObjectForKey:v13];
    }
  }
}

- (id)settingsOfParticipantWithIdentifier:(int64_t)a3
{
  if (self)
  {
    self = self->_participants;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__SBFZStackResolver_settingsOfParticipantWithIdentifier___block_invoke;
  v5[3] = &__block_descriptor_40_e30_B16__0__SBFZStackParticipant_8l;
  v5[4] = a3;
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

- (void)_updateResolutionsForAddedParticipant:(void *)a3 removedParticipant:(void *)a4 reason:
{
  v213 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!a1)
  {
    goto LABEL_172;
  }

  v11 = *(a1 + 16);
  v12 = v8;
  v165 = v9;
  if (v8 || (v12 = v9) != 0)
  {
    v187 = v12;
  }

  else
  {
    v187 = 0;
  }

  v164 = v10;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v195 objects:v208 count:16];
  if (v15)
  {
    v16 = v15;
    v10 = *v196;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v196 != v10)
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

  v173 = a1;
  [(SBFZStackResolver *)a1 _updateResolutions];
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  obj = v194 = 0u;
  v19 = [obj countByEnumeratingWithState:&v191 objects:v207 count:16];
  if (v19)
  {
    v20 = v19;
    v10 = *v192;
    i = v190;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v192 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v191 + 1) + 8 * j);
        if (v22 != v187)
        {
          v23 = [*(*(&v191 + 1) + 8 * j) delegate];
          [v23 zStackParticipantDidChange:v22];

          v24 = [v22 identifier];
          v190[0] = MEMORY[0x1E69E9820];
          v190[1] = 3221225472;
          v190[2] = __85__SBFZStackResolver__updateResolutionsForAddedParticipant_removedParticipant_reason___block_invoke;
          v190[3] = &unk_1E807FF60;
          v190[4] = v22;
          v190[5] = v24;
          [(SBFZStackResolver *)a1 _enumerateObserversOfParticipantWithIdentifier:v24 withBlock:v190];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v191 objects:v207 count:16];
    }

    while (v20);
  }

  if ([obj count] < 2)
  {
    v131 = SBLogZStack();
    v10 = v164;
    v9 = v165;
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

  v25 = *(a1 + 24);
  v167 = v13;
  v26 = v25;
  v168 = v8;
  v186 = objc_alloc_init(MEMORY[0x1E698E6F8]);
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  v163 = v26;
  v166 = [v26 bs_reverse];
  v27 = 0x1E696A000uLL;
  v170 = v8;
  v171 = [v166 countByEnumeratingWithState:&v203 objects:buf count:16];
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
        objc_enumerationMutation(v166);
      }

      v185 = v28;
      v29 = *(*(&v203 + 1) + 8 * v28);
      v30 = [v29 identifier];
      v31 = _SBFZStackParticipantIdentifierDescription(v30);
      if (v8 && v30 == [v168 identifier])
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
      v35 = [v29 ownsHomeGesture];
      v36 = [v32 ownsHomeGesture];
      v184 = v31;
      if (v35 == v36)
      {
        if (v35)
        {
          [v34 addObject:@"ownsHomeGesture"];
        }
      }

      else
      {
        v37 = MEMORY[0x1E696AEC0];
        if (v36)
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
      v40 = [OUTLINED_FUNCTION_26() activationState];
      if (v35 > 2)
      {
        v41 = 0;
      }

      else
      {
        v41 = off_1E8080158[v35];
      }

      if (v35 == v40)
      {
        [v34 addObject:v41];
      }

      else
      {
        if (v40 > 2)
        {
          v42 = 0;
        }

        else
        {
          v42 = off_1E8080158[v40];
        }

        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@->%@", v42, v41];
        [v34 addObject:v43];
      }

      v44 = [v29 homeAffordanceDrawingSuppressed];
      v45 = [v32 homeAffordanceDrawingSuppressed];
      if (v44 == v45)
      {
        if (v44)
        {
          [v34 addObject:@"homeAffordanceDrawingSuppressed"];
        }
      }

      else
      {
        v46 = MEMORY[0x1E696AEC0];
        if (v45)
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

      v49 = [v29 systemApertureSuppressedForSystemChromeSuppression];
      v50 = [v32 systemApertureSuppressedForSystemChromeSuppression];
      if (v49 == v50)
      {
        if (v49)
        {
          [v34 addObject:@"systemApertureSuppressed"];
        }
      }

      else
      {
        v51 = MEMORY[0x1E696AEC0];
        if (v50)
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
      v54 = [OUTLINED_FUNCTION_26() associatedBundleIdentifiersToSuppressInSystemAperture];
      v189 = v49;
      v182 = v54;
      if (BSEqualSets())
      {
        if (![v49 count])
        {
          goto LABEL_73;
        }

        v55 = [v49 allObjects];
        v56 = [v55 componentsJoinedByString:{@", "}];

        v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"suppressedBundles: %@", v56];
      }

      else
      {
        v58 = [v54 allObjects];
        v59 = [v58 componentsJoinedByString:{@", "}];
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

        v62 = [v49 allObjects];
        v63 = [v62 componentsJoinedByString:{@", "}];
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
      v67 = [v29 associatedSceneIdentifiersToSuppressInSystemAperture];
      v68 = [v32 associatedSceneIdentifiersToSuppressInSystemAperture];
      v188 = v67;
      v181 = v68;
      if (BSEqualSets())
      {
        v69 = v34;
        if (![v67 count])
        {
          goto LABEL_78;
        }

        [v67 count];
        v70 = [OUTLINED_FUNCTION_23() stringWithFormat:@"suppressedScenes: %d"];
      }

      else
      {
        v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"suppressedScenes: %d->%d", objc_msgSend(v68, "count"), objc_msgSend(v67, "count")];
        v69 = v34;
      }

      [v69 addObject:v70];

LABEL_78:
      v13 = [v29 physicalButtonSceneTargets];
      v71 = [v32 physicalButtonSceneTargets];
      v180 = v71;
      if (BSEqualArrays())
      {
        if (![v13 count])
        {
          goto LABEL_83;
        }

        v72 = MEMORY[0x1E696AEC0];
        [v13 count];
        v73 = OUTLINED_FUNCTION_23();
        v74 = @"physicalButtonTargets: %lu";
      }

      else
      {
        v72 = [v71 count];
        [v13 count];
        v73 = OUTLINED_FUNCTION_15();
        v74 = @"physicalButtonTargets: %lu->%lu";
      }

      v75 = [v73 stringWithFormat:v74];
      OUTLINED_FUNCTION_21(v75);

LABEL_83:
      v76 = [v29 captureButtonFullFidelityEventRequestingScenes];
      v77 = [v32 captureButtonFullFidelityEventRequestingScenes];
      v178 = v77;
      if (BSEqualArrays())
      {
        if (![v76 count])
        {
          goto LABEL_88;
        }

        v78 = MEMORY[0x1E696AEC0];
        [v76 count];
        v79 = OUTLINED_FUNCTION_23();
        v80 = @"captureButtonScenes: %lu";
      }

      else
      {
        v78 = [v77 count];
        [v76 count];
        v79 = OUTLINED_FUNCTION_15();
        v80 = @"captureButtonScenes: %lu->%lu";
      }

      v81 = [v79 stringWithFormat:v80];
      OUTLINED_FUNCTION_21(v81);

LABEL_88:
      v82 = [v29 foregroundCaptureSceneTargets];
      v83 = [v32 foregroundCaptureSceneTargets];
      v176 = v83;
      if (BSEqualArrays())
      {
        if (![v82 count])
        {
          goto LABEL_93;
        }

        v83 = MEMORY[0x1E696AEC0];
        [v82 count];
        v84 = OUTLINED_FUNCTION_23();
        v85 = @"fgCaptureButtonTargets: %lu";
      }

      else
      {
        v83 = [v83 count];
        [v82 count];
        v84 = OUTLINED_FUNCTION_15();
        v85 = @"fgCaptureButtonTargets: %lu->%lu";
      }

      v86 = [v84 stringWithFormat:v85];
      OUTLINED_FUNCTION_21(v86);

LABEL_93:
      v179 = v76;
      [v29 audioCategoriesDisablingVolumeHUD];
      objc_claimAutoreleasedReturnValue();
      v87 = [OUTLINED_FUNCTION_26() audioCategoriesDisablingVolumeHUD];
      v177 = v82;
      v175 = v87;
      if (BSEqualSets())
      {
        if (![v83 count])
        {
          goto LABEL_104;
        }

        v88 = [v83 allObjects];
        v89 = [v88 componentsJoinedByString:{@", "}];

        v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"audioCategories: %@", v89];
      }

      else
      {
        v91 = [v87 allObjects];
        v92 = [v91 componentsJoinedByString:{@", "}];
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

        v95 = [v83 allObjects];
        v96 = [v95 componentsJoinedByString:{@", "}];
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
      v100 = [v29 participantBelowAllowsDimming];
      v101 = [v32 participantBelowAllowsDimming];
      if (v100 == v101)
      {
        if (v100)
        {
          [v69 addObject:@"belowAllowsDimming"];
        }
      }

      else
      {
        v102 = MEMORY[0x1E696AEC0];
        if (v101)
        {
          v103 = @"Y";
        }

        else
        {
          v103 = @"N";
        }

        if (v100)
        {
          v104 = @"Y";
        }

        else
        {
          v104 = @"N";
        }

        v105 = v103;
        v106 = [v102 stringWithFormat:@"belowAllowsDimming: %@->%@", v105, v104];
        [v69 addObject:v106];
      }

      v107 = [v29 allowsKeyboardArbiterToDetermineFocusTarget];
      v108 = [v32 allowsKeyboardArbiterToDetermineFocusTarget];
      if (v107 == v108)
      {
        if (v107)
        {
          [v69 addObject:@"keyboardArbiter"];
        }
      }

      else
      {
        v109 = MEMORY[0x1E696AEC0];
        if (v108)
        {
          v110 = @"Y";
        }

        else
        {
          v110 = @"N";
        }

        if (v107)
        {
          v111 = @"Y";
        }

        else
        {
          v111 = @"N";
        }

        v112 = v110;
        v113 = [v109 stringWithFormat:@"keyboardArbiter: %@->%@", v112, v111];
        [v69 addObject:v113];
      }

      v114 = [v29 overrideKeyboardFocusTarget];
      i = [v32 overrideKeyboardFocusTarget];
      if (BSEqualObjects())
      {
        if (v114)
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

        if (v114)
        {
          v117 = @"Y";
        }

        else
        {
          v117 = @"N";
        }

        v118 = v116;
        v119 = [v115 stringWithFormat:@"overrideKeyboardTarget: %@->%@", v118, v117];
        [v69 addObject:v119];
      }

      v120 = [v29 allowCameraButtonDeferringWhileFocusLocked];
      v121 = [v32 allowCameraButtonDeferringWhileFocusLocked];
      if (v120 == v121)
      {
        v127 = v174;
        if (v120)
        {
          [v69 addObject:@"allowCameraButtonDeferringWhileFocusLocked"];
        }
      }

      else
      {
        v122 = MEMORY[0x1E696AEC0];
        if (v121)
        {
          v123 = @"Y";
        }

        else
        {
          v123 = @"N";
        }

        if (v120)
        {
          v124 = @"Y";
        }

        else
        {
          v124 = @"N";
        }

        v125 = v123;
        v126 = [v122 stringWithFormat:@"allowCameraButtonDeferringWhileFocusLocked: %@->%@", v125, v124];
        [v69 addObject:v126];

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

      v10 = v184;
      v130 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@:", v183, v184];
      [v186 setObject:v129 forKey:v130];

      v28 = v185 + 1;
      v8 = v170;
    }

    while (v171 != v185 + 1);
    v171 = [v166 countByEnumeratingWithState:&v203 objects:buf count:16];
  }

  while (v171);
LABEL_157:

  v138 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v139 = [v186 allKeys];
  v140 = [v139 bs_reverse];

  v143 = OUTLINED_FUNCTION_19(v141, v142, &v199, v209);
  if (v143)
  {
    v10 = v143;
    v144 = *v200;
    do
    {
      for (k = 0; k != v10; k = k + 1)
      {
        if (*v200 != v144)
        {
          objc_enumerationMutation(v140);
        }

        v146 = *(*(&v199 + 1) + 8 * k);
        v147 = *(v27 + 3776);
        v148 = [v186 objectForKey:v146];
        i = [v147 stringWithFormat:@"%@ %@", v146, v148];

        v27 = 0x1E696A000;
        [v138 addObject:i];
      }

      v10 = OUTLINED_FUNCTION_19(v149, v150, &v199, v209);
    }

    while (v10);
  }

  v9 = [MEMORY[0x1E698E688] descriptionForRootObject:v138];
  v131 = [v9 stringByReplacingOccurrencesOfString:@"com.apple." withString:&stru_1F3D19FF0];

  if (BSEqualStrings())
  {
    v152 = SBLogZStack();
    os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_24();
    if (v154)
    {
      *buf = 138543362;
      *(v153 + 4) = v10;
      OUTLINED_FUNCTION_18();
      goto LABEL_169;
    }
  }

  else
  {
    objc_setProperty_nonatomic_copy(v173, v151, v131, 48);
    v152 = SBLogZStack();
    os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_24();
    if (v162)
    {
      *buf = 138543618;
      *(v161 + 4) = v10;
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

- (void)_setNeedsUpdateFromParticipant:(uint64_t)a1
{
  if (a1)
  {
    v3 = MEMORY[0x1E696AEC0];
    v5 = _SBFZStackParticipantIdentifierDescription([a2 identifier]);
    v4 = [v3 stringWithFormat:@"update(%@)", v5];
    [(SBFZStackResolver *)a1 _updateResolutionsForAddedParticipant:0 removedParticipant:v4 reason:?];
  }
}

- (void)_resolveActivationStateOfSortedParticipants:(int)a3 changedHandler:(int)a4 prevailingHandler:(int)a5
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

        v67 = [v66 preferences];
        v68 = [v67 activationPolicyForParticipantsBelow];
        v69 = v68;
        if (v68 == 2)
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

        if (v68 == 1)
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

- (void)_resolveHomeGestureOwnershipOfSortedParticipants:(int)a3 changedHandler:(int)a4 prevailingHandler:(int)a5
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
        v60 = [v59 preferences];
        if (((v44 ^ [v59 ownsHomeGesture]) & 1) == 0)
        {
          v52[2](v52, v59);
          [v59 setOwnsHomeGesture:!v44];
        }

        v61 = [v60 homeGestureConsumption];
        if (v61 == 1)
        {
          v64 = OUTLINED_FUNCTION_9();
          v65(v64, @"ownsHomeGesture", v59);
        }

        else
        {
          if (v61)
          {
            goto LABEL_15;
          }

          if (!v44)
          {
            v62 = OUTLINED_FUNCTION_9();
            v63(v62, @"ownsHomeGesture", v59);
            v44 = [v60 activationPolicyForParticipantsBelow] != 0;
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

- (void)_resolveSystemApertureSuppressionOfSortedParticipants:(void *)a3 changedHandler:(void *)a4 prevailingHandler:
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v39 = a3;
  v8 = a4;
  v10 = v8;
  if (a1)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = OUTLINED_FUNCTION_29(v8, v9, &v42, v46);
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
      v15 = v12;
      do
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v42 + 1) + 8 * v14);
        v17 = [v16 activationState];
        v18 = [v16 activationState];
        v19 = [v16 preferences];
        v20 = v19;
        if (v17)
        {
          v13 = 0;
        }

        else
        {
          v13 |= [v19 suppressSystemApertureForSystemChromeSuppression];
        }

        if (v18 == 2)
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
          if (v15)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v25 = [v20 associatedBundleIdentifiersToSuppressInSystemAperture];
          v26 = [v25 count];

          if (v26)
          {
            if (!v15)
            {
              v15 = [MEMORY[0x1E695DFA8] set];
            }

            [v20 associatedBundleIdentifiersToSuppressInSystemAperture];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_26() unionSet:v25];

            v27 = OUTLINED_FUNCTION_4();
            v28(v27, @"associatedBundleIdentifiersToSuppressInSystemAperture", v16);
          }

          v12 = v15;
          v29 = [v20 associatedSceneIdentifiersToSuppressInSystemAperture];
          v30 = [v29 count];

          if (v30)
          {
            if (!v11)
            {
              v11 = [MEMORY[0x1E695DFA8] set];
            }

            v15 = [v20 associatedSceneIdentifiersToSuppressInSystemAperture];
            [v11 unionSet:v15];
            v24 = @"associatedSceneIdentifiersToSuppressInSystemAperture";
            v23 = v11;
LABEL_23:

            v31 = OUTLINED_FUNCTION_4();
            v32(v31, v24, v16);
            v11 = v23;
          }
        }

        v33 = [v16 systemApertureSuppressedForSystemChromeSuppression];
        v34 = [v16 associatedBundleIdentifiersToSuppressInSystemAperture];
        v35 = [v16 associatedSceneIdentifiersToSuppressInSystemAperture];
        if (!BSEqualSets() || !BSEqualSets() || ((v13 ^ v33) & 1) != 0)
        {
          v39[2](v39, v16);
          [v16 setSystemApertureSuppressedForSystemChromeSuppression:v13 & 1];
          [v16 setAssociatedSceneIdentifiersToSuppressInSystemAperture:v11];
          [v16 setAssociatedBundleIdentifiersToSuppressInSystemAperture:v12];
        }

        ++v14;
        v15 = v12;
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

- (void)_resolveAudioCategoriesDisablingVolumeHUDOfSortedParticipants:(uint64_t)a3 changedHandler:(uint64_t)a4 prevailingHandler:(uint64_t)a5
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
            v29 = [v26 preferences];
            [v29 audioCategoriesDisablingVolumeHUD];
            v31 = v30 = v19;
            v32 = SBFAudioCategoriesDisablingVolumeHUDUnion(v23, v31);

            v19 = v30;
            v33 = OUTLINED_FUNCTION_4();
            v34(v33, @"audioCategoriesDisablingVolumeHUD", v26);

            v23 = v32;
          }

          v35 = [v26 audioCategoriesDisablingVolumeHUD];
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

- (void)_resolveOverrideKeyboardFocusTargetOfSortedParticipants:(int)a3 changedHandler:(int)a4 prevailingHandler:(int)a5
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
        v66 = [v65 preferences];
        v67 = [v66 activationPolicyForParticipantsBelow];
        v68 = [v66 overrideKeyboardFocusTarget];
        v69 = v68;
        if (v68)
        {
          v70 = v68;
        }

        else
        {
          if (!v67)
          {
            goto LABEL_12;
          }

          v70 = 0;
        }

        v71 = OUTLINED_FUNCTION_4();
        v72(v71, @"overrideKeyboardFocusTarget", v65);
        v62 = v70;
LABEL_12:
        v73 = [v65 overrideKeyboardFocusTarget];
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

- (void)setResolvedStackDescription:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 48);
  }
}

- (id)succinctDescription
{
  v1 = a1;
  if (a1)
  {
    v2 = MEMORY[0x1E698E688];
    v3 = [MEMORY[0x1E698E690] succinctStyle];
    v1 = [v2 descriptionForRootObject:v1 withStyle:v3];
  }

  return v1;
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

- (void)setStateCaptureHandle:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

- (void)setParticipants:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
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

- (void)setSortedParticipants:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

- (void)setParticipantObservers:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

- (void)setHighestZStackParticipant:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
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