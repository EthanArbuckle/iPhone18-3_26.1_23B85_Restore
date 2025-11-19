@interface SKAMessagingProvider
+ (BOOL)_isBlastdoorEnabledForService:(id)a3;
+ (BOOL)isRegisteredWithIDS;
+ (id)deviceTokenForTokenURI:(id)a3;
+ (id)handleForTokenURI:(id)a3;
+ (id)logger;
- (BOOL)_keysharingIsDisabledByServer;
- (BOOL)_selfSharingIsDisabledByServer;
- (BOOL)isFromIDFromSelfAccount:(id)a3;
- (BOOL)isHandleAvailableToMessageFrom:(id)a3;
- (BOOL)isValidURI:(id)a3;
- (BOOL)sendMessage:(id)a3 toHandles:(id)a4 fromHandle:(id)a5 limitToPresenceCapable:(BOOL)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendMessageToSelfDevices:(id)a3 limitToPresenceCapable:(BOOL)a4 identifier:(id *)a5 error:(id *)a6;
- (SKAMessagingProvider)initWithDelegate:(id)a3 serviceIdentifier:(id)a4 pushManager:(id)a5 queue:(id)a6;
- (SKAMessagingProvidingDelegate)delegate;
- (id)registerIDSDeviceChangedObserver:(id)a3;
- (id)resolveSenderHandleWithPreferredSenderHandle:(id)a3;
- (id)selfAddressedURIForURI:(id)a3 error:(id *)a4;
- (id)tokenURIWithError:(id *)a3;
- (void)_keysharingIsDisabledByServer;
- (void)_selfSharingIsDisabledByServer;
- (void)isHandle:(id)a3 inFirewallForService:(id)a4 completion:(id)a5;
- (void)isHandleMessageable:(id)a3 completion:(id)a4;
- (void)isHandleMessageableForPresence:(id)a3 completion:(id)a4;
- (void)listOfValidSenderHandles:(id)a3 containsSenderMergeID:(id)a4 completion:(id)a5;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 didHintCheckingTransportLogWithReason:(int64_t)a4;
- (void)signPayload:(id)a3 completion:(id)a4;
- (void)verifySignedPayload:(id)a3 matchesPayload:(id)a4 fromTokenURI:(id)a5 completion:(id)a6;
- (void)verifySignedPayloads:(id)a3 completion:(id)a4;
@end

@implementation SKAMessagingProvider

- (SKAMessagingProvider)initWithDelegate:(id)a3 serviceIdentifier:(id)a4 pushManager:(id)a5 queue:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = SKAMessagingProvider;
  v14 = [(SKAMessagingProvider *)&v26 init];
  if (v14)
  {
    v15 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v11;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Initializing messaging provider with service %@ and delegate %@", buf, 0x16u);
    }

    if ([(SKAMessagingProvider *)v14 _keysharingIsDisabledByServer])
    {
      v16 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider initWithDelegate:serviceIdentifier:pushManager:queue:];
      }
    }

    else
    {
      objc_storeWeak(&v14->_delegate, v10);
      objc_storeStrong(&v14->_serviceIdentifier, a4);
      objc_storeStrong(&v14->_pushManager, a5);
      objc_storeStrong(&v14->_queue, a6);
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      registeredIDSDeviceChangedObservers = v14->_registeredIDSDeviceChangedObservers;
      v14->_registeredIDSDeviceChangedObservers = v17;

      v19 = [objc_alloc(MEMORY[0x277D18778]) initWithService:v11];
      service = v14->_service;
      v14->_service = v19;

      v21 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [SKAMessagingProvider _isBlastdoorEnabledForService:v14->_service];
        v23 = @"NO";
        if (v22)
        {
          v23 = @"YES";
        }

        *buf = 138412290;
        v28 = v23;
        _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "IDSService is Blastdoored: %@", buf, 0xCu);
      }

      [(IDSService *)v14->_service addDelegate:v14 queue:v13];
      v16 = [MEMORY[0x277D18728] sharedInstance];
      [v16 addListenerID:@"com.apple.StatusKit" forService:@"com.apple.private.alloy.status.keysharing"];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)_isBlastdoorEnabledForService:(id)a3
{
  v3 = MEMORY[0x277D18A30];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 serviceIdentifier];

  v7 = [v5 initWithServiceIdentifier:v6];
  LOBYTE(v4) = [v7 constraintType] == 2;

  return v4;
}

