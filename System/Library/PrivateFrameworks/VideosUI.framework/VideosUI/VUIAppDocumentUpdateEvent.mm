@interface VUIAppDocumentUpdateEvent
+ (id)accountChanged;
+ (id)appDidBecomeActive;
+ (id)appRefresh;
+ (id)brandVisibilityChanged;
+ (id)clearPlayHistory;
+ (id)deviceDiscoveryDataAvailable;
+ (id)entitlements;
+ (id)favorites;
+ (id)favoritesSyncCompleted;
+ (id)federatedAppDidInstall;
+ (id)groupRecoCollectionVisiblityChanged;
+ (id)groupRecoUsersChanged;
+ (id)highlightsChanged;
+ (id)locationAuthorizationChanged;
+ (id)locationRetrieved;
+ (id)pinnedTabsChanged;
+ (id)playActivity;
+ (id)playHistoryUpdated;
+ (id)preferredVideoFormat;
+ (id)purchases;
+ (id)removeFromPlayHistory;
+ (id)restrictions;
+ (id)settings;
+ (id)upNextLockupArtSettingChanged;
+ (id)utsk;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRefreshEvent;
- (NSDictionary)dictionaryRepresentation;
- (VUIAppDocumentUpdateEvent)init;
- (VUIAppDocumentUpdateEvent)initWithDescriptor:(id)a3;
- (id)coalescedEvent:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation VUIAppDocumentUpdateEvent

+ (id)purchases
{
  if (purchases___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent purchases];
  }

  v3 = purchases___event;

  return v3;
}

void __38__VUIAppDocumentUpdateEvent_purchases__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor purchases];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = purchases___event;
  purchases___event = v1;
}

+ (id)playActivity
{
  if (playActivity___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent playActivity];
  }

  v3 = playActivity___event;

  return v3;
}

void __41__VUIAppDocumentUpdateEvent_playActivity__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor playActivity];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = playActivity___event;
  playActivity___event = v1;
}

+ (id)settings
{
  if (settings___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent settings];
  }

  v3 = settings___event;

  return v3;
}

void __37__VUIAppDocumentUpdateEvent_settings__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor settings];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = settings___event;
  settings___event = v1;
}

+ (id)favorites
{
  if (favorites___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent favorites];
  }

  v3 = favorites___event;

  return v3;
}

void __38__VUIAppDocumentUpdateEvent_favorites__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor favorites];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = favorites___event;
  favorites___event = v1;
}

+ (id)accountChanged
{
  if (accountChanged___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent accountChanged];
  }

  v3 = accountChanged___event;

  return v3;
}

void __43__VUIAppDocumentUpdateEvent_accountChanged__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor accountChanged];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = accountChanged___event;
  accountChanged___event = v1;
}

+ (id)removeFromPlayHistory
{
  if (removeFromPlayHistory___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent removeFromPlayHistory];
  }

  v3 = removeFromPlayHistory___event;

  return v3;
}

void __50__VUIAppDocumentUpdateEvent_removeFromPlayHistory__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor removeFromPlayHistory];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = removeFromPlayHistory___event;
  removeFromPlayHistory___event = v1;
}

+ (id)entitlements
{
  if (entitlements___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent entitlements];
  }

  v3 = entitlements___event;

  return v3;
}

void __41__VUIAppDocumentUpdateEvent_entitlements__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor entitlements];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = entitlements___event;
  entitlements___event = v1;
}

+ (id)restrictions
{
  if (restrictions___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent restrictions];
  }

  v3 = restrictions___event;

  return v3;
}

void __41__VUIAppDocumentUpdateEvent_restrictions__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor restrictions];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = restrictions___event;
  restrictions___event = v1;
}

+ (id)utsk
{
  if (utsk___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent utsk];
  }

  v3 = utsk___event;

  return v3;
}

void __33__VUIAppDocumentUpdateEvent_utsk__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor utsk];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = utsk___event;
  utsk___event = v1;
}

+ (id)preferredVideoFormat
{
  if (preferredVideoFormat___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent preferredVideoFormat];
  }

  v3 = preferredVideoFormat___event;

  return v3;
}

