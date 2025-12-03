@interface WBSSafariBookmarksSyncAgentProxy
+ (id)sharedProxy;
- (WBSSafariBookmarksSyncAgentProxy)init;
- (void)beginMigrationFromDAV;
- (void)clearServerChangeTokenWithCompletionHandler:(id)handler;
- (void)collectDiagnosticsDataWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)deleteBackgroundImageDirectory;
- (void)deleteBackgroundImageFromCloudKitWithCompletionHandler:(id)handler;
- (void)deleteCloudExtensionDevicesWithUUIDStrings:(id)strings completionHandler:(id)handler;
- (void)deleteCloudExtensionStatesDatabaseWithCompletionHandler:(id)handler;
- (void)deleteCloudTabCloseRequestsWithUUIDStrings:(id)strings completionHandler:(id)handler;
- (void)deleteDevicesWithUUIDStrings:(id)strings completionHandler:(id)handler;
- (void)deletePerSiteSettingsSyncData;
- (void)deleteTabGroupEntitiesWithUUIDStrings:(id)strings completionHandler:(id)handler;
- (void)fetchCloudSettingsChangesImmediately;
- (void)fetchCloudTabDevicesAndCloseRequests;
- (void)fetchProfileEntitiesWithCompletion:(id)completion;
- (void)fetchRemoteMigrationStateWithCompletionHandler:(id)handler;
- (void)fetchSyncedCloudTabDevicesAndCloseRequestsWithCompletionHandler:(id)handler;
- (void)fetchTabGroupEntitiesWithCompletion:(id)completion;
- (void)generateDAVServerIDsForExistingBookmarksWithCompletionHandler:(id)handler;
- (void)getCloudExtensionStatesWithCompletionHandler:(id)handler;
- (void)getCloudSettingsContainerManateeStateWithCompletionHandler:(id)handler;
- (void)getCloudTabContainerManateeStateWithCompletionHandler:(id)handler;
- (void)getCloudTabDevicesWithCompletionHandler:(id)handler;
- (void)migrateToCloudKitWithCompletionHandler:(id)handler;
- (void)observeRemoteMigrationStateForSecondaryMigration;
- (void)registerForPushNotificationsIfNeeded;
- (void)resetToDAVDatabaseWithCompletionHandler:(id)handler;
- (void)saveCloudPerSiteSettingWithDictionaryRepresentation:(id)representation successCompletionHandler:(id)handler;
- (void)saveCloudSettingWithDictionaryRepresentation:(id)representation successCompletionHandler:(id)handler;
- (void)saveCloudTabCloseRequestWithDictionaryRepresentation:(id)representation closeRequestUUIDString:(id)string completionHandler:(id)handler;
- (void)saveExtensionDeviceWithDictionaryRepresentation:(id)representation completionHandler:(id)handler;
- (void)saveExtensionStatesWithDictionaryRepresentation:(id)representation forDevice:(id)device completionHandler:(id)handler;
- (void)saveTabsForCurrentDeviceWithDictionaryRepresentation:(id)representation deviceUUIDString:(id)string completionHandler:(id)handler;
- (void)syncDownSafariPerSiteSettingsSyncWithCompletion:(id)completion;
- (void)syncDownSafariSettingsSyncWithCompletion:(id)completion;
- (void)syncScribbleFeedbackUp:(id)up withCompletion:(id)completion;
- (void)syncUpSafariPerSiteSettingsSyncWithCompletion:(id)completion;
- (void)syncUpSafariSettingsSyncWithCompletion:(id)completion;
- (void)syncWebCompatibilityFeedbackUp:(id)up withCompletion:(id)completion;
- (void)triggerImmediateBackgroundImageSaveIfApplicable;
- (void)triggerSafariTabGroupSync;
- (void)userAccountDidChange:(int64_t)change;
- (void)userDidUpdateBookmarkDatabase;
@end

@implementation WBSSafariBookmarksSyncAgentProxy

+ (id)sharedProxy
{
  if (sharedProxy_onceToken != -1)
  {
    +[WBSSafariBookmarksSyncAgentProxy sharedProxy];
  }

  v3 = sharedProxy_sharedProxy;

  return v3;
}

void __47__WBSSafariBookmarksSyncAgentProxy_sharedProxy__block_invoke()
{
  v0 = objc_alloc_init(WBSSafariBookmarksSyncAgentProxy);
  v1 = sharedProxy_sharedProxy;
  sharedProxy_sharedProxy = v0;
}