- (BOOL)sendMessage:(id)a3 toHandles:(id)a4 fromHandle:(id)a5 limitToPresenceCapable:(BOOL)a6 identifier:(id *)a7 error:(id *)a8
{
  v60 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([(SKAMessagingProvider *)self _keysharingIsDisabledByServer])
  {
    v14 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:];
    }

    LOBYTE(v15) = 0;
  }

  else
  {
    v40 = self;
    v42 = v13;
    v43 = v11;
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v16 = v12;
    v17 = [v16 countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v48;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v48 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v47 + 1) + 8 * i);
          v22 = [v21 idsDestination];
          if ([v22 length])
          {
            [v14 addObject:v22];
          }

          else
          {
            v23 = +[SKAMessagingProvider logger];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v52 = v21;
              _os_log_error_impl(&dword_220099000, v23, OS_LOG_TYPE_ERROR, "Failed to generate IDS destination for handle: %@", buf, 0xCu);
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v47 objects:v59 count:16];
      }

      while (v18);
    }

    if ([v14 count])
    {
      v24 = [v42 idsDestination];
      v57 = *MEMORY[0x277D185E0];
      v58 = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v26 = [v25 mutableCopy];

      v27 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v52 = v43;
        v53 = 2112;
        v54 = v14;
        v55 = 2112;
        v56 = v26;
        _os_log_impl(&dword_220099000, v27, OS_LOG_TYPE_DEFAULT, "Sending message %@ to destinations %@ options: %@", buf, 0x20u);
      }

      service = v40->_service;
      v45 = 0;
      v46 = 0;
      v15 = [(IDSService *)service sendMessage:v43 toDestinations:v14 priority:300 options:v26 identifier:&v46 error:&v45];
      v29 = v46;
      v30 = v45;
      v31 = +[SKAMessagingProvider logger];
      v32 = v31;
      if (v15)
      {
        v33 = a8;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v52 = v29;
          _os_log_impl(&dword_220099000, v32, OS_LOG_TYPE_DEFAULT, "Successfully sent invitation message, assigned message identifier: %@", buf, 0xCu);
        }
      }

      else
      {
        v33 = a8;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [SKAMessagingProvider sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:];
        }
      }

      if (a7)
      {
        v37 = v29;
        *a7 = v29;
      }

      v13 = v42;
      if (v33)
      {
        *v33 = [SKAError errorWithCode:505 underlyingError:v30];
      }

      v11 = v43;
    }

    else
    {
      v34 = +[SKAMessagingProvider logger];
      v13 = v42;
      v11 = v43;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:];
      }

      v35 = [SKAError errorWithCode:502];
      v24 = v35;
      if (a8)
      {
        v36 = v35;
        LOBYTE(v15) = 0;
        *a8 = v24;
      }

      else
      {
        LOBYTE(v15) = 0;
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)sendMessageToSelfDevices:(id)a3 limitToPresenceCapable:(BOOL)a4 identifier:(id *)a5 error:(id *)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if ([(SKAMessagingProvider *)self _selfSharingIsDisabledByServer])
  {
    v10 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider sendMessageToSelfDevices:limitToPresenceCapable:identifier:error:];
    }

    LOBYTE(v11) = 0;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = [(SKAMessagingProvider *)self service];
    v13 = [v12 devices];

    v14 = [v13 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          v19 = IDSCopyIDForDevice();
          if (v19)
          {
            [v10 addObject:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v15);
    }

    if ([v10 count])
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v21 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v40 = v9;
        v41 = 2112;
        v42 = v10;
        v43 = 2112;
        v44 = v20;
        _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Sending message %@ to destinations %@ options: %@", buf, 0x20u);
      }

      service = self->_service;
      v33 = 0;
      v34 = 0;
      v11 = [(IDSService *)service sendMessage:v9 toDestinations:v10 priority:300 options:v20 identifier:&v34 error:&v33];
      v23 = v34;
      v24 = v33;
      v25 = +[SKAMessagingProvider logger];
      v26 = v25;
      if (v11)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = v23;
          _os_log_impl(&dword_220099000, v26, OS_LOG_TYPE_DEFAULT, "Successfully sent invitation message, assigned message identifier: %@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:];
      }

      if (a5)
      {
        v30 = v23;
        *a5 = v23;
      }

      if (a6)
      {
        *a6 = [SKAError errorWithCode:505 underlyingError:v24];
      }
    }

    else
    {
      v27 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider sendMessageToSelfDevices:limitToPresenceCapable:identifier:error:];
      }

      v28 = [SKAError errorWithCode:502];
      v20 = v28;
      if (a6)
      {
        v29 = v28;
        LOBYTE(v11) = 0;
        *a6 = v20;
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)isHandleMessageable:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SKAMessagingProvider *)self _keysharingIsDisabledByServer])
  {
    v8 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:];
    }

    v7[2](v7, 0);
  }

  else
  {
    v9 = [v6 idsDestination];
    v10 = [(SKAMessagingProvider *)self serviceIdentifier];
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"%@_%p", v13, self];

    v15 = [MEMORY[0x277D18728] sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__SKAMessagingProvider_isHandleMessageable_completion___block_invoke;
    v16[3] = &unk_27843E8C0;
    v17 = v7;
    [v15 refreshIDStatusForDestination:v9 service:v10 listenerID:v14 queue:MEMORY[0x277D85CD0] completionBlock:v16];
  }
}

