@interface VTPeerRemoteConnection
- (BOOL)_hasNearbyPeer;
- (BOOL)hasPeer;
- (VTPeerRemoteConnection)initWithServiceIdentifier:(id)a3 requireNearbyPeer:(BOOL)a4;
- (id)_account;
- (id)_destination;
- (id)_pairedDevice;
- (id)_service;
- (id)_wrappedSendFailureError:(id)a3;
- (void)_invokeCompletionForIdentifier:(id)a3 response:(id)a4 error:(id)a5;
- (void)_sendResponse:(id)a3 forRequestId:(id)a4;
- (void)sendRequestType:(unint64_t)a3 nonWaking:(BOOL)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)setDelegate:(id)a3;
@end

@implementation VTPeerRemoteConnection

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (!a6)
  {
    v16 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_error_impl(&dword_223A31000, v16, OS_LOG_TYPE_ERROR, "Message send with identifier %{public}@ failed %{public}@", &v18, 0x16u);
    }

    v17 = [(VTPeerRemoteConnection *)self _wrappedSendFailureError:v15];
    [(VTPeerRemoteConnection *)self _invokeCompletionForIdentifier:v14 response:0 error:v17];
  }
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [v12 incomingResponseIdentifier];
  v14 = [v12 outgoingResponseIdentifier];
  v15 = [v12 expectsPeerResponse];
  v16 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v13;
    v18 = v15;
    v19 = v14;
    v20 = v11;
    identifier = self->_identifier;
    v22 = v16;
    v23 = [v10 type];
    v33 = self;
    v24 = v10;
    v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "expectsPeerResponse")}];
    *buf = 138544642;
    v38 = identifier;
    v11 = v20;
    v14 = v19;
    v15 = v18;
    v13 = v17;
    v39 = 1026;
    *v40 = v23;
    *&v40[4] = 2114;
    *&v40[6] = v11;
    v41 = 2114;
    v42 = v17;
    v43 = 2114;
    v44 = v14;
    v45 = 2114;
    v46 = v25;
    _os_log_impl(&dword_223A31000, v22, OS_LOG_TYPE_DEFAULT, "Received %{public}@ type %{public}d fromId %{public}@ incoming %{public}@ outgoing %{public}@ expects response %{public}@", buf, 0x3Au);

    v10 = v24;
    self = v33;
  }

  if (v13)
  {
    [(VTPeerRemoteConnection *)self _invokeCompletionForIdentifier:v13 response:v10 error:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v27 = objc_loadWeakRetained(&self->_delegate);

      v28 = VTLogContextFacilityVoiceTrigger;
      v29 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        if (v29)
        {
          *buf = 0;
          _os_log_impl(&dword_223A31000, v28, OS_LOG_TYPE_DEFAULT, "Handing protobuf to delegate", buf, 2u);
        }

        v30 = objc_loadWeakRetained(&self->_delegate);
        v31 = [v10 type];
        if (v15)
        {
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __83__VTPeerRemoteConnection_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke;
          v34[3] = &unk_2784EC560;
          v35 = v14;
          v36 = self;
          [v30 remoteConnection:self handleMessageType:v31 completion:v34];
        }

        else
        {
          [v30 remoteConnection:self handleMessageType:v31 completion:0];
        }
      }

      else if (v29)
      {
        *buf = 138543618;
        v38 = v10;
        v39 = 2114;
        *v40 = v12;
        _os_log_impl(&dword_223A31000, v28, OS_LOG_TYPE_DEFAULT, "Tried to handle protobuf but couldn't find class or had no delegate %{public}@ %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v32 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v38 = v10;
        v39 = 2114;
        *v40 = v12;
        _os_log_impl(&dword_223A31000, v32, OS_LOG_TYPE_DEFAULT, "Don't know how to handle protobuf %{public}@ %{public}@", buf, 0x16u);
      }

      if (v15)
      {
        [(VTPeerRemoteConnection *)self _sendResponse:0 forRequestId:v14];
      }
    }
  }
}

void __83__VTPeerRemoteConnection_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&dword_223A31000, v7, OS_LOG_TYPE_ERROR, "Error for request id %{public}@ %{public}@", &v9, 0x16u);
    }
  }

  [*(a1 + 40) _sendResponse:v5 forRequestId:*(a1 + 32)];
}

- (id)_wrappedSendFailureError:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCA9B8]);
  if (v3)
  {
    v9 = *MEMORY[0x277CCA7E8];
    v10[0] = v3;
    v5 = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v5 initWithDomain:@"VTRemoteConnectionErrorDomain" code:3 userInfo:v6];
  }

  else
  {
    v7 = [v4 initWithDomain:@"VTRemoteConnectionErrorDomain" code:3 userInfo:0];
  }

  return v7;
}

- (void)_invokeCompletionForIdentifier:(id)a3 response:(id)a4 error:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_completions objectForKey:v14];
  if (v9)
  {
LABEL_7:
    v13 = 0;
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (![v8 isResponse] || (v11 = objc_alloc(-[NSMutableDictionary objectForKey:](self->_responseClasses, "objectForKey:", v14)), objc_msgSend(v8, "data"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "initWithData:", v12), v12, !v13))
  {
    v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"VTRemoteConnectionErrorDomain" code:0 userInfo:0];
    goto LABEL_7;
  }

  v9 = 0;
  if (v10)
  {
LABEL_8:
    (v10)[2](v10, v13, v9);
  }

LABEL_9:
  [(NSMutableDictionary *)self->_completions removeObjectForKey:v14];
  [(NSMutableDictionary *)self->_responseClasses removeObjectForKey:v14];
}

