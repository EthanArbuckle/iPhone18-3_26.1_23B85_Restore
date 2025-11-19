@interface PXActionPerformer
- (BOOL)dismissAlertWithToken:(id)a3 completionHandler:(id)a4;
- (BOOL)dismissViewController:(id)a3 completionHandler:(id)a4;
- (BOOL)prefersAssetInclusionAfterRemoval;
- (BOOL)presentAlertWithTitle:(id)a3 message:(id)a4 completionHandler:(id)a5;
- (BOOL)presentViewController:(id)a3 completionHandler:(id)a4;
- (BOOL)pushViewController:(id)a3;
- (NSUndoManager)undoManager;
- (PXActionPerformer)init;
- (PXActionPerformer)initWithActionType:(id)a3;
- (PXActionPerformerDelegate)delegate;
- (PXPresentationEnvironment)presentationEnvironment;
- (UIViewController)hostViewController;
- (id)barButtonItemWithTarget:(id)a3 action:(SEL)a4;
- (id)description;
- (id)menuElement;
- (id)presentAlertWithConfigurationHandler:(id)a3;
- (id)sender;
- (int64_t)menuElementState;
- (void)_completeStateWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_handleStepFinished:(unint64_t)a3 withSuccess:(BOOL)a4 error:(id)a5;
- (void)_performUnlockIfNeeded;
- (void)_transitionToState:(unint64_t)a3 withSuccess:(BOOL)a4 error:(id)a5;
- (void)cancelActionWithCompletionHandler:(id)a3;
- (void)performActionWithCompletionHandler:(id)a3;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXActionPerformer

- (PXActionPerformerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)sender
{
  WeakRetained = objc_loadWeakRetained(&self->_sender);

  return WeakRetained;
}

- (BOOL)presentAlertWithTitle:(id)a3 message:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__PXActionPerformer_presentAlertWithTitle_message_completionHandler___block_invoke;
  v16[3] = &unk_1E7BB7778;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = [(PXActionPerformer *)self presentAlertWithConfigurationHandler:v16];
  LOBYTE(self) = v14 != 0;

  return self;
}

void __69__PXActionPerformer_presentAlertWithTitle_message_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setTitle:v3];
  [v4 setMessage:a1[5]];
  v6 = PXPhotosUIFoundationBundle();
  v5 = [v6 localizedStringForKey:@"PXOK" value:&stru_1F2B87EE0 table:0];
  [v4 addActionWithTitle:v5 style:0 action:a1[6]];
}

- (BOOL)dismissAlertWithToken:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PXActionPerformer *)self presentationEnvironment];
  v10 = v9;
  if (!v9)
  {
    v11 = v7;
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_5:
        [v11 dismissWithCompletionHandler:v8];

        goto LABEL_6;
      }

      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v15 = NSStringFromClass(v16);
      v17 = [v11 px_descriptionForAssertionMessage];
      [v13 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:517 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"token", v15, v17}];
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      [v13 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:517 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"token", v15}];
    }

    goto LABEL_5;
  }

  [v9 dismissAlertWithToken:v7 completionHandler:v8];
LABEL_6:

  return 1;
}

- (id)presentAlertWithConfigurationHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXActionPerformer *)self presentationEnvironment];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 presentAlertWithConfigurationHandler:v4];
  }

  else
  {
    v8 = objc_alloc_init(PXAlertConfiguration);
    v4[2](v4, v8);
    v9 = [[PXAlert alloc] initWithConfiguration:v8];
    v10 = [(PXAlert *)v9 alertController];
    v11 = [(PXActionPerformer *)self presentViewController:v10];

    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v7 = v12;
  }

  return v7;
}

- (void)_completeStateWithSuccess:(BOOL)a3 error:(id)a4
{
  (*(self->_completionHandler + 2))();
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  presentedViewController = self->_presentedViewController;
  self->_presentedViewController = 0;

  if ([(PXActionPerformer *)self performerResetsAfterCompletion])
  {
    self->_state = 0;
  }
}

