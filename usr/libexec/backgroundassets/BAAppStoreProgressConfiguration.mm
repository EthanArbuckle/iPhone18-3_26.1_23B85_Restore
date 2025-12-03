@interface BAAppStoreProgressConfiguration
- (BAAppStoreProgressConfiguration)init;
- (BAAppStoreProgressConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setAppBundleIdentifiers:(id)identifiers;
- (void)setHandlerQueue:(id)queue;
- (void)setUpdateHandler:(id)handler;
@end

@implementation BAAppStoreProgressConfiguration

- (BAAppStoreProgressConfiguration)init
{
  v13.receiver = self;
  v13.super_class = BAAppStoreProgressConfiguration;
  v2 = [(BAAppStoreProgressConfiguration *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    appBundleIdentifiers = v3->_appBundleIdentifiers;
    v3->_appBundleIdentifiers = v4;

    updateHandler = v3->_updateHandler;
    v3->_updateHandler = 0;

    v7 = qos_class_self();
    v8 = dispatch_get_global_queue(v7, 0);
    handlerQueue = v3->_handlerQueue;
    v3->_handlerQueue = v8;

    v10 = objc_opt_new();
    duplicateEventCache = v3->_duplicateEventCache;
    v3->_duplicateEventCache = v10;
  }

  return v3;
}

- (BAAppStoreProgressConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = BAAppStoreProgressConfiguration;
  v5 = [(BAAppStoreProgressConfiguration *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"BA_AppBundleIdentifiers"];
    appBundleIdentifiers = v6->_appBundleIdentifiers;
    v6->_appBundleIdentifiers = v9;

    v11 = objc_opt_new();
    duplicateEventCache = v6->_duplicateEventCache;
    v6->_duplicateEventCache = v11;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeObject:self->_appBundleIdentifiers forKey:@"BA_AppBundleIdentifiers"];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAppBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v5 = [identifiersCopy copy];
  appBundleIdentifiers = self->_appBundleIdentifiers;
  self->_appBundleIdentifiers = v5;

  v7 = objc_autoreleasePoolPush();
  v8 = [NSMutableArray arrayWithCapacity:[(NSMutableDictionary *)self->_duplicateEventCache count]];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [(NSMutableDictionary *)self->_duplicateEventCache allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if (![(NSSet *)self->_appBundleIdentifiers containsObject:v14])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(NSMutableDictionary *)self->_duplicateEventCache removeObjectsForKeys:v8];
  objc_autoreleasePoolPop(v7);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setUpdateHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v5 = [handlerCopy copy];

  updateHandler = self->_updateHandler;
  self->_updateHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setHandlerQueue:(id)queue
{
  queueCopy = queue;
  os_unfair_lock_lock(&self->_lock);
  handlerQueue = self->_handlerQueue;
  self->_handlerQueue = queueCopy;

  os_unfair_lock_unlock(&self->_lock);
}

@end