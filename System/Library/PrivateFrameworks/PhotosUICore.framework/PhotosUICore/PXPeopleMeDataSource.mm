@interface PXPeopleMeDataSource
+ (id)new;
- (PXPeopleMeDataSource)init;
- (PXPeopleMeDataSource)initWithPhotoLibrary:(id)library;
- (id)_fetchPersonWithUri:(id)uri;
- (id)_fetchQueue_suggestedPersonForMe;
- (void)_assertIsOnFetchQueue;
- (void)_fetchQueue_persistSuggestedPersonAsMe;
- (void)_fetchQueue_requestMeContactWithCompletion:(id)completion;
- (void)confirmSuggestedMePerson;
- (void)rejectSuggestedMePerson;
- (void)requestSuggestedMePersonWithCompletion:(id)completion;
@end

@implementation PXPeopleMeDataSource

- (PXPeopleMeDataSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleMeDataSource.m" lineNumber:231 description:{@"%s is not available as initializer", "-[PXPeopleMeDataSource init]"}];

  abort();
}

- (void)_assertIsOnFetchQueue
{
  label = dispatch_queue_get_label(0);
  fetchQueue = [(PXPeopleMeDataSource *)self fetchQueue];
  v6 = dispatch_queue_get_label(fetchQueue);

  if (label != v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleMeDataSource.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"dispatch_queue_get_label(DISPATCH_CURRENT_QUEUE_LABEL) == dispatch_queue_get_label(self.fetchQueue)"}];
  }
}

- (id)_fetchPersonWithUri:(id)uri
{
  uriCopy = uri;
  photoLibrary = [(PXPeopleMeDataSource *)self photoLibrary];
  v6 = [PXPeopleUtilities personWithPersonUri:uriCopy photoLibrary:photoLibrary];

  return v6;
}

- (void)_fetchQueue_persistSuggestedPersonAsMe
{
  [(PXPeopleMeDataSource *)self _assertIsOnFetchQueue];
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__PXPeopleMeDataSource__fetchQueue_persistSuggestedPersonAsMe__block_invoke;
  v3[3] = &unk_1E773D6E8;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(PXPeopleMeDataSource *)self _fetchQueue_requestMeContactWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __62__PXPeopleMeDataSource__fetchQueue_persistSuggestedPersonAsMe__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained suggestedPerson];

  if (v5)
  {
    v6 = [v5 localIdentifier];
    v7 = [*(a1 + 32) photoLibrary];
    v8 = [PXPeopleUtilities personWithLocalIdentifier:v6 photoLibrary:v7];

    if (v3 && v8)
    {
      v9 = [v3 identifier];
      v10 = [MEMORY[0x1E6978980] fullNameFromContact:v3];
      v11 = [MEMORY[0x1E6978980] displayNameFromContact:v3];
      v12 = [v8 photoLibrary];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __62__PXPeopleMeDataSource__fetchQueue_persistSuggestedPersonAsMe__block_invoke_2;
      v21[3] = &unk_1E773D6C0;
      v8 = v8;
      v22 = v8;
      v23 = v3;
      v13 = v9;
      v24 = v13;
      v14 = v10;
      v25 = v14;
      v15 = v11;
      v26 = v15;
      v20 = 0;
      v16 = [v12 performChangesAndWait:v21 error:&v20];
      v17 = v20;
      if ((v16 & 1) == 0)
      {
        v18 = PLUIGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v8 localIdentifier];
          *buf = 138543618;
          v28 = v19;
          v29 = 2112;
          v30 = v17;
          _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "Failed to change name for person: %{public}@ (%@)", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }
}

void __62__PXPeopleMeDataSource__fetchQueue_persistSuggestedPersonAsMe__block_invoke_2(uint64_t a1)
{
  v6 = [MEMORY[0x1E6978990] changeRequestForPerson:*(a1 + 32)];
  v2 = +[PXPeopleUtilities sharedContactStore];
  v3 = [MEMORY[0x1E69BE380] matchingDictionaryForContact:*(a1 + 40) contactStore:v2];
  [v6 setContactMatchingDictionary:v3];
  [v6 setPersonUri:*(a1 + 48)];
  v4 = [*(a1 + 32) name];
  v5 = [v4 length];

  if (!v5)
  {
    [v6 setName:*(a1 + 56)];
    [v6 setDisplayName:*(a1 + 64)];
  }
}