- (void)isHandleMessageableForPresence:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SKAMessagingProvider *)self _keysharingIsDisabledByServer])
  {
    v8 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:];
    }

    v7[2](v7, 0);
  }

  else
  {
    v9 = [v6 idsDestination];
    v10 = [(SKAMessagingProvider *)self serviceIdentifier];
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"%@_%p", v13, self];

    v15 = [MEMORY[0x277D18728] sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__SKAMessagingProvider_isHandleMessageableForPresence_completion___block_invoke;
    v16[3] = &unk_27843E8C0;
    v17 = v7;
    [v15 refreshIDStatusForDestination:v9 service:v10 listenerID:v14 queue:MEMORY[0x277D85CD0] completionBlock:v16];
  }
}

- (BOOL)isHandleAvailableToMessageFrom:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D18A48]);
  v6 = [v4 normalizedHandleString];
  v7 = [v5 initWithUnprefixedURI:v6];

  v8 = [(SKAMessagingProvider *)self service];
  v9 = [v8 URIs];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v20 + 1) + 8 * i) isEqualToURI:{v7, v20}])
        {
          v17 = +[SKAMessagingProvider logger];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v4;
            _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Sender handle %@ is a valid sender handle for active iCloud account", buf, 0xCu);
          }

          v16 = 1;
          v15 = v10;
          goto LABEL_15;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = +[SKAMessagingProvider logger];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v4;
    _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Sender handle %@ is not a valid sender handle for active iCloud account", buf, 0xCu);
  }

  v16 = 0;
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)isFromIDFromSelfAccount:(id)a3
{
  v4 = a3;
  v5 = [(SKAMessagingProvider *)self service];
  v6 = [v5 deviceForFromID:v4];

  return v6 != 0;
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = +[SKAMessagingProvider logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v12 senderCorrelationIdentifier];
    v22 = 138412802;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Received incoming message: %@ fromID: %@ (%@)", &v22, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    if ([(SKAMessagingProvider *)self _keysharingIsDisabledByServer])
    {
      v16 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider service:account:incomingMessage:fromID:context:];
      }
    }

    else
    {
      v16 = [v12 serviceIdentifier];
      v17 = [v12 originalGUID];
      v18 = [v12 toID];
      v19 = objc_loadWeakRetained(&self->_delegate);
      v20 = [v12 senderCorrelationIdentifier];
      [v19 service:v16 didReceiveIncomingMessage:v10 fromID:v11 fromMergeID:v20 toID:v18 messageGuid:v17];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 didHintCheckingTransportLogWithReason:(int64_t)a4
{
  v5 = [SKAMessagingProvider logger:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Received didHintCheckingTransportLogWithReason", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 networkBecameReachable];
  }
}

- (id)resolveSenderHandleWithPreferredSenderHandle:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D18A48]);
    v6 = [v4 handleString];
    v7 = [v5 initWithUnprefixedURI:v6];

    if (v7 && ([v7 unprefixedURI], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v9))
    {
      v10 = v4;
    }

    else
    {
      v11 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider resolveSenderHandleWithPreferredSenderHandle:];
      }

      v10 = 0;
    }
  }

  else
  {
    v12 = [(IDSService *)self->_service URIs];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = v12;
    v14 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v7);
          }

          v18 = [*(*(&v25 + 1) + 8 * i) unprefixedURI];
          if (v18)
          {
            [v13 addObject:v18];
          }
        }

        v15 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v15);
    }

    v19 = [v13 copy];
    v20 = _IDSCopyCallerID();

    if ([v20 length])
    {
      v21 = IDSCopyRawAddressForDestination();
      v22 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v21;
        _os_log_impl(&dword_220099000, v22, OS_LOG_TYPE_DEFAULT, "Resolved default caller ID: %@", buf, 0xCu);
      }

      v10 = [objc_alloc(MEMORY[0x277D680C0]) initWithString:v21];
    }

    else
    {
      v21 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider resolveSenderHandleWithPreferredSenderHandle:];
      }

      v10 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)tokenURIWithError:(id *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  if (+[SKAMessagingProvider isRegisteredWithIDS])
  {
    v5 = [(IDSService *)self->_service URIs];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v24 + 1) + 8 * i) unprefixedURI];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
    v14 = _IDSCopyCallerID();

    v15 = [(SKAMessagingProvider *)self deviceToken];
    if (v15 && v14)
    {
      v28 = v14;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
      v17 = _IDSCopyOrderedAliases();
      v18 = [v17 firstObject];

      v19 = MEMORY[0x223D77480](v15, v18);
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else if (a3)
      {
        *a3 = [SKAError errorWithCode:706 customDescription:@"Could not retrieve token URI"];
      }
    }

    else if (a3)
    {
      [SKAError errorWithCode:706 customDescription:@"Could not retrieve device token or caller ID destination"];
      *a3 = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  else if (a3)
  {
    [SKAError errorWithCode:705];
    *a3 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)isValidURI:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if ([v4 isTokenURI])
    {
      v6 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v5;
        _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Stripping token from: %@", buf, 0xCu);
      }

      v7 = [v5 tokenFreeURI];

      v5 = v7;
    }

    [(IDSService *)self->_service accounts];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = v43 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      v31 = *v41;
