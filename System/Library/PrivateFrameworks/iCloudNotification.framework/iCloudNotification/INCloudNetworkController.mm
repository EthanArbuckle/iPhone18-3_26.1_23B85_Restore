@interface INCloudNetworkController
- (INCloudNetworkController)init;
- (INCloudNetworkController)initWithAccount:(id)a3;
- (id)_backupDeviceUDID;
- (void)_sendNetworkRequestForTip:(id)a3 request:(id)a4 completion:(id)a5;
- (void)_sendRecommendationActionStatusWithRequest:(id)a3 completion:(id)a4;
- (void)appCloudStorageForBundleId:(id)a3 completion:(id)a4;
- (void)cloudStorageApps:(id)a3;
- (void)cloudStorageSummary:(id)a3;
- (void)dismissedNetworkRequestForTip:(id)a3 completion:(id)a4;
- (void)displayedNetworkRequestForTip:(id)a3 completion:(id)a4;
- (void)fetchAppsSyncingToDrive:(id)a3;
- (void)fetchBackupInfoWithCompletion:(id)a3;
- (void)fetchCompletedAndDismissedRecommendationsWithConfiguration:(id)a3 completion:(id)a4;
- (void)fetchRecommendationRules:(id)a3;
- (void)fetchServerRecommendations:(id)a3;
- (void)sendStatusForRecommendationWithConfiguration:(id)a3 params:(id)a4 completion:(id)a5;
- (void)sendStatusForRecommendationWithConfiguration:(id)a3 recommendationIdentifiers:(id)a4 status:(id)a5 storageRecovered:(id)a6 context:(id)a7 completion:(id)a8;
@end

@implementation INCloudNetworkController

- (INCloudNetworkController)initWithAccount:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = INCloudNetworkController;
  v6 = [(INCloudNetworkController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
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

- (void)cloudStorageSummary:(id)a3
{
  v4 = a3;
  v5 = [INStorageSummaryRequest alloc];
  account = self->_account;
  v7 = [(INCloudNetworkController *)self _backupDeviceUDID];
  v8 = [(INStorageSummaryRequest *)v5 initWithAccount:account withBackupDeviceUDID:v7];

  aaUrlSession = self->_aaUrlSession;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004B10;
  v11[3] = &unk_1000552F0;
  v12 = v4;
  v10 = v4;
  [(INStorageSummaryRequest *)v8 performRequestWithSession:aaUrlSession withHandler:v11];
}

- (void)cloudStorageApps:(id)a3
{
  v4 = a3;
  v5 = [INStorageAppsRequest alloc];
  account = self->_account;
  v7 = [(INCloudNetworkController *)self _backupDeviceUDID];
  v8 = [(INStorageAppsRequest *)v5 initWithAccount:account withBackupDeviceUDID:v7];

  aaUrlSession = self->_aaUrlSession;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004D8C;
  v11[3] = &unk_1000552F0;
  v12 = v4;
  v10 = v4;
  [(INStorageAppsRequest *)v8 performRequestWithSession:aaUrlSession withHandler:v11];
}

- (void)appCloudStorageForBundleId:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[INStorageByAppRequest alloc] initWithAccount:self->_account bundleId:v7];

  aaUrlSession = self->_aaUrlSession;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004FF4;
  v11[3] = &unk_1000552F0;
  v12 = v6;
  v10 = v6;
  [(INStorageByAppRequest *)v8 performRequestWithSession:aaUrlSession withHandler:v11];
}

- (void)fetchBackupInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [INCloudBackupInfoRequest alloc];
  account = self->_account;
  v7 = [(INCloudNetworkController *)self _backupDeviceUDID];
  v8 = [(INCloudBackupInfoRequest *)v5 initWithAccount:account withBackupDeviceUDID:v7];

  aaUrlSession = self->_aaUrlSession;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005270;
  v11[3] = &unk_1000552F0;
  v12 = v4;
  v10 = v4;
  [(INCloudBackupInfoRequest *)v8 performRequestWithSession:aaUrlSession withHandler:v11];
}

- (void)displayedNetworkRequestForTip:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[INTipNetworkRequest alloc] initWithAccountForDisplayStatus:self->_account tip:v7];
  [(INCloudNetworkController *)self _sendNetworkRequestForTip:v7 request:v8 completion:v6];
}