- (void)_transitionToState:(unint64_t)a3 withSuccess:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v9 = a5;
  if (self->_state >= a3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = v15;
    v17 = 0;
    state = self->_state;
    if (state <= 9)
    {
      if (state)
      {
        if (state == 5)
        {
          v17 = @"unlockIfNeeded";
        }
      }

      else
      {
        v17 = @"ready";
      }
    }

    else
    {
      switch(state)
      {
        case 10:
          v17 = @"userInteractive";
          break;
        case 20:
          v17 = @"backgroundTask";
          break;
        case 30:
          v17 = @"finished";
          break;
      }
    }

    v19 = 0;
    if (a3 <= 9)
    {
      if (a3)
      {
        if (a3 == 5)
        {
          v19 = @"unlockIfNeeded";
        }
      }

      else
      {
        v19 = @"ready";
      }
    }

    else
    {
      switch(a3)
      {
        case 0xAuLL:
          v19 = @"userInteractive";
          break;
        case 0x14uLL:
          v19 = @"backgroundTask";
          break;
        case 0x1EuLL:
          v19 = @"finished";
          break;
      }
    }

    [v15 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:443 description:{@"Tried transitioning from %@ to the same or earlier step %@", v17, v19}];
  }

  self->_state = a3;
  if (a3 == 30)
  {
    self->_success = v5;
  }

  v10 = PFUIGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 0;
    if (a3 <= 9)
    {
      if (a3)
      {
        if (a3 == 5)
        {
          v11 = @"unlockIfNeeded";
        }
      }

      else
      {
        v11 = @"ready";
      }
    }

    else
    {
      switch(a3)
      {
        case 0xAuLL:
          v11 = @"userInteractive";
          break;
        case 0x14uLL:
          v11 = @"backgroundTask";
          break;
        case 0x1EuLL:
          v11 = @"finished";
          break;
      }
    }

    *buf = 138412802;
    v23 = v11;
    v24 = 1024;
    v25 = v5;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_1B3F73000, v10, OS_LOG_TYPE_DEBUG, "Transition to state: %@, success: %d, error: %@", buf, 0x1Cu);
  }

  v12 = [(PXActionPerformer *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(PXActionPerformer *)self delegate];
    [v14 actionPerformer:self didChangeState:a3];
  }

  if (a3 > 19)
  {
    if (a3 == 20)
    {
      [(PXActionPerformer *)self performBackgroundTask];
      goto LABEL_28;
    }

    if (a3 == 30)
    {
      [(PXActionPerformer *)self _completeStateWithSuccess:v5 error:v9];
      goto LABEL_28;
    }

LABEL_52:
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = PXActionPerformerStateDescription(a3);
    [v20 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:475 description:{@"Not allowed to transition to state:%@", v21}];

    abort();
  }

  if (a3 == 5)
  {
    [(PXActionPerformer *)self _performUnlockIfNeeded];
    goto LABEL_28;
  }

  if (a3 != 10)
  {
    goto LABEL_52;
  }

  [(PXActionPerformer *)self performUserInteractionTask];
LABEL_28:
}

- (void)_handleStepFinished:(unint64_t)a3 withSuccess:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v9 = a5;
  if (v9)
  {
    v10 = PFUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v12 = @"NO";
      if (v5)
      {
        v12 = @"YES";
      }

      if (a3 <= 9)
      {
        if (a3)
        {
          if (a3 == 5)
          {
            v11 = @"unlockIfNeeded";
          }
        }

        else
        {
          v11 = @"ready";
        }
      }

      else
      {
        switch(a3)
        {
          case 0xAuLL:
            v11 = @"userInteractive";
            break;
          case 0x14uLL:
            v11 = @"backgroundTask";
            break;
          case 0x1EuLL:
            v11 = @"finished";
            break;
        }
      }

      *buf = 138413058;
      v21 = self;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_1B3F73000, v10, OS_LOG_TYPE_ERROR, "%@ success:%@ step:%@ encountered error:%@", buf, 0x2Au);
    }
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:410 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  if ([(PXActionPerformer *)self state]== a3)
  {
    if (!v5)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = v15;
    v17 = 0;
    if (a3 <= 9)
    {
      if (a3)
      {
        if (a3 == 5)
        {
          v17 = @"unlockIfNeeded";
        }
      }

      else
      {
        v17 = @"ready";
      }
    }

    else
    {
      switch(a3)
      {
        case 0xAuLL:
          v17 = @"userInteractive";
          break;
        case 0x14uLL:
          v17 = @"backgroundTask";
          break;
        case 0x1EuLL:
          v17 = @"finished";
          break;
      }
    }

    [v15 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:411 description:{@"%@: Invalid transition fromState: %@", self, v17}];

    if (!v5)
    {
      goto LABEL_28;
    }
  }

  if (a3 > 9)
  {
    if (a3 == 10)
    {
      v13 = 20;
      goto LABEL_29;
    }

    if (a3 != 20)
    {
      goto LABEL_45;
    }

LABEL_28:
    v13 = 30;
    goto LABEL_29;
  }

  if (!a3)
  {
    v13 = 5;
    goto LABEL_29;
  }

  if (a3 != 5)
  {
LABEL_45:
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = PXActionPerformerStateDescription(a3);
    [v18 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:434 description:{@"Not allowed to transition from state:%@", v19}];

    abort();
  }

  v13 = 10;
