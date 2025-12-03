@interface TPDialPromptAlert
- (TPDialPromptAlert)initWithButtonTitle:(id)title handles:(id)handles isFaceTimeRequest:(BOOL)request dialAction:(id)action;
- (TPDialPromptAlert)initWithButtonTitleForDualSim:(id)sim handles:(id)handles isFaceTimeRequest:(BOOL)request dialAction:(id)action;
- (TPDialPromptAlert)initWithDialRequest:(id)request dialAction:(id)action;
- (TPDialPromptAlert)initWithDialRequest:(id)request dialAction:(id)action availableSenderIdentities:(id)identities;
- (TPDialPromptAlert)initWithJoinRequest:(id)request dialAction:(id)action;
- (id)otherButtonTitle;
- (id)phoneNumberHandle;
- (id)title;
- (void)dealloc;
- (void)defaultDualSimResponseWithIndex:(unint64_t)index;
- (void)defaultResponse;
- (void)invalidate;
- (void)otherDualSimResponse;
- (void)otherResponse;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)show;
@end

@implementation TPDialPromptAlert

- (TPDialPromptAlert)initWithDialRequest:(id)request dialAction:(id)action
{
  requestCopy = request;
  actionCopy = action;
  v8 = TelephonyUIBundle();
  v9 = [v8 localizedStringForKey:@"CALL" value:&stru_1F2CA8008 table:@"General"];

  provider = [requestCopy provider];
  if ([provider isFaceTimeProvider])
  {
    isVideo = [requestCopy isVideo];
  }

  else
  {
    isVideo = 0;
  }

  handle = [requestCopy handle];
  if (!handle)
  {
    goto LABEL_8;
  }

  v13 = handle;
  if ([handle type] != 2 || (TUDialAssistedDialRequest(), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "handle"), v15 = objc_claimAutoreleasedReturnValue(), v13, v14, (v13 = v15) != 0))
  {
    v16 = [MEMORY[0x1E695DFD8] setWithObject:v13];
  }

  else
  {
LABEL_8:
    v16 = [MEMORY[0x1E695DFD8] set];
  }

  processHandle = [requestCopy processHandle];
  processHandle = self->_processHandle;
  self->_processHandle = processHandle;

  v19 = [(TPDialPromptAlert *)self initWithButtonTitle:v9 handles:v16 isFaceTimeRequest:isVideo dialAction:actionCopy];
  return v19;
}

- (TPDialPromptAlert)initWithDialRequest:(id)request dialAction:(id)action availableSenderIdentities:(id)identities
{
  requestCopy = request;
  actionCopy = action;
  identitiesCopy = identities;
  v10 = TelephonyUIBundle();
  v32 = [v10 localizedStringForKey:@"CALL" value:&stru_1F2CA8008 table:@"General"];

  provider = [requestCopy provider];
  if ([provider isFaceTimeProvider])
  {
    isVideo = [requestCopy isVideo];
  }

  else
  {
    isVideo = 0;
  }

  handle = [requestCopy handle];
  if (!handle)
  {
    goto LABEL_8;
  }

  v13 = handle;
  if ([handle type] != 2 || (TUDialAssistedDialRequest(), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "handle"), v15 = objc_claimAutoreleasedReturnValue(), v13, v14, (v13 = v15) != 0))
  {
    v29 = [MEMORY[0x1E695DFD8] setWithObject:v13];
  }

  else
  {
LABEL_8:
    v29 = [MEMORY[0x1E695DFD8] set];
  }

  processHandle = [requestCopy processHandle];
  processHandle = self->_processHandle;
  self->_processHandle = processHandle;

  v33 = identitiesCopy;
  if (identitiesCopy)
  {
    objc_storeStrong(&self->_availableSenderIdentities, identities);
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    senderIdentitiesMapping = self->_senderIdentitiesMapping;
    self->_senderIdentitiesMapping = v18;

    v20 = [(NSArray *)self->_availableSenderIdentities count];
    if (v20)
    {
      v21 = v20;
      for (i = 0; i != v21; ++i)
      {
        v23 = self->_senderIdentitiesMapping;
        v24 = [(NSArray *)self->_availableSenderIdentities objectAtIndexedSubscript:i];
        localizedName = [v24 localizedName];
        v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [(NSMutableDictionary *)v23 setObject:localizedName forKey:v26];
      }
    }
  }

  v27 = [(TPDialPromptAlert *)self initWithButtonTitleForDualSim:v32 handles:v30 isFaceTimeRequest:isVideo dialAction:actionCopy];

  return v27;
}

