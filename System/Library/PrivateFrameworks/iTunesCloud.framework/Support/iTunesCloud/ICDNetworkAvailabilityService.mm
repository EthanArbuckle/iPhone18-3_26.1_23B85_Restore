@interface ICDNetworkAvailabilityService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ICDNetworkAvailabilityService)init;
- (id)_supportedInterfaceForXPCConnection;
- (void)_canShowCloudDownloadButtonsDidChangeNotification:(id)a3;
- (void)_canShowCloudTracksDidChangeNotification:(id)a3;
- (void)_isCellularDataRestrictedDidChangeNotification:(id)a3;
- (void)_setupNotifications;
- (void)canShowCloudDownloadButtonsWithCompletion:(id)a3;
- (void)canShowCloudMusicWithCompletion:(id)a3;
- (void)canShowCloudVideoWithCompletion:(id)a3;
- (void)dealloc;
- (void)hasProperNetworkConditionsToPlayMediaWithCompletion:(id)a3;
- (void)hasProperNetworkConditionsToShowCloudMediaWithCompletion:(id)a3;
- (void)isCellularDataRestrictedForMusicWithCompletion:(id)a3;
- (void)isCellularDataRestrictedForStoreAppsWithCompletion:(id)a3;
- (void)isCellularDataRestrictedForVideosWithCompletion:(id)a3;
- (void)shouldProhibitMusicActionForCurrentNetworkConditionsWithCompletion:(id)a3;
- (void)shouldProhibitStoreAppsActionForCurrentNetworkConditionsWithCompletion:(id)a3;
- (void)shouldProhibitVideosActionForCurrentNetworkConditionsWithCompletion:(id)a3;
@end

@implementation ICDNetworkAvailabilityService

- (id)_supportedInterfaceForXPCConnection
{
  if (qword_100213BA8 != -1)
  {
    dispatch_once(&qword_100213BA8, &stru_1001DAD80);
  }

  v3 = qword_100213BA0;

  return v3;
}

- (void)_isCellularDataRestrictedDidChangeNotification:(id)a3
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = ICCloudAvailabilityControllerIsCellularDataRestrictedDidChangeNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v4, 0, 0, 1u);
}

- (void)_canShowCloudTracksDidChangeNotification:(id)a3
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = ICCloudAvailabilityControllerCanShowCloudTracksDidChangeNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v4, 0, 0, 1u);
}

- (void)_canShowCloudDownloadButtonsDidChangeNotification:(id)a3
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = ICCloudAvailabilityControllerCanShowCloudDownloadButtonsDidChangeNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v4, 0, 0, 1u);
}

- (void)_setupNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_canShowCloudDownloadButtonsDidChangeNotification:" name:ICCloudAvailabilityControllerCanShowCloudDownloadButtonsDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_canShowCloudTracksDidChangeNotification:" name:ICCloudAvailabilityControllerCanShowCloudTracksDidChangeNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_isCellularDataRestrictedDidChangeNotification:" name:ICCloudAvailabilityControllerIsCellularDataRestrictedDidChangeNotification object:0];
}

- (void)canShowCloudVideoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(a3 + 2))(v4, [v5 canShowCloudVideo]);
}

- (void)canShowCloudMusicWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(a3 + 2))(v4, [v5 canShowCloudMusic]);
}

- (void)canShowCloudDownloadButtonsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(a3 + 2))(v4, [v5 canShowCloudDownloadButtons]);
}

- (void)shouldProhibitStoreAppsActionForCurrentNetworkConditionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(a3 + 2))(v4, [v5 shouldProhibitStoreAppsActionForCurrentNetworkConditions]);
}

- (void)isCellularDataRestrictedForStoreAppsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(a3 + 2))(v4, [v5 isCellularDataRestrictedForStoreApps]);
}

- (void)shouldProhibitVideosActionForCurrentNetworkConditionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(a3 + 2))(v4, [v5 shouldProhibitVideosActionForCurrentNetworkConditions]);
}

- (void)isCellularDataRestrictedForVideosWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(a3 + 2))(v4, [v5 isCellularDataRestrictedForVideos]);
}

- (void)shouldProhibitMusicActionForCurrentNetworkConditionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(a3 + 2))(v4, [v5 shouldProhibitMusicActionForCurrentNetworkConditions]);
}

- (void)isCellularDataRestrictedForMusicWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(a3 + 2))(v4, [v5 isCellularDataRestrictedForMusic]);
}

- (void)hasProperNetworkConditionsToShowCloudMediaWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(a3 + 2))(v4, [v5 hasProperNetworkConditionsToShowCloudMedia]);
}

- (void)hasProperNetworkConditionsToPlayMediaWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(a3 + 2))(v4, [v5 hasProperNetworkConditionsToPlayMedia]);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 icd_isConnectionAllowedForService:2];
  if (v6)
  {
    v7 = [v5 processIdentifier];
    if (v5)
    {
      [v5 auditToken];
    }

    else
    {
      memset(v12, 0, sizeof(v12));
    }

    v8 = MSVBundleIDForAuditToken();
    v9 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v12[0]) = 134218498;
      *(v12 + 4) = self;
      WORD6(v12[0]) = 2114;
      *(v12 + 14) = v8;
      WORD3(v12[1]) = 1024;
      DWORD2(v12[1]) = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ICDNetworkAvailabilityService %p - XPC connection from %{public}@[%d]", v12, 0x1Cu);
    }

    v10 = [(ICDNetworkAvailabilityService *)self _supportedInterfaceForXPCConnection];
    [v5 setExportedInterface:v10];
    [v5 setExportedObject:self];
    [v5 resume];
  }

  return v6;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = ICDNetworkAvailabilityService;
  [(ICDNetworkAvailabilityService *)&v4 dealloc];
}

- (ICDNetworkAvailabilityService)init
{
  v5.receiver = self;
  v5.super_class = ICDNetworkAvailabilityService;
  v2 = [(ICDNetworkAvailabilityService *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICDNetworkAvailabilityService *)v2 _setupNotifications];
  }

  return v3;
}

@end