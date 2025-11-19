@interface WBSSafariBookmarksSyncAgentProxy
+ (id)sharedProxy;
- (WBSSafariBookmarksSyncAgentProxy)init;
- (void)beginMigrationFromDAV;
- (void)clearServerChangeTokenWithCompletionHandler:(id)a3;
- (void)collectDiagnosticsDataWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)deleteBackgroundImageDirectory;
- (void)deleteBackgroundImageFromCloudKitWithCompletionHandler:(id)a3;
- (void)deleteCloudExtensionDevicesWithUUIDStrings:(id)a3 completionHandler:(id)a4;
- (void)deleteCloudExtensionStatesDatabaseWithCompletionHandler:(id)a3;
- (void)deleteCloudTabCloseRequestsWithUUIDStrings:(id)a3 completionHandler:(id)a4;
- (void)deleteDevicesWithUUIDStrings:(id)a3 completionHandler:(id)a4;
- (void)deletePerSiteSettingsSyncData;
- (void)deleteTabGroupEntitiesWithUUIDStrings:(id)a3 completionHandler:(id)a4;
- (void)fetchCloudSettingsChangesImmediately;
- (void)fetchCloudTabDevicesAndCloseRequests;
- (void)fetchProfileEntitiesWithCompletion:(id)a3;
- (void)fetchRemoteMigrationStateWithCompletionHandler:(id)a3;
- (void)fetchSyncedCloudTabDevicesAndCloseRequestsWithCompletionHandler:(id)a3;
- (void)fetchTabGroupEntitiesWithCompletion:(id)a3;
- (void)generateDAVServerIDsForExistingBookmarksWithCompletionHandler:(id)a3;
- (void)getCloudExtensionStatesWithCompletionHandler:(id)a3;
- (void)getCloudSettingsContainerManateeStateWithCompletionHandler:(id)a3;
- (void)getCloudTabContainerManateeStateWithCompletionHandler:(id)a3;
- (void)getCloudTabDevicesWithCompletionHandler:(id)a3;
- (void)migrateToCloudKitWithCompletionHandler:(id)a3;
- (void)observeRemoteMigrationStateForSecondaryMigration;
- (void)registerForPushNotificationsIfNeeded;
- (void)resetToDAVDatabaseWithCompletionHandler:(id)a3;
- (void)saveCloudPerSiteSettingWithDictionaryRepresentation:(id)a3 successCompletionHandler:(id)a4;
- (void)saveCloudSettingWithDictionaryRepresentation:(id)a3 successCompletionHandler:(id)a4;
- (void)saveCloudTabCloseRequestWithDictionaryRepresentation:(id)a3 closeRequestUUIDString:(id)a4 completionHandler:(id)a5;
- (void)saveExtensionDeviceWithDictionaryRepresentation:(id)a3 completionHandler:(id)a4;
- (void)saveExtensionStatesWithDictionaryRepresentation:(id)a3 forDevice:(id)a4 completionHandler:(id)a5;
- (void)saveTabsForCurrentDeviceWithDictionaryRepresentation:(id)a3 deviceUUIDString:(id)a4 completionHandler:(id)a5;
- (void)syncDownSafariPerSiteSettingsSyncWithCompletion:(id)a3;
- (void)syncDownSafariSettingsSyncWithCompletion:(id)a3;
- (void)syncScribbleFeedbackUp:(id)a3 withCompletion:(id)a4;
- (void)syncUpSafariPerSiteSettingsSyncWithCompletion:(id)a3;
- (void)syncUpSafariSettingsSyncWithCompletion:(id)a3;
- (void)syncWebCompatibilityFeedbackUp:(id)a3 withCompletion:(id)a4;
- (void)triggerImmediateBackgroundImageSaveIfApplicable;
- (void)triggerSafariTabGroupSync;
- (void)userAccountDidChange:(int64_t)a3;
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
  v3 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 fetchCloudSettingsChangesImmediately];
}

- (void)observeRemoteMigrationStateForSecondaryMigration
{
  v3 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 observeRemoteMigrationStateForSecondaryMigration];
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
  v3 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = WBSSafariBookmarksSyncAgentProxy;
  [(WBSSafariBookmarksSyncAgentProxy *)&v4 dealloc];
}

- (void)registerForPushNotificationsIfNeeded
{
  v3 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 registerForPushNotificationsIfNeeded];
}

- (void)userAccountDidChange:(int64_t)a3
{
  v5 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v4 = [v5 remoteObjectProxy];
  [v4 userAccountDidChange:a3];
}

- (void)getCloudSettingsContainerManateeStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 getCloudSettingsContainerManateeStateWithCompletionHandler:v4];
}

- (void)userDidUpdateBookmarkDatabase
{
  v3 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 userDidUpdateBookmarkDatabase];
}

- (void)fetchRemoteMigrationStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 fetchRemoteMigrationStateWithCompletionHandler:v4];
}

- (void)beginMigrationFromDAV
{
  v3 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 beginMigrationFromDAV];
}

- (void)collectDiagnosticsDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 collectDiagnosticsDataWithCompletionHandler:v4];
}