- (TPDialPromptAlert)initWithJoinRequest:(id)request dialAction:(id)action
{
  v28 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  actionCopy = action;
  v8 = MEMORY[0x1E695DFA8];
  remoteMembers = [requestCopy remoteMembers];
  v10 = [v8 setWithCapacity:{objc_msgSend(remoteMembers, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  remoteMembers2 = [requestCopy remoteMembers];
  v12 = [remoteMembers2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      v15 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(remoteMembers2);
        }

        handles = [*(*(&v23 + 1) + 8 * v15) handles];
        anyObject = [handles anyObject];
        [v10 addObject:anyObject];

        ++v15;
      }

      while (v13 != v15);
      v13 = [remoteMembers2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v18 = TelephonyUIBundle();
  v19 = [v18 localizedStringForKey:@"CALL" value:&stru_1F2CA8008 table:@"General"];
  v20 = [(TPDialPromptAlert *)self initWithButtonTitle:v19 handles:v10 isFaceTimeRequest:1 dialAction:actionCopy];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (TPDialPromptAlert)initWithButtonTitle:(id)title handles:(id)handles isFaceTimeRequest:(BOOL)request dialAction:(id)action
{
  titleCopy = title;
  handlesCopy = handles;
  actionCopy = action;
  v21.receiver = self;
  v21.super_class = TPDialPromptAlert;
  v13 = [(TPDialPromptAlert *)&v21 init];
  if (v13)
  {
    v14 = [titleCopy copy];
    buttonTitle = v13->_buttonTitle;
    v13->_buttonTitle = v14;

    v16 = [handlesCopy copy];
    handles = v13->_handles;
    v13->_handles = v16;

    v18 = _Block_copy(actionCopy);
    dialAction = v13->_dialAction;
    v13->_dialAction = v18;

    v13->_isFaceTimeRequest = request;
  }

  return v13;
}

- (TPDialPromptAlert)initWithButtonTitleForDualSim:(id)sim handles:(id)handles isFaceTimeRequest:(BOOL)request dialAction:(id)action
{
  simCopy = sim;
  handlesCopy = handles;
  actionCopy = action;
  v21.receiver = self;
  v21.super_class = TPDialPromptAlert;
  v13 = [(TPDialPromptAlert *)&v21 init];
  if (v13)
  {
    v14 = [simCopy copy];
    buttonTitle = v13->_buttonTitle;
    v13->_buttonTitle = v14;

    v16 = [handlesCopy copy];
    handles = v13->_handles;
    v13->_handles = v16;

    v18 = _Block_copy(actionCopy);
    dialActionForDualSim = v13->_dialActionForDualSim;
    v13->_dialActionForDualSim = v18;

    v13->_isFaceTimeRequest = request;
  }

  return v13;
}

- (void)dealloc
{
  remoteAlertHandle = [(TPDialPromptAlert *)self remoteAlertHandle];
  [remoteAlertHandle unregisterObserver:self];

  remoteAlertHandle2 = [(TPDialPromptAlert *)self remoteAlertHandle];
  [remoteAlertHandle2 invalidate];

  v5.receiver = self;
  v5.super_class = TPDialPromptAlert;
  [(TPAlert *)&v5 dealloc];
}

- (id)title
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  handles = [(TPDialPromptAlert *)self handles];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(handles, "count")}];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  handles2 = [(TPDialPromptAlert *)self handles];
  v7 = [handles2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(handles2);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        type = [v11 type];
        if (type == 1 || type == 3)
        {
          value = [v11 value];
        }

        else if (type == 2)
        {
          value2 = [v11 value];
          v16 = TUNetworkCountryCode();
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = TUHomeCountryCode();
          }

          v19 = v18;

          v20 = PNCreateFormattedStringWithCountry();
          v21 = v20;
          if (v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = value2;
          }

          value = v22;
        }

        else
        {
          value = 0;
        }

        [v5 addObject:value];
      }

      v8 = [handles2 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v23 = TelephonyUIBundle();
  v24 = [v23 localizedStringForKey:@"COMMA" value:&stru_1F2CA8008 table:@"General"];
  v25 = [v5 componentsJoinedByString:v24];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = TPDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4894000, v3, OS_LOG_TYPE_DEFAULT, "invalidating alert: %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = TPDialPromptAlert;
  [(TPAlert *)&v5 invalidate];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)show
{
  phoneNumberHandle = [(TPDialPromptAlert *)self phoneNumberHandle];
  if (!phoneNumberHandle || !TUCurrentProcessHasEntitlement())
  {
    goto LABEL_6;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1 || _MKBGetDeviceLockState() == 1)
  {

LABEL_6:
    v29.receiver = self;
    v29.super_class = TPDialPromptAlert;
    [(TPAlert *)&v29 show];
    goto LABEL_7;
  }

  v5 = _MKBGetDeviceLockState();

  if (v5 == 2)
  {
    goto LABEL_6;
  }

  v6 = [objc_alloc(MEMORY[0x1E69D42A0]) initWithServiceName:@"com.apple.BusinessChatViewService" viewControllerClassName:@"BCChatSuggestRemoteViewController"];
  v7 = objc_alloc_init(MEMORY[0x1E69D4298]);
  v8 = objc_alloc_init(MEMORY[0x1E698E700]);
  dictionaryRepresentation = [phoneNumberHandle dictionaryRepresentation];
  [v8 setObject:dictionaryRepresentation forSetting:1];

  title = [(TPDialPromptAlert *)self title];
  [v8 setObject:title forSetting:2];

  defaultButtonTitle = [(TPDialPromptAlert *)self defaultButtonTitle];
  [v8 setObject:defaultButtonTitle forSetting:3];

  otherButtonTitle = [(TPDialPromptAlert *)self otherButtonTitle];
  [v8 setObject:otherButtonTitle forSetting:4];

  senderIdentitiesMapping = [(TPDialPromptAlert *)self senderIdentitiesMapping];
  [v8 setObject:senderIdentitiesMapping forSetting:5];

  v14 = objc_alloc(MEMORY[0x1E698E5F0]);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __25__TPDialPromptAlert_show__block_invoke;
  v30[3] = &unk_1E7C0C340;
  v30[4] = self;
  v15 = [v14 initWithInfo:v8 timeout:MEMORY[0x1E69E96A0] forResponseOnQueue:v30 withHandler:0.0];
  remoteAlertHandle = [(TPDialPromptAlert *)self remoteAlertHandle];

  if (remoteAlertHandle)
  {
    remoteAlertHandle2 = [(TPDialPromptAlert *)self remoteAlertHandle];
    [remoteAlertHandle2 unregisterObserver:self];

    remoteAlertHandle3 = [(TPDialPromptAlert *)self remoteAlertHandle];
    [remoteAlertHandle3 invalidate];
  }

  v19 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v6 configurationContext:v7];
  [(TPDialPromptAlert *)self setRemoteAlertHandle:v19];

  remoteAlertHandle4 = [(TPDialPromptAlert *)self remoteAlertHandle];
  [remoteAlertHandle4 registerObserver:self];

  v21 = objc_alloc_init(MEMORY[0x1E69D4288]);
  v22 = [MEMORY[0x1E695DFD8] setWithObject:v15];
  [v21 setActions:v22];

  dictionaryRepresentation2 = [phoneNumberHandle dictionaryRepresentation];
  [v21 setUserInfo:dictionaryRepresentation2];

  [v21 setReason:@"Confirmaiton Alert"];
  processHandle = [(TPDialPromptAlert *)self processHandle];

  if (processHandle)
  {
    v25 = objc_alloc(MEMORY[0x1E69D42C0]);
    processHandle2 = [(TPDialPromptAlert *)self processHandle];
    v27 = [v25 initWithTargetProcess:processHandle2];
    [v21 setPresentationTarget:v27];
  }

  remoteAlertHandle5 = [(TPDialPromptAlert *)self remoteAlertHandle];
  [remoteAlertHandle5 activateWithContext:v21];

LABEL_7:
}

