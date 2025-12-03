@interface SUFollowUpRollbackDiscoveredExtensionViewController
- (BOOL)clearFollowUpItem:(id)item;
- (id)jumpTable;
- (id)rollbackSuggestionTypeFromUserInfo:(id)info;
- (void)goToSettingsActionWithItem:(id)item action:(id)action completion:(id)completion;
- (void)handleActionWithItem:(id)item action:(id)action completion:(id)completion;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
- (void)removeNowActionWithItem:(id)item action:(id)action completion:(id)completion;
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

- (void)handleActionWithItem:(id)item action:(id)action completion:(id)completion
{
  actionCopy = action;
  itemCopy = item;
  SULogInfo();
  jumpTable = [(SUFollowUpRollbackDiscoveredExtensionViewController *)self jumpTable];
  identifier = [actionCopy identifier];
  v10 = [jumpTable objectForKeyedSubscript:identifier];
  v11 = NSSelectorFromString(v10);

  [(SUFollowUpRollbackDiscoveredExtensionViewController *)self performSelector:v11 withObject:itemCopy withObject:actionCopy];
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  completionCopy = completion;
  actionCopy = action;
  itemCopy = item;
  identifier = [actionCopy identifier];
  SULogInfo();

  [(SUFollowUpRollbackDiscoveredExtensionViewController *)self handleActionWithItem:itemCopy action:actionCopy completion:completionCopy, identifier];
}

- (void)removeNowActionWithItem:(id)item action:(id)action completion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000F6C;
  block[3] = &unk_1000041E8;
  itemCopy = item;
  completionCopy = completion;
  block[4] = self;
  v7 = itemCopy;
  v8 = completionCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)goToSettingsActionWithItem:(id)item action:(id)action completion:(id)completion
{
  SULogInfo();
  v6 = [NSURL URLWithString:@"prefs:root=General&path=About/SW_VERSION_SPECIFIER"];
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  [v5 openSensitiveURL:v6 withOptions:0];
}

- (BOOL)clearFollowUpItem:(id)item
{
  itemCopy = item;
  v4 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.SoftwareUpdateServices.followup"];
  if (v4)
  {
    uniqueIdentifier = [itemCopy uniqueIdentifier];
    v11 = uniqueIdentifier;
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

- (id)rollbackSuggestionTypeFromUserInfo:(id)info
{
  infoCopy = info;
  v4 = infoCopy;
  if (!infoCopy)
  {
    goto LABEL_10;
  }

  v5 = [infoCopy objectForKeyedSubscript:kSUFollowUpUserInfoRollbackSuggestionTypeKey];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_10:
    v9 = kSURollbackSuggestionUnknownReasonRemoveNowTapped;
    goto LABEL_11;
  }

  intValue = [v5 intValue];
  v7 = &kSURollbackSuggestionStabilityMonitorRemoveNowTapped;
  v8 = &kSURollbackSuggestionProgramInitiatedRemoveNowTapped;
  if (intValue != 2)
  {
    v8 = &kSURollbackSuggestionUnknownReasonRemoveNowTapped;
  }

  if (intValue != 1)
  {
    v7 = v8;
  }

  v9 = *v7;

LABEL_11:

  return v9;
}

@end