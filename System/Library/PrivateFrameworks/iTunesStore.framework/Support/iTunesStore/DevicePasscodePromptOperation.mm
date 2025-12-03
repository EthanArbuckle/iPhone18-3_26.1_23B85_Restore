@interface DevicePasscodePromptOperation
- (DevicePasscodePromptOperation)initWithTitle:(id)title message:(id)message;
- (id)tokenBlock;
- (int64_t)_keyboardType;
- (void)run;
- (void)setTokenBlock:(id)block;
@end

@implementation DevicePasscodePromptOperation

- (DevicePasscodePromptOperation)initWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v25.receiver = self;
  v25.super_class = DevicePasscodePromptOperation;
  v8 = [(DevicePasscodePromptOperation *)&v25 init];
  if (v8)
  {
    v9 = objc_alloc_init(ISDialog);
    dialog = v8->_dialog;
    v8->_dialog = v9;

    [(ISDialog *)v8->_dialog setMessage:messageCopy];
    [(ISDialog *)v8->_dialog setTitle:titleCopy];
    v22 = [NSArray alloc];
    v23 = messageCopy;
    v24 = titleCopy;
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"PASSCODE_CANCEL" value:&stru_10033CC30 table:@"Mesa"];
    v13 = [ISDialogButton buttonWithTitle:v12];
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"PASSCODE_OK" value:&stru_10033CC30 table:@"Mesa"];
    v16 = [ISDialogButton buttonWithTitle:v15];
    v17 = [v22 initWithObjects:{v13, v16, 0}];

    [(ISDialog *)v8->_dialog setButtons:v17];
    [(ISDialog *)v8->_dialog setDefaultButtonIndex:1];
    v18 = objc_alloc_init(ISDialogTextField);
    [v18 setKeyboardType:{-[DevicePasscodePromptOperation _keyboardType](v8, "_keyboardType")}];
    [v18 setSecure:1];
    v19 = v8->_dialog;
    v26 = v18;
    v20 = [NSArray arrayWithObjects:&v26 count:1];
    [(ISDialog *)v19 setTextFields:v20];

    titleCopy = v24;
    messageCopy = v23;
  }

  return v8;
}

- (void)setTokenBlock:(id)block
{
  blockCopy = block;
  [(DevicePasscodePromptOperation *)self lock];
  if (self->_tokenBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    tokenBlock = self->_tokenBlock;
    self->_tokenBlock = v4;
  }

  [(DevicePasscodePromptOperation *)self unlock];
}

- (id)tokenBlock
{
  [(DevicePasscodePromptOperation *)self lock];
  v3 = [self->_tokenBlock copy];
  [(DevicePasscodePromptOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)run
{
  v3 = dispatch_semaphore_create(0);
  passcodeEntrySemaphore = self->_passcodeEntrySemaphore;
  self->_passcodeEntrySemaphore = v3;

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v5 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.ios.StoreKitUIService" viewControllerClassName:@"ServicePINEntryViewController"];
  v6 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v7 = objc_alloc_init(BSMutableSettings);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10018C510;
  v29[3] = &unk_10032A8B0;
  v29[4] = self;
  v29[5] = &v30;
  v8 = [[BSAction alloc] initWithInfo:v7 timeout:0 forResponseOnQueue:v29 withHandler:0.0];
  v9 = [NSSet setWithObject:v8];
  [v6 setActions:v9];

  v10 = [SBSRemoteAlertHandle newHandleWithDefinition:v5 configurationContext:v6];
  v11 = v10;
  if (v10)
  {
    [v10 addObserver:self];
    [v11 activateWithContext:0];
    dispatch_semaphore_wait(self->_passcodeEntrySemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v12 = 0;
    v13 = 3;
  }

  else
  {
    v14 = [ISDialogOperation operationWithDialog:self->_dialog];
    v28 = 0;
    v15 = [(DevicePasscodePromptOperation *)self runSubOperation:v14 returningError:&v28];
    v12 = v28;
    if (v15)
    {
      selectedButton = [v14 selectedButton];
      if (selectedButton)
      {
        v26 = selectedButton;
        buttons = [(ISDialog *)self->_dialog buttons];
        v18 = [buttons indexOfObjectIdenticalTo:v26];

        if (v18)
        {
          textFieldValues = [v14 textFieldValues];
          if ([textFieldValues count] == 1)
          {
            v20 = [textFieldValues objectAtIndex:0];
            uTF8String = [v20 UTF8String];
            v31[3] = uTF8String;

            v13 = 3;
          }

          else
          {
            v13 = 2;
          }
        }

        else
        {
          v13 = 0;
        }

        selectedButton = v26;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 3;
    }
  }

  if (v31[3])
  {
    v27 = 1024;
    v22 = [[NSMutableData alloc] initWithLength:1024];
    v23 = strlen(v31[3]);
    if (sub_1002726D0(0, v31[3], v23, 0, [v22 mutableBytes], &v27))
    {

      v22 = 0;
      v13 = 2;
    }

    else
    {
      [v22 setLength:v27];
      v13 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  [(DevicePasscodePromptOperation *)self setError:v12];
  [(DevicePasscodePromptOperation *)self setSuccess:v13 == 1];
  tokenBlock = [(DevicePasscodePromptOperation *)self tokenBlock];
  v25 = tokenBlock;
  if (tokenBlock)
  {
    (*(tokenBlock + 16))(tokenBlock, v13, v22, v12);
  }

  _Block_object_dispose(&v30, 8);
}

- (int64_t)_keyboardType
{
  iSWeakLinkedClassForString() = [ISWeakLinkedClassForString() sharedConnection];
  v3 = 4 * ([iSWeakLinkedClassForString() unlockScreenType] < 2);

  return v3;
}

@end