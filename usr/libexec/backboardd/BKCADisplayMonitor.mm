@interface BKCADisplayMonitor
- (BKCADisplayMonitor)init;
- (BKCADisplayMonitor)initWithDisplayProvider:(id)a3 log:(id)a4 filterPredicate:(id)a5;
- (BKCADisplayMonitor)initWithLog:(id)a3;
- (BKCADisplayMonitor)initWithLog:(id)a3 filterPredicate:(id)a4;
- (BOOL)_filterDisplay:(id)a3 usingPredicate:(id)a4;
- (BOOL)displayUUIDIsActive:(id)a3;
- (id)_filterDisplays:(id)a3 usingPredicate:(id)a4;
- (id)_immutableDisplays;
- (id)addDiffObserver:(id)a3;
- (id)addObserver:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)reevaluateActiveDisplaysWithReason:(id)a3;
- (void)setDisplayFilterPredicate:(id)a3;
@end

@implementation BKCADisplayMonitor

- (void)reevaluateActiveDisplaysWithReason:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v81 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "reevaluateActiveDisplaysWithReason: %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_filterPredicateLock);
  v6 = [self->_filterPredicateLock_displayFilterPredicate copy];
  os_unfair_lock_unlock(&self->_filterPredicateLock);
  v7 = [(BKCADisplayMonitor *)self _immutableDisplays];
  v8 = [(BKCADisplayMonitor *)self _filterDisplays:v7 usingPredicate:v6];
  os_unfair_lock_lock(&self->_displayLock);
  v9 = [(NSMutableDictionary *)self->_displayLock_displayUUIDKeyToImmutableCADisplay allValues];
  v10 = [NSSet setWithArray:v9];

  v11 = [v8 allValues];
  v12 = [NSSet setWithArray:v11];

  objc_storeStrong(&self->_displayLock_displayUUIDKeyToImmutableCADisplay, v8);
  [(NSMutableDictionary *)self->_displayLock_displayIndexToDisplayUUID removeAllObjects];
  displayLock_displayUUIDKeyToImmutableCADisplay = self->_displayLock_displayUUIDKeyToImmutableCADisplay;
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_10008ADC0;
  v74[3] = &unk_1000FCAB8;
  v74[4] = self;
  [(NSMutableDictionary *)displayLock_displayUUIDKeyToImmutableCADisplay enumerateKeysAndObjectsUsingBlock:v74];
  v14 = [(BSCompoundAssertion *)self->_displayLock_observerAssertion context];
  v15 = [v14 copy];

  v16 = [(BSCompoundAssertion *)self->_displayLock_diffObserverAssertion context];
  v49 = [v16 copy];

  os_unfair_lock_unlock(&self->_displayLock);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v15;
  v17 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v71;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v71 != v19)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v70 + 1) + 8 * i) monitor:self activeDisplaysDidChange:v8];
      }

      v18 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
    }

    while (v18);
  }

  v21 = v49;
  if ([v49 count])
  {
    v45 = v8;
    v46 = v7;
    v47 = v6;
    v48 = v4;
    v53 = [v12 mutableCopy];
    [v53 intersectSet:v10];
    v52 = [v12 mutableCopy];
    [v52 minusSet:v10];
    v44 = v10;
    v22 = [v10 mutableCopy];
    v43 = v12;
    [v22 minusSet:v12];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v50 = v49;
    v23 = [v50 countByEnumeratingWithState:&v66 objects:v78 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v67;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v67 != v25)
          {
            objc_enumerationMutation(v50);
          }

          v27 = *(*(&v66 + 1) + 8 * j);
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v28 = v52;
          v29 = [v28 countByEnumeratingWithState:&v62 objects:v77 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v63;
            do
            {
              for (k = 0; k != v30; k = k + 1)
              {
                if (*v63 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                [v27 monitor:self displayDidBecomeActive:*(*(&v62 + 1) + 8 * k)];
              }

              v30 = [v28 countByEnumeratingWithState:&v62 objects:v77 count:16];
            }

            while (v30);
          }

          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v33 = v22;
          v34 = [v33 countByEnumeratingWithState:&v58 objects:v76 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v59;
            do
            {
              for (m = 0; m != v35; m = m + 1)
              {
                if (*v59 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                [v27 monitor:self displayDidBecomeInactive:*(*(&v58 + 1) + 8 * m)];
              }

              v35 = [v33 countByEnumeratingWithState:&v58 objects:v76 count:16];
            }

            while (v35);
          }

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v38 = v53;
          v39 = [v38 countByEnumeratingWithState:&v54 objects:v75 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v55;
            do
            {
              for (n = 0; n != v40; n = n + 1)
              {
                if (*v55 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                [v27 monitor:self activeDisplayPropertiesDidChange:*(*(&v54 + 1) + 8 * n)];
              }

              v40 = [v38 countByEnumeratingWithState:&v54 objects:v75 count:16];
            }

            while (v40);
          }
        }

        v24 = [v50 countByEnumeratingWithState:&v66 objects:v78 count:16];
      }

      while (v24);
    }

    v6 = v47;
    v4 = v48;
    v8 = v45;
    v7 = v46;
    v12 = v43;
    v10 = v44;
    v21 = v49;
  }
}

