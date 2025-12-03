@interface INCloudNetworkController
- (INCloudNetworkController)init;
- (INCloudNetworkController)initWithAccount:(id)account;
- (id)_backupDeviceUDID;
- (void)_sendNetworkRequestForTip:(id)tip request:(id)request completion:(id)completion;
- (void)_sendRecommendationActionStatusWithRequest:(id)request completion:(id)completion;
- (void)appCloudStorageForBundleId:(id)id completion:(id)completion;
- (void)cloudStorageApps:(id)apps;
- (void)cloudStorageSummary:(id)summary;
- (void)dismissedNetworkRequestForTip:(id)tip completion:(id)completion;
- (void)displayedNetworkRequestForTip:(id)tip completion:(id)completion;
- (void)fetchAppsSyncingToDrive:(id)drive;
- (void)fetchBackupInfoWithCompletion:(id)completion;
- (void)fetchCompletedAndDismissedRecommendationsWithConfiguration:(id)configuration completion:(id)completion;
- (void)fetchRecommendationRules:(id)rules;
- (void)fetchServerRecommendations:(id)recommendations;
- (void)sendStatusForRecommendationWithConfiguration:(id)configuration params:(id)params completion:(id)completion;
- (void)sendStatusForRecommendationWithConfiguration:(id)configuration recommendationIdentifiers:(id)identifiers status:(id)status storageRecovered:(id)recovered context:(id)context completion:(id)completion;
@end

@implementation INCloudNetworkController

- (INCloudNetworkController)initWithAccount:(id)account
{
  accountCopy = account;
  v11.receiver = self;
  v11.super_class = INCloudNetworkController;
  v6 = [(INCloudNetworkController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    v8 = +[AAURLSession sharedSessionWithNoUrlCache];
    aaUrlSession = v7->_aaUrlSession;
    v7->_aaUrlSession = v8;
  }

  return v7;
}

- (INCloudNetworkController)init
{
  [(INCloudNetworkController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)cloudStorageSummary:(id)summary
{
  summaryCopy = summary;
  v5 = [INStorageSummaryRequest alloc];
  account = self->_account;
  _backupDeviceUDID = [(INCloudNetworkController *)self _backupDeviceUDID];
  v8 = [(INStorageSummaryRequest *)v5 initWithAccount:account withBackupDeviceUDID:_backupDeviceUDID];

  aaUrlSession = self->_aaUrlSession;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004B10;
  v11[3] = &unk_1000552F0;
  v12 = summaryCopy;
  v10 = summaryCopy;
  [(INStorageSummaryRequest *)v8 performRequestWithSession:aaUrlSession withHandler:v11];
}

- (void)cloudStorageApps:(id)apps
{
  appsCopy = apps;
  v5 = [INStorageAppsRequest alloc];
  account = self->_account;
  _backupDeviceUDID = [(INCloudNetworkController *)self _backupDeviceUDID];
  v8 = [(INStorageAppsRequest *)v5 initWithAccount:account withBackupDeviceUDID:_backupDeviceUDID];

  aaUrlSession = self->_aaUrlSession;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004D8C;
  v11[3] = &unk_1000552F0;
  v12 = appsCopy;
  v10 = appsCopy;
  [(INStorageAppsRequest *)v8 performRequestWithSession:aaUrlSession withHandler:v11];
}

- (void)appCloudStorageForBundleId:(id)id completion:(id)completion
{
  completionCopy = completion;
  idCopy = id;
  v8 = [[INStorageByAppRequest alloc] initWithAccount:self->_account bundleId:idCopy];

  aaUrlSession = self->_aaUrlSession;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004FF4;
  v11[3] = &unk_1000552F0;
  v12 = completionCopy;
  v10 = completionCopy;
  [(INStorageByAppRequest *)v8 performRequestWithSession:aaUrlSession withHandler:v11];
}

- (void)fetchBackupInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [INCloudBackupInfoRequest alloc];
  account = self->_account;
  _backupDeviceUDID = [(INCloudNetworkController *)self _backupDeviceUDID];
  v8 = [(INCloudBackupInfoRequest *)v5 initWithAccount:account withBackupDeviceUDID:_backupDeviceUDID];

  aaUrlSession = self->_aaUrlSession;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005270;
  v11[3] = &unk_1000552F0;
  v12 = completionCopy;
  v10 = completionCopy;
  [(INCloudBackupInfoRequest *)v8 performRequestWithSession:aaUrlSession withHandler:v11];
}

- (void)displayedNetworkRequestForTip:(id)tip completion:(id)completion
{
  completionCopy = completion;
  tipCopy = tip;
  v8 = [[INTipNetworkRequest alloc] initWithAccountForDisplayStatus:self->_account tip:tipCopy];
  [(INCloudNetworkController *)self _sendNetworkRequestForTip:tipCopy request:v8 completion:completionCopy];
}

- (void)dismissedNetworkRequestForTip:(id)tip completion:(id)completion
{
  completionCopy = completion;
  tipCopy = tip;
  v8 = [[INTipNetworkRequest alloc] initWithAccountForDismissStatus:self->_account tip:tipCopy];
  [(INCloudNetworkController *)self _sendNetworkRequestForTip:tipCopy request:v8 completion:completionCopy];
}

- (void)_sendNetworkRequestForTip:(id)tip request:(id)request completion:(id)completion
{
  completionCopy = completion;
  aaUrlSession = self->_aaUrlSession;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000055CC;
  v10[3] = &unk_1000552F0;
  v11 = completionCopy;
  v9 = completionCopy;
  [request performRequestWithSession:aaUrlSession withHandler:v10];
}

- (id)_backupDeviceUDID
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000057C0;
  block[3] = &unk_100055318;
  block[4] = self;
  if (qword_100063640 != -1)
  {
    dispatch_once(&qword_100063640, block);
  }

  return qword_100063638;
}

- (void)fetchAppsSyncingToDrive:(id)drive
{
  driveCopy = drive;
  v5 = [[INAppsSyncingToDriveRequest alloc] initWithAccount:self->_account];
  aaUrlSession = self->_aaUrlSession;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000590C;
  v8[3] = &unk_1000552F0;
  v9 = driveCopy;
  v7 = driveCopy;
  [(INAppsSyncingToDriveRequest *)v5 performRequestWithSession:aaUrlSession withHandler:v8];
}

- (void)fetchServerRecommendations:(id)recommendations
{
  recommendationsCopy = recommendations;
  v5 = [[INRecommendationsRequest alloc] initWithAccount:self->_account];
  aaUrlSession = self->_aaUrlSession;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005B5C;
  v8[3] = &unk_1000552F0;
  v9 = recommendationsCopy;
  v7 = recommendationsCopy;
  [(INRenewingRequest *)v5 performRequestWithSession:aaUrlSession withHandler:v8];
}

- (void)fetchRecommendationRules:(id)rules
{
  rulesCopy = rules;
  v5 = [[INRulesetRequest alloc] initWithAccount:self->_account];
  aaUrlSession = self->_aaUrlSession;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005DA8;
  v8[3] = &unk_1000552F0;
  v9 = rulesCopy;
  v7 = rulesCopy;
  [(INRenewingRequest *)v5 performRequestWithSession:aaUrlSession withHandler:v8];
}

- (void)fetchCompletedAndDismissedRecommendationsWithConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  v8 = [[INRecommendationsCompletedAndDismissedRequest alloc] initWithAccount:self->_account configuration:configurationCopy];

  aaUrlSession = self->_aaUrlSession;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000600C;
  v11[3] = &unk_1000552F0;
  v12 = completionCopy;
  v10 = completionCopy;
  [(INRecommendationsCompletedAndDismissedRequest *)v8 performRequestWithSession:aaUrlSession withHandler:v11];
}

- (void)_sendRecommendationActionStatusWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  aaUrlSession = self->_aaUrlSession;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000623C;
  v9[3] = &unk_1000552F0;
  v10 = completionCopy;
  v8 = completionCopy;
  [request performRequestWithSession:aaUrlSession withHandler:v9];
}

- (void)sendStatusForRecommendationWithConfiguration:(id)configuration recommendationIdentifiers:(id)identifiers status:(id)status storageRecovered:(id)recovered context:(id)context completion:(id)completion
{
  configurationCopy = configuration;
  identifiersCopy = identifiers;
  statusCopy = status;
  recoveredCopy = recovered;
  contextCopy = context;
  completionCopy = completion;
  if ([statusCopy isEqualToString:@"displayed"])
  {
    v20 = [[INRecommendationsActionsRequest alloc] initWithAccountForDisplayStatus:self->_account configuration:configurationCopy recommendations:identifiersCopy context:contextCopy];
LABEL_9:
    v21 = v20;
    goto LABEL_10;
  }

  if ([statusCopy isEqualToString:@"dismissed"])
  {
    v20 = [[INRecommendationsActionsRequest alloc] initWithAccountForDismissStatus:self->_account configuration:configurationCopy recommendations:identifiersCopy context:contextCopy];
    goto LABEL_9;
  }

  if ([statusCopy isEqualToString:@"completed"])
  {
    v20 = [[INRecommendationsActionsRequest alloc] initWithAccountForActionCompletedStatus:self->_account configuration:configurationCopy recommendations:identifiersCopy storageRecovered:recoveredCopy context:contextCopy];
    goto LABEL_9;
  }

  if ([statusCopy isEqualToString:@"canceled"])
  {
    v20 = [[INRecommendationsActionsRequest alloc] initWithAccountForActionCancelledStatus:self->_account configuration:configurationCopy recommendations:identifiersCopy context:contextCopy];
    goto LABEL_9;
  }

  v22 = _INLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_100034B20();
  }

  v21 = 0;
LABEL_10:
  [(INCloudNetworkController *)self _sendRecommendationActionStatusWithRequest:v21 completion:completionCopy];
}

- (void)sendStatusForRecommendationWithConfiguration:(id)configuration params:(id)params completion:(id)completion
{
  completionCopy = completion;
  paramsCopy = params;
  configurationCopy = configuration;
  v11 = [[INRecommendationsActionsRequest alloc] initWithAccount:self->_account configuration:configurationCopy params:paramsCopy];

  [(INCloudNetworkController *)self _sendRecommendationActionStatusWithRequest:v11 completion:completionCopy];
}

@end