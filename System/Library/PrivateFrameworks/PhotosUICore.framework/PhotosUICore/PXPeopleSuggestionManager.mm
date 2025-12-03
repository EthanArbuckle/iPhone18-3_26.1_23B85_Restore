@interface PXPeopleSuggestionManager
- (BOOL)_fetchingSuggestions;
- (BOOL)canUndo;
- (BOOL)isLoading;
- (BOOL)isSuggestionConfirmed:(id)confirmed;
- (NSArray)currentSuggestions;
- (PXPeopleSuggestionManager)initWithPerson:(id)person;
- (PXPeopleSuggestionManagerDelegate)delegate;
- (id)_nonSkippedSuggestionsForSuggestions:(id)suggestions;
- (id)commitUserResponsesToPerson:(id)person;
- (unsigned)_soundIdWithFilename:(id)filename;
- (void)_loadMoreSuggestionsWithCompletion:(id)completion;
- (void)_notifyDelegateWeHaveMoreSuggestions:(BOOL)suggestions;
- (void)_playConfirmNoSound;
- (void)_playConfirmYesSound;
- (void)cancelPendingSuggestionLoading;
- (void)commitUserResponses;
- (void)dealloc;
- (void)markSuggestions:(id)suggestions confirmed:(BOOL)confirmed wantsSound:(BOOL)sound;
- (void)markSuggestionsAsSkipped:(id)skipped;
- (void)preloadSounds;
- (void)removeAllSuggestions;
- (void)requestNextSuggestionsWithPageLimit:(unint64_t)limit;
- (void)setDataSource:(id)source;
- (void)undo;
@end

@implementation PXPeopleSuggestionManager

- (PXPeopleSuggestionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_fetchingSuggestions
{
  suggestionToken = [(PXPeopleSuggestionManager *)self suggestionToken];
  v3 = suggestionToken != 0;

  return v3;
}

- (id)_nonSkippedSuggestionsForSuggestions:(id)suggestions
{
  v21 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  skippedSuggestions = [(PXPeopleSuggestionManager *)self skippedSuggestions];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = suggestionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        px_localIdentifier = [v12 px_localIdentifier];
        v14 = [skippedSuggestions containsObject:px_localIdentifier];

        if ((v14 & 1) == 0)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)_notifyDelegateWeHaveMoreSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  v42 = *MEMORY[0x1E69E9840];
  delegate = [(PXPeopleSuggestionManager *)self delegate];
  if (suggestionsCopy)
  {
    currentSuggestions = [(PXPeopleSuggestionManager *)self currentSuggestions];
    [delegate suggestionManager:self hasNewSuggestionsAvailable:currentSuggestions];
  }

  else
  {
    if (PFOSVariantHasInternalUI())
    {
      confirmedSuggestions = [(PXPeopleSuggestionManager *)self confirmedSuggestions];
      rejectedSuggestions = [(PXPeopleSuggestionManager *)self rejectedSuggestions];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = confirmedSuggestions;
      v10 = [v9 countByEnumeratingWithState:&v28 objects:v41 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v29;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v12 += [*(*(&v28 + 1) + 8 * i) numberOfAssets];
          }

          v11 = [v9 countByEnumeratingWithState:&v28 objects:v41 count:16];
        }

        while (v11);
      }

      else
      {
        v12 = 0;
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = rejectedSuggestions;
      v16 = [v15 countByEnumeratingWithState:&v24 objects:v40 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = *v25;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v18 += [*(*(&v24 + 1) + 8 * j) numberOfAssets];
          }

          v17 = [v15 countByEnumeratingWithState:&v24 objects:v40 count:16];
        }

        while (v17);
      }

      else
      {
        v18 = 0;
      }

      v21 = PLUIGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = [v9 count];
        v23 = [v15 count];
        *buf = 134218752;
        v33 = v22;
        v34 = 2048;
        v35 = v12;
        v36 = 2048;
        v37 = v23;
        v38 = 2048;
        v39 = v18;
        _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_DEBUG, "[People Suggestions Done] Confirmed:%lu Suggestions (%lu faces)   Rejected:%lu Suggestions (%lu faces)", buf, 0x2Au);
      }
    }

    [delegate noMoreSuggestionsAvailableForSuggestionManager:{self, v24}];
  }
}