- (void)setDisplayFilterPredicate:(id)a3
{
  v4 = [a3 copy];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = log;
    v7 = objc_retainBlock(v4);
    v10 = 134217984;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting display predicate: %p", &v10, 0xCu);
  }

  os_unfair_lock_lock(&self->_filterPredicateLock);
  v8 = objc_retainBlock(v4);
  filterPredicateLock_displayFilterPredicate = self->_filterPredicateLock_displayFilterPredicate;
  self->_filterPredicateLock_displayFilterPredicate = v8;

  os_unfair_lock_unlock(&self->_filterPredicateLock);
  [(BKCADisplayMonitor *)self reevaluateActiveDisplaysWithReason:@"predicate changed"];
}

- (id)_filterDisplays:(id)a3 usingPredicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = objc_alloc_init(NSMutableDictionary);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    v12 = BKSDisplayUUIDMainKey;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ([(BKCADisplayMonitor *)self _filterDisplay:v14 usingPredicate:v7])
        {
          v15 = [v14 uniqueId];
          if ([v15 length])
          {
            v16 = v15;
          }

          else
          {
            v16 = v12;
          }

          v17 = v16;

          [v19 setObject:v14 forKey:v17];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return v19;
}

- (BOOL)_filterDisplay:(id)a3 usingPredicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uniqueId];
  v9 = [v8 length];
  v10 = BKSDisplayUUIDMainKey;
  if (v9)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [v6 currentMode];
  if (v12)
  {
    v13 = v12;
    v14 = [v6 availableModes];
    v15 = [v14 count];

    if (v15)
    {
      v16 = [v6 currentMode];
      v17 = [v16 width];
      v18 = [v16 height];
      v19 = v18;
      if (v17 && v18)
      {
        if (!v7)
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v31 = v6;
            v32 = 2114;
            v33 = v11;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Display is active %{public}@ %{public}@ because: connected", buf, 0x16u);
          }

          goto LABEL_18;
        }

        v29 = 0;
        v20 = v7[2](v7, v6, &v29);
        v21 = v29;
        v22 = self->_log;
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        if (v20)
        {
          if (v23)
          {
            *buf = 138543874;
            v31 = v6;
            v32 = 2114;
            v33 = v11;
            v34 = 2114;
            v35 = *&v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Display is active %{public}@ %{public}@ because: %{public}@", buf, 0x20u);
          }

LABEL_18:
          v25 = 1;
          goto LABEL_23;
        }

        if (v23)
        {
          *buf = 138543874;
          v31 = v6;
          v32 = 2114;
          v33 = v11;
          v34 = 2114;
          v35 = *&v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Display is inactive %{public}@ %{public}@ because: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v26 = self->_log;
        v25 = 0;
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
LABEL_23:

          goto LABEL_24;
        }

        *buf = 138544130;
        v31 = v6;
        v32 = 2114;
        v33 = v11;
        v34 = 2048;
        v35 = v17;
        v36 = 2048;
        v37 = v19;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Display is inactive %{public}@ %{public}@ because: size is (%g,%g)", buf, 0x2Au);
      }

      v25 = 0;
      goto LABEL_23;
    }
  }

  v24 = self->_log;
  v25 = 0;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Display is inactive %{public}@ because: not connected", buf, 0xCu);
    v25 = 0;
  }

LABEL_24:

  return v25;
}

- (id)_immutableDisplays
{
  os_unfair_lock_assert_not_owner(&self->_displayLock);
  v3 = [(BKCADisplayProvider *)self->_displayProvider displays];
  v4 = [v3 bs_map:&stru_1000FCAF8];

  return v4;
}

- (BOOL)displayUUIDIsActive:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_displayLock);
  v5 = [(NSMutableDictionary *)self->_displayLock_displayUUIDKeyToImmutableCADisplay objectForKey:v4];

  os_unfair_lock_unlock(&self->_displayLock);
  return v5 != 0;
}

- (id)addDiffObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_displayLock);
  displayLock_diffObserverAssertion = self->_displayLock_diffObserverAssertion;
  if (!displayLock_diffObserverAssertion)
  {
    v6 = [BSCompoundAssertion assertionWithIdentifier:@"backboardd.CADisplayDiffObserver"];
    v7 = self->_displayLock_diffObserverAssertion;
    self->_displayLock_diffObserverAssertion = v6;

    displayLock_diffObserverAssertion = self->_displayLock_diffObserverAssertion;
  }

  v8 = [objc_opt_class() description];
  v9 = [(BSCompoundAssertion *)displayLock_diffObserverAssertion acquireForReason:v8 withContext:v4];

  os_unfair_lock_unlock(&self->_displayLock);

  return v9;
}

