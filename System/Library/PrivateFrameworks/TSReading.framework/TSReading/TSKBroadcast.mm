@interface TSKBroadcast
+ (void)asyncNotificationWithAccessController:(id)controller changeNotifier:(id)notifier changeGroup:(id)group;
+ (void)asyncNotificationWithAccessController:(id)controller changeNotifier:(id)notifier changeKind:(int)kind details:(id)details changeSource:(id)source;
+ (void)syncNotificationWithAccessController:(id)controller changeNotifier:(id)notifier changeGroup:(id)group;
+ (void)syncNotificationWithAccessController:(id)controller changeNotifier:(id)notifier changeKind:(int)kind details:(id)details changeSource:(id)source;
+ (void)twoPhaseNotificationWithAccessController:(id)controller changeNotifier:(id)notifier changeGroup:(id)group;
+ (void)twoPhaseNotificationWithAccessController:(id)controller changeNotifier:(id)notifier changeKind:(int)kind details:(id)details changeSource:(id)source;
@end

@implementation TSKBroadcast

+ (void)twoPhaseNotificationWithAccessController:(id)controller changeNotifier:(id)notifier changeKind:(int)kind details:(id)details changeSource:(id)source
{
  if (controller && notifier)
  {
    v10 = *&kind;
    v12 = objc_alloc_init(TSKChangeGroup);
    [(TSKChangeGroup *)v12 registerChange:v10 details:details forChangeSource:source];
    [TSKBroadcast twoPhaseNotificationWithAccessController:controller changeNotifier:notifier changeGroup:v12];
  }
}

+ (void)twoPhaseNotificationWithAccessController:(id)controller changeNotifier:(id)notifier changeGroup:(id)group
{
  if (controller && notifier)
  {
    if (([objc_msgSend(MEMORY[0x277CCACC8] "currentThread")] & 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSKBroadcast twoPhaseNotificationWithAccessController:changeNotifier:changeGroup:]"];
      [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKBroadcast.m"), 58, @"Must request performing commands on the main thread."}];
    }

    if (group)
    {

      [controller performRead:0 thenWrite:sel_syncProcessChanges_ thenReadOnMainThread:sel_asyncProcessChanges_ withTarget:notifier argument:group];
    }
  }
}

+ (void)asyncNotificationWithAccessController:(id)controller changeNotifier:(id)notifier changeKind:(int)kind details:(id)details changeSource:(id)source
{
  if (controller && notifier)
  {
    v10 = *&kind;
    v12 = objc_alloc_init(TSKChangeGroup);
    [(TSKChangeGroup *)v12 registerChange:v10 details:details forChangeSource:source];
    [TSKBroadcast asyncNotificationWithAccessController:controller changeNotifier:notifier changeGroup:v12];
  }
}

+ (void)asyncNotificationWithAccessController:(id)controller changeNotifier:(id)notifier changeGroup:(id)group
{
  if (controller && notifier && group)
  {
    if ([objc_msgSend(MEMORY[0x277CCACC8] "currentThread")])
    {

      [notifier asyncProcessChanges:group];
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__TSKBroadcast_asyncNotificationWithAccessController_changeNotifier_changeGroup___block_invoke;
      block[3] = &unk_279D47C18;
      block[4] = controller;
      block[5] = notifier;
      block[6] = group;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

uint64_t __81__TSKBroadcast_asyncNotificationWithAccessController_changeNotifier_changeGroup___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__TSKBroadcast_asyncNotificationWithAccessController_changeNotifier_changeGroup___block_invoke_2;
  v3[3] = &unk_279D47708;
  v4 = *(a1 + 40);
  return [v1 performRead:v3];
}

+ (void)syncNotificationWithAccessController:(id)controller changeNotifier:(id)notifier changeKind:(int)kind details:(id)details changeSource:(id)source
{
  if (controller && notifier)
  {
    v10 = *&kind;
    v12 = objc_alloc_init(TSKChangeGroup);
    [(TSKChangeGroup *)v12 registerChange:v10 details:details forChangeSource:source];
    [TSKBroadcast syncNotificationWithAccessController:controller changeNotifier:notifier changeGroup:v12];
  }
}

+ (void)syncNotificationWithAccessController:(id)controller changeNotifier:(id)notifier changeGroup:(id)group
{
  if (controller && notifier)
  {
    if (group)
    {
      [controller performRead:0 thenWrite:sel_syncProcessChanges_ thenReadOnMainThread:0 withTarget:notifier argument:group];
    }
  }
}

@end