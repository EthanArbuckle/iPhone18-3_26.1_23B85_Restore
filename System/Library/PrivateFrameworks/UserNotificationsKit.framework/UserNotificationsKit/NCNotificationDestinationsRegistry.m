@interface NCNotificationDestinationsRegistry
- (BOOL)hasActiveDestinationsForRequest:(id)a3;
- (BOOL)isRegisteredDestination:(id)a3;
- (NCNotificationDestinationsRegistry)init;
- (NSArray)registeredDestinations;
- (id)_destinationsForRequestDestinations:(id)a3 inDestinationDict:(id)a4;
- (id)destinationIdentifiersForRequestDestinations:(id)a3;
- (id)destinationsForRequestDestinations:(id)a3;
- (id)readyDestinationsForRequestDestinations:(id)a3;
- (unint64_t)count;
- (void)registerDestination:(id)a3;
- (void)registerDestination:(id)a3 forIdentifier:(id)a4;
- (void)setDestination:(id)a3 enabled:(BOOL)a4;
- (void)setDestination:(id)a3 ready:(BOOL)a4;
- (void)setDestinationWithIdentifier:(id)a3 enabled:(BOOL)a4;
- (void)unregisterDestination:(id)a3;
- (void)unregisterDestinationForIdentifier:(id)a3;
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

- (void)registerDestination:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  [(NCNotificationDestinationsRegistry *)self registerDestination:v4 forIdentifier:v5];
}

- (void)registerDestination:(id)a3 forIdentifier:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NCNotificationDestinationsRegistry *)self destinations];
  v9 = [v8 objectForKey:v7];

  if (v9)
  {
    if (([v9 isEqual:v6] & 1) == 0)
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
        v24 = v7;
        v25 = 2114;
        v26 = v15;
        _os_log_impl(&dword_270A33000, v11, OS_LOG_TYPE_DEFAULT, "Replacing destination %{public}@ for identifier %{public}@ with destination %{public}@", &v21, 0x20u);
      }

      v16 = [(NCNotificationDestinationsRegistry *)self activeDestinations];
      v17 = [v6 identifier];
      [v16 removeObjectForKey:v17];
      goto LABEL_8;
    }
  }

  else
  {
    v18 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v18;
      v19 = objc_opt_class();
      v17 = NSStringFromClass(v19);
      v21 = 138543618;
      v22 = v17;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&dword_270A33000, v16, OS_LOG_TYPE_DEFAULT, "Registering destination %{public}@ for identifier %{public}@", &v21, 0x16u);
LABEL_8:
    }
  }

  v20 = [(NCNotificationDestinationsRegistry *)self destinations];
  [v20 setObject:v6 forKey:v7];
}

- (BOOL)isRegisteredDestination:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationDestinationsRegistry *)self destinations];
  v6 = [v5 allValues];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (void)unregisterDestination:(id)a3
{
  v4 = [a3 identifier];
  [(NCNotificationDestinationsRegistry *)self unregisterDestinationForIdentifier:v4];
}

- (void)unregisterDestinationForIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationDestinationsRegistry *)self destinations];
  v6 = [v5 objectForKey:v4];

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
      v17 = v4;
      _os_log_impl(&dword_270A33000, v8, OS_LOG_TYPE_DEFAULT, "Unregistering destination %{public}@ for identifier %{public}@", &v14, 0x16u);
    }

    v11 = [(NCNotificationDestinationsRegistry *)self readyDestinations];
    [v11 removeObjectForKey:v4];

    v12 = [(NCNotificationDestinationsRegistry *)self activeDestinations];
    [v12 removeObjectForKey:v4];

    v13 = [(NCNotificationDestinationsRegistry *)self destinations];
    [v13 removeObjectForKey:v4];
  }
}

- (BOOL)hasActiveDestinationsForRequest:(id)a3
{
  v4 = [a3 requestDestinations];
  v5 = [(NCNotificationDestinationsRegistry *)self destinationsForRequestDestinations:v4];

  LOBYTE(v4) = [v5 count] != 0;
  return v4;
}

- (id)destinationIdentifiersForRequestDestinations:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(NCNotificationDestinationsRegistry *)self activeDestinations];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
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
        v13 = [v6 objectForKey:{v12, v15}];
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

- (id)destinationsForRequestDestinations:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationDestinationsRegistry *)self activeDestinations];
  v6 = [(NCNotificationDestinationsRegistry *)self _destinationsForRequestDestinations:v4 inDestinationDict:v5];

  return v6;
}

- (void)setDestination:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [(NCNotificationDestinationsRegistry *)self destinations];
  v9 = [v8 objectForKey:v7];

  if (([v9 isEqual:v6] & 1) == 0)
  {
    v10 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_ERROR))
    {
      if (v4)
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
      v24 = v7;
      _os_log_error_impl(&dword_270A33000, v12, OS_LOG_TYPE_ERROR, "Tried to %{public}s destination %{public}@ but %{public}@ is registered for identifier %{public}@", &v17, 0x2Au);
    }
  }

  [(NCNotificationDestinationsRegistry *)self setDestinationWithIdentifier:v7 enabled:v4];
}

- (void)setDestinationWithIdentifier:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NCNotificationDestinationsRegistry *)self destinations];
  v8 = [v7 objectForKey:v6];

  v9 = [(NCNotificationDestinationsRegistry *)self activeDestinations];
  v10 = [v9 objectForKey:v6];

  if (v10 || !v4)
  {
    if (v10)
    {
      if (!v4)
      {
        v17 = [(NCNotificationDestinationsRegistry *)self activeDestinations];
        [v17 removeObjectForKey:v6];

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
    v11 = [(NCNotificationDestinationsRegistry *)self activeDestinations];
    [v11 setObject:v8 forKey:v6];

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
  v2 = [(NCNotificationDestinationsRegistry *)self destinations];
  v3 = [v2 allValues];

  return v3;
}

- (unint64_t)count
{
  v2 = [(NCNotificationDestinationsRegistry *)self destinations];
  v3 = [v2 count];

  return v3;
}

- (void)setDestination:(id)a3 ready:(BOOL)a4
{
  v4 = a4;
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [(NCNotificationDestinationsRegistry *)self destinations];
  v9 = [v8 objectForKey:v7];

  if (([v9 isEqual:v6] & 1) == 0)
  {
    v10 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_ERROR))
    {
      if (v4)
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
      v37 = v7;
      _os_log_error_impl(&dword_270A33000, v25, OS_LOG_TYPE_ERROR, "Tried to %{public}s for destination %{public}@ but %{public}@ is registered for identifier %{public}@", &v30, 0x2Au);
    }
  }

  v11 = [(NCNotificationDestinationsRegistry *)self activeDestinations];
  v12 = [v11 objectForKey:v7];

  v13 = [(NCNotificationDestinationsRegistry *)self readyDestinations];
  v14 = [v13 objectForKey:v7];

  if (!v14 && v4 && v12)
  {
    v15 = [(NCNotificationDestinationsRegistry *)self readyDestinations];
    [v15 setObject:v6 forKey:v7];

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
    if (!v4)
    {
      v21 = [(NCNotificationDestinationsRegistry *)self readyDestinations];
      [v21 removeObjectForKey:v7];

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

- (id)readyDestinationsForRequestDestinations:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationDestinationsRegistry *)self readyDestinations];
  v6 = [(NCNotificationDestinationsRegistry *)self _destinationsForRequestDestinations:v4 inDestinationDict:v5];

  return v6;
}

- (id)_destinationsForRequestDestinations:(id)a3 inDestinationDict:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
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

        v13 = [v6 objectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
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