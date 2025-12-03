@interface PXActionPerformer
- (BOOL)dismissAlertWithToken:(id)token completionHandler:(id)handler;
- (BOOL)dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)prefersAssetInclusionAfterRemoval;
- (BOOL)presentAlertWithTitle:(id)title message:(id)message completionHandler:(id)handler;
- (BOOL)presentViewController:(id)controller completionHandler:(id)handler;
- (BOOL)pushViewController:(id)controller;
- (NSUndoManager)undoManager;
- (PXActionPerformer)init;
- (PXActionPerformer)initWithActionType:(id)type;
- (PXActionPerformerDelegate)delegate;
- (PXPresentationEnvironment)presentationEnvironment;
- (UIViewController)hostViewController;
- (id)barButtonItemWithTarget:(id)target action:(SEL)action;
- (id)description;
- (id)menuElement;
- (id)presentAlertWithConfigurationHandler:(id)handler;
- (id)sender;
- (int64_t)menuElementState;
- (void)_completeStateWithSuccess:(BOOL)success error:(id)error;
- (void)_handleStepFinished:(unint64_t)finished withSuccess:(BOOL)success error:(id)error;
- (void)_performUnlockIfNeeded;
- (void)_transitionToState:(unint64_t)state withSuccess:(BOOL)success error:(id)error;
- (void)cancelActionWithCompletionHandler:(id)handler;
- (void)performActionWithCompletionHandler:(id)handler;
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

- (BOOL)presentAlertWithTitle:(id)title message:(id)message completionHandler:(id)handler
{
  titleCopy = title;
  messageCopy = message;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__PXActionPerformer_presentAlertWithTitle_message_completionHandler___block_invoke;
  v16[3] = &unk_1E7BB7778;
  v17 = titleCopy;
  v18 = messageCopy;
  v19 = handlerCopy;
  v11 = handlerCopy;
  v12 = messageCopy;
  v13 = titleCopy;
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

- (BOOL)dismissAlertWithToken:(id)token completionHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  v10 = presentationEnvironment;
  if (!presentationEnvironment)
  {
    v11 = tokenCopy;
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_5:
        [v11 dismissWithCompletionHandler:handlerCopy];

        goto LABEL_6;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v15 = NSStringFromClass(v16);
      px_descriptionForAssertionMessage = [v11 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:517 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"token", v15, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:517 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"token", v15}];
    }

    goto LABEL_5;
  }

  [presentationEnvironment dismissAlertWithToken:tokenCopy completionHandler:handlerCopy];
LABEL_6:

  return 1;
}

- (id)presentAlertWithConfigurationHandler:(id)handler
{
  handlerCopy = handler;
  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  v6 = presentationEnvironment;
  if (presentationEnvironment)
  {
    v7 = [presentationEnvironment presentAlertWithConfigurationHandler:handlerCopy];
  }

  else
  {
    v8 = objc_alloc_init(PXAlertConfiguration);
    handlerCopy[2](handlerCopy, v8);
    v9 = [[PXAlert alloc] initWithConfiguration:v8];
    alertController = [(PXAlert *)v9 alertController];
    v11 = [(PXActionPerformer *)self presentViewController:alertController];

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

- (void)_completeStateWithSuccess:(BOOL)success error:(id)error
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

- (void)_transitionToState:(unint64_t)state withSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_state >= state)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = currentHandler;
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
    if (state <= 9)
    {
      if (state)
      {
        if (state == 5)
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
      switch(state)
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

    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:443 description:{@"Tried transitioning from %@ to the same or earlier step %@", v17, v19}];
  }

  self->_state = state;
  if (state == 30)
  {
    self->_success = successCopy;
  }

  v10 = PFUIGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 0;
    if (state <= 9)
    {
      if (state)
      {
        if (state == 5)
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
      switch(state)
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
    v25 = successCopy;
    v26 = 2112;
    v27 = errorCopy;
    _os_log_impl(&dword_1B3F73000, v10, OS_LOG_TYPE_DEBUG, "Transition to state: %@, success: %d, error: %@", buf, 0x1Cu);
  }

  delegate = [(PXActionPerformer *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(PXActionPerformer *)self delegate];
    [delegate2 actionPerformer:self didChangeState:state];
  }

  if (state > 19)
  {
    if (state == 20)
    {
      [(PXActionPerformer *)self performBackgroundTask];
      goto LABEL_28;
    }

    if (state == 30)
    {
      [(PXActionPerformer *)self _completeStateWithSuccess:successCopy error:errorCopy];
      goto LABEL_28;
    }

LABEL_52:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = PXActionPerformerStateDescription(state);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:475 description:{@"Not allowed to transition to state:%@", v21}];

    abort();
  }

  if (state == 5)
  {
    [(PXActionPerformer *)self _performUnlockIfNeeded];
    goto LABEL_28;
  }

  if (state != 10)
  {
    goto LABEL_52;
  }

  [(PXActionPerformer *)self performUserInteractionTask];
LABEL_28:
}