- (id)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_displayLock);
  os_unfair_lock_lock(&self->_displayLock);
  displayLock_observerAssertion = self->_displayLock_observerAssertion;
  if (!displayLock_observerAssertion)
  {
    v6 = [BSCompoundAssertion assertionWithIdentifier:@"backboardd.CADisplayObserver"];
    v7 = self->_displayLock_observerAssertion;
    self->_displayLock_observerAssertion = v6;

    displayLock_observerAssertion = self->_displayLock_observerAssertion;
  }

  v8 = [objc_opt_class() description];
  v9 = [(BSCompoundAssertion *)displayLock_observerAssertion acquireForReason:v8 withContext:v4];

  os_unfair_lock_unlock(&self->_displayLock);

  return v9;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_displayLock);
  if (!self->_displayLock_isInvalid)
  {
    self->_displayLock_isInvalid = 1;
    [(BKCADisplayProvider *)self->_displayProvider removeMonitor:self];
    displayProvider = self->_displayProvider;
    self->_displayProvider = 0;

    [(BSCompoundAssertion *)self->_displayLock_observerAssertion invalidate];
    displayLock_observerAssertion = self->_displayLock_observerAssertion;
    self->_displayLock_observerAssertion = 0;

    [(BSCompoundAssertion *)self->_displayLock_diffObserverAssertion invalidate];
    displayLock_diffObserverAssertion = self->_displayLock_diffObserverAssertion;
    self->_displayLock_diffObserverAssertion = 0;

    os_unfair_lock_lock(&self->_filterPredicateLock);
    filterPredicateLock_displayFilterPredicate = self->_filterPredicateLock_displayFilterPredicate;
    self->_filterPredicateLock_displayFilterPredicate = 0;

    os_unfair_lock_unlock(&self->_filterPredicateLock);
  }

  os_unfair_lock_unlock(&self->_displayLock);
}

- (BKCADisplayMonitor)initWithDisplayProvider:(id)a3 log:(id)a4 filterPredicate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28.receiver = self;
  v28.super_class = BKCADisplayMonitor;
  v11 = [(BKCADisplayMonitor *)&v28 init];
  if (v11)
  {
    if (!v8)
    {
      v8 = +[BKSharedCADisplayProvider sharedInstance];
    }

    objc_storeStrong(&v11->_displayProvider, v8);
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = sub_10005263C();
    }

    log = v11->_log;
    v11->_log = v12;

    v11->_displayLock._os_unfair_lock_opaque = 0;
    v14 = objc_alloc_init(NSMutableDictionary);
    displayLock_displayUUIDKeyToImmutableCADisplay = v11->_displayLock_displayUUIDKeyToImmutableCADisplay;
    v11->_displayLock_displayUUIDKeyToImmutableCADisplay = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    displayLock_displayIndexToDisplayUUID = v11->_displayLock_displayIndexToDisplayUUID;
    v11->_displayLock_displayIndexToDisplayUUID = v16;

    v18 = [(BKCADisplayMonitor *)v11 _immutableDisplays];
    v19 = [(BKCADisplayMonitor *)v11 _filterDisplays:v18 usingPredicate:v11->_filterPredicateLock_displayFilterPredicate];
    v20 = v11->_displayLock_displayUUIDKeyToImmutableCADisplay;
    v11->_displayLock_displayUUIDKeyToImmutableCADisplay = v19;

    v21 = v11->_displayLock_displayUUIDKeyToImmutableCADisplay;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10008B90C;
    v26[3] = &unk_1000FCAB8;
    v22 = v11;
    v27 = v22;
    [(NSMutableDictionary *)v21 enumerateKeysAndObjectsUsingBlock:v26];
    v22->_filterPredicateLock._os_unfair_lock_opaque = 0;
    v23 = [v10 copy];
    filterPredicateLock_displayFilterPredicate = v11->_filterPredicateLock_displayFilterPredicate;
    v11->_filterPredicateLock_displayFilterPredicate = v23;

    [(BKCADisplayProvider *)v11->_displayProvider addMonitor:v22];
  }

  return v11;
}

- (BKCADisplayMonitor)initWithLog:(id)a3 filterPredicate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[BKSharedCADisplayProvider sharedInstance];
  v9 = [(BKCADisplayMonitor *)self initWithDisplayProvider:v8 log:v7 filterPredicate:v6];

  return v9;
}

- (BKCADisplayMonitor)initWithLog:(id)a3
{
  v4 = a3;
  v5 = +[BKSharedCADisplayProvider sharedInstance];
  v6 = [(BKCADisplayMonitor *)self initWithDisplayProvider:v5 log:v4 filterPredicate:0];

  return v6;
}

- (BKCADisplayMonitor)init
{
  v3 = +[BKSharedCADisplayProvider sharedInstance];
  v4 = [(BKCADisplayMonitor *)self initWithDisplayProvider:v3 log:0 filterPredicate:0];

  return v4;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_displayLock);
  if (!self->_displayLock_isInvalid)
  {
    v4 = [NSString stringWithFormat:@"must invoke -invalidate before deallocating BKCADisplayMonitor"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      v14 = self;
      v15 = 2114;
      v16 = @"BKCADisplayMonitor.m";
      v17 = 1024;
      v18 = 211;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10008BC4CLL);
  }

  os_unfair_lock_unlock(&self->_displayLock);
  v8.receiver = self;
  v8.super_class = BKCADisplayMonitor;
  [(BKCADisplayMonitor *)&v8 dealloc];
}

@end