- (void)_sendResponse:(id)a3 forRequestId:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__VTPeerRemoteConnection__sendResponse_forRequestId___block_invoke;
    block[3] = &unk_2784EC538;
    v11 = v6;
    v12 = v7;
    v13 = self;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring response with no requestId %{public}@", buf, 0xCu);
    }
  }
}

void __53__VTPeerRemoteConnection__sendResponse_forRequestId___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D189F8]);
  v3 = [*(a1 + 32) data];
  v4 = [v2 initWithProtobufData:v3 type:0 isResponse:1];

  v5 = *(a1 + 40);
  v17 = *MEMORY[0x277D18608];
  v18[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v7 = [*(a1 + 48) _service];
  v8 = [*(a1 + 48) _account];
  v9 = [*(a1 + 48) _destination];
  v13 = 0;
  v14 = 0;
  [v7 sendProtobuf:v4 fromAccount:v8 toDestinations:v9 priority:300 options:v6 identifier:&v14 error:&v13];
  v10 = v14;
  v11 = v13;

  if (v11)
  {
    v12 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v11;
      _os_log_error_impl(&dword_223A31000, v12, OS_LOG_TYPE_ERROR, "Error sending response %{public}@", buf, 0xCu);
    }
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__VTPeerRemoteConnection_setDelegate___block_invoke;
  v7[3] = &unk_2784ED118;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

id __38__VTPeerRemoteConnection_setDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  v3 = *(a1 + 40);
  v4 = (*(a1 + 32) + 56);

  return objc_storeWeak(v4, v3);
}

- (void)sendRequestType:(unint64_t)a3 nonWaking:(BOOL)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = v7;
    v10 = [v8 numberWithUnsignedInteger:a3];
    *buf = 138543362;
    v15 = v10;
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "Sending Request %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__VTPeerRemoteConnection_sendRequestType_nonWaking___block_invoke;
  block[3] = &unk_2784EC628;
  block[4] = self;
  block[5] = a3;
  v13 = a4;
  dispatch_async(queue, block);
}

void __52__VTPeerRemoteConnection_sendRequestType_nonWaking___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D189F8]);
  v3 = [MEMORY[0x277CBEA90] data];
  v4 = [v2 initWithProtobufData:v3 type:*(a1 + 40) isResponse:0];

  v5 = *(a1 + 32);
  if ((v5[16] & 1) != 0 || *(a1 + 48) == 1)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = v6;
    if (*(*(a1 + 32) + 16) == 1)
    {
      [v6 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D185D8]];
    }

    [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D185C8]];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:kVTPeerRemotePhraseSpotterRecommendedTimeout];
    [v7 setObject:v8 forKey:*MEMORY[0x277D18658]];

    if (*(a1 + 48) == 1)
    {
      [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D185F8]];
    }

    [v7 setObject:@"VoiceTriggerRemotePhraseSpotter" forKey:*MEMORY[0x277D18628]];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:kVTPeerRemotePhraseSpotterRecommendedTimeout];
    [v7 setObject:v9 forKey:*MEMORY[0x277D185A8]];

    v5 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  v10 = [v5 _service];
  v11 = [*(a1 + 32) _account];
  v12 = [*(a1 + 32) _destination];
  v16 = 0;
  v17 = 0;
  [v10 sendProtobuf:v4 fromAccount:v11 toDestinations:v12 priority:300 options:v7 identifier:&v17 error:&v16];
  v13 = v17;
  v14 = v16;

  if (v14)
  {
    v15 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v14;
      _os_log_error_impl(&dword_223A31000, v15, OS_LOG_TYPE_ERROR, "Error sending request %{public}@", buf, 0xCu);
    }
  }
}

- (id)_destination
{
  v2 = _destination_sDestination;
  if (!_destination_sDestination)
  {
    v3 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E0]];
    v4 = _destination_sDestination;
    _destination_sDestination = v3;

    v2 = _destination_sDestination;
  }

  return v2;
}

- (id)_account
{
  v2 = [(IDSService *)self->_idsService accounts];
  v3 = [v2 anyObject];

  return v3;
}

- (id)_service
{
  idsService = self->_idsService;
  if (!idsService)
  {
    v4 = [objc_alloc(MEMORY[0x277D18770]) initWithService:self->_identifier];
    v5 = self->_idsService;
    self->_idsService = v4;

    [(IDSService *)self->_idsService addDelegate:self queue:self->_queue];
    idsService = self->_idsService;
  }

  return idsService;
}

- (BOOL)_hasNearbyPeer
{
  v2 = [(VTPeerRemoteConnection *)self _pairedDevice];
  v3 = [v2 isNearby];

  return v3;
}

- (id)_pairedDevice
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(VTPeerRemoteConnection *)self serviceIdentifier];
    v6 = [(VTPeerRemoteConnection *)self _service];
    v7 = [v6 devices];
    *buf = 138543618;
    v21 = v5;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "devices for %{public}@: %{public}@", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(VTPeerRemoteConnection *)self _service];
  v9 = [v8 devices];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 isDefaultPairedDevice])
        {
          v10 = v13;
          goto LABEL_13;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v10;
}

- (BOOL)hasPeer
{
  v2 = [(VTPeerRemoteConnection *)self _account];
  v3 = v2 != 0;

  return v3;
}

- (VTPeerRemoteConnection)initWithServiceIdentifier:(id)a3 requireNearbyPeer:(BOOL)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = VTPeerRemoteConnection;
  v7 = [(VTPeerRemoteConnection *)&v15 init];
  if (v7)
  {
    v8 = [v6 copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v10 = dispatch_queue_create("VTRemotePeerConnection", 0);
    queue = v7->_queue;
    v7->_queue = v10;

    v12 = v7->_queue;
    v13 = dispatch_get_global_queue(33, 0);
    dispatch_set_target_queue(v12, v13);

    v7->_requireNearbyPeer = a4;
  }

  return v7;
}

@end