void __25__TPDialPromptAlert_show__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 availableSenderIdentities];

  v6 = [v4 info];

  v10 = [v6 objectForSetting:10];

  if (v5)
  {
    v7 = [v10 intValue];
    if (v7 == -1)
    {
      [*(a1 + 32) otherDualSimResponse];
    }

    else
    {
      [*(a1 + 32) defaultDualSimResponseWithIndex:v7];
    }
  }

  else
  {
    v8 = [v10 isEqualToString:@"Call"];
    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 defaultResponse];
    }

    else
    {
      [v9 otherResponse];
    }
  }
}

- (id)otherButtonTitle
{
  v2 = TelephonyUIBundle();
  v3 = [v2 localizedStringForKey:@"CANCEL" value:&stru_1F2CA8008 table:@"General"];

  return v3;
}

- (void)defaultResponse
{
  dialAction = [(TPDialPromptAlert *)self dialAction];

  if (dialAction)
  {
    dialAction2 = [(TPDialPromptAlert *)self dialAction];
    dialAction2[2](dialAction2, 1);
  }
}

- (void)otherResponse
{
  dialAction = [(TPDialPromptAlert *)self dialAction];

  if (dialAction)
  {
    dialAction2 = [(TPDialPromptAlert *)self dialAction];
    dialAction2[2](dialAction2, 0);
  }
}

