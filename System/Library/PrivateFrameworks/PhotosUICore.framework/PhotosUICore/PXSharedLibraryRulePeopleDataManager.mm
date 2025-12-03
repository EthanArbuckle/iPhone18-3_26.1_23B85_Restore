@interface PXSharedLibraryRulePeopleDataManager
- (NSDiffableDataSourceSnapshot)currentSnapshot;
- (PXSharedLibraryRulePeopleDataManager)initWithSharedLibraryStatusProvider:(id)provider;
- (PXSharedLibraryRulePeopleDataManagerDelegate)delegate;
- (void)_updateCurrentSnapshot;
- (void)_updateIfNeeded;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXSharedLibraryRulePeopleDataManager

- (PXSharedLibraryRulePeopleDataManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXSharedLibraryStatusProviderObservationContext_166009 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryRulePeopleDataManager.m" lineNumber:127 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [(PXSharedLibraryRulePeopleDataManager *)self _updateIfNeeded];
}

- (NSDiffableDataSourceSnapshot)currentSnapshot
{
  currentSnapshot = self->_currentSnapshot;
  if (!currentSnapshot)
  {
    [(PXSharedLibraryRulePeopleDataManager *)self _updateCurrentSnapshot];
    currentSnapshot = self->_currentSnapshot;
  }

  return currentSnapshot;
}

- (void)_updateIfNeeded
{
  statusProvider = [(PXSharedLibraryRulePeopleDataManager *)self statusProvider];
  sharedLibrary = [statusProvider sharedLibrary];
  obj = [sharedLibrary rule];

  v5 = self->_currentSharedLibraryRule;
  v6 = v5;
  if (v5 == obj)
  {
  }

  else
  {
    v7 = [(PXSharedLibraryRule *)v5 isEqual:obj];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentSharedLibraryRule, obj);
      [(PXSharedLibraryRulePeopleDataManager *)self _updateCurrentSnapshot];
    }
  }
}

- (void)_updateCurrentSnapshot
{
  v65 = *MEMORY[0x1E69E9840];
  statusProvider = [(PXSharedLibraryRulePeopleDataManager *)self statusProvider];
  sharedLibrary = [statusProvider sharedLibrary];

  personUUIDs = [(PXSharedLibraryRule *)self->_currentSharedLibraryRule personUUIDs];
  v6 = [personUUIDs mutableCopy];

  v52 = v6;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  statusMessage = self->_statusMessage;
  selfCopy = self;
  self->_statusMessage = 0;

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  participants = [sharedLibrary participants];
  v11 = [participants countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v60;
    do
    {
      v14 = 0;
      do
      {
        if (*v60 != v13)
        {
          objc_enumerationMutation(participants);
        }

        v15 = *(*(&v59 + 1) + 8 * v14);
        if (([v15 isCurrentUser] & 1) == 0)
        {
          person = [v15 person];
          if (person)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              px_descriptionForAssertionMessage = [person px_descriptionForAssertionMessage];
              [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PXSharedLibraryRulePeopleDataManager.m" lineNumber:70 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"participant.person", v23, px_descriptionForAssertionMessage}];
            }

            uuid = [person uuid];
            [v52 removeObject:uuid];

            v18 = [PXSharedLibraryRulePerson rulePersonWithParticipant:v15];
            [v9 addObject:v18];

            v19 = MEMORY[0x1E6978980];
            uuid2 = [person uuid];
            v21 = [v19 localIdentifierWithUUID:uuid2];
            [(NSArray *)v7 addObject:v21];
          }

          else if (!selfCopy->_statusMessage && ([v15 isCurrentUser] & 1) == 0)
          {
            PXSharedLibrarySettingsTextForIdentifyingParticipant(v15);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v24 = [participants countByEnumeratingWithState:&v59 objects:v64 count:16];
      v12 = v24;
    }

    while (v24);
  }

  v25 = sharedLibrary;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  libraryScope = [v26 libraryScope];
  photoLibrary = [libraryScope photoLibrary];

  if (photoLibrary)
  {
    v49 = photoLibrary;
    v50 = v25;
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v30 = [MEMORY[0x1E6978980] fetchPersonsWithLocalIdentifiers:v52 options:librarySpecificFetchOptions];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v31 = [v30 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v56;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v56 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v55 + 1) + 8 * i);
          v36 = [PXSharedLibraryRulePerson rulePersonWithPerson:v35];
          [v9 addObject:v36];

          v37 = MEMORY[0x1E6978980];
          uuid3 = [v35 uuid];
          v39 = [v37 localIdentifierWithUUID:uuid3];
          [(NSArray *)v7 addObject:v39];
        }

        v32 = [v30 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v32);
    }

    photoLibrary = v49;
    v25 = v50;
  }

  else
  {
    librarySpecificFetchOptions = PLSharedLibraryGetLog();
    if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, librarySpecificFetchOptions, OS_LOG_TYPE_ERROR, "Unable to add people to the snapshot without a valid Photo Library", buf, 2u);
    }
  }

  v40 = objc_opt_new();
  [(NSDiffableDataSourceSnapshot *)v40 appendSectionsWithIdentifiers:&unk_1F19110F8];
  [(NSDiffableDataSourceSnapshot *)v40 appendItemsWithIdentifiers:v9];
  currentSnapshot = selfCopy->_currentSnapshot;
  selfCopy->_currentSnapshot = v40;
  v42 = v40;

  currentPersonIdentifiers = selfCopy->_currentPersonIdentifiers;
  selfCopy->_currentPersonIdentifiers = v7;
  v44 = v7;

  delegate = [(PXSharedLibraryRulePeopleDataManager *)selfCopy delegate];
  [delegate sharedLibraryRulePeopleControllerDidChangeCurrentSnapshot:selfCopy];

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __62__PXSharedLibraryRulePeopleDataManager__updateCurrentSnapshot__block_invoke;
  v53[3] = &unk_1E774C5F8;
  v53[4] = selfCopy;
  [(PXSharedLibraryRulePeopleDataManager *)selfCopy performChanges:v53];
}

- (PXSharedLibraryRulePeopleDataManager)initWithSharedLibraryStatusProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = PXSharedLibraryRulePeopleDataManager;
  v6 = [(PXSharedLibraryRulePeopleDataManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statusProvider, provider);
    [(PXSharedLibraryStatusProvider *)v7->_statusProvider registerChangeObserver:v7 context:PXSharedLibraryStatusProviderObservationContext_166009];
    sharedLibrary = [(PXSharedLibraryStatusProvider *)v7->_statusProvider sharedLibrary];
    rule = [sharedLibrary rule];
    currentSharedLibraryRule = v7->_currentSharedLibraryRule;
    v7->_currentSharedLibraryRule = rule;

    currentPersonIdentifiers = v7->_currentPersonIdentifiers;
    v7->_currentPersonIdentifiers = MEMORY[0x1E695E0F0];
  }

  return v7;
}

@end