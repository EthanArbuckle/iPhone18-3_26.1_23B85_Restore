@interface SBSRemoteAlertPresentationTargetPredicate(SpringBoard)
- (id)_launchingApplicationRecord;
- (id)targetApplicationWithController:()SpringBoard;
- (uint64_t)matchesOverlayViewController:()SpringBoard;
- (void)_launchingApplicationRecord;
- (void)configureTransientOverlayContext:()SpringBoard;
@end

@implementation SBSRemoteAlertPresentationTargetPredicate(SpringBoard)

- (id)targetApplicationWithController:()SpringBoard
{
  v4 = a3;
  process = [self process];
  launchingApplicationIdentity = [self launchingApplicationIdentity];
  v7 = launchingApplicationIdentity;
  if (process)
  {
    v8 = [v4 applicationWithPid:{objc_msgSend(process, "pid")}];
  }

  else if (launchingApplicationIdentity)
  {
    _launchingApplicationRecord = [self _launchingApplicationRecord];
    bundleIdentifier = [_launchingApplicationRecord bundleIdentifier];

    v8 = [v4 applicationWithBundleIdentifier:bundleIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)matchesOverlayViewController:()SpringBoard
{
  v4 = a3;
  process = [self process];
  launchingApplicationIdentity = [self launchingApplicationIdentity];
  v7 = launchingApplicationIdentity;
  if (process)
  {
    v8 = [v4 isPresentedByProcess:process];
  }

  else if (launchingApplicationIdentity)
  {
    _launchingApplicationRecord = [self _launchingApplicationRecord];
    bundleIdentifier = [_launchingApplicationRecord bundleIdentifier];

    v8 = [v4 isPresentedByBundleIdentifier:bundleIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)configureTransientOverlayContext:()SpringBoard
{
  v5 = a3;
  process = [self process];
  if (process)
  {
    [v5 setOriginatingProcess:process];
  }
}

- (id)_launchingApplicationRecord
{
  launchingApplicationIdentity = [self launchingApplicationIdentity];
  v6 = 0;
  v2 = [launchingApplicationIdentity findApplicationRecordWithError:&v6];
  v3 = v6;

  if (v3)
  {
    v4 = SBLogTransientOverlay();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SBSRemoteAlertPresentationTargetPredicate(SpringBoard) *)v3 _launchingApplicationRecord];
    }
  }

  return v2;
}

- (void)_launchingApplicationRecord
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "could not find app record for app identity. error: %{public}@", &v2, 0xCu);
}

@end