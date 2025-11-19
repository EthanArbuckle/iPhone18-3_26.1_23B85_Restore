@interface _UIUserNotificationAlertView
+ (void)initialize;
- (id)textFieldAtIndex:(int64_t)a3;
- (int64_t)addButtonWithTitle:(id)a3;
- (void)_cancelUserNotification;
- (void)_removeObservervations;
- (void)cancelAlertView;
- (void)dealloc;
- (void)dismissWithClickedButtonIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)setHostedWindow:(id)a3;
- (void)setRemoteViewController:(id)a3;
- (void)show;
@end

@implementation _UIUserNotificationAlertView

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v3 = _MergedGlobals_1_31;
    _MergedGlobals_1_31 = v2;
  }
}

- (void)show
{
  if (self->_userNotification)
  {
    return;
  }

  v3 = [(UIAlertView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 willPresentAlertView:self];
  }

  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [(UIAlertView *)self title];

  if (v5)
  {
    v6 = [(UIAlertView *)self title];
    [v4 setObject:v6 forKey:*MEMORY[0x1E695EE58]];
  }

  v7 = [(UIAlertView *)self message];

  if (v7)
  {
    v8 = [(UIAlertView *)self message];
    [v4 setObject:v8 forKey:*MEMORY[0x1E695EE60]];
  }

  v9 = [(UIAlertView *)self buttonTitleAtIndex:[(UIAlertView *)self numberOfButtons]- 1];
  [v4 setObject:v9 forKey:*MEMORY[0x1E695EE78]];

  if ([(UIAlertView *)self numberOfButtons]>= 2)
  {
    v10 = [(UIAlertView *)self buttonTitleAtIndex:0];
    [v4 setObject:v10 forKey:*MEMORY[0x1E695EE70]];

    if ([(UIAlertView *)self numberOfButtons]== 3)
    {
      v11 = [(UIAlertView *)self buttonTitleAtIndex:1];
      [v4 setObject:v11 forKey:*MEMORY[0x1E695EE98]];
    }
  }

  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v12 = qword_1ED4994F0;
  v55 = qword_1ED4994F0;
  if (!qword_1ED4994F0)
  {
    *error = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = __getSBUserNotificationAllowMenuButtonDismissalSymbolLoc_block_invoke;
    v50 = &unk_1E70F2F20;
    v51 = &v52;
    v13 = SpringBoardServicesLibrary_2();
    v53[3] = dlsym(v13, "SBUserNotificationAllowMenuButtonDismissal");
    qword_1ED4994F0 = *(v51[1] + 24);
    v12 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v12)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationAllowMenuButtonDismissal(void)"];
    [v36 handleFailureInFunction:v37 file:@"UIAlertView_ViewServiceSupport.m" lineNumber:28 description:{@"%s", dlerror()}];
LABEL_35:

    __break(1u);
    goto LABEL_36;
  }

  v14 = *MEMORY[0x1E695E4D0];
  [v4 setObject:*MEMORY[0x1E695E4D0] forKey:*v12];
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v15 = qword_1ED4994F8;
  v55 = qword_1ED4994F8;
  if (!qword_1ED4994F8)
  {
    *error = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = __getSBUserNotificationDismissOnLockSymbolLoc_block_invoke;
    v50 = &unk_1E70F2F20;
    v51 = &v52;
    v16 = SpringBoardServicesLibrary_2();
    v53[3] = dlsym(v16, "SBUserNotificationDismissOnLock");
    qword_1ED4994F8 = *(v51[1] + 24);
    v15 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v15)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationDismissOnLock(void)"];
    [v36 handleFailureInFunction:v37 file:@"UIAlertView_ViewServiceSupport.m" lineNumber:29 description:{@"%s", dlerror()}];
    goto LABEL_35;
  }

  obj = v3;
  [v4 setObject:v14 forKey:*v15];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [MEMORY[0x1E695DF70] array];
  v21 = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36___UIUserNotificationAlertView_show__block_invoke;
  aBlock[3] = &unk_1E71288F0;
  v22 = v17;
  v41 = v22;
  v23 = v18;
  v42 = v23;
  v24 = v19;
  v43 = v24;
  v25 = v20;
  v44 = v25;
  v26 = v21;
  v45 = v26;
  v27 = v4;
  v46 = v27;
  v28 = _Block_copy(aBlock);
  v29 = [(UIAlertView *)self alertViewStyle];
  v30 = 3;
  if (v29 <= UIAlertViewStyleSecureTextInput)
  {
    if (v29 == UIAlertViewStyleDefault)
    {
      goto LABEL_26;
    }

    if (v29 == UIAlertViewStyleSecureTextInput)
    {
      v30 = 65539;
LABEL_24:
      v32 = [(_UIUserNotificationAlertView *)self textFieldAtIndex:0];
      v28[2](v28, v32);
      goto LABEL_25;
    }

    goto LABEL_36;
  }

  if (v29 == UIAlertViewStylePlainTextInput)
  {
    goto LABEL_24;
  }

  if (v29 != UIAlertViewStyleLoginAndPasswordInput)
  {
LABEL_36:
    abort();
  }

  v31 = [(_UIUserNotificationAlertView *)self textFieldAtIndex:0];
  v28[2](v28, v31);

  v32 = [(_UIUserNotificationAlertView *)self textFieldAtIndex:1];
  v28[2](v28, v32);
  v30 = 131075;
