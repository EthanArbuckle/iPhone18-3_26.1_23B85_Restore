@interface PXCMMInvitationsIsNewMonitor
+ (PXCMMInvitationsIsNewMonitor)sharedMonitor;
- (BOOL)invitationIsNew:(id)new;
- (PXCMMInvitationsIsNewMonitor)init;
- (void)_lastExitedDateDidChange:(id)change;
- (void)_updateLastExitedDate;
@end

@implementation PXCMMInvitationsIsNewMonitor

- (void)_lastExitedDateDidChange:(id)change
{
  [(PXCMMInvitationsIsNewMonitor *)self _updateLastExitedDate];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PXCMMInvitationsIsNewMonitorDidChangeNotification" object:self];
}

- (void)_updateLastExitedDate
{
  v3 = PXForYouLastExitedDate();
  lastExitedForYouDate = self->_lastExitedForYouDate;
  self->_lastExitedForYouDate = v3;
}

- (BOOL)invitationIsNew:(id)new
{
  newCopy = new;
  v5 = +[PXCompleteMyMomentSettings sharedInstance];
  simulateAllMomentSharesAreNew = [v5 simulateAllMomentSharesAreNew];

  if (simulateAllMomentSharesAreNew)
  {
    v7 = 1;
  }

  else if ([newCopy shareType] == 1)
  {
    creationDate = [newCopy creationDate];
    v9 = creationDate;
    if (creationDate)
    {
      v7 = [creationDate compare:self->_lastExitedForYouDate] == 1;
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__lastExitedDateDidChange_ name:@"PXForYouLastExitedDateChangeNotification" object:0];

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