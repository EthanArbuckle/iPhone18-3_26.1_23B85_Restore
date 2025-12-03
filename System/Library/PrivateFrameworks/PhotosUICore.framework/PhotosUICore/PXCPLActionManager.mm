@interface PXCPLActionManager
- (id)actionPerformerForActionType:(id)type;
- (void)performAction:(int64_t)action forCPLUIStatus:(id)status;
@end

@implementation PXCPLActionManager

- (id)actionPerformerForActionType:(id)type
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCPLActionManager.m" lineNumber:45 description:{@"Method %s is a responsibility of subclass %@", "-[PXCPLActionManager actionPerformerForActionType:]", v8}];

  abort();
}

- (void)performAction:(int64_t)action forCPLUIStatus:(id)status
{
  statusCopy = status;
  if (!statusCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCPLActionManager.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"cplUIStatus"}];
  }

  if (action <= 5)
  {
    if (action <= 2)
    {
      if (action == 1)
      {
        v13 = @"PXCPLActionTypePause";
      }

      else if (action == 2)
      {
        v13 = @"PXCPLActionTypeResume";
      }

      else
      {
        v13 = 0;
        if (!action)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCPLActionManager.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"serviceAction != PXCPLStatusActionNone"}];

          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXCPLActionType _ActionTypeForServiceAction(PXCPLStatusAction)"];
          [currentHandler3 handleFailureInFunction:v19 file:@"PXCPLActionManager.m" lineNumber:55 description:@"Code which should be unreachable has been reached"];

          abort();
        }
      }
    }

    else
    {
      v14 = @"PXCPLActionTypeManageLocalStorage";
      v15 = @"PXCPLActionTypeManageCellularDataDisabled";
      if (action != 5)
      {
        v15 = 0;
      }

      if (action != 4)
      {
        v14 = v15;
      }

      if (action == 3)
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
    if (action != 11)
    {
      v9 = 0;
    }

    if (action != 10)
    {
      v8 = v9;
    }

    if (action != 9)
    {
      v7 = v8;
    }

    v10 = @"PXCPLActionTypeManageAirplaneMode";
    v11 = @"PXCPLActionTypeViewItemsFailingToUpload";
    v12 = @"PXCPLActionTypeManageExitMode";
    if (action != 8)
    {
      v12 = 0;
    }

    if (action != 7)
    {
      v11 = v12;
    }

    if (action != 6)
    {
      v10 = v11;
    }

    if (action <= 8)
    {
      v13 = v10;
    }

    else
    {
      v13 = v7;
    }
  }

  v16 = [(PXCPLActionManager *)self actionPerformerForActionType:v13];
  [v16 performActionWithCPLUIStatus:statusCopy completionHandler:0];
}

@end