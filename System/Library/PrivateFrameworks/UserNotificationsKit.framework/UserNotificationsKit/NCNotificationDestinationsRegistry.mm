@interface NCNotificationDestinationsRegistry
- (BOOL)hasActiveDestinationsForRequest:(id)request;
- (BOOL)isRegisteredDestination:(id)destination;
- (NCNotificationDestinationsRegistry)init;
- (NSArray)registeredDestinations;
- (id)_destinationsForRequestDestinations:(id)destinations inDestinationDict:(id)dict;
- (id)destinationIdentifiersForRequestDestinations:(id)destinations;
- (id)destinationsForRequestDestinations:(id)destinations;
- (id)readyDestinationsForRequestDestinations:(id)destinations;
- (unint64_t)count;
- (void)registerDestination:(id)destination;
- (void)registerDestination:(id)destination forIdentifier:(id)identifier;
- (void)setDestination:(id)destination enabled:(BOOL)enabled;
- (void)setDestination:(id)destination ready:(BOOL)ready;
- (void)setDestinationWithIdentifier:(id)identifier enabled:(BOOL)enabled;
- (void)unregisterDestination:(id)destination;
- (void)unregisterDestinationForIdentifier:(id)identifier;
@end

@implementation NCNotificationDestinationsRegistry

- (NCNotificationDestinationsRegistry)init
{
  v10.receiver = self;
  v10.super_class = NCNotificationDestinationsRegistry;
  v2 = [(NCNotificationDestinationsRegistry *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    destinations = v2->_destinations;
    v2->_destinations = v3;

    v5 = objc_opt_new();
    activeDestinations = v2->_activeDestinations;
    v2->_activeDestinations = v5;

    v7 = objc_opt_new();
    readyDestinations = v2->_readyDestinations;
    v2->_readyDestinations = v7;
  }

  return v2;
}

- (void)registerDestination:(id)destination
{
  destinationCopy = destination;
  identifier = [destinationCopy identifier];
  [(NCNotificationDestinationsRegistry *)self registerDestination:destinationCopy forIdentifier:identifier];
}

- (void)registerDestination:(id)destination forIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  identifierCopy = identifier;
  destinations = [(NCNotificationDestinationsRegistry *)self destinations];
  v9 = [destinations objectForKey:identifierCopy];

  if (v9)
  {
    if (([v9 isEqual:destinationCopy] & 1) == 0)
    {
      v10 = NCUILogDispatch;
      if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v21 = 138543874;
        v22 = v13;
        v23 = 2114;
        v24 = identifierCopy;
        v25 = 2114;
        v26 = v15;
        _os_log_impl(&dword_270A33000, v11, OS_LOG_TYPE_DEFAULT, "Replacing destination %{public}@ for identifier %{public}@ with destination %{public}@", &v21, 0x20u);
      }

      activeDestinations = [(NCNotificationDestinationsRegistry *)self activeDestinations];
      identifier = [destinationCopy identifier];
      [activeDestinations removeObjectForKey:identifier];
      goto LABEL_8;
    }
  }

  else
  {
    v18 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      activeDestinations = v18;
      v19 = objc_opt_class();
      identifier = NSStringFromClass(v19);
      v21 = 138543618;
      v22 = identifier;
      v23 = 2114;
      v24 = identifierCopy;
      _os_log_impl(&dword_270A33000, activeDestinations, OS_LOG_TYPE_DEFAULT, "Registering destination %{public}@ for identifier %{public}@", &v21, 0x16u);
LABEL_8:
    }
  }

  destinations2 = [(NCNotificationDestinationsRegistry *)self destinations];
  [destinations2 setObject:destinationCopy forKey:identifierCopy];
}

- (BOOL)isRegisteredDestination:(id)destination
{
  destinationCopy = destination;
  destinations = [(NCNotificationDestinationsRegistry *)self destinations];
  allValues = [destinations allValues];
  v7 = [allValues containsObject:destinationCopy];

  return v7;
}

- (void)unregisterDestination:(id)destination
{
  identifier = [destination identifier];
  [(NCNotificationDestinationsRegistry *)self unregisterDestinationForIdentifier:identifier];
}

- (void)unregisterDestinationForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  destinations = [(NCNotificationDestinationsRegistry *)self destinations];
  v6 = [destinations objectForKey:identifierCopy];

  if (v6)
  {
    v7 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = identifierCopy;
      _os_log_impl(&dword_270A33000, v8, OS_LOG_TYPE_DEFAULT, "Unregistering destination %{public}@ for identifier %{public}@", &v14, 0x16u);
    }

    readyDestinations = [(NCNotificationDestinationsRegistry *)self readyDestinations];
    [readyDestinations removeObjectForKey:identifierCopy];

    activeDestinations = [(NCNotificationDestinationsRegistry *)self activeDestinations];
    [activeDestinations removeObjectForKey:identifierCopy];

    destinations2 = [(NCNotificationDestinationsRegistry *)self destinations];
    [destinations2 removeObjectForKey:identifierCopy];
  }
}

- (BOOL)hasActiveDestinationsForRequest:(id)request
{
  requestDestinations = [request requestDestinations];
  v5 = [(NCNotificationDestinationsRegistry *)self destinationsForRequestDestinations:requestDestinations];

  LOBYTE(requestDestinations) = [v5 count] != 0;
  return requestDestinations;
}

- (id)destinationIdentifiersForRequestDestinations:(id)destinations
{
  v20 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  v5 = objc_opt_new();
  activeDestinations = [(NCNotificationDestinationsRegistry *)self activeDestinations];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = destinationsCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [activeDestinations objectForKey:{v12, v15}];
        if (v13)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v5;
}