void __49__VUIAppDocumentUpdateEvent_preferredVideoFormat__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor preferredVideoFormat];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = preferredVideoFormat___event;
  preferredVideoFormat___event = v1;
}

+ (id)appDidBecomeActive
{
  if (appDidBecomeActive___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent appDidBecomeActive];
  }

  v3 = appDidBecomeActive___event;

  return v3;
}

void __47__VUIAppDocumentUpdateEvent_appDidBecomeActive__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor appDidBecomeActive];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = appDidBecomeActive___event;
  appDidBecomeActive___event = v1;
}

+ (id)playHistoryUpdated
{
  if (playHistoryUpdated___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent playHistoryUpdated];
  }

  v3 = playHistoryUpdated___event;

  return v3;
}

void __47__VUIAppDocumentUpdateEvent_playHistoryUpdated__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor playHistoryUpdated];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = playHistoryUpdated___event;
  playHistoryUpdated___event = v1;
}

+ (id)clearPlayHistory
{
  if (clearPlayHistory___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent clearPlayHistory];
  }

  v3 = clearPlayHistory___event;

  return v3;
}

void __45__VUIAppDocumentUpdateEvent_clearPlayHistory__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor clearPlayHistory];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = clearPlayHistory___event;
  clearPlayHistory___event = v1;
}

+ (id)appRefresh
{
  if (appRefresh___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent appRefresh];
  }

  v3 = appRefresh___event;

  return v3;
}

void __39__VUIAppDocumentUpdateEvent_appRefresh__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor appRefresh];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = appRefresh___event;
  appRefresh___event = v1;
}

+ (id)locationAuthorizationChanged
{
  if (locationAuthorizationChanged___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent locationAuthorizationChanged];
  }

  v3 = locationAuthorizationChanged___event;

  return v3;
}

void __57__VUIAppDocumentUpdateEvent_locationAuthorizationChanged__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor locationAuthorizationChanged];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = locationAuthorizationChanged___event;
  locationAuthorizationChanged___event = v1;
}

+ (id)locationRetrieved
{
  if (locationRetrieved___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent locationRetrieved];
  }

  v3 = locationRetrieved___event;

  return v3;
}

void __46__VUIAppDocumentUpdateEvent_locationRetrieved__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor locationRetrieved];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = locationRetrieved___event;
  locationRetrieved___event = v1;
}

+ (id)highlightsChanged
{
  if (highlightsChanged___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent highlightsChanged];
  }

  v3 = highlightsChanged___event;

  return v3;
}

void __46__VUIAppDocumentUpdateEvent_highlightsChanged__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor highlightsChanged];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = highlightsChanged___event;
  highlightsChanged___event = v1;
}

+ (id)groupRecoCollectionVisiblityChanged
{
  if (groupRecoCollectionVisiblityChanged___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent groupRecoCollectionVisiblityChanged];
  }

  v3 = groupRecoCollectionVisiblityChanged___event;

  return v3;
}

void __64__VUIAppDocumentUpdateEvent_groupRecoCollectionVisiblityChanged__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor groupRecoCollectionVisiblityChanged];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = groupRecoCollectionVisiblityChanged___event;
  groupRecoCollectionVisiblityChanged___event = v1;
}

+ (id)groupRecoUsersChanged
{
  if (groupRecoUsersChanged___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent groupRecoUsersChanged];
  }

  v3 = groupRecoUsersChanged___event;

  return v3;
}

void __50__VUIAppDocumentUpdateEvent_groupRecoUsersChanged__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor groupRecoUsersChanged];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = groupRecoUsersChanged___event;
  groupRecoUsersChanged___event = v1;
}

+ (id)upNextLockupArtSettingChanged
{
  if (upNextLockupArtSettingChanged___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent upNextLockupArtSettingChanged];
  }

  v3 = upNextLockupArtSettingChanged___event;

  return v3;
}

void __58__VUIAppDocumentUpdateEvent_upNextLockupArtSettingChanged__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor upNextLockupArtSettingChanged];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = upNextLockupArtSettingChanged___event;
  upNextLockupArtSettingChanged___event = v1;
}