- (void)_handleStepFinished:(unint64_t)finished withSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (errorCopy)
  {
    v10 = PFUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v12 = @"NO";
      if (successCopy)
      {
        v12 = @"YES";
      }

      if (finished <= 9)
      {
        if (finished)
        {
          if (finished == 5)
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
        switch(finished)
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
      selfCopy = self;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = errorCopy;
      _os_log_impl(&dword_1B3F73000, v10, OS_LOG_TYPE_ERROR, "%@ success:%@ step:%@ encountered error:%@", buf, 0x2Au);
    }
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:410 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  if ([(PXActionPerformer *)self state]== finished)
  {
    if (!successCopy)
    {
      goto LABEL_28;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = currentHandler2;
    v17 = 0;
    if (finished <= 9)
    {
      if (finished)
      {
        if (finished == 5)
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
      switch(finished)
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

    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:411 description:{@"%@: Invalid transition fromState: %@", self, v17}];

    if (!successCopy)
    {
      goto LABEL_28;
    }
  }

  if (finished > 9)
  {
    if (finished == 10)
    {
      v13 = 20;
      goto LABEL_29;
    }

    if (finished != 20)
    {
      goto LABEL_45;
    }

LABEL_28:
    v13 = 30;
    goto LABEL_29;
  }

  if (!finished)
  {
    v13 = 5;
    goto LABEL_29;
  }

  if (finished != 5)
  {
LABEL_45:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = PXActionPerformerStateDescription(finished);
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:434 description:{@"Not allowed to transition from state:%@", v19}];

    abort();
  }

  v13 = 10;
LABEL_29:
  [(PXActionPerformer *)self _transitionToState:v13 withSuccess:successCopy error:errorCopy];
}

- (void)performBackgroundTask
{
  v4 = [objc_opt_class() methodForSelector:a2];
  if (v4 == [objc_opt_class() methodForSelector:a2])
  {

    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  }
}

- (BOOL)dismissViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  if ([(PXActionPerformer *)self state]!= 10)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:368 description:{@"Invalid parameter not satisfying: %@", @"[self state] == PXActionPerformerStateUserInteractive"}];
  }

  if (!handlerCopy)
  {
    handlerCopy = &__block_literal_global_13265;
  }

  delegate = [(PXActionPerformer *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(PXActionPerformer *)self delegate];
    v12 = [delegate2 actionPerformer:self dismissViewController:controllerCopy completionHandler:handlerCopy];
  }

  else
  {
    presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];

    if (!presentationEnvironment)
    {
      handlerCopy[2](handlerCopy);
      v12 = 0;
      goto LABEL_12;
    }

    delegate2 = [(PXActionPerformer *)self presentationEnvironment];
    v12 = 1;
    [delegate2 dismissViewController:controllerCopy animated:1 completionHandler:handlerCopy];
  }

LABEL_12:
  return v12;
}