- (void)_loadMoreSuggestionsWithCompletion:(id)completion
{
  completionCopy = completion;
  dataSource = [(PXPeopleSuggestionManager *)self dataSource];
  delegate = [(PXPeopleSuggestionManager *)self delegate];
  person = [(PXPeopleSuggestionManager *)self person];
  if (person)
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate willLoadMoreSuggestionsForSuggestionManager:self];
    }

    objc_initWeak(&location, self);
    confirmedSuggestions = [(PXPeopleSuggestionManager *)self confirmedSuggestions];
    allObjects = [confirmedSuggestions allObjects];
    rejectedSuggestions = [(PXPeopleSuggestionManager *)self rejectedSuggestions];
    allObjects2 = [rejectedSuggestions allObjects];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__PXPeopleSuggestionManager__loadMoreSuggestionsWithCompletion___block_invoke;
    v14[3] = &unk_1E77456C0;
    objc_copyWeak(&v16, &location);
    v15 = completionCopy;
    v12 = dataSource;
    v13 = [dataSource suggestionsForPerson:person withConfirmedSuggestions:allObjects andRejectedSuggestions:allObjects2 completion:v14];
    [(PXPeopleSuggestionManager *)self setSuggestionToken:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    dataSource = v12;
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __64__PXPeopleSuggestionManager__loadMoreSuggestionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSuggestionToken:0];

  v5 = objc_loadWeakRetained((a1 + 40));
  v10 = [v5 _nonSkippedSuggestionsForSuggestions:v3];

  v6 = [v10 count];
  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 suggestionProvider];
    [v8 appendSuggestionArray:v10];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v6 != 0);
  }
}

- (void)_playConfirmNoSound
{
  LODWORD(v3) = [(PXPeopleSuggestionManager *)self confirmNoSoundID];
  if (!v3)
  {
    v3 = [(PXPeopleSuggestionManager *)self _soundIdWithFilename:@"PXPeopleConfirmNo"];
    [(PXPeopleSuggestionManager *)self setConfirmNoSoundID:v3];
  }

  mute = [(PXPeopleSuggestionManager *)self mute];
  if (v3 && !mute)
  {

    AudioServicesPlaySystemSound(v3);
  }
}

- (void)_playConfirmYesSound
{
  LODWORD(v3) = [(PXPeopleSuggestionManager *)self confirmYesSoundID];
  if (!v3)
  {
    v3 = [(PXPeopleSuggestionManager *)self _soundIdWithFilename:@"PXPeopleConfirmYes"];
    [(PXPeopleSuggestionManager *)self setConfirmYesSoundID:v3];
  }

  mute = [(PXPeopleSuggestionManager *)self mute];
  if (v3 && !mute)
  {

    AudioServicesPlaySystemSound(v3);
  }
}

- (unsigned)_soundIdWithFilename:(id)filename
{
  outSystemSoundID = 0;
  v3 = MEMORY[0x1E696AAE8];
  filenameCopy = filename;
  px_bundle = [v3 px_bundle];
  v6 = [px_bundle pathForResource:filenameCopy ofType:@"caf"];

  if ([v6 length])
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
    AudioServicesCreateSystemSoundID(v7, &outSystemSoundID);

    v8 = outSystemSoundID;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)cancelPendingSuggestionLoading
{
  v13 = *MEMORY[0x1E69E9840];
  suggestionToken = [(PXPeopleSuggestionManager *)self suggestionToken];
  if (suggestionToken)
  {
    dataSource = [(PXPeopleSuggestionManager *)self dataSource];
    person = [(PXPeopleSuggestionManager *)self person];
    v10 = 0;
    v6 = [dataSource cancelSuggestionForPerson:person withToken:suggestionToken error:&v10];
    v7 = v10;

    v8 = PLUIGetLog();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "Suggestions UI: Cancel loading more suggestions", buf, 2u);
      }

      [(PXPeopleSuggestionManager *)self setSuggestionToken:0];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Error cancelling suggestion request %@", buf, 0xCu);
      }
    }
  }
}

