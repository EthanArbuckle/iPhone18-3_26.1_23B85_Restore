@interface PKWorldRegionUpdater
- (PKWorldRegionUpdater)initWithSearchService:(id)service;
- (void)_accessObserversWithHandler:(id)handler;
- (void)_beginReverseGeocodingIfPossible;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)updateCoordinatesForWorldRegionIfNeeded:(id)needed;
@end

@implementation PKWorldRegionUpdater

- (PKWorldRegionUpdater)initWithSearchService:(id)service
{
  serviceCopy = service;
  v23.receiver = self;
  v23.super_class = PKWorldRegionUpdater;
  v6 = [(PKWorldRegionUpdater *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchService, service);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    regionsToGeocode = v7->_regionsToGeocode;
    v7->_regionsToGeocode = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    regionsFailedToGeocode = v7->_regionsFailedToGeocode;
    v7->_regionsFailedToGeocode = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    regionIdentifiersToGeocode = v7->_regionIdentifiersToGeocode;
    v7->_regionIdentifiersToGeocode = v12;

    v7->_lockObservers._os_unfair_lock_opaque = 0;
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v7->_observers;
    v7->_observers = pk_weakObjectsHashTableUsingPointerPersonality;

    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(v16, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v18 = dispatch_queue_create("com.apple.passkit.worldregionupdater.work", v17);
    workQueue = v7->_workQueue;
    v7->_workQueue = v18;

    v20 = dispatch_queue_create("com.apple.passkit.worldregionupdater.reply", v17);
    replyQueue = v7->_replyQueue;
    v7->_replyQueue = v20;
  }

  return v7;
}

- (void)updateCoordinatesForWorldRegionIfNeeded:(id)needed
{
  neededCopy = needed;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PKWorldRegionUpdater_updateCoordinatesForWorldRegionIfNeeded___block_invoke;
  v7[3] = &unk_1E8010A10;
  v8 = neededCopy;
  selfCopy = self;
  v6 = neededCopy;
  dispatch_async(workQueue, v7);
}

void __64__PKWorldRegionUpdater_updateCoordinatesForWorldRegionIfNeeded___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 displayRegion];
    if (!CLLocationCoordinate2DIsValid(v7))
    {
      v3 = *(*(a1 + 40) + 40);
      v4 = [*(a1 + 32) identifier];
      LOBYTE(v3) = [v3 containsObject:v4];

      if ((v3 & 1) == 0)
      {
        v5 = [*(a1 + 32) identifier];
        if (([*(*(a1 + 40) + 32) containsObject:?] & 1) == 0)
        {
          [*(*(a1 + 40) + 24) addObject:*(a1 + 32)];
          [*(*(a1 + 40) + 32) addObject:v5];
        }

        [*(a1 + 40) _beginReverseGeocodingIfPossible];
      }
    }
  }
}

- (void)_beginReverseGeocodingIfPossible
{
  v21 = *MEMORY[0x1E69E9840];
  p_currentRegionToGeocode = &self->_currentRegionToGeocode;
  if (!self->_currentRegionToGeocode)
  {
    firstObject = [(NSMutableArray *)self->_regionsToGeocode firstObject];
    v5 = firstObject;
    if (firstObject)
    {
      identifier = [firstObject identifier];
      objc_storeStrong(p_currentRegionToGeocode, v5);
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Updating region %@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v8 = objc_alloc(MEMORY[0x1E696F260]);
      searchString = [v5 searchString];
      v10 = [v8 initWithNaturalLanguageQuery:searchString];

      v11 = [objc_alloc(MEMORY[0x1E696F248]) initWithRequest:v10];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __56__PKWorldRegionUpdater__beginReverseGeocodingIfPossible__block_invoke;
      v14[3] = &unk_1E8020AB0;
      objc_copyWeak(&v18, buf);
      v12 = identifier;
      v15 = v12;
      v13 = v5;
      v16 = v13;
      selfCopy = self;
      [v11 startWithCompletionHandler:v14];

      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
    }
  }
}