LABEL_8:
      v12 = 0;
      while (1)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v40 + 1) + 8 * v12);
        if ([v5 IDSIDType]== 7)
        {
          v38 = 0uLL;
          v39 = 0uLL;
          v36 = 0uLL;
          v37 = 0uLL;
          v14 = [v13 pseudonyms];
          v15 = [v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v37;
LABEL_14:
            v18 = 0;
            while (1)
            {
              if (*v37 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [*(*(&v36 + 1) + 8 * v18) URI];
              v20 = [v19 isEqualToURI:v5];

              if (v20)
              {
                break;
              }

              if (v16 == ++v18)
              {
                v16 = [v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
                if (v16)
                {
                  goto LABEL_14;
                }

                goto LABEL_29;
              }
            }

LABEL_35:

            v28 = 1;
            v27 = v8;
            goto LABEL_36;
          }
        }

        else
        {
          v34 = 0uLL;
          v35 = 0uLL;
          v32 = 0uLL;
          v33 = 0uLL;
          v14 = [v13 handles];
          v21 = [v14 countByEnumeratingWithState:&v32 objects:v44 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v33;
LABEL_23:
            v24 = 0;
            while (1)
            {
              if (*v33 != v23)
              {
                objc_enumerationMutation(v14);
              }

              v25 = [*(*(&v32 + 1) + 8 * v24) URI];
              v26 = [v25 isEqualToURI:v5];

              if (v26)
              {
                goto LABEL_35;
              }

              if (v22 == ++v24)
              {
                v22 = [v14 countByEnumeratingWithState:&v32 objects:v44 count:16];
                if (v22)
                {
                  goto LABEL_23;
                }

LABEL_29:
                v11 = v31;
                break;
              }
            }
          }
        }

        if (++v12 == v10)
        {
          v10 = [v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
          if (v10)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v27 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider isValidURI:];
    }

    v28 = 0;
LABEL_36:
  }

  else
  {
    v5 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider isValidURI:];
    }

    v28 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)selfAddressedURIForURI:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (+[SKAMessagingProvider isRegisteredWithIDS])
  {
    v7 = objc_alloc(MEMORY[0x277D18A08]);
    v8 = [(SKAMessagingProvider *)self deviceToken];
    v9 = [v7 initWithData:v8];

    if (v9 && ([v9 rawToken], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      if ([v6 isTokenURI])
      {
        v11 = [v6 tokenFreeURI];

        v6 = v11;
      }

      v12 = [v6 URIByAddingPushToken:v9];
      v13 = [v12 prefixedURI];
    }

    else
    {
      v14 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider selfAddressedURIForURI:error:];
      }

      if (a4)
      {
        [SKAError errorWithCode:706 customDescription:@"Could not retrieve device token"];
        *a4 = v13 = 0;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else if (a4)
  {
    [SKAError errorWithCode:705];
    *a4 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)deviceTokenForTokenURI:(id)a3
{
  v3 = IDSCopyTokenAndIDForTokenWithID();

  return 0;
}

+ (id)handleForTokenURI:(id)a3
{
  v3 = IDSCopyRawAddressForDestination();
  v4 = [objc_alloc(MEMORY[0x277D680C0]) initWithString:v3];

  return v4;
}

- (void)signPayload:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SKAMessagingProvider *)self service];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__SKAMessagingProvider_signPayload_completion___block_invoke;
  v10[3] = &unk_27843E1F8;
  v11 = v6;
  v9 = v6;
  [v8 signData:v7 withAlgorithm:2 completion:v10];
}