- (id)commitUserResponsesToPerson:(id)person
{
  personCopy = person;
  if ([(PXPeopleSuggestionManager *)self _fetchingSuggestions])
  {
    [(PXPeopleSuggestionManager *)self cancelPendingSuggestionLoading];
  }

  confirmedSuggestions = [(PXPeopleSuggestionManager *)self confirmedSuggestions];
  rejectedSuggestions = [(PXPeopleSuggestionManager *)self rejectedSuggestions];
  person = [(PXPeopleSuggestionManager *)self person];
  v8 = personCopy;
  if (person)
  {
    v9 = person;
    if ([confirmedSuggestions count])
    {
    }

    else
    {
      v10 = [rejectedSuggestions count];

      v8 = personCopy;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    dataSource = [(PXPeopleSuggestionManager *)self dataSource];
    allObjects = [confirmedSuggestions allObjects];
    allObjects2 = [rejectedSuggestions allObjects];
    v8 = [dataSource commitSuggestionsForPerson:personCopy withConfirmedSuggestions:allObjects andRejectedSuggestions:allObjects2];
  }

LABEL_8:

  return v8;
}

- (void)commitUserResponses
{
  person = [(PXPeopleSuggestionManager *)self person];
  v3 = [(PXPeopleSuggestionManager *)self commitUserResponsesToPerson:person];
}

- (void)undo
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(PXPeopleSuggestionManager *)self canUndo])
  {
    if ([(PXPeopleSuggestionManager *)self _fetchingSuggestions])
    {
      [(PXPeopleSuggestionManager *)self cancelPendingSuggestionLoading];
    }

    delegate = [(PXPeopleSuggestionManager *)self delegate];
    confirmedSuggestions = [(PXPeopleSuggestionManager *)self confirmedSuggestions];
    suggestionProvider = [(PXPeopleSuggestionManager *)self suggestionProvider];
    v17 = suggestionProvider;
    if ([(PXPeopleSuggestionManager *)self didReachEnd])
    {
      [suggestionProvider currentSuggestions];
    }

    else
    {
      [suggestionProvider previousSuggestions];
    }
    v6 = ;
    [(PXPeopleSuggestionManager *)self setDidReachEnd:0];
    rejectedSuggestions = [(PXPeopleSuggestionManager *)self rejectedSuggestions];
    v8 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    [rejectedSuggestions minusSet:v8];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = 0;
      v14 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          if ([confirmedSuggestions containsObject:v16])
          {
            [confirmedSuggestions removeObject:v16];
            ++v13;
            v12 = v12 + [v16 numberOfAssets] - 1;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    [(PXPeopleSuggestionManager *)self setAutoConfirmationsCount:[(PXPeopleSuggestionManager *)self autoConfirmationsCount]- v12];
    [(PXPeopleSuggestionManager *)self setUserConfirmationsCount:[(PXPeopleSuggestionManager *)self userConfirmationsCount]- v13];
    if (objc_opt_respondsToSelector())
    {
      [delegate confirmationCountUpdatedForSuggestionManager:self undoing:1];
    }

    [delegate suggestionManager:self hasNewSuggestionsAvailable:v9];
  }
}

- (void)removeAllSuggestions
{
  rejectedSuggestions = [(PXPeopleSuggestionManager *)self rejectedSuggestions];
  [rejectedSuggestions removeAllObjects];

  confirmedSuggestions = [(PXPeopleSuggestionManager *)self confirmedSuggestions];
  [confirmedSuggestions removeAllObjects];

  skippedSuggestions = [(PXPeopleSuggestionManager *)self skippedSuggestions];
  [skippedSuggestions removeAllObjects];

  suggestionProvider = [(PXPeopleSuggestionManager *)self suggestionProvider];
  [suggestionProvider removeAllSuggestions];

  [(PXPeopleSuggestionManager *)self setUserConfirmationsCount:0];
  [(PXPeopleSuggestionManager *)self setAutoConfirmationsCount:0];
  [(PXPeopleSuggestionManager *)self setDidReachEnd:0];
  delegate = [(PXPeopleSuggestionManager *)self delegate];
  [delegate confirmationCountUpdatedForSuggestionManager:self undoing:1];
}

- (void)markSuggestionsAsSkipped:(id)skipped
{
  v24 = *MEMORY[0x1E69E9840];
  skippedCopy = skipped;
  v5 = [skippedCopy count];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = skippedCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        px_localIdentifier = [*(*(&v19 + 1) + 8 * v11) px_localIdentifier];
        [v6 addObject:px_localIdentifier];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  skippedSuggestions = [(PXPeopleSuggestionManager *)self skippedSuggestions];
  [skippedSuggestions addObjectsFromArray:v6];

  confirmedSuggestions = [(PXPeopleSuggestionManager *)self confirmedSuggestions];
  v15 = [MEMORY[0x1E695DFD8] setWithArray:v7];
  [confirmedSuggestions minusSet:v15];

  rejectedSuggestions = [(PXPeopleSuggestionManager *)self rejectedSuggestions];
  v17 = [MEMORY[0x1E695DFD8] setWithArray:v7];
  [rejectedSuggestions minusSet:v17];

  suggestionProvider = [(PXPeopleSuggestionManager *)self suggestionProvider];
  [suggestionProvider removeSuggestions:v7];
}