- (void)dismissedNetworkRequestForTip:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[INTipNetworkRequest alloc] initWithAccountForDismissStatus:self->_account tip:v7];
  [(INCloudNetworkController *)self _sendNetworkRequestForTip:v7 request:v8 completion:v6];
}

- (void)_sendNetworkRequestForTip:(id)a3 request:(id)a4 completion:(id)a5
{
  v7 = a5;
  aaUrlSession = self->_aaUrlSession;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000055CC;
  v10[3] = &unk_1000552F0;
  v11 = v7;
  v9 = v7;
  [a4 performRequestWithSession:aaUrlSession withHandler:v10];
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

- (void)fetchAppsSyncingToDrive:(id)a3
{
  v4 = a3;
  v5 = [[INAppsSyncingToDriveRequest alloc] initWithAccount:self->_account];
  aaUrlSession = self->_aaUrlSession;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000590C;
  v8[3] = &unk_1000552F0;
  v9 = v4;
  v7 = v4;
  [(INAppsSyncingToDriveRequest *)v5 performRequestWithSession:aaUrlSession withHandler:v8];
}

- (void)fetchServerRecommendations:(id)a3
{
  v4 = a3;
  v5 = [[INRecommendationsRequest alloc] initWithAccount:self->_account];
  aaUrlSession = self->_aaUrlSession;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005B5C;
  v8[3] = &unk_1000552F0;
  v9 = v4;
  v7 = v4;
  [(INRenewingRequest *)v5 performRequestWithSession:aaUrlSession withHandler:v8];
}

- (void)fetchRecommendationRules:(id)a3
{
  v4 = a3;
  v5 = [[INRulesetRequest alloc] initWithAccount:self->_account];
  aaUrlSession = self->_aaUrlSession;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005DA8;
  v8[3] = &unk_1000552F0;
  v9 = v4;
  v7 = v4;
  [(INRenewingRequest *)v5 performRequestWithSession:aaUrlSession withHandler:v8];
}

- (void)fetchCompletedAndDismissedRecommendationsWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[INRecommendationsCompletedAndDismissedRequest alloc] initWithAccount:self->_account configuration:v7];

  aaUrlSession = self->_aaUrlSession;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000600C;
  v11[3] = &unk_1000552F0;
  v12 = v6;
  v10 = v6;
  [(INRecommendationsCompletedAndDismissedRequest *)v8 performRequestWithSession:aaUrlSession withHandler:v11];
}

- (void)_sendRecommendationActionStatusWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  aaUrlSession = self->_aaUrlSession;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000623C;
  v9[3] = &unk_1000552F0;
  v10 = v6;
  v8 = v6;
  [a3 performRequestWithSession:aaUrlSession withHandler:v9];
}

- (void)sendStatusForRecommendationWithConfiguration:(id)a3 recommendationIdentifiers:(id)a4 status:(id)a5 storageRecovered:(id)a6 context:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if ([v16 isEqualToString:@"displayed"])
  {
    v20 = [[INRecommendationsActionsRequest alloc] initWithAccountForDisplayStatus:self->_account configuration:v14 recommendations:v15 context:v18];
LABEL_9:
    v21 = v20;
    goto LABEL_10;
  }

  if ([v16 isEqualToString:@"dismissed"])
  {
    v20 = [[INRecommendationsActionsRequest alloc] initWithAccountForDismissStatus:self->_account configuration:v14 recommendations:v15 context:v18];
    goto LABEL_9;
  }

  if ([v16 isEqualToString:@"completed"])
  {
    v20 = [[INRecommendationsActionsRequest alloc] initWithAccountForActionCompletedStatus:self->_account configuration:v14 recommendations:v15 storageRecovered:v17 context:v18];
    goto LABEL_9;
  }

  if ([v16 isEqualToString:@"canceled"])
  {
    v20 = [[INRecommendationsActionsRequest alloc] initWithAccountForActionCancelledStatus:self->_account configuration:v14 recommendations:v15 context:v18];
    goto LABEL_9;
  }

  v22 = _INLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_100034B20();
  }

  v21 = 0;
LABEL_10:
  [(INCloudNetworkController *)self _sendRecommendationActionStatusWithRequest:v21 completion:v19];
}

- (void)sendStatusForRecommendationWithConfiguration:(id)a3 params:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[INRecommendationsActionsRequest alloc] initWithAccount:self->_account configuration:v10 params:v9];

  [(INCloudNetworkController *)self _sendRecommendationActionStatusWithRequest:v11 completion:v8];
}

@end