- (id)phoneNumberHandle
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  handles = [(TPDialPromptAlert *)self handles];
  v3 = [handles countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(handles);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 type] == 2)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [handles countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)defaultDualSimResponseWithIndex:(unint64_t)index
{
  dialActionForDualSim = [(TPDialPromptAlert *)self dialActionForDualSim];

  if (dialActionForDualSim)
  {
    dialActionForDualSim2 = [(TPDialPromptAlert *)self dialActionForDualSim];
    dialActionForDualSim2[2](dialActionForDualSim2, index);
  }
}

- (void)otherDualSimResponse
{
  dialActionForDualSim = [(TPDialPromptAlert *)self dialActionForDualSim];

  if (dialActionForDualSim)
  {
    dialActionForDualSim2 = [(TPDialPromptAlert *)self dialActionForDualSim];
    dialActionForDualSim2[2](dialActionForDualSim2, -1);
  }
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  v3 = TPDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B4894000, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v4 = TPDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4894000, v4, OS_LOG_TYPE_DEFAULT, "Remote alert deactivated", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__TPDialPromptAlert_remoteAlertHandleDidDeactivate___block_invoke;
  block[3] = &unk_1E7C0C368;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __52__TPDialPromptAlert_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) availableSenderIdentities];

  v3 = TPDefaultLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1B4894000, v3, OS_LOG_TYPE_DEFAULT, "Dual SIM flow for deactivation", buf, 2u);
    }

    return [*(a1 + 32) otherDualSimResponse];
  }

  else
  {
    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&dword_1B4894000, v3, OS_LOG_TYPE_DEFAULT, "Single SIM flow for deactivation", v6, 2u);
    }

    return [*(a1 + 32) otherResponse];
  }
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = TPDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = errorCopy;
    _os_log_impl(&dword_1B4894000, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Remote alert invalidated with error %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end