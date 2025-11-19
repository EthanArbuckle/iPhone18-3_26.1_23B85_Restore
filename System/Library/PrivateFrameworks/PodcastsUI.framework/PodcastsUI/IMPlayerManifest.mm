@interface IMPlayerManifest
+ (id)_activityType;
+ (void)registerManifestForRestoration:(Class)a3;
+ (void)restoreActivity:(id)a3 completion:(id)a4;
- (IMPlayerManifest)init;
- (NSUserActivity)activity;
- (id)description;
- (void)_load:(id)a3;
- (void)load:(id)a3;
- (void)next;
- (void)nextManifest:(id)a3;
- (void)postLoadedAdditionalItemsNotification;
- (void)postManifestDidChangeNotification;
- (void)previous;
- (void)setCurrentIndex:(unint64_t)a3;
- (void)setCurrentItem:(id)a3;
@end

@implementation IMPlayerManifest

+ (id)_activityType
{
  v2 = [a1 activityTypeSuffix];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 bundleIdentifier];

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.playback.%@", v4, v2];
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

    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v10;
  }

  return v2;
}

- (void)load:(id)a3
{
  v4 = a3;
  if ([(IMPlayerManifest *)self isLoaded])
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v5 = self;
    objc_sync_enter(v5);
    if ([(IMPlayerManifest *)v5 isLoaded])
    {
      if (v4)
      {
        v4[2](v4);
      }
    }

    else
    {
      [(IMPlayerManifest *)v5 setIsLoaded:1];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __25__IMPlayerManifest_load___block_invoke;
      v6[3] = &unk_2782BDFA0;
      v6[4] = v5;
      v7 = v4;
      [IMAVPlayer performOnMainQueue:v6];
    }

    objc_sync_exit(v5);
  }
}

- (void)_load:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
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

- (void)setCurrentItem:(id)a3
{
  v5 = a3;
  currentItem = self->_currentItem;
  if (currentItem != v5)
  {
    v9 = v5;
    currentItem = [(IMPlayerItem *)currentItem isEqual:v5];
    v5 = v9;
    if ((currentItem & 1) == 0)
    {
      objc_storeStrong(&self->_currentItem, a3);
      v7 = [(IMPlayerManifest *)self activity];
      [(IMPlayerItem *)v9 updateActivity:v7];

      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 postNotificationName:@"IMPlayerManifestCurrentItemDidChange" object:self];

      v5 = v9;
    }
  }

  MEMORY[0x2821F96F8](currentItem, v5);
}

- (void)setCurrentIndex:(unint64_t)a3
{
  [(IMPlayerManifest *)self assertIndexInBounds:?];
  self->_currentIndex = a3;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {

    [(IMPlayerManifest *)self setCurrentItem:0];
  }

  else
  {
    v5 = [(IMPlayerManifest *)self objectAtIndex:a3];
    [(IMPlayerManifest *)self setCurrentItem:v5];
  }
}

- (void)nextManifest:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (NSUserActivity)activity
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() _activityType];
  if (v3)
  {
    if (!self->_activity)
    {
      v4 = [MEMORY[0x277D3DB60] isRunningOnTV];
      v5 = objc_alloc(MEMORY[0x277CC1EF0]);
      v6 = v5;
      if (v4)
      {
        v7 = [v5 initWithActivityType:v3];
        activity = self->_activity;
        self->_activity = v7;
      }

      else
      {
        v19 = *MEMORY[0x277D77BB0];
        v20[0] = MEMORY[0x277CBEC28];
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
        v11 = [v6 _initWithTypeIdentifier:v3 suggestedActionType:1 options:v10];
        v12 = self->_activity;
        self->_activity = v11;
      }

      [(NSUserActivity *)self->_activity setContentUserAction:*MEMORY[0x277CCA848]];
    }

    v13 = [(IMPlayerManifest *)self title];

    if (v13)
    {
      v14 = self->_activity;
      v15 = [(IMPlayerManifest *)self title];
      [(NSUserActivity *)v14 setValue:v15 forKey:@"IMPlayerManifestTitle"];
    }

    v16 = [(IMPlayerManifest *)self currentItem];

    if (v16)
    {
      v17 = [(IMPlayerManifest *)self currentItem];
      [v17 updateActivity:self->_activity];
    }

    v9 = self->_activity;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)restoreActivity:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _activityTypeToClassMap;
  v8 = [v5 activityType];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__IMPlayerManifest_restoreActivity_completion___block_invoke;
    v10[3] = &unk_2782BE2D0;
    v11 = v5;
    v12 = v6;
    [v9 createManifestForActivity:v11 completion:v10];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
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

+ (void)registerManifestForRestoration:(Class)a3
{
  if (registerManifestForRestoration__onceToken != -1)
  {
    +[IMPlayerManifest registerManifestForRestoration:];
  }

  v4 = [(objc_class *)a3 _activityType];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [_activityTypeToClassMap setObject:a3 forKey:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"IMPlayerManifestDidLoadAdditionalItems" object:self];
}

- (void)postManifestDidChangeNotification
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"IMPlayerManifestDidChange" object:self];
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