void __56__PKWorldRegionUpdater__beginReverseGeocodingIfPossible__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = [v5 mapItems];
    v9 = [v8 firstObject];

    if (v9)
    {
      [v5 boundingRegion];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = WeakRetained[1];
      v19 = *(a1 + 32);
      v20 = [*(a1 + 40) localizedName];
      v21 = [v9 _muid];
      v22 = [v9 _resultProviderID];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __56__PKWorldRegionUpdater__beginReverseGeocodingIfPossible__block_invoke_2;
      v35[3] = &unk_1E8020A88;
      v35[4] = WeakRetained;
      v23 = 100000000;
      [v18 updateRegionWithIdentifier:v19 localizedName:v20 boundingRegion:v21 mapsIdentifier:v22 providerIdentifier:v35 completion:{v11, v13, v15, v17}];
    }

    else
    {
      v24 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 40);
        *buf = 138412546;
        v37 = v25;
        v38 = 2112;
        v39 = v6;
        _os_log_impl(&dword_1BD026000, v24, OS_LOG_TYPE_DEFAULT, "Failed to get response for %@, error: %@", buf, 0x16u);
      }

      if ([v6 _mapkit_underlyingGEOError] == -3)
      {
        v23 = 10000000000;
      }

      else
      {
        v23 = 100000000;
        v26 = WeakRetained[5];
        v27 = [*(a1 + 40) identifier];
        [v26 addObject:v27];
      }

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __56__PKWorldRegionUpdater__beginReverseGeocodingIfPossible__block_invoke_31;
      v33[3] = &unk_1E8020A60;
      v33[4] = WeakRetained;
      v34 = *(a1 + 40);
      [WeakRetained _accessObserversWithHandler:v33];
      v20 = v34;
    }

    v28 = dispatch_time(0, v23);
    v29 = *(a1 + 48);
    v30 = *(v29 + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__PKWorldRegionUpdater__beginReverseGeocodingIfPossible__block_invoke_2_34;
    block[3] = &unk_1E8010A10;
    block[4] = v29;
    v32 = *(a1 + 32);
    dispatch_after(v28, v30, block);
  }
}

void __56__PKWorldRegionUpdater__beginReverseGeocodingIfPossible__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Updated region %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PKWorldRegionUpdater__beginReverseGeocodingIfPossible__block_invoke_26;
  v7[3] = &unk_1E8020A60;
  v7[4] = v5;
  v8 = v3;
  v6 = v3;
  [v5 _accessObserversWithHandler:v7];
}

void __56__PKWorldRegionUpdater__beginReverseGeocodingIfPossible__block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 worldRegionUpdated:*(a1 + 32) updatedRegion:*(a1 + 40)];
  }
}

void __56__PKWorldRegionUpdater__beginReverseGeocodingIfPossible__block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 worldRegionUpdated:*(a1 + 32) failedToUpdateRegion:*(a1 + 40)];
  }
}

uint64_t __56__PKWorldRegionUpdater__beginReverseGeocodingIfPossible__block_invoke_2_34(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObjectAtIndex:0];
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);

  return [v4 _beginReverseGeocodingIfPossible];
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers addObject:observerCopy];

    os_unfair_lock_unlock(&self->_lockObservers);
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers removeObject:observerCopy];

    os_unfair_lock_unlock(&self->_lockObservers);
  }
}

- (void)_accessObserversWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    os_unfair_lock_lock(&self->_lockObservers);
    allObjects = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_lockObservers);
    replyQueue = self->_replyQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__PKWorldRegionUpdater__accessObserversWithHandler___block_invoke;
    v8[3] = &unk_1E8010DD0;
    v9 = allObjects;
    v10 = handlerCopy;
    v7 = allObjects;
    dispatch_async(replyQueue, v8);
  }
}

void __52__PKWorldRegionUpdater__accessObserversWithHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end