+ (id)deviceDiscoveryDataAvailable
{
  if (deviceDiscoveryDataAvailable___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent deviceDiscoveryDataAvailable];
  }

  v3 = deviceDiscoveryDataAvailable___event;

  return v3;
}

void __57__VUIAppDocumentUpdateEvent_deviceDiscoveryDataAvailable__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor deviceDiscoveryDataAvailable];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = deviceDiscoveryDataAvailable___event;
  deviceDiscoveryDataAvailable___event = v1;
}

+ (id)favoritesSyncCompleted
{
  if (favoritesSyncCompleted___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent favoritesSyncCompleted];
  }

  v3 = favoritesSyncCompleted___event;

  return v3;
}

void __51__VUIAppDocumentUpdateEvent_favoritesSyncCompleted__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor favoritesSyncCompleted];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = favoritesSyncCompleted___event;
  favoritesSyncCompleted___event = v1;
}

+ (id)brandVisibilityChanged
{
  if (brandVisibilityChanged___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent brandVisibilityChanged];
  }

  v3 = brandVisibilityChanged___event;

  return v3;
}

void __51__VUIAppDocumentUpdateEvent_brandVisibilityChanged__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor brandVisibilityChanged];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = brandVisibilityChanged___event;
  brandVisibilityChanged___event = v1;
}

+ (id)federatedAppDidInstall
{
  if (federatedAppDidInstall___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent federatedAppDidInstall];
  }

  v3 = federatedAppDidInstall___event;

  return v3;
}

void __51__VUIAppDocumentUpdateEvent_federatedAppDidInstall__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor federatedAppDidInstall];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = federatedAppDidInstall___event;
  federatedAppDidInstall___event = v1;
}

+ (id)pinnedTabsChanged
{
  if (pinnedTabsChanged___onceToken_0 != -1)
  {
    +[VUIAppDocumentUpdateEvent pinnedTabsChanged];
  }

  v3 = pinnedTabsChanged___event;

  return v3;
}

void __46__VUIAppDocumentUpdateEvent_pinnedTabsChanged__block_invoke()
{
  v0 = [VUIAppDocumentUpdateEvent alloc];
  v3 = +[VUIAppDocumentUpdateEventDescriptor pinnedTabsChanged];
  v1 = [(VUIAppDocumentUpdateEvent *)v0 initWithDescriptor:v3];
  v2 = pinnedTabsChanged___event;
  pinnedTabsChanged___event = v1;
}

- (VUIAppDocumentUpdateEvent)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIAppDocumentUpdateEvent)initWithDescriptor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VUIAppDocumentUpdateEvent;
  v6 = [(VUIAppDocumentUpdateEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, a3);
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(VUIAppDocumentUpdateEvent *)self descriptor];
  v3 = VUIAppDocumentUpdateEventStringRepresentationFromEventType([v2 type]);

  v6 = @"type";
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (id)coalescedEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 descriptor];
  v6 = [(VUIAppDocumentUpdateEvent *)self descriptor];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = self;
  }

  else
  {
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(VUIAppDocumentModifiedFavoritesEvent *)self coalescedEvent:v4, v9];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)isRefreshEvent
{
  v2 = [(VUIAppDocumentUpdateEvent *)self descriptor];
  v3 = [v2 type];

  return v3 < 3;
}

- (unint64_t)hash
{
  v2 = [(VUIAppDocumentUpdateEvent *)self descriptor];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(VUIAppDocumentUpdateEvent *)self descriptor];
    v8 = [(VUIAppDocumentUpdateEvent *)v6 descriptor];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0;
      if (v9 && v10)
      {
        v12 = [v9 isEqual:v10];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12.receiver = self;
  v12.super_class = VUIAppDocumentUpdateEvent;
  v4 = [(VUIAppDocumentUpdateEvent *)&v12 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIAppDocumentUpdateEvent *)self descriptor];
  v7 = [v5 stringWithFormat:@"%@=%@", @"descriptor", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [v8 stringWithFormat:@"<%@>", v9];

  return v10;
}

@end