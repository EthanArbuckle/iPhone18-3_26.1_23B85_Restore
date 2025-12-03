@interface BKHIDUISensorServiceMatchingWrapper
- (BKHIDUISensorServiceMatchingWrapper)init;
- (BKHIDUISensorServiceMatchingWrapper)initWithMatchingDictionary:(id)dictionary instantiateWrapperUsingBlock:(id)block;
- (BOOL)supportsProximityLPAEventTransitions;
- (void)_lock_applyUIMode:(id)mode toWrappers:(id)wrappers;
- (void)applyUIMode:(id)mode;
- (void)matcher:(id)matcher servicesDidMatch:(id)match;
- (void)proximityDidUnoccludeAfterScreenWake;
- (void)resetCalibration;
- (void)serviceDidDisappear:(id)disappear;
- (void)updateCharacteristics:(id)characteristics;
@end

@implementation BKHIDUISensorServiceMatchingWrapper

- (void)serviceDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSArray *)self->_lock_serviceWrappers mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  v6 = self->_lock_serviceWrappers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        service = [v11 service];
        v13 = [service isEqual:disappearCopy];

        if (v13)
        {
          v14 = BKLogUISensor();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v23 = v11;
            v24 = 2114;
            v25 = disappearCopy;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "removed %{public}@ for service:%{public}@", buf, 0x16u);
          }

          [v5 removeObject:v11];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  lock_serviceWrappers = selfCopy->_lock_serviceWrappers;
  selfCopy->_lock_serviceWrappers = v15;

  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (void)matcher:(id)matcher servicesDidMatch:(id)match
{
  matchCopy = match;
  os_unfair_lock_lock(&self->_lock);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000771E0;
  v12[3] = &unk_1000FC568;
  v12[4] = self;
  v6 = [matchCopy bs_map:v12];

  lock_serviceWrappers = self->_lock_serviceWrappers;
  if (lock_serviceWrappers)
  {
    v8 = [(NSArray *)lock_serviceWrappers arrayByAddingObjectsFromArray:v6];
  }

  else
  {
    v8 = v6;
  }

  v9 = self->_lock_serviceWrappers;
  self->_lock_serviceWrappers = v8;

  v10 = [(BKSHIDUISensorMode *)self->_lock_activeMode copy];
  v11 = [(NSArray *)self->_lock_serviceWrappers copy];
  if (v10)
  {
    [(BKHIDUISensorServiceMatchingWrapper *)self _lock_applyUIMode:v10 toWrappers:v11];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_applyUIMode:(id)mode toWrappers:(id)wrappers
{
  modeCopy = mode;
  wrappersCopy = wrappers;
  os_unfair_lock_assert_owner(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = wrappersCopy;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) applyUIMode:{modeCopy, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (BOOL)supportsProximityLPAEventTransitions
{
  os_unfair_lock_lock(&self->_lock);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_lock_serviceWrappers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) supportsProximityLPAEventTransitions])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)updateCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  os_unfair_lock_lock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_lock_serviceWrappers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) updateCharacteristics:{characteristicsCopy, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)applyUIMode:(id)mode
{
  modeCopy = mode;
  os_unfair_lock_lock(&self->_lock);
  lock_activeMode = self->_lock_activeMode;
  self->_lock_activeMode = modeCopy;
  v6 = modeCopy;

  [(BKHIDUISensorServiceMatchingWrapper *)self _lock_applyUIMode:v6 toWrappers:self->_lock_serviceWrappers];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)proximityDidUnoccludeAfterScreenWake
{
  os_unfair_lock_lock(&self->_lock);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_lock_serviceWrappers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) proximityDidUnoccludeAfterScreenWake];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)resetCalibration
{
  os_unfair_lock_lock(&self->_lock);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_lock_serviceWrappers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) resetCalibration];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BKHIDUISensorServiceMatchingWrapper)initWithMatchingDictionary:(id)dictionary instantiateWrapperUsingBlock:(id)block
{
  dictionaryCopy = dictionary;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = BKHIDUISensorServiceMatchingWrapper;
  v8 = [(BKHIDUISensorServiceMatchingWrapper *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = [blockCopy copy];
    instantiateWrapperBlock = v9->_instantiateWrapperBlock;
    v9->_instantiateWrapperBlock = v10;

    v12 = [BKIOHIDServiceMatcher alloc];
    v13 = +[BKHIDSystemInterface sharedInstance];
    v14 = [v12 initWithMatchingDictionary:dictionaryCopy dataProvider:v13];
    serviceMatcher = v9->_serviceMatcher;
    v9->_serviceMatcher = v14;

    [(BKIOHIDServiceMatcher *)v9->_serviceMatcher startObserving:v9 queue:&_dispatch_main_q];
  }

  return v9;
}

- (BKHIDUISensorServiceMatchingWrapper)init
{
  v4 = [NSString stringWithFormat:@"nope"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKHIDUISensorServiceMatchingWrapper.m";
    v17 = 1024;
    v18 = 37;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end