- (void)markSuggestions:(id)suggestions confirmed:(BOOL)confirmed wantsSound:(BOOL)sound
{
  soundCopy = sound;
  confirmedCopy = confirmed;
  v44 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v9 = [suggestionsCopy count];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = suggestionsCopy;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        px_localIdentifier = [*(*(&v38 + 1) + 8 * i) px_localIdentifier];
        [v10 addObject:px_localIdentifier];
      }

      v13 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v13);
  }

  if (!confirmedCopy)
  {
    if (soundCopy)
    {
      [(PXPeopleSuggestionManager *)self _playConfirmNoSound];
    }

    skippedSuggestions = [(PXPeopleSuggestionManager *)self skippedSuggestions];
    v30 = [MEMORY[0x1E695DFD8] setWithArray:v10];
    [skippedSuggestions minusSet:v30];

    confirmedSuggestions = [(PXPeopleSuggestionManager *)self confirmedSuggestions];
    v32 = [MEMORY[0x1E695DFD8] setWithArray:v11];
    [confirmedSuggestions minusSet:v32];

    rejectedSuggestions = [(PXPeopleSuggestionManager *)self rejectedSuggestions];
    [rejectedSuggestions addObjectsFromArray:v11];
    goto LABEL_25;
  }

  if (soundCopy)
  {
    [(PXPeopleSuggestionManager *)self _playConfirmYesSound];
  }

  skippedSuggestions2 = [(PXPeopleSuggestionManager *)self skippedSuggestions];
  v18 = [MEMORY[0x1E695DFD8] setWithArray:v10];
  [skippedSuggestions2 minusSet:v18];

  rejectedSuggestions2 = [(PXPeopleSuggestionManager *)self rejectedSuggestions];
  v20 = [MEMORY[0x1E695DFD8] setWithArray:v11];
  [rejectedSuggestions2 minusSet:v20];

  confirmedSuggestions2 = [(PXPeopleSuggestionManager *)self confirmedSuggestions];
  [confirmedSuggestions2 addObjectsFromArray:v11];

  delegate = [(PXPeopleSuggestionManager *)self delegate];
  LOBYTE(v20) = objc_opt_respondsToSelector();

  if (v20)
  {
    [(PXPeopleSuggestionManager *)self setUserConfirmationsCount:[(PXPeopleSuggestionManager *)self userConfirmationsCount]+ v9];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = v11;
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = *v35;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v26 += [*(*(&v34 + 1) + 8 * j) numberOfAssets];
        }

        v25 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v25);
    }

    else
    {
      v26 = 0;
    }

    [(PXPeopleSuggestionManager *)self setAutoConfirmationsCount:v26 - v9 + [(PXPeopleSuggestionManager *)self autoConfirmationsCount]];
    rejectedSuggestions = [(PXPeopleSuggestionManager *)self delegate];
    [rejectedSuggestions confirmationCountUpdatedForSuggestionManager:self undoing:0];
LABEL_25:
  }
}

- (BOOL)isSuggestionConfirmed:(id)confirmed
{
  confirmedCopy = confirmed;
  confirmedSuggestions = [(PXPeopleSuggestionManager *)self confirmedSuggestions];
  v6 = [confirmedSuggestions containsObject:confirmedCopy];

  return v6;
}

- (void)requestNextSuggestionsWithPageLimit:(unint64_t)limit
{
  if (![(PXPeopleSuggestionManager *)self _fetchingSuggestions])
  {
    suggestionProvider = [(PXPeopleSuggestionManager *)self suggestionProvider];
    if ([suggestionProvider hasNextSuggestions])
    {
      v6 = [suggestionProvider nextSuggestionsWithPageLimit:limit];
      [(PXPeopleSuggestionManager *)self _notifyDelegateWeHaveMoreSuggestions:1];
    }

    else
    {
      objc_initWeak(&location, self);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __65__PXPeopleSuggestionManager_requestNextSuggestionsWithPageLimit___block_invoke;
      v7[3] = &unk_1E7745698;
      objc_copyWeak(v8, &location);
      v8[1] = limit;
      v7[4] = self;
      [(PXPeopleSuggestionManager *)self _loadMoreSuggestionsWithCompletion:v7];
      objc_destroyWeak(v8);
      objc_destroyWeak(&location);
    }
  }
}