- (id)_fetchQueue_suggestedPersonForMe
{
  v29[2] = *MEMORY[0x1E69E9840];
  [(PXPeopleMeDataSource *)self _assertIsOnFetchQueue];
  if ([(PXPeopleMeDataSource *)self hasRequestedSuggestedPerson])
  {
    suggestedPerson = [(PXPeopleMeDataSource *)self suggestedPerson];
    goto LABEL_22;
  }

  v4 = +[PXPeopleUISettings sharedInstance];
  alwaysShowMe = [v4 alwaysShowMe];

  if (PFOSVariantHasInternalUI())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [standardUserDefaults integerForKey:@"PhotosPeopleSuggestedMeIndex"];

    if (((v7 < 0) & alwaysShowMe) != 0)
    {
      v7 = 0;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = MEMORY[0x1E6978830];
      photoLibrary = [(PXPeopleMeDataSource *)self photoLibrary];
      v10 = [v8 fetchOptionsWithPhotoLibrary:photoLibrary orObject:0];

      [v10 setPersonContext:1];
      v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"manualOrder" ascending:1];
      v29[0] = v11;
      v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
      v29[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
      [v10 setSortDescriptors:v13];

      v14 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v10];
      v15 = [v14 objectAtIndex:v7];
      if (v15)
      {
        suggestedPerson = v15;
        v16 = PLUIGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          localIdentifier = [suggestedPerson localIdentifier];
          *buf = 138543362;
          v28 = localIdentifier;
          _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "Using Debug suggested me person specified by PhotosPeopelSuggestedMeIndex: %{public}@", buf, 0xCu);
        }

LABEL_16:
        personUri = [suggestedPerson personUri];
        if (!(([personUri length] == 0) | alwaysShowMe & 1))
        {

          suggestedPerson = 0;
        }

        [(PXPeopleMeDataSource *)self setSuggestedPerson:suggestedPerson];
        [(PXPeopleMeDataSource *)self setRequestedSuggestedPerson:1];

        goto LABEL_22;
      }
    }
  }

  photoLibrary2 = [(PXPeopleMeDataSource *)self photoLibrary];
  v26 = 0;
  v19 = [photoLibrary2 suggestedMePersonIdentifierWithError:&v26];
  v20 = v26;

  v21 = PLUIGetLog();
  v22 = v21;
  if (v19)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v19;
      _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_DEFAULT, "Fetching suggested me person with identifier: %{public}@", buf, 0xCu);
    }

    photoLibrary3 = [(PXPeopleMeDataSource *)self photoLibrary];
    suggestedPerson = [PXPeopleUtilities personWithLocalIdentifier:v19 photoLibrary:photoLibrary3];

    if (suggestedPerson)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v20;
      _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_ERROR, "Failed to get suggested me person identifier: %@", buf, 0xCu);
    }

    suggestedPerson = 0;
  }

LABEL_22:

  return suggestedPerson;
}

- (void)_fetchQueue_requestMeContactWithCompletion:(id)completion
{
  completionCopy = completion;
  [(PXPeopleMeDataSource *)self _assertIsOnFetchQueue];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__146667;
  v18 = __Block_byref_object_dispose__146668;
  v19 = 0;
  meContactIsolationQueue = [(PXPeopleMeDataSource *)self meContactIsolationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PXPeopleMeDataSource__fetchQueue_requestMeContactWithCompletion___block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(meContactIsolationQueue, block);

  if (v15[5] || [(PXPeopleMeDataSource *)self hasRequestedMeContact])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v15[5]);
    }
  }

  else
  {
    [(PXPeopleMeDataSource *)self setRequestedMeContact:1];
    v6 = +[PXPeopleUtilities sharedContactStore];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__PXPeopleMeDataSource__fetchQueue_requestMeContactWithCompletion___block_invoke_2;
    v8[3] = &unk_1E7744148;
    v12 = &v14;
    v7 = v6;
    v9 = v7;
    selfCopy = self;
    v11 = completionCopy;
    [v7 requestAccessForEntityType:0 completionHandler:v8];
  }

  _Block_object_dispose(&v14, 8);
}