LABEL_29:
  [(PXActionPerformer *)self _transitionToState:v13 withSuccess:v5 error:v9];
}

- (void)performBackgroundTask
{
  v4 = [objc_opt_class() methodForSelector:a2];
  if (v4 == [objc_opt_class() methodForSelector:a2])
  {

    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  }
}

- (BOOL)dismissViewController:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  if ([(PXActionPerformer *)self state]!= 10)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:368 description:{@"Invalid parameter not satisfying: %@", @"[self state] == PXActionPerformerStateUserInteractive"}];
  }

  if (!v8)
  {
    v8 = &__block_literal_global_13265;
  }

  v9 = [(PXActionPerformer *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(PXActionPerformer *)self delegate];
    v12 = [v11 actionPerformer:self dismissViewController:v7 completionHandler:v8];
  }

  else
  {
    v13 = [(PXActionPerformer *)self presentationEnvironment];

    if (!v13)
    {
      v8[2](v8);
      v12 = 0;
      goto LABEL_12;
    }

    v11 = [(PXActionPerformer *)self presentationEnvironment];
    v12 = 1;
    [v11 dismissViewController:v7 animated:1 completionHandler:v8];
  }

LABEL_12:
  return v12;
}

- (BOOL)pushViewController:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:352 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  if ([(PXActionPerformer *)self state]!= 10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"[self state] == PXActionPerformerStateUserInteractive"}];
  }

  v6 = [(PXActionPerformer *)self presentationEnvironment];
  v7 = [(PXActionPerformer *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PXActionPerformer *)self delegate];
    v10 = [v9 actionPerformer:self transitionToViewController:v5 transitionType:1];
  }

  else if (v6)
  {
    v10 = [v6 pushViewController:v5 animated:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PXPresentationEnvironment)presentationEnvironment
{
  v3 = self->_presentationEnvironment;
  if (!v3)
  {
    v4 = [(PXActionPerformer *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(PXActionPerformer *)self delegate];
      v3 = [v6 presentationEnvironmentForActionPerformer:self];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)prefersAssetInclusionAfterRemoval
{
  v3 = [(PXActionPerformer *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(PXActionPerformer *)self delegate];
  v6 = [v5 prefersAssetInclusionAfterRemovalForActionPerformer:self];

  return v6;
}

- (NSUndoManager)undoManager
{
  v3 = self->_undoManager;
  if (!v3)
  {
    v4 = [(PXActionPerformer *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(PXActionPerformer *)self delegate];
      v3 = [v6 undoManagerForActionPerformer:self];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (UIViewController)hostViewController
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  if ([(PXActionPerformer *)self state]!= 10)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:318 description:{@"Invalid parameter not satisfying: %@", @"[self state] == PXActionPerformerStateUserInteractive"}];
  }

  v4 = [(PXActionPerformer *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PXActionPerformer *)self delegate];
    v7 = [v6 hostViewControllerForActionPerformer:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)presentViewController:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  if ([(PXActionPerformer *)self state]!= 10 && ([(PXActionPerformer *)self state]!= 20 || ![(PXActionPerformer *)self canPresentAlertInBackgroudState]))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"[self state] == PXActionPerformerStateUserInteractive || ([self state] == PXActionPerformerStateBackgroundTask && self.canPresentAlertInBackgroudState)"}];
  }

  v11 = [(PXActionPerformer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (([v11 actionPerformer:self transitionToViewController:v8 transitionType:2] & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    if (![v11 actionPerformer:self presentViewController:v8])
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = [(PXActionPerformer *)self presentationEnvironment];

    if (!v12)
    {
LABEL_16:
      v14 = 0;
      goto LABEL_17;
    }

    v13 = [(PXActionPerformer *)self presentationEnvironment];
    [v13 presentViewController:v8 animated:1 completionHandler:v9];
  }

  objc_storeStrong(&self->_presentedViewController, a3);
  v14 = 1;
LABEL_17:

  return v14;
}

- (void)performUserInteractionTask
{
  v4 = [objc_opt_class() methodForSelector:a2];
  if (v4 == [objc_opt_class() methodForSelector:a2])
  {

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

- (void)_performUnlockIfNeeded
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__PXActionPerformer__performUnlockIfNeeded__block_invoke;
  aBlock[3] = &unk_1E7BB7750;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if ([(PXActionPerformer *)self requiresUnlockedDevice]&& (+[PXActionManager _unlockDeviceHandlerWithActionType], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    (*(v4 + 16))(v4, v3, 0);
  }

  else
  {
    v3[2](v3, 1);
  }
}

- (id)description
{
  v3 = [(PXActionPerformer *)self state];
  v4 = @"userInteractive";
  v5 = @"backgroundTask";
  v6 = @"finished";
  if (v3 != 30)
  {
    v6 = 0;
  }

  if (v3 != 20)
  {
    v5 = v6;
  }

  if (v3 != 10)
  {
    v4 = v5;
  }

  v7 = @"ready";
  v8 = @"unlockIfNeeded";
  if (v3 != 5)
  {
    v8 = 0;
  }

  if (v3)
  {
    v7 = v8;
  }

  if (v3 <= 9)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = [(PXActionPerformer *)self actionType];
  v13 = [v10 stringWithFormat:@"<%@: %p type = %@, state = %@>", v11, self, v12, v9];;

  return v13;
}

- (void)cancelActionWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  if (![(PXActionPerformer *)self isCancellable])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"[self isCancellable]"}];
  }

  presentedViewController = self->_presentedViewController;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PXActionPerformer_cancelActionWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7BB7DA8;
  v10[4] = self;
  v11 = v5;
  v7 = v5;
  [(PXActionPerformer *)self dismissViewController:presentedViewController completionHandler:v10];
}

uint64_t __55__PXActionPerformer_cancelActionWithCompletionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 10)
  {
    [*(a1 + 32) completeUserInteractionTaskWithSuccess:0 error:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)performActionWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__PXActionPerformer_performActionWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7BB7728;
  v10[4] = self;
  v11 = v5;
  v6 = v5;
  v7 = [v10 copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v7;

  [(PXActionPerformer *)self _handleStepFinished:0 withSuccess:1 error:0];
}

uint64_t __56__PXActionPerformer_performActionWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  a3;
  if (*(a1 + 32))
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, a2);
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

- (PXActionPerformer)initWithActionType:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"nil != actionType"}];
  }

  if (![v5 length])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"[actionType length] > 0"}];
  }

  v12.receiver = self;
  v12.super_class = PXActionPerformer;
  v6 = [(PXActionPerformer *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    actionType = v6->_actionType;
    v6->_actionType = v7;

    v6->_state = 0;
  }

  return v6;
}