LABEL_25:

LABEL_26:
  v38 = v22;
  error[0] = 0;
  v33 = CFUserNotificationCreate(0, 0.0, v30, error, v27);
  self->_userNotification = v33;
  if (error[0] || (userNotification = v33) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Failed to create CFUserNotification: %ld (you may need to add permission to send to com.apple.SBUserNotification)", error[0], v22}];
    userNotification = self->_userNotification;
  }

  [_MergedGlobals_1_31 setObject:self forKey:userNotification];
  objc_storeStrong(&self->_retainedSelf, self);
  objc_storeStrong(&self->_strongDelegate, obj);
  self->_userNotificationRunLoopSource = CFUserNotificationCreateRunLoopSource(0, self->_userNotification, __userNotificationCallback_0, 0);
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, self->_userNotificationRunLoopSource, *MEMORY[0x1E695E8D0]);
  if (objc_opt_respondsToSelector())
  {
    [obj didPresentAlertView:self];
  }
}

- (id)textFieldAtIndex:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = _UIUserNotificationAlertView;
  v3 = [(UIAlertView *)&v6 textFieldAtIndex:a3];
  v4 = [_UIUserNotificationAlertViewRestrictedTextField restrictedProxyForTextField:v3];

  return v4;
}

- (int64_t)addButtonWithTitle:(id)a3
{
  v4 = a3;
  if ([(UIAlertView *)self numberOfButtons]== 3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"UIAlertViews displayed from view services may have at most three buttons"];
  }

  v7.receiver = self;
  v7.super_class = _UIUserNotificationAlertView;
  v5 = [(UIAlertView *)&v7 addButtonWithTitle:v4];

  return v5;
}

- (void)setHostedWindow:(id)a3
{
  v5 = a3;
  [(_UIUserNotificationAlertView *)self _removeObservervations];
  if (v5)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel_cancelAlertView name:0x1EFBB4790 object:v5];
  }
}

- (void)setRemoteViewController:(id)a3
{
  v5 = a3;
  [(_UIUserNotificationAlertView *)self _removeObservervations];
  if (v5)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel_cancelAlertView name:@"_UIViewServiceRemoteViewControllerWillDisconnectNotification" object:v5];
  }
}

- (void)cancelAlertView
{
  v3 = [(UIAlertView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 alertViewCancel:self];
    [(_UIUserNotificationAlertView *)self _cancelUserNotification];
  }

  else
  {
    [(_UIUserNotificationAlertView *)self dismissWithClickedButtonIndex:[(UIAlertView *)self cancelButtonIndex] animated:0];
  }
}

- (void)_cancelUserNotification
{
  userNotification = self->_userNotification;
  if (userNotification)
  {
    CFUserNotificationCancel(userNotification);
    [_MergedGlobals_1_31 removeObjectForKey:self->_userNotification];
    CFRelease(self->_userNotification);
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, self->_userNotificationRunLoopSource, *MEMORY[0x1E695E8D0]);
    CFRelease(self->_userNotificationRunLoopSource);
    self->_userNotification = 0;
    v5 = self->_retainedSelf;
    v6 = self->_strongDelegate;
    retainedSelf = self->_retainedSelf;
    self->_retainedSelf = 0;

    strongDelegate = self->_strongDelegate;
    self->_strongDelegate = 0;
  }
}

- (void)_removeObservervations
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:0x1EFBB4790 object:0];
  [v3 removeObserver:self name:@"_UIViewServiceRemoteViewControllerWillDisconnectNotification" object:0];
}

- (void)dismissWithClickedButtonIndex:(int64_t)a3 animated:(BOOL)a4
{
  v6 = [(UIAlertView *)self delegate:a3];
  if (objc_opt_respondsToSelector())
  {
    [v6 alertView:self willDismissWithButtonIndex:a3];
  }

  [(_UIUserNotificationAlertView *)self _cancelUserNotification];
  if (objc_opt_respondsToSelector())
  {
    [v6 alertView:self didDismissWithButtonIndex:a3];
  }
}

- (void)dealloc
{
  [(_UIUserNotificationAlertView *)self _removeObservervations];
  if (self->_userNotification)
  {
    [(_UIUserNotificationAlertView *)self cancelAlertView];
  }

  v3.receiver = self;
  v3.super_class = _UIUserNotificationAlertView;
  [(UIAlertView *)&v3 dealloc];
}

@end