void __47__SKAMessagingProvider_signPayload_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v6 = [SKAError errorWithCode:405 underlyingError:a3];
    (*(v3 + 16))(v3, v6, 0);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0, a2);
  }
}

- (void)verifySignedPayload:(id)a3 matchesPayload:(id)a4 fromTokenURI:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = MEMORY[0x277D18A48];
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[v11 alloc] initWithPrefixedURI:v12];

  v16 = [(SKAMessagingProvider *)self service];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__SKAMessagingProvider_verifySignedPayload_matchesPayload_fromTokenURI_completion___block_invoke;
  v18[3] = &unk_27843E8E8;
  v19 = v10;
  v17 = v10;
  [v16 verifySignedData:v14 matchesExpectedData:v13 withTokenURI:v15 forAlgorithm:2 completion:v18];
}

void __83__SKAMessagingProvider_verifySignedPayload_matchesPayload_fromTokenURI_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SKAMessagingProvider logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = a2;
    _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Signature verification returned with result: %d", v10, 8u);
  }

  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = [SKAError errorWithCode:406 underlyingError:v5];
    (*(v7 + 16))(v7, v8, a2);
  }

  else
  {
    (*(v7 + 16))(v7, 0, a2);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)verifySignedPayloads:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SKAMessagingProvider *)self service];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__SKAMessagingProvider_verifySignedPayloads_completion___block_invoke;
  v10[3] = &unk_27843E910;
  v11 = v6;
  v9 = v6;
  [v8 verifySignedPayloads:v7 forAlgorithm:2 options:0 completion:v10];
}

void __56__SKAMessagingProvider_verifySignedPayloads_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKAMessagingProvider logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Signature verification returned with result: %@", &v11, 0xCu);
  }

  v8 = *(a1 + 32);
  if (v6)
  {
    v9 = [SKAError errorWithCode:406 underlyingError:v6];
    (*(v8 + 16))(v8, v9, 0);
  }

  else
  {
    (*(v8 + 16))(v8, 0, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)isHandle:(id)a3 inFirewallForService:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x277D18710]) initWithService:v9 queue:self->_queue];
  if (v11)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__SKAMessagingProvider_isHandle_inFirewallForService_completion___block_invoke;
    v13[3] = &unk_27843E938;
    v14 = v9;
    v16 = v10;
    v15 = v8;
    [v11 currentEntries:v13];
  }

  else
  {
    v12 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider isHandle:inFirewallForService:completion:];
    }

    (*(v10 + 2))(v10, 0);
  }
}

