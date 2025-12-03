@interface ICDNetworkAvailabilityService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ICDNetworkAvailabilityService)init;
- (id)_supportedInterfaceForXPCConnection;
- (void)_canShowCloudDownloadButtonsDidChangeNotification:(id)notification;
- (void)_canShowCloudTracksDidChangeNotification:(id)notification;
- (void)_isCellularDataRestrictedDidChangeNotification:(id)notification;
- (void)_setupNotifications;
- (void)canShowCloudDownloadButtonsWithCompletion:(id)completion;
- (void)canShowCloudMusicWithCompletion:(id)completion;
- (void)canShowCloudVideoWithCompletion:(id)completion;
- (void)dealloc;
- (void)hasProperNetworkConditionsToPlayMediaWithCompletion:(id)completion;
- (void)hasProperNetworkConditionsToShowCloudMediaWithCompletion:(id)completion;
- (void)isCellularDataRestrictedForMusicWithCompletion:(id)completion;
- (void)isCellularDataRestrictedForStoreAppsWithCompletion:(id)completion;
- (void)isCellularDataRestrictedForVideosWithCompletion:(id)completion;
- (void)shouldProhibitMusicActionForCurrentNetworkConditionsWithCompletion:(id)completion;
- (void)shouldProhibitStoreAppsActionForCurrentNetworkConditionsWithCompletion:(id)completion;
- (void)shouldProhibitVideosActionForCurrentNetworkConditionsWithCompletion:(id)completion;
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

- (void)_isCellularDataRestrictedDidChangeNotification:(id)notification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = ICCloudAvailabilityControllerIsCellularDataRestrictedDidChangeNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v4, 0, 0, 1u);
}

- (void)_canShowCloudTracksDidChangeNotification:(id)notification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = ICCloudAvailabilityControllerCanShowCloudTracksDidChangeNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v4, 0, 0, 1u);
}

- (void)_canShowCloudDownloadButtonsDidChangeNotification:(id)notification
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

- (void)canShowCloudVideoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(completion + 2))(completionCopy, [v5 canShowCloudVideo]);
}

- (void)canShowCloudMusicWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(completion + 2))(completionCopy, [v5 canShowCloudMusic]);
}

- (void)canShowCloudDownloadButtonsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(completion + 2))(completionCopy, [v5 canShowCloudDownloadButtons]);
}

- (void)shouldProhibitStoreAppsActionForCurrentNetworkConditionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(completion + 2))(completionCopy, [v5 shouldProhibitStoreAppsActionForCurrentNetworkConditions]);
}

- (void)isCellularDataRestrictedForStoreAppsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(completion + 2))(completionCopy, [v5 isCellularDataRestrictedForStoreApps]);
}

- (void)shouldProhibitVideosActionForCurrentNetworkConditionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(completion + 2))(completionCopy, [v5 shouldProhibitVideosActionForCurrentNetworkConditions]);
}

- (void)isCellularDataRestrictedForVideosWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(completion + 2))(completionCopy, [v5 isCellularDataRestrictedForVideos]);
}

- (void)shouldProhibitMusicActionForCurrentNetworkConditionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(completion + 2))(completionCopy, [v5 shouldProhibitMusicActionForCurrentNetworkConditions]);
}

- (void)isCellularDataRestrictedForMusicWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(completion + 2))(completionCopy, [v5 isCellularDataRestrictedForMusic]);
}

- (void)hasProperNetworkConditionsToShowCloudMediaWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(completion + 2))(completionCopy, [v5 hasProperNetworkConditionsToShowCloudMedia]);
}

- (void)hasProperNetworkConditionsToPlayMediaWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ICCloudAvailabilityController sharedController];
  (*(completion + 2))(completionCopy, [v5 hasProperNetworkConditionsToPlayMedia]);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy icd_isConnectionAllowedForService:2];
  if (v6)
  {
    processIdentifier = [connectionCopy processIdentifier];
    if (connectionCopy)
    {
      [connectionCopy auditToken];
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
      DWORD2(v12[1]) = processIdentifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ICDNetworkAvailabilityService %p - XPC connection from %{public}@[%d]", v12, 0x1Cu);
    }

    _supportedInterfaceForXPCConnection = [(ICDNetworkAvailabilityService *)self _supportedInterfaceForXPCConnection];
    [connectionCopy setExportedInterface:_supportedInterfaceForXPCConnection];
    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
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