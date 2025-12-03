@interface VUIAppDocumentUpdateEventDescriptor
+ (id)accountChanged;
+ (id)appDidBecomeActive;
+ (id)appRefresh;
+ (id)brandVisibilityChanged;
+ (id)clearPlayHistory;
+ (id)deviceDiscoveryDataAvailable;
+ (id)entitlements;
+ (id)favorites;
+ (id)favoritesInBackground;
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
+ (id)postPlay;
+ (id)preferredPlaybackDimensionalityChanged;
+ (id)preferredVideoFormat;
+ (id)purchases;
+ (id)removeFromPlayHistory;
+ (id)restrictions;
+ (id)settings;
+ (id)upNext;
+ (id)upNextLockupArtSettingChanged;
+ (id)utsk;
- (BOOL)isEqual:(id)equal;
- (VUIAppDocumentUpdateEventDescriptor)init;
- (VUIAppDocumentUpdateEventDescriptor)initWithEventType:(unint64_t)type;
- (id)description;
@end

@implementation VUIAppDocumentUpdateEventDescriptor

+ (id)purchases
{
  if (purchases___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor purchases];
  }

  v3 = purchases___eventDescriptor;

  return v3;
}

void __48__VUIAppDocumentUpdateEventDescriptor_purchases__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:3];
  v1 = purchases___eventDescriptor;
  purchases___eventDescriptor = v0;
}

+ (id)playActivity
{
  if (playActivity___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor playActivity];
  }

  v3 = playActivity___eventDescriptor;

  return v3;
}

void __51__VUIAppDocumentUpdateEventDescriptor_playActivity__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:5];
  v1 = playActivity___eventDescriptor;
  playActivity___eventDescriptor = v0;
}

+ (id)settings
{
  if (settings___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor settings];
  }

  v3 = settings___eventDescriptor;

  return v3;
}

void __47__VUIAppDocumentUpdateEventDescriptor_settings__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:6];
  v1 = settings___eventDescriptor;
  settings___eventDescriptor = v0;
}

+ (id)upNext
{
  if (upNext___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor upNext];
  }

  v3 = upNext___eventDescriptor;

  return v3;
}

void __45__VUIAppDocumentUpdateEventDescriptor_upNext__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:7];
  v1 = upNext___eventDescriptor;
  upNext___eventDescriptor = v0;
}

+ (id)upNextLockupArtSettingChanged
{
  if (upNextLockupArtSettingChanged___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor upNextLockupArtSettingChanged];
  }

  v3 = upNextLockupArtSettingChanged___eventDescriptor;

  return v3;
}

void __68__VUIAppDocumentUpdateEventDescriptor_upNextLockupArtSettingChanged__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:8];
  v1 = upNextLockupArtSettingChanged___eventDescriptor;
  upNextLockupArtSettingChanged___eventDescriptor = v0;
}

+ (id)preferredPlaybackDimensionalityChanged
{
  if (preferredPlaybackDimensionalityChanged___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor preferredPlaybackDimensionalityChanged];
  }

  v3 = preferredPlaybackDimensionalityChanged___eventDescriptor;

  return v3;
}

void __77__VUIAppDocumentUpdateEventDescriptor_preferredPlaybackDimensionalityChanged__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:29];
  v1 = preferredPlaybackDimensionalityChanged___eventDescriptor;
  preferredPlaybackDimensionalityChanged___eventDescriptor = v0;
}

+ (id)favorites
{
  if (favorites___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor favorites];
  }

  v3 = favorites___eventDescriptor;

  return v3;
}

void __48__VUIAppDocumentUpdateEventDescriptor_favorites__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:9];
  v1 = favorites___eventDescriptor;
  favorites___eventDescriptor = v0;
}

+ (id)favoritesInBackground
{
  if (favoritesInBackground___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor favoritesInBackground];
  }

  v3 = favoritesInBackground___eventDescriptor;

  return v3;
}

void __60__VUIAppDocumentUpdateEventDescriptor_favoritesInBackground__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:10];
  v1 = favoritesInBackground___eventDescriptor;
  favoritesInBackground___eventDescriptor = v0;
}

+ (id)accountChanged
{
  if (accountChanged___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor accountChanged];
  }

  v3 = accountChanged___eventDescriptor;

  return v3;
}

void __53__VUIAppDocumentUpdateEventDescriptor_accountChanged__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:11];
  v1 = accountChanged___eventDescriptor;
  accountChanged___eventDescriptor = v0;
}

+ (id)removeFromPlayHistory
{
  if (removeFromPlayHistory___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor removeFromPlayHistory];
  }

  v3 = removeFromPlayHistory___eventDescriptor;

  return v3;
}