- (void)saveTabsForCurrentDeviceWithDictionaryRepresentation:(id)a3 deviceUUIDString:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v12 = [v11 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __124__WBSSafariBookmarksSyncAgentProxy_saveTabsForCurrentDeviceWithDictionaryRepresentation_deviceUUIDString_completionHandler___block_invoke;
  v14[3] = &unk_1E7CF2CC0;
  v15 = v8;
  v13 = v8;
  [v12 saveTabsForCurrentDeviceWithDictionaryRepresentation:v10 deviceUUIDString:v9 completionHandler:v14];
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

- (void)saveCloudTabCloseRequestWithDictionaryRepresentation:(id)a3 closeRequestUUIDString:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v11 = [v12 remoteObjectProxy];
  [v11 saveCloudTabCloseRequestWithDictionaryRepresentation:v10 closeRequestUUIDString:v9 completionHandler:v8];
}

- (void)deleteDevicesWithUUIDStrings:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v8 = [v9 remoteObjectProxy];
  [v8 deleteDevicesWithUUIDStrings:v7 completionHandler:v6];
}

- (void)deleteCloudTabCloseRequestsWithUUIDStrings:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v8 = [v9 remoteObjectProxy];
  [v8 deleteCloudTabCloseRequestsWithUUIDStrings:v7 completionHandler:v6];
}

- (void)fetchSyncedCloudTabDevicesAndCloseRequestsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 fetchSyncedCloudTabDevicesAndCloseRequestsWithCompletionHandler:v4];
}

- (void)getCloudTabDevicesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 getCloudTabDevicesWithCompletionHandler:v4];
}

- (void)clearServerChangeTokenWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 clearServerChangeTokenWithCompletionHandler:v4];
}

- (void)triggerSafariTabGroupSync
{
  v3 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 triggerSafariTabGroupSync];
}

- (void)getCloudTabContainerManateeStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 getCloudTabContainerManateeStateWithCompletionHandler:v4];
}

- (void)fetchCloudTabDevicesAndCloseRequests
{
  v3 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 fetchCloudTabDevicesAndCloseRequests];
}

- (void)syncScribbleFeedbackUp:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v8 = [v9 remoteObjectProxy];
  [v8 syncScribbleFeedbackUp:v7 withCompletion:v6];
}

- (void)syncWebCompatibilityFeedbackUp:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v8 = [v9 remoteObjectProxy];
  [v8 syncWebCompatibilityFeedbackUp:v7 withCompletion:v6];
}

- (void)saveCloudSettingWithDictionaryRepresentation:(id)a3 successCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v8 = [v9 remoteObjectProxy];
  [v8 saveCloudSettingWithDictionaryRepresentation:v7 successCompletionHandler:v6];
}

- (void)deleteBackgroundImageFromCloudKitWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 deleteBackgroundImageFromCloudKitWithCompletionHandler:v4];
}

- (void)triggerImmediateBackgroundImageSaveIfApplicable
{
  v3 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 triggerImmediateBackgroundImageSaveIfApplicable];
}

- (void)syncDownSafariSettingsSyncWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 syncDownSafariSettingsSyncWithCompletion:v4];
}

- (void)syncUpSafariSettingsSyncWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 syncUpSafariSettingsSyncWithCompletion:v4];
}

- (void)deleteBackgroundImageDirectory
{
  v3 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 deleteBackgroundImageDirectory];
}

- (void)fetchProfileEntitiesWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 fetchProfileEntitiesWithCompletion:v4];
}

- (void)fetchTabGroupEntitiesWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 fetchTabGroupEntitiesWithCompletion:v4];
}

- (void)deleteTabGroupEntitiesWithUUIDStrings:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v8 = [v9 remoteObjectProxy];
  [v8 deleteTabGroupEntitiesWithUUIDStrings:v7 completionHandler:v6];
}

- (void)syncDownSafariPerSiteSettingsSyncWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 syncDownSafariPerSiteSettingsSyncWithCompletion:v4];
}

- (void)syncUpSafariPerSiteSettingsSyncWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 syncUpSafariPerSiteSettingsSyncWithCompletion:v4];
}

- (void)saveCloudPerSiteSettingWithDictionaryRepresentation:(id)a3 successCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v8 = [v9 remoteObjectProxy];
  [v8 saveCloudPerSiteSettingWithDictionaryRepresentation:v7 successCompletionHandler:v6];
}

- (void)deletePerSiteSettingsSyncData
{
  v3 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 deletePerSiteSettingsSyncData];
}

- (void)saveExtensionStatesWithDictionaryRepresentation:(id)a3 forDevice:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v11 = [v12 remoteObjectProxy];
  [v11 saveExtensionStatesWithDictionaryRepresentation:v10 forDevice:v9 completionHandler:v8];
}

- (void)saveExtensionDeviceWithDictionaryRepresentation:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v8 = [v9 remoteObjectProxy];
  [v8 saveExtensionDeviceWithDictionaryRepresentation:v7 completionHandler:v6];
}

- (void)getCloudExtensionStatesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 getCloudExtensionStatesWithCompletionHandler:v4];
}

- (void)deleteCloudExtensionDevicesWithUUIDStrings:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v8 = [v9 remoteObjectProxy];
  [v8 deleteCloudExtensionDevicesWithUUIDStrings:v7 completionHandler:v6];
}

- (void)deleteCloudExtensionStatesDatabaseWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 deleteCloudExtensionStatesDatabaseWithCompletionHandler:v4];
}

- (void)resetToDAVDatabaseWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 resetToDAVDatabaseWithCompletionHandler:v4];
}

- (void)generateDAVServerIDsForExistingBookmarksWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 generateDAVServerIDsForExistingBookmarksWithCompletionHandler:v4];
}

- (void)migrateToCloudKitWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = [(WBSSafariBookmarksSyncAgentProxy *)self _safariBookmarksSyncAgentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 migrateToCloudKitWithCompletionHandler:v4];
}

@end