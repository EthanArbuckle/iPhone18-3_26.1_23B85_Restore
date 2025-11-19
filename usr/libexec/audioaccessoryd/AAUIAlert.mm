@interface AAUIAlert
- (void)_invalidateActiveAlert;
- (void)deliverAlertWithHeaderKey:(id)a3 messageKey:(id)a4 defaultButtonKey:(id)a5 alternativeButtonKey:(id)a6 andCompletion:(id)a7;
@end

@implementation AAUIAlert

- (void)deliverAlertWithHeaderKey:(id)a3 messageKey:(id)a4 defaultButtonKey:(id)a5 alternativeButtonKey:(id)a6 andCompletion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
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
  v24 = v13;
  v25 = v14;
  v26 = v12;
  v27 = v15;
  v28 = self;
  v29 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v12;
  v21 = v14;
  v22 = v13;
  dispatch_async(v17, v23);
}

- (void)_invalidateActiveAlert
{
  CFUserNotificationCancel(self->_activeAlert);
  CFRelease(self->_activeAlert);
  self->_activeAlert = 0;
}

@end