void __60__VUIAppDocumentUpdateEventDescriptor_removeFromPlayHistory__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:12];
  v1 = removeFromPlayHistory___eventDescriptor;
  removeFromPlayHistory___eventDescriptor = v0;
}

+ (id)entitlements
{
  if (entitlements___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor entitlements];
  }

  v3 = entitlements___eventDescriptor;

  return v3;
}

void __51__VUIAppDocumentUpdateEventDescriptor_entitlements__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:13];
  v1 = entitlements___eventDescriptor;
  entitlements___eventDescriptor = v0;
}

+ (id)utsk
{
  if (utsk___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor utsk];
  }

  v3 = utsk___eventDescriptor;

  return v3;
}

void __43__VUIAppDocumentUpdateEventDescriptor_utsk__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:14];
  v1 = utsk___eventDescriptor;
  utsk___eventDescriptor = v0;
}

+ (id)restrictions
{
  if (restrictions___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor restrictions];
  }

  v3 = restrictions___eventDescriptor;

  return v3;
}

void __51__VUIAppDocumentUpdateEventDescriptor_restrictions__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:15];
  v1 = restrictions___eventDescriptor;
  restrictions___eventDescriptor = v0;
}

+ (id)preferredVideoFormat
{
  if (preferredVideoFormat___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor preferredVideoFormat];
  }

  v3 = preferredVideoFormat___eventDescriptor;

  return v3;
}

void __59__VUIAppDocumentUpdateEventDescriptor_preferredVideoFormat__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:16];
  v1 = preferredVideoFormat___eventDescriptor;
  preferredVideoFormat___eventDescriptor = v0;
}

+ (id)postPlay
{
  if (postPlay___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor postPlay];
  }

  v3 = postPlay___eventDescriptor;

  return v3;
}

void __47__VUIAppDocumentUpdateEventDescriptor_postPlay__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:17];
  v1 = postPlay___eventDescriptor;
  postPlay___eventDescriptor = v0;
}

+ (id)appDidBecomeActive
{
  if (appDidBecomeActive___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor appDidBecomeActive];
  }

  v3 = appDidBecomeActive___eventDescriptor;

  return v3;
}

void __57__VUIAppDocumentUpdateEventDescriptor_appDidBecomeActive__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:18];
  v1 = appDidBecomeActive___eventDescriptor;
  appDidBecomeActive___eventDescriptor = v0;
}

+ (id)playHistoryUpdated
{
  if (playHistoryUpdated___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor playHistoryUpdated];
  }

  v3 = playHistoryUpdated___eventDescriptor;

  return v3;
}

void __57__VUIAppDocumentUpdateEventDescriptor_playHistoryUpdated__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:19];
  v1 = playHistoryUpdated___eventDescriptor;
  playHistoryUpdated___eventDescriptor = v0;
}

+ (id)clearPlayHistory
{
  if (clearPlayHistory___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor clearPlayHistory];
  }

  v3 = clearPlayHistory___eventDescriptor;

  return v3;
}

void __55__VUIAppDocumentUpdateEventDescriptor_clearPlayHistory__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:20];
  v1 = clearPlayHistory___eventDescriptor;
  clearPlayHistory___eventDescriptor = v0;
}

+ (id)appRefresh
{
  if (appRefresh___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor appRefresh];
  }

  v3 = appRefresh___eventDescriptor;

  return v3;
}

void __49__VUIAppDocumentUpdateEventDescriptor_appRefresh__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:21];
  v1 = appRefresh___eventDescriptor;
  appRefresh___eventDescriptor = v0;
}

+ (id)locationAuthorizationChanged
{
  if (locationAuthorizationChanged___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor locationAuthorizationChanged];
  }

  v3 = locationAuthorizationChanged___eventDescriptor;

  return v3;
}

void __67__VUIAppDocumentUpdateEventDescriptor_locationAuthorizationChanged__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:22];
  v1 = locationAuthorizationChanged___eventDescriptor;
  locationAuthorizationChanged___eventDescriptor = v0;
}

+ (id)locationRetrieved
{
  if (locationRetrieved___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor locationRetrieved];
  }

  v3 = locationRetrieved___eventDescriptor;

  return v3;
}

void __56__VUIAppDocumentUpdateEventDescriptor_locationRetrieved__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:23];
  v1 = locationRetrieved___eventDescriptor;
  locationRetrieved___eventDescriptor = v0;
}

+ (id)highlightsChanged
{
  if (highlightsChanged___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor highlightsChanged];
  }

  v3 = highlightsChanged___eventDescriptor;

  return v3;
}

