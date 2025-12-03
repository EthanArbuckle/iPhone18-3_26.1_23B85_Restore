@interface _SKUIVideoPreviewNotificationObserver
- (_SKUIVideoPreviewNotificationObserver)initWithObservers:(id)observers;
- (void)dealloc;
@end

@implementation _SKUIVideoPreviewNotificationObserver

- (_SKUIVideoPreviewNotificationObserver)initWithObservers:(id)observers
{
  observersCopy = observers;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(_SKUIVideoPreviewNotificationObserver *)v5 initWithObservers:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = _SKUIVideoPreviewNotificationObserver;
  v13 = [(_SKUIVideoPreviewNotificationObserver *)&v17 init];
  if (v13)
  {
    v14 = [observersCopy copy];
    observers = v13->_observers;
    v13->_observers = v14;
  }

  return v13;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_observers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [defaultCenter removeObserver:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = _SKUIVideoPreviewNotificationObserver;
  [(_SKUIVideoPreviewNotificationObserver *)&v9 dealloc];
}

@end