void __65__PXPeopleSuggestionManager_requestNextSuggestionsWithPageLimit___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained suggestionProvider];
    v6 = [v5 nextSuggestionsWithPageLimit:*(a1 + 48)];
  }

  else
  {
    [*(a1 + 32) setDidReachEnd:1];
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 _notifyDelegateWeHaveMoreSuggestions:a2];
}

- (void)preloadSounds
{
  [(PXPeopleSuggestionManager *)self setConfirmYesSoundID:[(PXPeopleSuggestionManager *)self _soundIdWithFilename:@"PXPeopleConfirmYes"]];
  v3 = [(PXPeopleSuggestionManager *)self _soundIdWithFilename:@"PXPeopleConfirmNo"];

  [(PXPeopleSuggestionManager *)self setConfirmNoSoundID:v3];
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  objc_storeStrong(&self->_dataSource, source);
  suggestionProvider = [(PXPeopleSuggestionManager *)self suggestionProvider];
  [suggestionProvider removeAllSuggestions];

  if (objc_opt_respondsToSelector())
  {
    initialPageLimit = [sourceCopy initialPageLimit];
    if (initialPageLimit <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = initialPageLimit;
    }
  }

  else
  {
    v8 = 1;
  }

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__PXPeopleSuggestionManager_setDataSource___block_invoke;
  v9[3] = &unk_1E7745670;
  objc_copyWeak(v10, &location);
  v10[1] = v8;
  [(PXPeopleSuggestionManager *)self _loadMoreSuggestionsWithCompletion:v9];
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __43__PXPeopleSuggestionManager_setDataSource___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained suggestionProvider];
    v6 = [v5 nextSuggestionsWithPageLimit:*(a1 + 40)];
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 _notifyDelegateWeHaveMoreSuggestions:a2];
}

- (BOOL)isLoading
{
  suggestionToken = [(PXPeopleSuggestionManager *)self suggestionToken];
  v3 = suggestionToken != 0;

  return v3;
}

- (BOOL)canUndo
{
  suggestionProvider = [(PXPeopleSuggestionManager *)self suggestionProvider];
  if ([(PXPeopleSuggestionManager *)self didReachEnd])
  {
    currentSuggestions = [suggestionProvider currentSuggestions];
    hasPreviousSuggestions = [currentSuggestions count] != 0;
  }

  else
  {
    hasPreviousSuggestions = [suggestionProvider hasPreviousSuggestions];
  }

  return hasPreviousSuggestions;
}

- (NSArray)currentSuggestions
{
  suggestionProvider = [(PXPeopleSuggestionManager *)self suggestionProvider];
  currentSuggestions = [suggestionProvider currentSuggestions];

  return currentSuggestions;
}

- (void)dealloc
{
  confirmYesSoundID = self->_confirmYesSoundID;
  if (confirmYesSoundID)
  {
    AudioServicesDisposeSystemSoundID(confirmYesSoundID);
    self->_confirmYesSoundID = 0;
  }

  confirmNoSoundID = self->_confirmNoSoundID;
  if (confirmNoSoundID)
  {
    AudioServicesDisposeSystemSoundID(confirmNoSoundID);
    self->_confirmNoSoundID = 0;
  }

  v5.receiver = self;
  v5.super_class = PXPeopleSuggestionManager;
  [(PXPeopleSuggestionManager *)&v5 dealloc];
}

- (PXPeopleSuggestionManager)initWithPerson:(id)person
{
  personCopy = person;
  v17.receiver = self;
  v17.super_class = PXPeopleSuggestionManager;
  v6 = [(PXPeopleSuggestionManager *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_confirmYesSoundID = 0;
    v6->_confirmNoSoundID = 0;
    objc_storeStrong(&v6->_person, person);
    v8 = objc_alloc_init(PXPeoplePagingSuggestionProvider);
    suggestionProvider = v7->_suggestionProvider;
    v7->_suggestionProvider = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    confirmedSuggestions = v7->_confirmedSuggestions;
    v7->_confirmedSuggestions = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    rejectedSuggestions = v7->_rejectedSuggestions;
    v7->_rejectedSuggestions = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    skippedSuggestions = v7->_skippedSuggestions;
    v7->_skippedSuggestions = v14;

    v7->_mute = 0;
    v7->_userConfirmationsCount = 0;
    v7->_autoConfirmationsCount = 0;
  }

  return v7;
}

@end