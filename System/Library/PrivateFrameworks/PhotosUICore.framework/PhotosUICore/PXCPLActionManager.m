@interface PXCPLActionManager
- (id)actionPerformerForActionType:(id)a3;
- (void)performAction:(int64_t)a3 forCPLUIStatus:(id)a4;
@end

@implementation PXCPLActionManager

- (id)actionPerformerForActionType:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXCPLActionManager.m" lineNumber:45 description:{@"Method %s is a responsibility of subclass %@", "-[PXCPLActionManager actionPerformerForActionType:]", v8}];

  abort();
}

- (void)performAction:(int64_t)a3 forCPLUIStatus:(id)a4
{
  v21 = a4;
  if (!v21)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXCPLActionManager.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"cplUIStatus"}];
  }

  if (a3 <= 5)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v13 = @"PXCPLActionTypePause";
      }

      else if (a3 == 2)
      {
        v13 = @"PXCPLActionTypeResume";
      }

      else
      {
        v13 = 0;
        if (!a3)
        {
          v17 = [MEMORY[0x1E696AAA8] currentHandler];
          [v17 handleFailureInMethod:a2 object:self file:@"PXCPLActionManager.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"serviceAction != PXCPLStatusActionNone"}];

          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXCPLActionType _ActionTypeForServiceAction(PXCPLStatusAction)"];
          [v18 handleFailureInFunction:v19 file:@"PXCPLActionManager.m" lineNumber:55 description:@"Code which should be unreachable has been reached"];

          abort();
        }
      }
    }

    else
    {
      v14 = @"PXCPLActionTypeManageLocalStorage";
      v15 = @"PXCPLActionTypeManageCellularDataDisabled";
      if (a3 != 5)
      {
        v15 = 0;
      }

      if (a3 != 4)
      {
        v14 = v15;
      }

      if (a3 == 3)
      {
        v13 = @"PXCPLActionTypeManageCloudStorage";
      }

      else
      {
        v13 = v14;
      }
    }
  }

  else
  {
    v7 = @"PXCPLActionTypeLearnMoreClientVersionTooOld";
    v8 = @"PXCPLActionTypeManageClientAuthentication";
    v9 = @"PXCPLActionTypeLearnMoreUpgradeSuggested";
    if (a3 != 11)
    {
      v9 = 0;
    }

    if (a3 != 10)
    {
      v8 = v9;
    }

    if (a3 != 9)
    {
      v7 = v8;
    }

    v10 = @"PXCPLActionTypeManageAirplaneMode";
    v11 = @"PXCPLActionTypeViewItemsFailingToUpload";
    v12 = @"PXCPLActionTypeManageExitMode";
    if (a3 != 8)
    {
      v12 = 0;
    }

    if (a3 != 7)
    {
      v11 = v12;
    }

    if (a3 != 6)
    {
      v10 = v11;
    }

    if (a3 <= 8)
    {
      v13 = v10;
    }

    else
    {
      v13 = v7;
    }
  }

  v16 = [(PXCPLActionManager *)self actionPerformerForActionType:v13];
  [v16 performActionWithCPLUIStatus:v21 completionHandler:0];
}

@end