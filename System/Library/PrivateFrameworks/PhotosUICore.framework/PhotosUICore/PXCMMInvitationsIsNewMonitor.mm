@interface PXCMMInvitationsIsNewMonitor
+ (PXCMMInvitationsIsNewMonitor)sharedMonitor;
- (BOOL)invitationIsNew:(id)a3;
- (PXCMMInvitationsIsNewMonitor)init;
- (void)_lastExitedDateDidChange:(id)a3;
- (void)_updateLastExitedDate;
@end

@implementation PXCMMInvitationsIsNewMonitor

- (void)_lastExitedDateDidChange:(id)a3
{
  [(PXCMMInvitationsIsNewMonitor *)self _updateLastExitedDate];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"PXCMMInvitationsIsNewMonitorDidChangeNotification" object:self];
}

- (void)_updateLastExitedDate
{
  v3 = PXForYouLastExitedDate();
  lastExitedForYouDate = self->_lastExitedForYouDate;
  self->_lastExitedForYouDate = v3;
}

- (BOOL)invitationIsNew:(id)a3
{
  v4 = a3;
  v5 = +[PXCompleteMyMomentSettings sharedInstance];
  v6 = [v5 simulateAllMomentSharesAreNew];

  if (v6)
  {
    v7 = 1;
  }

  else if ([v4 shareType] == 1)
  {
    v8 = [v4 creationDate];
    v9 = v8;
    if (v8)
    {
      v7 = [v8 compare:self->_lastExitedForYouDate] == 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PXCMMInvitationsIsNewMonitor)init
{
  v7.receiver = self;
  v7.super_class = PXCMMInvitationsIsNewMonitor;
  v2 = [(PXCMMInvitationsIsNewMonitor *)&v7 init];
  if (v2)
  {
    v3 = PXForYouLastExitedDate();
    lastExitedForYouDate = v2->_lastExitedForYouDate;
    v2->_lastExitedForYouDate = v3;

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__lastExitedDateDidChange_ name:@"PXForYouLastExitedDateChangeNotification" object:0];

    [(PXCMMInvitationsIsNewMonitor *)v2 _updateLastExitedDate];
  }

  return v2;
}

+ (PXCMMInvitationsIsNewMonitor)sharedMonitor
{
  if (sharedMonitor_predicate != -1)
  {
    dispatch_once(&sharedMonitor_predicate, &__block_literal_global_72788);
  }

  v3 = sharedMonitor__sharedMonitor;

  return v3;
}

void __45__PXCMMInvitationsIsNewMonitor_sharedMonitor__block_invoke()
{
  v0 = objc_alloc_init(PXCMMInvitationsIsNewMonitor);
  v1 = sharedMonitor__sharedMonitor;
  sharedMonitor__sharedMonitor = v0;
}

@end