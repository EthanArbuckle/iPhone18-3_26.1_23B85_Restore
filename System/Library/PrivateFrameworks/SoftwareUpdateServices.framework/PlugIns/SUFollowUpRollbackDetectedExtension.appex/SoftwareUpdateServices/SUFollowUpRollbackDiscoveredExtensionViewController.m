@interface SUFollowUpRollbackDiscoveredExtensionViewController
- (BOOL)clearFollowUpItem:(id)a3;
- (id)jumpTable;
- (id)rollbackSuggestionTypeFromUserInfo:(id)a3;
- (void)goToSettingsActionWithItem:(id)a3 action:(id)a4 completion:(id)a5;
- (void)handleActionWithItem:(id)a3 action:(id)a4 completion:(id)a5;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
- (void)removeNowActionWithItem:(id)a3 action:(id)a4 completion:(id)a5;
@end

@implementation SUFollowUpRollbackDiscoveredExtensionViewController

- (id)jumpTable
{
  if (qword_1000081C0 != -1)
  {
    sub_100001458();
  }

  v3 = qword_1000081B8;

  return v3;
}

- (void)handleActionWithItem:(id)a3 action:(id)a4 completion:(id)a5
{
  v7 = a4;
  v12 = a3;
  SULogInfo();
  v8 = [(SUFollowUpRollbackDiscoveredExtensionViewController *)self jumpTable];
  v9 = [v7 identifier];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = NSSelectorFromString(v10);

  [(SUFollowUpRollbackDiscoveredExtensionViewController *)self performSelector:v11 withObject:v12 withObject:v7];
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v11 = a3;
  v10 = [v9 identifier];
  SULogInfo();

  [(SUFollowUpRollbackDiscoveredExtensionViewController *)self handleActionWithItem:v11 action:v9 completion:v8, v10];
}

- (void)removeNowActionWithItem:(id)a3 action:(id)a4 completion:(id)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000F6C;
  block[3] = &unk_1000041E8;
  v10 = a3;
  v11 = a5;
  block[4] = self;
  v7 = v10;
  v8 = v11;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)goToSettingsActionWithItem:(id)a3 action:(id)a4 completion:(id)a5
{
  SULogInfo();
  v6 = [NSURL URLWithString:@"prefs:root=General&path=About/SW_VERSION_SPECIFIER"];
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  [v5 openSensitiveURL:v6 withOptions:0];
}

- (BOOL)clearFollowUpItem:(id)a3
{
  v3 = a3;
  v4 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.SoftwareUpdateServices.followup"];
  if (v4)
  {
    v5 = [v3 uniqueIdentifier];
    v11 = v5;
    v6 = [NSArray arrayWithObjects:&v11 count:1];
    v10 = 0;
    v7 = [v4 clearPendingFollowUpItemsWithUniqueIdentifiers:v6 error:&v10];
    v8 = v10;

    if ((v7 & 1) == 0)
    {
      SULogInfo();
    }
  }

  else
  {
    SULogInfo();
    v7 = 0;
  }

  return v7;
}

- (id)rollbackSuggestionTypeFromUserInfo:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_10;
  }

  v5 = [v3 objectForKeyedSubscript:kSUFollowUpUserInfoRollbackSuggestionTypeKey];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_10:
    v9 = kSURollbackSuggestionUnknownReasonRemoveNowTapped;
    goto LABEL_11;
  }

  v6 = [v5 intValue];
  v7 = &kSURollbackSuggestionStabilityMonitorRemoveNowTapped;
  v8 = &kSURollbackSuggestionProgramInitiatedRemoveNowTapped;
  if (v6 != 2)
  {
    v8 = &kSURollbackSuggestionUnknownReasonRemoveNowTapped;
  }

  if (v6 != 1)
  {
    v7 = v8;
  }

  v9 = *v7;

LABEL_11:

  return v9;
}

@end