- (WBSSafariBookmarksSyncAgentProxy)init
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = WBSSafariBookmarksSyncAgentProxy;
  v2 = [(WBSSafariBookmarksSyncAgentProxy *)&v15 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SafariBookmarksSyncAgent" options:0];
    safariBookmarksSyncAgentConnection = v2->_safariBookmarksSyncAgentConnection;
    v2->_safariBookmarksSyncAgentConnection = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30A1300];
    v6 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v8 = [v6 setWithArray:v7];

    [v5 setClasses:v8 forSelector:sel_fetchSyncedCloudTabDevicesAndCloseRequestsWithCompletionHandler_ argumentIndex:0 ofReply:1];
    [v5 setClasses:v8 forSelector:sel_fetchSyncedCloudTabDevicesAndCloseRequestsWithCompletionHandler_ argumentIndex:1 ofReply:1];
    [v5 setClasses:v8 forSelector:sel_getCloudTabDevicesWithCompletionHandler_ argumentIndex:0 ofReply:1];
    [(NSXPCConnection *)v2->_safariBookmarksSyncAgentConnection setRemoteObjectInterface:v5];
    objc_initWeak(&location, v2);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__WBSSafariBookmarksSyncAgentProxy_init__block_invoke;
    v12[3] = &unk_1E7CF15E8;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)v2->_safariBookmarksSyncAgentConnection setInvalidationHandler:v12];
    [(NSXPCConnection *)v2->_safariBookmarksSyncAgentConnection resume];
    v9 = v2;
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)fetchCloudSettingsChangesImmediately
{
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy fetchCloudSettingsChangesImmediately];
}

- (void)observeRemoteMigrationStateForSecondaryMigration
{
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy observeRemoteMigrationStateForSecondaryMigration];
}

void __40__WBSSafariBookmarksSyncAgentProxy_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained set_safariBookmarksSyncAgentConnection:0];
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"WBSSafariBookmarksSyncAgentProxyConnectionWasInvalidatedNotification" object:v3 userInfo:0];

    WeakRetained = v3;
  }
}

- (void)dealloc
{
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  [_safariBookmarksSyncAgentConnection invalidate];

  v4.receiver = self;
  v4.super_class = WBSSafariBookmarksSyncAgentProxy;
  [(WBSSafariBookmarksSyncAgentProxy *)&v4 dealloc];
}

- (void)registerForPushNotificationsIfNeeded
{
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy registerForPushNotificationsIfNeeded];
}

- (void)userAccountDidChange:(int64_t)change
{
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy userAccountDidChange:change];
}

- (void)getCloudSettingsContainerManateeStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy getCloudSettingsContainerManateeStateWithCompletionHandler:handlerCopy];
}

- (void)userDidUpdateBookmarkDatabase
{
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy userDidUpdateBookmarkDatabase];
}

- (void)fetchRemoteMigrationStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy fetchRemoteMigrationStateWithCompletionHandler:handlerCopy];
}

- (void)beginMigrationFromDAV
{
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy beginMigrationFromDAV];
}

- (void)collectDiagnosticsDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy collectDiagnosticsDataWithCompletionHandler:handlerCopy];
}

- (void)saveTabsForCurrentDeviceWithDictionaryRepresentation:(id)representation deviceUUIDString:(id)string completionHandler:(id)handler
{
  handlerCopy = handler;
  stringCopy = string;
  representationCopy = representation;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __124__WBSSafariBookmarksSyncAgentProxy_saveTabsForCurrentDeviceWithDictionaryRepresentation_deviceUUIDString_completionHandler___block_invoke;
  v14[3] = &unk_1E7CF2CC0;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [remoteObjectProxy saveTabsForCurrentDeviceWithDictionaryRepresentation:representationCopy deviceUUIDString:stringCopy completionHandler:v14];
}

uint64_t __124__WBSSafariBookmarksSyncAgentProxy_saveTabsForCurrentDeviceWithDictionaryRepresentation_deviceUUIDString_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)saveCloudTabCloseRequestWithDictionaryRepresentation:(id)representation closeRequestUUIDString:(id)string completionHandler:(id)handler
{
  handlerCopy = handler;
  stringCopy = string;
  representationCopy = representation;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy saveCloudTabCloseRequestWithDictionaryRepresentation:representationCopy closeRequestUUIDString:stringCopy completionHandler:handlerCopy];
}

- (void)deleteDevicesWithUUIDStrings:(id)strings completionHandler:(id)handler
{
  handlerCopy = handler;
  stringsCopy = strings;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy deleteDevicesWithUUIDStrings:stringsCopy completionHandler:handlerCopy];
}

- (void)deleteCloudTabCloseRequestsWithUUIDStrings:(id)strings completionHandler:(id)handler
{
  handlerCopy = handler;
  stringsCopy = strings;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy deleteCloudTabCloseRequestsWithUUIDStrings:stringsCopy completionHandler:handlerCopy];
}

- (void)fetchSyncedCloudTabDevicesAndCloseRequestsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy fetchSyncedCloudTabDevicesAndCloseRequestsWithCompletionHandler:handlerCopy];
}

- (void)getCloudTabDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy getCloudTabDevicesWithCompletionHandler:handlerCopy];
}

