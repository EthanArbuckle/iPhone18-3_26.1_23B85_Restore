@interface _UIUserNotificationAlertView
+ (void)initialize;
- (id)textFieldAtIndex:(int64_t)index;
- (int64_t)addButtonWithTitle:(id)title;
- (void)_cancelUserNotification;
- (void)_removeObservervations;
- (void)cancelAlertView;
- (void)dealloc;
- (void)dismissWithClickedButtonIndex:(int64_t)index animated:(BOOL)animated;
- (void)setHostedWindow:(id)window;
- (void)setRemoteViewController:(id)controller;
- (void)show;
@end

@implementation _UIUserNotificationAlertView

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v3 = _MergedGlobals_1_31;
    _MergedGlobals_1_31 = weakToWeakObjectsMapTable;
  }
}

- (void)show
{
  if (self->_userNotification)
  {
    return;
  }

  delegate = [(UIAlertView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate willPresentAlertView:self];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  title = [(UIAlertView *)self title];

  if (title)
  {
    title2 = [(UIAlertView *)self title];
    [dictionary setObject:title2 forKey:*MEMORY[0x1E695EE58]];
  }

  message = [(UIAlertView *)self message];

  if (message)
  {
    message2 = [(UIAlertView *)self message];
    [dictionary setObject:message2 forKey:*MEMORY[0x1E695EE60]];
  }

  v9 = [(UIAlertView *)self buttonTitleAtIndex:[(UIAlertView *)self numberOfButtons]- 1];
  [dictionary setObject:v9 forKey:*MEMORY[0x1E695EE78]];

  if ([(UIAlertView *)self numberOfButtons]>= 2)
  {
    v10 = [(UIAlertView *)self buttonTitleAtIndex:0];
    [dictionary setObject:v10 forKey:*MEMORY[0x1E695EE70]];

    if ([(UIAlertView *)self numberOfButtons]== 3)
    {
      v11 = [(UIAlertView *)self buttonTitleAtIndex:1];
      [dictionary setObject:v11 forKey:*MEMORY[0x1E695EE98]];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationAllowMenuButtonDismissal(void)"];
    [currentHandler handleFailureInFunction:v37 file:@"UIAlertView_ViewServiceSupport.m" lineNumber:28 description:{@"%s", dlerror()}];
LABEL_35:

    __break(1u);
    goto LABEL_36;
  }

  v14 = *MEMORY[0x1E695E4D0];
  [dictionary setObject:*MEMORY[0x1E695E4D0] forKey:*v12];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationDismissOnLock(void)"];
    [currentHandler handleFailureInFunction:v37 file:@"UIAlertView_ViewServiceSupport.m" lineNumber:29 description:{@"%s", dlerror()}];
    goto LABEL_35;
  }

  obj = delegate;
  [dictionary setObject:v14 forKey:*v15];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  array5 = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36___UIUserNotificationAlertView_show__block_invoke;
  aBlock[3] = &unk_1E71288F0;
  v22 = array;
  v41 = v22;
  v23 = array2;
  v42 = v23;
  v24 = array3;
  v43 = v24;
  v25 = array4;
  v44 = v25;
  v26 = array5;
  v45 = v26;
  v27 = dictionary;
  v46 = v27;
  v28 = _Block_copy(aBlock);
  alertViewStyle = [(UIAlertView *)self alertViewStyle];
  v30 = 3;
  if (alertViewStyle <= UIAlertViewStyleSecureTextInput)
  {
    if (alertViewStyle == UIAlertViewStyleDefault)
    {
      goto LABEL_26;
    }

    if (alertViewStyle == UIAlertViewStyleSecureTextInput)
    {
      v30 = 65539;
LABEL_24:
      v32 = [(_UIUserNotificationAlertView *)self textFieldAtIndex:0];
      v28[2](v28, v32);
      goto LABEL_25;
    }

    goto LABEL_36;
  }

  if (alertViewStyle == UIAlertViewStylePlainTextInput)
  {
    goto LABEL_24;
  }

  if (alertViewStyle != UIAlertViewStyleLoginAndPasswordInput)
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

- (id)textFieldAtIndex:(int64_t)index
{
  v6.receiver = self;
  v6.super_class = _UIUserNotificationAlertView;
  v3 = [(UIAlertView *)&v6 textFieldAtIndex:index];
  v4 = [_UIUserNotificationAlertViewRestrictedTextField restrictedProxyForTextField:v3];

  return v4;
}

- (int64_t)addButtonWithTitle:(id)title
{
  titleCopy = title;
  if ([(UIAlertView *)self numberOfButtons]== 3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"UIAlertViews displayed from view services may have at most three buttons"];
  }

  v7.receiver = self;
  v7.super_class = _UIUserNotificationAlertView;
  v5 = [(UIAlertView *)&v7 addButtonWithTitle:titleCopy];

  return v5;
}

- (void)setHostedWindow:(id)window
{
  windowCopy = window;
  [(_UIUserNotificationAlertView *)self _removeObservervations];
  if (windowCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_cancelAlertView name:0x1EFBB4790 object:windowCopy];
  }
}

- (void)setRemoteViewController:(id)controller
{
  controllerCopy = controller;
  [(_UIUserNotificationAlertView *)self _removeObservervations];
  if (controllerCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_cancelAlertView name:@"_UIViewServiceRemoteViewControllerWillDisconnectNotification" object:controllerCopy];
  }
}

- (void)cancelAlertView
{
  delegate = [(UIAlertView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate alertViewCancel:self];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0x1EFBB4790 object:0];
  [defaultCenter removeObserver:self name:@"_UIViewServiceRemoteViewControllerWillDisconnectNotification" object:0];
}

- (void)dismissWithClickedButtonIndex:(int64_t)index animated:(BOOL)animated
{
  v6 = [(UIAlertView *)self delegate:index];
  if (objc_opt_respondsToSelector())
  {
    [v6 alertView:self willDismissWithButtonIndex:index];
  }

  [(_UIUserNotificationAlertView *)self _cancelUserNotification];
  if (objc_opt_respondsToSelector())
  {
    [v6 alertView:self didDismissWithButtonIndex:index];
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