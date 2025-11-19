@interface PBCFUserNotificationPasteAnnouncer
- (PBCFUserNotificationPasteAnnouncer)initWithAuditTokenInfo:(id)a3;
- (void)authorizationDidCompleteWithPasteAllowed:(BOOL)a3;
- (void)dealloc;
- (void)invalidate;
- (void)requestAuthorizationForPaste:(id)a3 replyHandler:(id)a4;
@end

@implementation PBCFUserNotificationPasteAnnouncer

- (PBCFUserNotificationPasteAnnouncer)initWithAuditTokenInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PBCFUserNotificationPasteAnnouncer;
  v6 = [(PBCFUserNotificationPasteAnnouncer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_auditTokenInfo, a3);
  }

  return v7;
}

- (void)requestAuthorizationForPaste:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  error = 0;
  v7 = a3;
  v8 = sub_100016EDC();
  v9 = [v8 localizedStringForKey:@"PASTE_AUTHORIZATION_BUTTON_ALLOW" value:@"Allow" table:@"Localizable"];

  v10 = sub_100016EDC();
  v11 = [v10 localizedStringForKey:@"PASTE_AUTHORIZATION_BUTTON_DENY" value:@"Don't Allow" table:@"Localizable"];

  v12 = sub_100016EDC();
  v13 = [v12 localizedStringForKey:@"PASTE_AUTHORIZATION_BUTTON_MESSAGE" value:@"Do you want to allow this?" table:@"Localizable"];

  v27[0] = kCFUserNotificationAlertHeaderKey;
  v14 = [v7 localizedAuthorizationText];
  v28[0] = v14;
  v28[1] = v13;
  v27[1] = kCFUserNotificationAlertMessageKey;
  v27[2] = kCFUserNotificationDefaultButtonTitleKey;
  v28[2] = v11;
  v28[3] = v9;
  v27[3] = kCFUserNotificationAlternateButtonTitleKey;
  v27[4] = SBUserNotificationAllowDuringTransitionAnimations;
  v28[4] = &__kCFBooleanTrue;
  v28[5] = &__kCFBooleanTrue;
  v27[5] = SBUserNotificationDismissOnLock;
  v27[6] = SBUserNotificationButtonLayoutDirectionKey;
  v28[6] = &off_100033C68;
  v15 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:7];

  [v7 timeout];
  v17 = v16;

  v18 = CFUserNotificationCreate(kCFAllocatorDefault, v17, 3uLL, &error, v15);
  self->_userNotification = v18;
  if (v18 && (RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v18, sub_100016F30, 0)) != 0)
  {
    v20 = RunLoopSource;
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, v20, kCFRunLoopCommonModes);
    CFRelease(v20);
    objc_setAssociatedObject(self->_userNotification, &unk_100039330, self, 0);
    v22 = objc_retainBlock(v6);
    replyBlock = self->_replyBlock;
    self->_replyBlock = v22;
  }

  else
  {
    v24 = _PBLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Tried to create a CFUserNotification for a paste announcement, but got a nil CFUN. Calling return block with denied authorization.", v25, 2u);
    }

    (*(v6 + 2))(v6, 0);
  }
}

- (void)invalidate
{
  v2 = self;
  replyBlock = v2->_replyBlock;
  if (replyBlock)
  {
    v5 = v2;
    replyBlock[2](replyBlock, 0);
    v4 = v5->_replyBlock;
    v5->_replyBlock = 0;
  }

  _objc_release_x1();
}

- (void)authorizationDidCompleteWithPasteAllowed:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  replyBlock = v4->_replyBlock;
  if (replyBlock)
  {
    v7 = v4;
    replyBlock[2](replyBlock, v3);
    v6 = v7->_replyBlock;
    v7->_replyBlock = 0;
  }

  _objc_release_x1();
}

- (void)dealloc
{
  PBAssertIsOnCallbackQueue();
  userNotification = self->_userNotification;
  if (userNotification)
  {
    objc_setAssociatedObject(userNotification, &unk_100039330, 0, 0);
    CFUserNotificationCancel(self->_userNotification);
    CFRelease(self->_userNotification);
  }

  v4.receiver = self;
  v4.super_class = PBCFUserNotificationPasteAnnouncer;
  [(PBCFUserNotificationPasteAnnouncer *)&v4 dealloc];
}

@end