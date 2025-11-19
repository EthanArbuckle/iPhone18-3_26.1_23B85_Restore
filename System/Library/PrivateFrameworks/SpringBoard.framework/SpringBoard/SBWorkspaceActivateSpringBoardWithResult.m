@interface SBWorkspaceActivateSpringBoardWithResult
@end

@implementation SBWorkspaceActivateSpringBoardWithResult

void ____SBWorkspaceActivateSpringBoardWithResult_block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) currentTransaction];
  [v1 failWithReason:@"force activate SpringBoard"];
}

void ____SBWorkspaceActivateSpringBoardWithResult_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setResultBlock:v2];
  v4 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
  [v3 setActivatingEntity:v4];
}

uint64_t ____SBWorkspaceActivateSpringBoardWithResult_block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 64))
  {
LABEL_8:
    v9 = [SBApp lockOutController];
    v10 = [WeakRetained authenticationStatusProvider];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [SBApp authenticationController];
    }

    v13 = v12;

    v14 = [WeakRetained uiLockStateProvider];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = +[SBLockScreenManager sharedInstance];
    }

    v17 = v16;

    if (([v9 isBlocked] & 1) != 0 || !objc_msgSend(v13, "isAuthenticated"))
    {
      v18 = 1;
    }

    else
    {
      v18 = [v17 isUILocked];
    }

    if (objc_opt_respondsToSelector())
    {
      v19 = [v17 isUIUnlocking] ^ 1;
    }

    else
    {
      v19 = 1;
    }

    if ((v18 & v19) == 1)
    {
      v20 = v27;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v21 = ____SBWorkspaceActivateSpringBoardWithResult_block_invoke_5;
    }

    else
    {
      v20 = v26;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v21 = ____SBWorkspaceActivateSpringBoardWithResult_block_invoke_6;
    }

    v20[2] = v21;
    v20[3] = &unk_2783AA380;
    v20[4] = *(a1 + 32);
    v20[5] = *(a1 + 40);
    [v4 setTransactionProvider:v20];

    v22 = 1;
    goto LABEL_25;
  }

  v6 = *(a1 + 65);
  if (v6 == 1)
  {
    v2 = [*(a1 + 32) transientOverlayPresentationManager];
    if ([v2 hasActivePresentation])
    {

      goto LABEL_8;
    }
  }

  v7 = [WeakRetained switcherController];
  v8 = [v7 unlockedEnvironmentMode];

  if (v6)
  {
  }

  if (v8 == 3)
  {
    goto LABEL_8;
  }

  v24 = *(a1 + 48);
  if (v24)
  {
    (*(v24 + 16))(v24, 0);
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    (*(v25 + 16))(v25, 0);
  }

  v22 = 0;
LABEL_25:

  return v22;
}

id ____SBWorkspaceActivateSpringBoardWithResult_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _selectTransactionForReturningToTheLockScreenWithRequest:a2];
  [v3 setCompletionBlock:*(a1 + 40)];

  return v3;
}

id ____SBWorkspaceActivateSpringBoardWithResult_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _selectTransactionForAppActivationRequest:a2];
  [v3 setCompletionBlock:*(a1 + 40)];

  return v3;
}

@end