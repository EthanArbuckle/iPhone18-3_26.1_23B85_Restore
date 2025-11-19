@interface TPDialPromptAlert
- (TPDialPromptAlert)initWithButtonTitle:(id)a3 handles:(id)a4 isFaceTimeRequest:(BOOL)a5 dialAction:(id)a6;
- (TPDialPromptAlert)initWithButtonTitleForDualSim:(id)a3 handles:(id)a4 isFaceTimeRequest:(BOOL)a5 dialAction:(id)a6;
- (TPDialPromptAlert)initWithDialRequest:(id)a3 dialAction:(id)a4;
- (TPDialPromptAlert)initWithDialRequest:(id)a3 dialAction:(id)a4 availableSenderIdentities:(id)a5;
- (TPDialPromptAlert)initWithJoinRequest:(id)a3 dialAction:(id)a4;
- (id)otherButtonTitle;
- (id)phoneNumberHandle;
- (id)title;
- (void)dealloc;
- (void)defaultDualSimResponseWithIndex:(unint64_t)a3;
- (void)defaultResponse;
- (void)invalidate;
- (void)otherDualSimResponse;
- (void)otherResponse;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)show;
@end

@implementation TPDialPromptAlert

- (TPDialPromptAlert)initWithDialRequest:(id)a3 dialAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = TelephonyUIBundle();
  v9 = [v8 localizedStringForKey:@"CALL" value:&stru_1F2CA8008 table:@"General"];

  v10 = [v6 provider];
  if ([v10 isFaceTimeProvider])
  {
    v11 = [v6 isVideo];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 handle];
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  if ([v12 type] != 2 || (TUDialAssistedDialRequest(), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "handle"), v15 = objc_claimAutoreleasedReturnValue(), v13, v14, (v13 = v15) != 0))
  {
    v16 = [MEMORY[0x1E695DFD8] setWithObject:v13];
  }

  else
  {
LABEL_8:
    v16 = [MEMORY[0x1E695DFD8] set];
  }

  v17 = [v6 processHandle];
  processHandle = self->_processHandle;
  self->_processHandle = v17;

  v19 = [(TPDialPromptAlert *)self initWithButtonTitle:v9 handles:v16 isFaceTimeRequest:v11 dialAction:v7];
  return v19;
}

- (TPDialPromptAlert)initWithDialRequest:(id)a3 dialAction:(id)a4 availableSenderIdentities:(id)a5
{
  v8 = a3;
  v34 = a4;
  v9 = a5;
  v10 = TelephonyUIBundle();
  v32 = [v10 localizedStringForKey:@"CALL" value:&stru_1F2CA8008 table:@"General"];

  v11 = [v8 provider];
  if ([v11 isFaceTimeProvider])
  {
    v31 = [v8 isVideo];
  }

  else
  {
    v31 = 0;
  }

  v12 = [v8 handle];
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  if ([v12 type] != 2 || (TUDialAssistedDialRequest(), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "handle"), v15 = objc_claimAutoreleasedReturnValue(), v13, v14, (v13 = v15) != 0))
  {
    v29 = [MEMORY[0x1E695DFD8] setWithObject:v13];
  }

  else
  {
LABEL_8:
    v29 = [MEMORY[0x1E695DFD8] set];
  }

  v16 = [v8 processHandle];
  processHandle = self->_processHandle;
  self->_processHandle = v16;

  v33 = v9;
  if (v9)
  {
    objc_storeStrong(&self->_availableSenderIdentities, a5);
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
        v25 = [v24 localizedName];
        v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [(NSMutableDictionary *)v23 setObject:v25 forKey:v26];
      }
    }
  }

  v27 = [(TPDialPromptAlert *)self initWithButtonTitleForDualSim:v32 handles:v30 isFaceTimeRequest:v31 dialAction:v34];

  return v27;
}

- (TPDialPromptAlert)initWithJoinRequest:(id)a3 dialAction:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695DFA8];
  v9 = [v6 remoteMembers];
  v10 = [v8 setWithCapacity:{objc_msgSend(v9, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v6 remoteMembers];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v23 + 1) + 8 * v15) handles];
        v17 = [v16 anyObject];
        [v10 addObject:v17];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v18 = TelephonyUIBundle();
  v19 = [v18 localizedStringForKey:@"CALL" value:&stru_1F2CA8008 table:@"General"];
  v20 = [(TPDialPromptAlert *)self initWithButtonTitle:v19 handles:v10 isFaceTimeRequest:1 dialAction:v7];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (TPDialPromptAlert)initWithButtonTitle:(id)a3 handles:(id)a4 isFaceTimeRequest:(BOOL)a5 dialAction:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = TPDialPromptAlert;
  v13 = [(TPDialPromptAlert *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    buttonTitle = v13->_buttonTitle;
    v13->_buttonTitle = v14;

    v16 = [v11 copy];
    handles = v13->_handles;
    v13->_handles = v16;

    v18 = _Block_copy(v12);
    dialAction = v13->_dialAction;
    v13->_dialAction = v18;

    v13->_isFaceTimeRequest = a5;
  }

  return v13;
}