- (PXActionPerformer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:175 description:@"Use the designated initializer: -initWithActionType:."];

  abort();
}

- (id)barButtonItemWithTarget:(id)a3 action:(SEL)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PXActionPerformer *)self activitySystemImageName];
  v8 = [(PXActionPerformer *)self localizedTitleForUseCase:1];
  v9 = v8;
  if (v7)
  {
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:v7];
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v10 style:0 target:v6 action:a4];
  }

  else if (v8)
  {
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v8 style:0 target:v6 action:a4];
  }

  else
  {
    v12 = PXAssertGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = self;
      _os_log_error_impl(&dword_1B3F73000, v12, OS_LOG_TYPE_ERROR, "Tried to create a bar button item from %@, but it has no system image or title", &v14, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (int64_t)menuElementState
{
  result = [(PXActionPerformer *)self menuActionState];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (id)menuElement
{
  v3 = [(PXActionPerformer *)self localizedTitleForUseCase:1];
  if (v3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [(PXActionPerformer *)self activitySystemImageName];
    v6 = [v4 px_systemImageNamed:v5];

    v7 = MEMORY[0x1E69DC628];
    v8 = [(PXActionPerformer *)self actionType];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__PXActionPerformer_UIKit__menuElement__block_invoke;
    v12[3] = &unk_1E7BB77A8;
    v12[4] = self;
    v9 = [v7 actionWithTitle:v3 image:v6 identifier:v8 handler:v12];

    v10 = [(PXActionPerformer *)self localizedSubtitleForUseCase:1];
    [v9 setSubtitle:v10];

    [v9 setState:{-[PXActionPerformer menuElementState](self, "menuElementState")}];
    if ([(PXActionPerformer *)self keepMenuPresented])
    {
      [v9 setAttributes:{objc_msgSend(v9, "attributes") | 8}];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end