- (BOOL)pushViewController:(id)controller
{
  controllerCopy = controller;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:352 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  if ([(PXActionPerformer *)self state]!= 10)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"[self state] == PXActionPerformerStateUserInteractive"}];
  }

  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  delegate = [(PXActionPerformer *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(PXActionPerformer *)self delegate];
    v10 = [delegate2 actionPerformer:self transitionToViewController:controllerCopy transitionType:1];
  }

  else if (presentationEnvironment)
  {
    v10 = [presentationEnvironment pushViewController:controllerCopy animated:1];
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
    delegate = [(PXActionPerformer *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(PXActionPerformer *)self delegate];
      v3 = [delegate2 presentationEnvironmentForActionPerformer:self];
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
  delegate = [(PXActionPerformer *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(PXActionPerformer *)self delegate];
  v6 = [delegate2 prefersAssetInclusionAfterRemovalForActionPerformer:self];

  return v6;
}

- (NSUndoManager)undoManager
{
  v3 = self->_undoManager;
  if (!v3)
  {
    delegate = [(PXActionPerformer *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(PXActionPerformer *)self delegate];
      v3 = [delegate2 undoManagerForActionPerformer:self];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  if ([(PXActionPerformer *)self state]!= 10)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:318 description:{@"Invalid parameter not satisfying: %@", @"[self state] == PXActionPerformerStateUserInteractive"}];
  }

  delegate = [(PXActionPerformer *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PXActionPerformer *)self delegate];
    v7 = [delegate2 hostViewControllerForActionPerformer:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)presentViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  if ([(PXActionPerformer *)self state]!= 10 && ([(PXActionPerformer *)self state]!= 20 || ![(PXActionPerformer *)self canPresentAlertInBackgroudState]))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"[self state] == PXActionPerformerStateUserInteractive || ([self state] == PXActionPerformerStateBackgroundTask && self.canPresentAlertInBackgroudState)"}];
  }

  delegate = [(PXActionPerformer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (([delegate actionPerformer:self transitionToViewController:controllerCopy transitionType:2] & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    if (![delegate actionPerformer:self presentViewController:controllerCopy])
    {
      goto LABEL_16;
    }
  }

  else
  {
    presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];

    if (!presentationEnvironment)
    {
LABEL_16:
      v14 = 0;
      goto LABEL_17;
    }

    presentationEnvironment2 = [(PXActionPerformer *)self presentationEnvironment];
    [presentationEnvironment2 presentViewController:controllerCopy animated:1 completionHandler:handlerCopy];
  }

  objc_storeStrong(&self->_presentedViewController, controller);
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
  state = [(PXActionPerformer *)self state];
  v4 = @"userInteractive";
  v5 = @"backgroundTask";
  v6 = @"finished";
  if (state != 30)
  {
    v6 = 0;
  }

  if (state != 20)
  {
    v5 = v6;
  }

  if (state != 10)
  {
    v4 = v5;
  }

  v7 = @"ready";
  v8 = @"unlockIfNeeded";
  if (state != 5)
  {
    v8 = 0;
  }

  if (state)
  {
    v7 = v8;
  }

  if (state <= 9)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  actionType = [(PXActionPerformer *)self actionType];
  v13 = [v10 stringWithFormat:@"<%@: %p type = %@, state = %@>", v11, self, actionType, v9];;

  return v13;
}

- (void)cancelActionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  if (![(PXActionPerformer *)self isCancellable])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"[self isCancellable]"}];
  }

  presentedViewController = self->_presentedViewController;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PXActionPerformer_cancelActionWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7BB7DA8;
  v10[4] = self;
  v11 = handlerCopy;
  v7 = handlerCopy;
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

- (void)performActionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__PXActionPerformer_performActionWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7BB7728;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = handlerCopy;
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

- (PXActionPerformer)initWithActionType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"nil != actionType"}];
  }

  if (![typeCopy length])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"[actionType length] > 0"}];
  }

  v12.receiver = self;
  v12.super_class = PXActionPerformer;
  v6 = [(PXActionPerformer *)&v12 init];
  if (v6)
  {
    v7 = [typeCopy copy];
    actionType = v6->_actionType;
    v6->_actionType = v7;

    v6->_state = 0;
  }

  return v6;
}

- (PXActionPerformer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:175 description:@"Use the designated initializer: -initWithActionType:."];

  abort();
}

- (id)barButtonItemWithTarget:(id)target action:(SEL)action
{
  v16 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  activitySystemImageName = [(PXActionPerformer *)self activitySystemImageName];
  v8 = [(PXActionPerformer *)self localizedTitleForUseCase:1];
  v9 = v8;
  if (activitySystemImageName)
  {
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:activitySystemImageName];
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v10 style:0 target:targetCopy action:action];
  }

  else if (v8)
  {
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v8 style:0 target:targetCopy action:action];
  }

  else
  {
    v12 = PXAssertGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      selfCopy = self;
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
    activitySystemImageName = [(PXActionPerformer *)self activitySystemImageName];
    v6 = [v4 px_systemImageNamed:activitySystemImageName];

    v7 = MEMORY[0x1E69DC628];
    actionType = [(PXActionPerformer *)self actionType];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__PXActionPerformer_UIKit__menuElement__block_invoke;
    v12[3] = &unk_1E7BB77A8;
    v12[4] = self;
    v9 = [v7 actionWithTitle:v3 image:v6 identifier:actionType handler:v12];

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