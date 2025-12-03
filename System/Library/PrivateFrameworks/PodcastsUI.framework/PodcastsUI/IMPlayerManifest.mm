@interface IMPlayerManifest
+ (id)_activityType;
+ (void)registerManifestForRestoration:(Class)restoration;
+ (void)restoreActivity:(id)activity completion:(id)completion;
- (IMPlayerManifest)init;
- (NSUserActivity)activity;
- (id)description;
- (void)_load:(id)_load;
- (void)load:(id)load;
- (void)next;
- (void)nextManifest:(id)manifest;
- (void)postLoadedAdditionalItemsNotification;
- (void)postManifestDidChangeNotification;
- (void)previous;
- (void)setCurrentIndex:(unint64_t)index;
- (void)setCurrentItem:(id)item;
@end

@implementation IMPlayerManifest

+ (id)_activityType
{
  activityTypeSuffix = [self activityTypeSuffix];
  if (activityTypeSuffix)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.playback.%@", bundleIdentifier, activityTypeSuffix];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (IMPlayerManifest)init
{
  v13.receiver = self;
  v13.super_class = IMPlayerManifest;
  v2 = [(IMPlayerManifest *)&v13 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"%@.worker_queue", v5];
    v7 = dispatch_queue_create([v6 UTF8String], 0);
    [(IMPlayerManifest *)v2 setQueue:v7];

    currentItem = v2->_currentItem;
    v2->_currentIndex = 0x7FFFFFFFFFFFFFFFLL;
    v2->_currentItem = 0;

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;
  }

  return v2;
}

- (void)load:(id)load
{
  loadCopy = load;
  if ([(IMPlayerManifest *)self isLoaded])
  {
    if (loadCopy)
    {
      loadCopy[2](loadCopy);
    }
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(IMPlayerManifest *)selfCopy isLoaded])
    {
      if (loadCopy)
      {
        loadCopy[2](loadCopy);
      }
    }

    else
    {
      [(IMPlayerManifest *)selfCopy setIsLoaded:1];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __25__IMPlayerManifest_load___block_invoke;
      v6[3] = &unk_2782BDFA0;
      v6[4] = selfCopy;
      v7 = loadCopy;
      [IMAVPlayer performOnMainQueue:v6];
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)_load:(id)_load
{
  if (_load)
  {
    (*(_load + 2))(_load);
  }
}

- (void)next
{
  if ([(IMPlayerManifest *)self hasNext])
  {
    v3 = [(IMPlayerManifest *)self currentIndex]+ 1;
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(IMPlayerManifest *)self setCurrentIndex:v3];
}

- (void)previous
{
  if ([(IMPlayerManifest *)self hasPrevious])
  {
    v3 = [(IMPlayerManifest *)self currentIndex]- 1;
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(IMPlayerManifest *)self setCurrentIndex:v3];
}

- (void)setCurrentItem:(id)item
{
  itemCopy = item;
  currentItem = self->_currentItem;
  if (currentItem != itemCopy)
  {
    v9 = itemCopy;
    currentItem = [(IMPlayerItem *)currentItem isEqual:itemCopy];
    itemCopy = v9;
    if ((currentItem & 1) == 0)
    {
      objc_storeStrong(&self->_currentItem, item);
      activity = [(IMPlayerManifest *)self activity];
      [(IMPlayerItem *)v9 updateActivity:activity];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"IMPlayerManifestCurrentItemDidChange" object:self];

      itemCopy = v9;
    }
  }

  MEMORY[0x2821F96F8](currentItem, itemCopy);
}

- (void)setCurrentIndex:(unint64_t)index
{
  [(IMPlayerManifest *)self assertIndexInBounds:?];
  self->_currentIndex = index;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {

    [(IMPlayerManifest *)self setCurrentItem:0];
  }

  else
  {
    v5 = [(IMPlayerManifest *)self objectAtIndex:index];
    [(IMPlayerManifest *)self setCurrentItem:v5];
  }
}

- (void)nextManifest:(id)manifest
{
  if (manifest)
  {
    (*(manifest + 2))(manifest, 0);
  }
}

- (NSUserActivity)activity
{
  v20[1] = *MEMORY[0x277D85DE8];
  _activityType = [objc_opt_class() _activityType];
  if (_activityType)
  {
    if (!self->_activity)
    {
      isRunningOnTV = [MEMORY[0x277D3DB60] isRunningOnTV];
      v5 = objc_alloc(MEMORY[0x277CC1EF0]);
      v6 = v5;
      if (isRunningOnTV)
      {
        v7 = [v5 initWithActivityType:_activityType];
        activity = self->_activity;
        self->_activity = v7;
      }

      else
      {
        v19 = *MEMORY[0x277D77BB0];
        v20[0] = MEMORY[0x277CBEC28];
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
        v11 = [v6 _initWithTypeIdentifier:_activityType suggestedActionType:1 options:v10];
        v12 = self->_activity;
        self->_activity = v11;
      }

      [(NSUserActivity *)self->_activity setContentUserAction:*MEMORY[0x277CCA848]];
    }

    title = [(IMPlayerManifest *)self title];

    if (title)
    {
      v14 = self->_activity;
      title2 = [(IMPlayerManifest *)self title];
      [(NSUserActivity *)v14 setValue:title2 forKey:@"IMPlayerManifestTitle"];
    }

    currentItem = [(IMPlayerManifest *)self currentItem];

    if (currentItem)
    {
      currentItem2 = [(IMPlayerManifest *)self currentItem];
      [currentItem2 updateActivity:self->_activity];
    }

    v9 = self->_activity;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)restoreActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  v7 = _activityTypeToClassMap;
  activityType = [activityCopy activityType];
  v9 = [v7 objectForKey:activityType];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__IMPlayerManifest_restoreActivity_completion___block_invoke;
    v10[3] = &unk_2782BE2D0;
    v11 = activityCopy;
    v12 = completionCopy;
    [v9 createManifestForActivity:v11 completion:v10];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __47__IMPlayerManifest_restoreActivity_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 valueForKey:@"IMPlayerManifestTitle"];
  [v6 setTitle:v5];

  (*(*(a1 + 40) + 16))();
}

+ (void)registerManifestForRestoration:(Class)restoration
{
  if (registerManifestForRestoration__onceToken != -1)
  {
    +[IMPlayerManifest registerManifestForRestoration:];
  }

  _activityType = [(objc_class *)restoration _activityType];
  v5 = _activityType;
  if (_activityType)
  {
    v6 = _activityType;
    _activityType = [_activityTypeToClassMap setObject:restoration forKey:_activityType];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](_activityType, v5);
}

uint64_t __51__IMPlayerManifest_registerManifestForRestoration___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _activityTypeToClassMap;
  _activityTypeToClassMap = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)postLoadedAdditionalItemsNotification
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"IMPlayerManifestDidLoadAdditionalItems" object:self];
}

- (void)postManifestDidChangeNotification
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"IMPlayerManifestDidChange" object:self];
}

- (id)description
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"count";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMPlayerManifest count](self, "count")}];
  v12[1] = @"index";
  v13[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMPlayerManifest currentIndex](self, "currentIndex")}];
  v13[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v6 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = IMPlayerManifest;
  v7 = [(IMPlayerManifest *)&v11 description];
  v8 = [v5 description];
  v9 = [v6 stringWithFormat:@"%@\n%@", v7, v8];

  return v9;
}

@end