- (void)clearServerChangeTokenWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy clearServerChangeTokenWithCompletionHandler:handlerCopy];
}

- (void)triggerSafariTabGroupSync
{
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy triggerSafariTabGroupSync];
}

- (void)getCloudTabContainerManateeStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy getCloudTabContainerManateeStateWithCompletionHandler:handlerCopy];
}

- (void)fetchCloudTabDevicesAndCloseRequests
{
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy fetchCloudTabDevicesAndCloseRequests];
}

- (void)syncScribbleFeedbackUp:(id)up withCompletion:(id)completion
{
  completionCopy = completion;
  upCopy = up;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy syncScribbleFeedbackUp:upCopy withCompletion:completionCopy];
}

- (void)syncWebCompatibilityFeedbackUp:(id)up withCompletion:(id)completion
{
  completionCopy = completion;
  upCopy = up;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy syncWebCompatibilityFeedbackUp:upCopy withCompletion:completionCopy];
}

- (void)saveCloudSettingWithDictionaryRepresentation:(id)representation successCompletionHandler:(id)handler
{
  handlerCopy = handler;
  representationCopy = representation;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy saveCloudSettingWithDictionaryRepresentation:representationCopy successCompletionHandler:handlerCopy];
}

- (void)deleteBackgroundImageFromCloudKitWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy deleteBackgroundImageFromCloudKitWithCompletionHandler:handlerCopy];
}

- (void)triggerImmediateBackgroundImageSaveIfApplicable
{
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy triggerImmediateBackgroundImageSaveIfApplicable];
}

- (void)syncDownSafariSettingsSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy syncDownSafariSettingsSyncWithCompletion:completionCopy];
}

- (void)syncUpSafariSettingsSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy syncUpSafariSettingsSyncWithCompletion:completionCopy];
}

- (void)deleteBackgroundImageDirectory
{
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy deleteBackgroundImageDirectory];
}

- (void)fetchProfileEntitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy fetchProfileEntitiesWithCompletion:completionCopy];
}

- (void)fetchTabGroupEntitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy fetchTabGroupEntitiesWithCompletion:completionCopy];
}

- (void)deleteTabGroupEntitiesWithUUIDStrings:(id)strings completionHandler:(id)handler
{
  handlerCopy = handler;
  stringsCopy = strings;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy deleteTabGroupEntitiesWithUUIDStrings:stringsCopy completionHandler:handlerCopy];
}

- (void)syncDownSafariPerSiteSettingsSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy syncDownSafariPerSiteSettingsSyncWithCompletion:completionCopy];
}

- (void)syncUpSafariPerSiteSettingsSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy syncUpSafariPerSiteSettingsSyncWithCompletion:completionCopy];
}

- (void)saveCloudPerSiteSettingWithDictionaryRepresentation:(id)representation successCompletionHandler:(id)handler
{
  handlerCopy = handler;
  representationCopy = representation;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy saveCloudPerSiteSettingWithDictionaryRepresentation:representationCopy successCompletionHandler:handlerCopy];
}

- (void)deletePerSiteSettingsSyncData
{
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy deletePerSiteSettingsSyncData];
}

- (void)saveExtensionStatesWithDictionaryRepresentation:(id)representation forDevice:(id)device completionHandler:(id)handler
{
  handlerCopy = handler;
  deviceCopy = device;
  representationCopy = representation;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy saveExtensionStatesWithDictionaryRepresentation:representationCopy forDevice:deviceCopy completionHandler:handlerCopy];
}

- (void)saveExtensionDeviceWithDictionaryRepresentation:(id)representation completionHandler:(id)handler
{
  handlerCopy = handler;
  representationCopy = representation;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy saveExtensionDeviceWithDictionaryRepresentation:representationCopy completionHandler:handlerCopy];
}

- (void)getCloudExtensionStatesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy getCloudExtensionStatesWithCompletionHandler:handlerCopy];
}

- (void)deleteCloudExtensionDevicesWithUUIDStrings:(id)strings completionHandler:(id)handler
{
  handlerCopy = handler;
  stringsCopy = strings;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy deleteCloudExtensionDevicesWithUUIDStrings:stringsCopy completionHandler:handlerCopy];
}

- (void)deleteCloudExtensionStatesDatabaseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy deleteCloudExtensionStatesDatabaseWithCompletionHandler:handlerCopy];
}

- (void)resetToDAVDatabaseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy resetToDAVDatabaseWithCompletionHandler:handlerCopy];
}

- (void)generateDAVServerIDsForExistingBookmarksWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy generateDAVServerIDsForExistingBookmarksWithCompletionHandler:handlerCopy];
}

- (void)migrateToCloudKitWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _safariBookmarksSyncAgentConnection = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  remoteObjectProxy = [_safariBookmarksSyncAgentConnection remoteObjectProxy];
  [remoteObjectProxy migrateToCloudKitWithCompletionHandler:handlerCopy];
}

@end