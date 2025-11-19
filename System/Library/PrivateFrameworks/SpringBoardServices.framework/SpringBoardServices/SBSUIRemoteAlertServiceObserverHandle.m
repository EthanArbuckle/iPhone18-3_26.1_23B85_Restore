@interface SBSUIRemoteAlertServiceObserverHandle
@end

@implementation SBSUIRemoteAlertServiceObserverHandle

void __71___SBSUIRemoteAlertServiceObserverHandle_remoteAlertHandleDidActivate___block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x193AFFB30](*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, 1);
    v4 = v5;
  }
}

void __73___SBSUIRemoteAlertServiceObserverHandle_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x193AFFB30](*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, 1);
    v4 = v5;
  }
}

void __83___SBSUIRemoteAlertServiceObserverHandle_remoteAlertHandle_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v7 = MEMORY[0x193AFFB30](*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  if (v7)
  {
    v7[2](v7, 0);
  }

  v4 = MEMORY[0x193AFFB30](*(*(a1 + 32) + 16));
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  if (v4)
  {
    v4[2](v4, 0);
  }
}

@end