- (TPDialPromptAlert)initWithButtonTitleForDualSim:(id)a3 handles:(id)a4 isFaceTimeRequest:(BOOL)a5 dialAction:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = TPDialPromptAlert;
  v13 = [(TPDialPromptAlert *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    buttonTitle = v13->_buttonTitle;
    v13->_buttonTitle = v14;

    v16 = [v11 copy];
    handles = v13->_handles;
    v13->_handles = v16;

    v18 = _Block_copy(v12);
    dialActionForDualSim = v13->_dialActionForDualSim;
    v13->_dialActionForDualSim = v18;

    v13->_isFaceTimeRequest = a5;
  }

  return v13;
}

- (void)dealloc
{
  v3 = [(TPDialPromptAlert *)self remoteAlertHandle];
  [v3 unregisterObserver:self];

  v4 = [(TPDialPromptAlert *)self remoteAlertHandle];
  [v4 invalidate];

  v5.receiver = self;
  v5.super_class = TPDialPromptAlert;
  [(TPAlert *)&v5 dealloc];
}

- (id)title
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(TPDialPromptAlert *)self handles];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [(TPDialPromptAlert *)self handles];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v11 type];
        if (v12 == 1 || v12 == 3)
        {
          v14 = [v11 value];
        }

        else if (v12 == 2)
        {
          v15 = [v11 value];
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
            v22 = v15;
          }

          v14 = v22;
        }

        else
        {
          v14 = 0;
        }

        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
    v7 = self;
    _os_log_impl(&dword_1B4894000, v3, OS_LOG_TYPE_DEFAULT, "invalidating alert: %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = TPDialPromptAlert;
  [(TPAlert *)&v5 invalidate];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)show
{
  v3 = [(TPDialPromptAlert *)self phoneNumberHandle];
  if (!v3 || !TUCurrentProcessHasEntitlement())
  {
    goto LABEL_6;
  }

  v4 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v4 userInterfaceIdiom] == 1 || _MKBGetDeviceLockState() == 1)
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
  v9 = [v3 dictionaryRepresentation];
  [v8 setObject:v9 forSetting:1];

  v10 = [(TPDialPromptAlert *)self title];
  [v8 setObject:v10 forSetting:2];

  v11 = [(TPDialPromptAlert *)self defaultButtonTitle];
  [v8 setObject:v11 forSetting:3];

  v12 = [(TPDialPromptAlert *)self otherButtonTitle];
  [v8 setObject:v12 forSetting:4];

  v13 = [(TPDialPromptAlert *)self senderIdentitiesMapping];
  [v8 setObject:v13 forSetting:5];

  v14 = objc_alloc(MEMORY[0x1E698E5F0]);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __25__TPDialPromptAlert_show__block_invoke;
  v30[3] = &unk_1E7C0C340;
  v30[4] = self;
  v15 = [v14 initWithInfo:v8 timeout:MEMORY[0x1E69E96A0] forResponseOnQueue:v30 withHandler:0.0];
  v16 = [(TPDialPromptAlert *)self remoteAlertHandle];

  if (v16)
  {
    v17 = [(TPDialPromptAlert *)self remoteAlertHandle];
    [v17 unregisterObserver:self];

    v18 = [(TPDialPromptAlert *)self remoteAlertHandle];
    [v18 invalidate];
  }

  v19 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v6 configurationContext:v7];
  [(TPDialPromptAlert *)self setRemoteAlertHandle:v19];

  v20 = [(TPDialPromptAlert *)self remoteAlertHandle];
  [v20 registerObserver:self];

  v21 = objc_alloc_init(MEMORY[0x1E69D4288]);
  v22 = [MEMORY[0x1E695DFD8] setWithObject:v15];
  [v21 setActions:v22];

  v23 = [v3 dictionaryRepresentation];
  [v21 setUserInfo:v23];

  [v21 setReason:@"Confirmaiton Alert"];
  v24 = [(TPDialPromptAlert *)self processHandle];

  if (v24)
  {
    v25 = objc_alloc(MEMORY[0x1E69D42C0]);
    v26 = [(TPDialPromptAlert *)self processHandle];
    v27 = [v25 initWithTargetProcess:v26];
    [v21 setPresentationTarget:v27];
  }

  v28 = [(TPDialPromptAlert *)self remoteAlertHandle];
  [v28 activateWithContext:v21];

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
  v3 = [(TPDialPromptAlert *)self dialAction];

  if (v3)
  {
    v4 = [(TPDialPromptAlert *)self dialAction];
    v4[2](v4, 1);
  }
}

- (void)otherResponse
{
  v3 = [(TPDialPromptAlert *)self dialAction];

  if (v3)
  {
    v4 = [(TPDialPromptAlert *)self dialAction];
    v4[2](v4, 0);
  }
}

- (id)phoneNumberHandle
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(TPDialPromptAlert *)self handles];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 type] == 2)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)defaultDualSimResponseWithIndex:(unint64_t)a3
{
  v5 = [(TPDialPromptAlert *)self dialActionForDualSim];

  if (v5)
  {
    v6 = [(TPDialPromptAlert *)self dialActionForDualSim];
    v6[2](v6, a3);
  }
}

- (void)otherDualSimResponse
{
  v3 = [(TPDialPromptAlert *)self dialActionForDualSim];

  if (v3)
  {
    v4 = [(TPDialPromptAlert *)self dialActionForDualSim];
    v4[2](v4, -1);
  }
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v3 = TPDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B4894000, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
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

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = TPDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B4894000, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Remote alert invalidated with error %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end