void __65__SKAMessagingProvider_isHandle_inFirewallForService_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKAMessagingProvider logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__SKAMessagingProvider_isHandle_inFirewallForService_completion___block_invoke_cold_1(a1, v6, v8);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 count];
      v10 = *(a1 + 32);
      *buf = 134218498;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v5;
      _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Retrieved %lu IDS firewall entries for %@: %@", buf, 0x20u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v5;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v22 + 1) + 8 * v15) uri];
          v17 = [v16 unprefixedURI];
          v18 = [*(a1 + 40) normalizedHandleString];
          v19 = [v17 isEqualToString:v18];

          if (v19)
          {
            (*(*(a1 + 48) + 16))();

            goto LABEL_17;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    (*(*(a1 + 48) + 16))();
LABEL_17:
    v5 = v21;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)listOfValidSenderHandles:(id)a3 containsSenderMergeID:(id)a4 completion:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      v15 = 0;
      do
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v31 + 1) + 8 * v15) idsURI];
        v17 = [v16 destinationURIs];
        v18 = [v17 allObjects];
        [v10 addObjectsFromArray:v18];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v13);
  }

  v19 = [v10 count];
  v20 = +[SKAMessagingProvider logger];
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = v10;
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Querying IDS for URI destinations: %@ looking for sender merge ID: %@", buf, 0x16u);
    }

    v22 = [MEMORY[0x277D18728] sharedInstance];
    v23 = [v10 allObjects];
    queue = self->_queue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __82__SKAMessagingProvider_listOfValidSenderHandles_containsSenderMergeID_completion___block_invoke;
    v27[3] = &unk_27843E960;
    v30 = v9;
    v28 = v10;
    v29 = v8;
    [v22 idInfoForDestinations:v23 service:@"com.apple.private.alloy.status.keysharing" infoTypes:1 options:0 listenerID:@"com.apple.StatusKit" queue:queue completionBlock:v27];
  }

  else
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider listOfValidSenderHandles:containsSenderMergeID:completion:];
    }

    (*(v9 + 2))(v9, 0);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __82__SKAMessagingProvider_listOfValidSenderHandles_containsSenderMergeID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__SKAMessagingProvider_listOfValidSenderHandles_containsSenderMergeID_completion___block_invoke_cold_1();
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v24 = a1;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = v5;
    v9 = [v5 objectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v15 = [v14 endpoints];
          v16 = [v15 countByEnumeratingWithState:&v26 objects:v38 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v27;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v27 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [*(*(&v26 + 1) + 8 * j) senderCorrelationIdentifier];
                [v8 addObject:v20];
              }

              v17 = [v15 countByEnumeratingWithState:&v26 objects:v38 count:16];
            }

            while (v17);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v11);
    }

    v21 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v24[4];
      *buf = 138412546;
      v35 = v22;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "URI destinations: %@ map to valid merge IDs: %@", buf, 0x16u);
    }

    (*(v24[6] + 16))(v24[6], [v8 containsObject:v24[5]]);
    v6 = 0;
    v5 = v25;
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isRegisteredWithIDS
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D186C8]) initWithService:@"com.apple.private.alloy.status.keysharing"];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 accounts];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) isActive])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(SKAMessagingProvider *)self registeredIDSDeviceChangedObservers:a3];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_keysharingIsDisabledByServer
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"status-kit-keysharing-disabled"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 BOOLValue])
  {
    v4 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider _keysharingIsDisabledByServer];
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_selfSharingIsDisabledByServer
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"status-kit-selfsharing-disabled"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 BOOLValue])
  {
    v4 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider _selfSharingIsDisabledByServer];
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)registerIDSDeviceChangedObserver:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = _Block_copy(v5);

  [(NSMutableDictionary *)self->_registeredIDSDeviceChangedObservers setObject:v7 forKeyedSubscript:v6];

  return v6;
}

+ (id)logger
{
  if (logger_onceToken_15 != -1)
  {
    +[SKAMessagingProvider logger];
  }

  v3 = logger__logger_15;

  return v3;
}

uint64_t __30__SKAMessagingProvider_logger__block_invoke()
{
  logger__logger_15 = os_log_create("com.apple.StatusKit", "SKAMessagingProvider");

  return MEMORY[0x2821F96F8]();
}

- (SKAMessagingProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:serviceIdentifier:pushManager:queue:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessageToSelfDevices:limitToPresenceCapable:identifier:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessageToSelfDevices:limitToPresenceCapable:identifier:error:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)service:account:incomingMessage:fromID:context:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)resolveSenderHandleWithPreferredSenderHandle:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)resolveSenderHandleWithPreferredSenderHandle:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isValidURI:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isValidURI:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)selfAddressedURIForURI:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isHandle:inFirewallForService:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __65__SKAMessagingProvider_isHandle_inFirewallForService_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_220099000, log, OS_LOG_TYPE_ERROR, "Retrieving IDS firewall for %@ returned error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)listOfValidSenderHandles:containsSenderMergeID:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __82__SKAMessagingProvider_listOfValidSenderHandles_containsSenderMergeID_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_keysharingIsDisabledByServer
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_selfSharingIsDisabledByServer
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end