void __56__VUIAppDocumentUpdateEventDescriptor_highlightsChanged__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:24];
  v1 = highlightsChanged___eventDescriptor;
  highlightsChanged___eventDescriptor = v0;
}

+ (id)groupRecoCollectionVisiblityChanged
{
  if (groupRecoCollectionVisiblityChanged___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor groupRecoCollectionVisiblityChanged];
  }

  v3 = groupRecoCollectionVisiblityChanged___eventDescriptor;

  return v3;
}

void __74__VUIAppDocumentUpdateEventDescriptor_groupRecoCollectionVisiblityChanged__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:25];
  v1 = groupRecoCollectionVisiblityChanged___eventDescriptor;
  groupRecoCollectionVisiblityChanged___eventDescriptor = v0;
}

+ (id)groupRecoUsersChanged
{
  if (groupRecoUsersChanged___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor groupRecoUsersChanged];
  }

  v3 = groupRecoUsersChanged___eventDescriptor;

  return v3;
}

void __60__VUIAppDocumentUpdateEventDescriptor_groupRecoUsersChanged__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:26];
  v1 = groupRecoUsersChanged___eventDescriptor;
  groupRecoUsersChanged___eventDescriptor = v0;
}

+ (id)deviceDiscoveryDataAvailable
{
  if (deviceDiscoveryDataAvailable___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor deviceDiscoveryDataAvailable];
  }

  v3 = deviceDiscoveryDataAvailable___eventDescriptor;

  return v3;
}

void __67__VUIAppDocumentUpdateEventDescriptor_deviceDiscoveryDataAvailable__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:27];
  v1 = deviceDiscoveryDataAvailable___eventDescriptor;
  deviceDiscoveryDataAvailable___eventDescriptor = v0;
}

+ (id)favoritesSyncCompleted
{
  if (favoritesSyncCompleted___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor favoritesSyncCompleted];
  }

  v3 = favoritesSyncCompleted___eventDescriptor;

  return v3;
}

void __61__VUIAppDocumentUpdateEventDescriptor_favoritesSyncCompleted__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:28];
  v1 = favoritesSyncCompleted___eventDescriptor;
  favoritesSyncCompleted___eventDescriptor = v0;
}

+ (id)brandVisibilityChanged
{
  if (brandVisibilityChanged___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor brandVisibilityChanged];
  }

  v3 = brandVisibilityChanged___eventDescriptor;

  return v3;
}

void __61__VUIAppDocumentUpdateEventDescriptor_brandVisibilityChanged__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:30];
  v1 = brandVisibilityChanged___eventDescriptor;
  brandVisibilityChanged___eventDescriptor = v0;
}

+ (id)federatedAppDidInstall
{
  if (federatedAppDidInstall___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor federatedAppDidInstall];
  }

  v3 = federatedAppDidInstall___eventDescriptor;

  return v3;
}

void __61__VUIAppDocumentUpdateEventDescriptor_federatedAppDidInstall__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:31];
  v1 = federatedAppDidInstall___eventDescriptor;
  federatedAppDidInstall___eventDescriptor = v0;
}

+ (id)pinnedTabsChanged
{
  if (pinnedTabsChanged___onceToken != -1)
  {
    +[VUIAppDocumentUpdateEventDescriptor pinnedTabsChanged];
  }

  v3 = pinnedTabsChanged___eventDescriptor;

  return v3;
}

void __56__VUIAppDocumentUpdateEventDescriptor_pinnedTabsChanged__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventDescriptor alloc] initWithEventType:32];
  v1 = pinnedTabsChanged___eventDescriptor;
  pinnedTabsChanged___eventDescriptor = v0;
}

- (VUIAppDocumentUpdateEventDescriptor)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIAppDocumentUpdateEventDescriptor)initWithEventType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = VUIAppDocumentUpdateEventDescriptor;
  result = [(VUIAppDocumentUpdateEventDescriptor *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    type = [(VUIAppDocumentUpdateEventDescriptor *)self type];
    type2 = [(VUIAppDocumentUpdateEventDescriptor *)v6 type];

    v9 = type == type2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12.receiver = self;
  v12.super_class = VUIAppDocumentUpdateEventDescriptor;
  v4 = [(VUIAppDocumentUpdateEventDescriptor *)&v12 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = VUIAppDocumentUpdateEventStringRepresentationFromEventType([(VUIAppDocumentUpdateEventDescriptor *)self type]);
  v7 = [v5 stringWithFormat:@"%@=%@", @"type", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [v8 stringWithFormat:@"<%@>", v9];

  return v10;
}

@end