void __67__PXPeopleMeDataSource__fetchQueue_requestMeContactWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) meContact];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __67__PXPeopleMeDataSource__fetchQueue_requestMeContactWithCompletion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Error gaining access to Contacts for Me person fetching: %@", buf, 0xCu);
    }
  }

  if (a2)
  {
    v7 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
    v8 = *(a1 + 32);
    v20 = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v19 = v5;
    v10 = [v8 _crossPlatformUnifiedMeContactWithKeysToFetch:v9 error:&v19];
    v11 = v19;

    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v10;

    if (v11)
    {
      v14 = PLUIGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v11;
        _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "Error gaining access to the Me contact: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = v5;
  }

  v15 = [*(a1 + 40) meContactIsolationQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__PXPeopleMeDataSource__fetchQueue_requestMeContactWithCompletion___block_invoke_214;
  v18[3] = &unk_1E7749A28;
  v16 = *(a1 + 56);
  v18[4] = *(a1 + 40);
  v18[5] = v16;
  dispatch_sync(v15, v18);

  v17 = *(a1 + 48);
  if (v17)
  {
    (*(v17 + 16))(v17, *(*(*(a1 + 56) + 8) + 40));
  }
}

- (void)rejectSuggestedMePerson
{
  fetchQueue = [(PXPeopleMeDataSource *)self fetchQueue];
  dispatch_async(fetchQueue, &__block_literal_global_146673);
}

uint64_t __47__PXPeopleMeDataSource_rejectSuggestedMePerson__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 setBool:1 forKey:@"PXPeopleMePrompted"];

  v1 = MEMORY[0x1E6991F28];
  v2 = MEMORY[0x1E695E0F8];

  return [v1 sendEvent:@"com.apple.photos.CPAnalytics.people.me.rejected" withPayload:v2];
}

- (void)confirmSuggestedMePerson
{
  objc_initWeak(&location, self);
  fetchQueue = [(PXPeopleMeDataSource *)self fetchQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__PXPeopleMeDataSource_confirmSuggestedMePerson__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  dispatch_async(fetchQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

uint64_t __48__PXPeopleMeDataSource_confirmSuggestedMePerson__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 setBool:1 forKey:@"PXPeopleMePrompted"];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchQueue_persistSuggestedPersonAsMe];

  v4 = MEMORY[0x1E6991F28];
  v5 = MEMORY[0x1E695E0F8];

  return [v4 sendEvent:@"com.apple.photos.CPAnalytics.people.me.confirmed" withPayload:v5];
}

- (void)requestSuggestedMePersonWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleMeDataSource.m" lineNumber:56 description:@"completion must not be nil!"];
  }

  objc_initWeak(&location, self);
  fetchQueue = [(PXPeopleMeDataSource *)self fetchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PXPeopleMeDataSource_requestSuggestedMePersonWithCompletion___block_invoke;
  block[3] = &unk_1E774AA30;
  v10 = completionCopy;
  v7 = completionCopy;
  objc_copyWeak(&v11, &location);
  dispatch_async(fetchQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __63__PXPeopleMeDataSource_requestSuggestedMePersonWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PXPeopleMePrompted"];

  v4 = +[PXPeopleUISettings sharedInstance];
  v5 = [v4 alwaysShowMe];

  if (!v3 || (v5 & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__PXPeopleMeDataSource_requestSuggestedMePersonWithCompletion___block_invoke_2;
    v8[3] = &unk_1E773D698;
    objc_copyWeak(&v10, (a1 + 40));
    v11 = v5;
    v9 = *(a1 + 32);
    [WeakRetained _fetchQueue_requestMeContactWithCompletion:v8];

    objc_destroyWeak(&v10);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

void __63__PXPeopleMeDataSource_requestSuggestedMePersonWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8 && (([v8 identifier], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_loadWeakRetained((a1 + 40)), objc_msgSend(v4, "_fetchPersonWithUri:", v3), v5 = objc_claimAutoreleasedReturnValue(), v4, v5, v3, !v5) || *(a1 + 48) == 1))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained _fetchQueue_suggestedPersonForMe];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (PXPeopleMeDataSource)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v18.receiver = self;
  v18.super_class = PXPeopleMeDataSource;
  v6 = [(PXPeopleMeDataSource *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create("com.apple.photos.people.meDataSource.fetch", v9);
    fetchQueue = v7->_fetchQueue;
    v7->_fetchQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("com.apple.photos.people.meDataSource.meContactIsolation", v13);
    meContactIsolationQueue = v7->_meContactIsolationQueue;
    v7->_meContactIsolationQueue = v14;

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults registerDefaults:&unk_1F190F648];
  }

  return v7;
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleMeDataSource.m" lineNumber:235 description:{@"%s is not available as initializer", "+[PXPeopleMeDataSource new]"}];

  abort();
}

@end