- (id)destinationsForRequestDestinations:(id)destinations
{
  destinationsCopy = destinations;
  activeDestinations = [(NCNotificationDestinationsRegistry *)self activeDestinations];
  v6 = [(NCNotificationDestinationsRegistry *)self _destinationsForRequestDestinations:destinationsCopy inDestinationDict:activeDestinations];

  return v6;
}

- (void)setDestination:(id)destination enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v25 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  identifier = [destinationCopy identifier];
  destinations = [(NCNotificationDestinationsRegistry *)self destinations];
  v9 = [destinations objectForKey:identifier];

  if (([v9 isEqual:destinationCopy] & 1) == 0)
  {
    v10 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_ERROR))
    {
      if (enabledCopy)
      {
        v11 = "enable";
      }

      else
      {
        v11 = "disable";
      }

      v12 = v10;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = 136446978;
      v18 = v11;
      v19 = 2114;
      v20 = v14;
      v21 = 2114;
      v22 = v16;
      v23 = 2114;
      v24 = identifier;
      _os_log_error_impl(&dword_270A33000, v12, OS_LOG_TYPE_ERROR, "Tried to %{public}s destination %{public}@ but %{public}@ is registered for identifier %{public}@", &v17, 0x2Au);
    }
  }

  [(NCNotificationDestinationsRegistry *)self setDestinationWithIdentifier:identifier enabled:enabledCopy];
}

- (void)setDestinationWithIdentifier:(id)identifier enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  destinations = [(NCNotificationDestinationsRegistry *)self destinations];
  v8 = [destinations objectForKey:identifierCopy];

  activeDestinations = [(NCNotificationDestinationsRegistry *)self activeDestinations];
  v10 = [activeDestinations objectForKey:identifierCopy];

  if (v10 || !enabledCopy)
  {
    if (v10)
    {
      if (!enabledCopy)
      {
        activeDestinations2 = [(NCNotificationDestinationsRegistry *)self activeDestinations];
        [activeDestinations2 removeObjectForKey:identifierCopy];

        v18 = NCUILogDispatch;
        if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v18;
          v19 = objc_opt_class();
          v15 = NSStringFromClass(v19);
          v20 = 138543362;
          v21 = v15;
          v16 = "Disabled destination %{public}@";
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    activeDestinations3 = [(NCNotificationDestinationsRegistry *)self activeDestinations];
    [activeDestinations3 setObject:v8 forKey:identifierCopy];

    v12 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v20 = 138543362;
      v21 = v15;
      v16 = "Enabled destination %{public}@";
LABEL_9:
      _os_log_impl(&dword_270A33000, v13, OS_LOG_TYPE_DEFAULT, v16, &v20, 0xCu);
    }
  }
}

- (NSArray)registeredDestinations
{
  destinations = [(NCNotificationDestinationsRegistry *)self destinations];
  allValues = [destinations allValues];

  return allValues;
}

- (unint64_t)count
{
  destinations = [(NCNotificationDestinationsRegistry *)self destinations];
  v3 = [destinations count];

  return v3;
}

- (void)setDestination:(id)destination ready:(BOOL)ready
{
  readyCopy = ready;
  v38 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  identifier = [destinationCopy identifier];
  destinations = [(NCNotificationDestinationsRegistry *)self destinations];
  v9 = [destinations objectForKey:identifier];

  if (([v9 isEqual:destinationCopy] & 1) == 0)
  {
    v10 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_ERROR))
    {
      if (readyCopy)
      {
        v24 = "set ready";
      }

      else
      {
        v24 = "set not ready";
      }

      v25 = v10;
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = 136446978;
      v31 = v24;
      v32 = 2114;
      v33 = v27;
      v34 = 2114;
      v35 = v29;
      v36 = 2114;
      v37 = identifier;
      _os_log_error_impl(&dword_270A33000, v25, OS_LOG_TYPE_ERROR, "Tried to %{public}s for destination %{public}@ but %{public}@ is registered for identifier %{public}@", &v30, 0x2Au);
    }
  }

  activeDestinations = [(NCNotificationDestinationsRegistry *)self activeDestinations];
  v12 = [activeDestinations objectForKey:identifier];

  readyDestinations = [(NCNotificationDestinationsRegistry *)self readyDestinations];
  v14 = [readyDestinations objectForKey:identifier];

  if (!v14 && readyCopy && v12)
  {
    readyDestinations2 = [(NCNotificationDestinationsRegistry *)self readyDestinations];
    [readyDestinations2 setObject:destinationCopy forKey:identifier];

    v16 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v30 = 138543362;
      v31 = v19;
      v20 = "Destination %{public}@ set to ready";
LABEL_12:
      _os_log_impl(&dword_270A33000, v17, OS_LOG_TYPE_DEFAULT, v20, &v30, 0xCu);
    }
  }

  else if (v14)
  {
    if (!readyCopy)
    {
      readyDestinations3 = [(NCNotificationDestinationsRegistry *)self readyDestinations];
      [readyDestinations3 removeObjectForKey:identifier];

      v22 = NCUILogDispatch;
      if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v22;
        v23 = objc_opt_class();
        v19 = NSStringFromClass(v23);
        v30 = 138543362;
        v31 = v19;
        v20 = "Destination %{public}@ set to not ready";
        goto LABEL_12;
      }
    }
  }
}

- (id)readyDestinationsForRequestDestinations:(id)destinations
{
  destinationsCopy = destinations;
  readyDestinations = [(NCNotificationDestinationsRegistry *)self readyDestinations];
  v6 = [(NCNotificationDestinationsRegistry *)self _destinationsForRequestDestinations:destinationsCopy inDestinationDict:readyDestinations];

  return v6;
}

- (id)_destinationsForRequestDestinations:(id)destinations inDestinationDict:(id)dict
{
  v20 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  dictCopy = dict;
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = destinationsCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [dictCopy objectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

@end