@interface SBFOverridableDateProvider
- (SBFOverridableDateProvider)init;
- (SBFOverridableDateProvider)initWithDateProvider:(id)provider;
- (double)additionalOffset;
- (id)date;
- (id)observeMinuteUpdatesWithHandler:(id)handler;
- (void)_fireHandlersForDate:(id)date;
- (void)_updateForOverrides;
- (void)_updateUnderlyingProvider;
- (void)removeMinuteUpdateHandler:(id)handler;
- (void)setAdditionalOffset:(double)offset;
@end

@implementation SBFOverridableDateProvider

void __55__SBFOverridableDateProvider__updateUnderlyingProvider__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) == 0.0)
  {
    v5 = v6;
  }

  else
  {
    v4 = [v6 dateByAddingTimeInterval:?];

    v5 = v4;
  }

  v7 = v5;
  [WeakRetained _fireHandlersForDate:v5];
}

- (id)date
{
  overrideDate = self->_overrideDate;
  if (overrideDate)
  {
    date = overrideDate;
  }

  else
  {
    date = [(SBFDateProviding *)self->_underlyingProvider date];
  }

  v5 = date;
  if (self->_overrideDateOffset != 0.0)
  {
    v6 = [(NSDate *)date dateByAddingTimeInterval:?];

    v5 = v6;
  }

  return v5;
}

- (void)_updateUnderlyingProvider
{
  v3 = [(NSMutableDictionary *)self->_minuteHandlers count];
  underlyingToken = self->_underlyingToken;
  overrideDate = self->_overrideDate;
  if (v3)
  {
    v6 = overrideDate == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    if (!underlyingToken)
    {
      overrideDateOffset = self->_overrideDateOffset;
      objc_initWeak(&location, self);
      underlyingProvider = self->_underlyingProvider;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __55__SBFOverridableDateProvider__updateUnderlyingProvider__block_invoke;
      v14[3] = &unk_1E807F8A0;
      objc_copyWeak(v15, &location);
      v15[1] = *&overrideDateOffset;
      v12 = [(SBFDateProviding *)underlyingProvider observeMinuteUpdatesWithHandler:v14];
      v13 = self->_underlyingToken;
      self->_underlyingToken = v12;

      objc_destroyWeak(v15);
      objc_destroyWeak(&location);
    }
  }

  else if (underlyingToken)
  {
    if (v3)
    {
      v7 = overrideDate == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      date = [(SBFOverridableDateProvider *)self date];
      [(SBFOverridableDateProvider *)self _fireHandlersForDate:date];

      underlyingToken = self->_underlyingToken;
    }

    [(SBFDateProviding *)self->_underlyingProvider removeMinuteUpdateHandler:underlyingToken];
    v9 = self->_underlyingToken;
    self->_underlyingToken = 0;
  }
}

- (SBFOverridableDateProvider)init
{
  v3 = objc_alloc_init(SBFDefaultDateProvider);
  v4 = [(SBFOverridableDateProvider *)self initWithDateProvider:v3];

  return v4;
}

- (SBFOverridableDateProvider)initWithDateProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = SBFOverridableDateProvider;
  v6 = [(SBFOverridableDateProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingProvider, provider);
    v8 = +[SBFDateTimeController sharedInstance];
    dateTimeController = v7->_dateTimeController;
    v7->_dateTimeController = v8;

    [(SBFDateTimeController *)v7->_dateTimeController addObserver:v7];
    [(SBFOverridableDateProvider *)v7 _updateForOverrides];
  }

  return v7;
}

- (id)observeMinuteUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x1E696AD98];
  ++self->_nextToken;
  v6 = [v5 numberWithUnsignedInteger:?];
  if (!self->_minuteHandlers)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    minuteHandlers = self->_minuteHandlers;
    self->_minuteHandlers = v7;
  }

  v9 = [handlerCopy copy];
  v10 = MEMORY[0x1BFB4D9B0]();
  [(NSMutableDictionary *)self->_minuteHandlers setObject:v10 forKeyedSubscript:v6];

  [(SBFOverridableDateProvider *)self _updateUnderlyingProvider];

  return v6;
}

- (void)removeMinuteUpdateHandler:(id)handler
{
  [(NSMutableDictionary *)self->_minuteHandlers removeObjectForKey:handler];

  [(SBFOverridableDateProvider *)self _updateUnderlyingProvider];
}

- (void)setAdditionalOffset:(double)offset
{
  if (objc_opt_respondsToSelector())
  {
    underlyingProvider = self->_underlyingProvider;

    [(SBFDateProviding *)underlyingProvider setAdditionalOffset:offset];
  }
}

- (double)additionalOffset
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  underlyingProvider = self->_underlyingProvider;

  [(SBFDateProviding *)underlyingProvider additionalOffset];
  return result;
}

- (void)_updateForOverrides
{
  overrideDate = [(SBFDateTimeController *)self->_dateTimeController overrideDate];
  v4 = [overrideDate copy];
  overrideDate = self->_overrideDate;
  self->_overrideDate = v4;

  [(SBFDateTimeController *)self->_dateTimeController overrideDateOffset];
  self->_overrideDateOffset = v6;
  [(SBFOverridableDateProvider *)self _updateUnderlyingProvider];
  date = [(SBFOverridableDateProvider *)self date];
  [(SBFOverridableDateProvider *)self _fireHandlersForDate:date];
}

- (void)_fireHandlersForDate:(id)date
{
  dateCopy = date;
  minuteHandlers = self->_minuteHandlers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__SBFOverridableDateProvider__fireHandlersForDate___block_invoke;
  v7[3] = &unk_1E807F560;
  v8 = dateCopy;
  v6 = dateCopy;
  [(NSMutableDictionary *)minuteHandlers enumerateKeysAndObjectsUsingBlock:v7];
}

@end