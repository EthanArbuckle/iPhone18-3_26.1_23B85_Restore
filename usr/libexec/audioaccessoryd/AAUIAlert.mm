@interface AAUIAlert
- (void)_invalidateActiveAlert;
- (void)deliverAlertWithHeaderKey:(id)key messageKey:(id)messageKey defaultButtonKey:(id)buttonKey alternativeButtonKey:(id)alternativeButtonKey andCompletion:(id)completion;
@end

@implementation AAUIAlert

- (void)deliverAlertWithHeaderKey:(id)key messageKey:(id)messageKey defaultButtonKey:(id)buttonKey alternativeButtonKey:(id)alternativeButtonKey andCompletion:(id)completion
{
  keyCopy = key;
  messageKeyCopy = messageKey;
  buttonKeyCopy = buttonKey;
  alternativeButtonKeyCopy = alternativeButtonKey;
  completionCopy = completion;
  if (self->_activeAlert)
  {
    if (dword_1002F6690 <= 30 && (dword_1002F6690 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC804();
    }

    [(AAUIAlert *)self _invalidateActiveAlert];
  }

  v17 = dispatch_get_global_queue(0, 0);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10003BFE0;
  v23[3] = &unk_1002B7D00;
  v24 = messageKeyCopy;
  v25 = buttonKeyCopy;
  v26 = keyCopy;
  v27 = alternativeButtonKeyCopy;
  selfCopy = self;
  v29 = completionCopy;
  v18 = completionCopy;
  v19 = alternativeButtonKeyCopy;
  v20 = keyCopy;
  v21 = buttonKeyCopy;
  v22 = messageKeyCopy;
  dispatch_async(v17, v23);
}

- (void)_invalidateActiveAlert
{
  CFUserNotificationCancel(self->_activeAlert);
  CFRelease(self->_activeAlert);
  self->_activeAlert = 0;
}

@end