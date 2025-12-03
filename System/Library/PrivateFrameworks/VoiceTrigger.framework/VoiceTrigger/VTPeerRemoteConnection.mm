@interface VTPeerRemoteConnection
- (BOOL)_hasNearbyPeer;
- (BOOL)hasPeer;
- (VTPeerRemoteConnection)initWithServiceIdentifier:(id)identifier requireNearbyPeer:(BOOL)peer;
- (id)_account;
- (id)_destination;
- (id)_pairedDevice;
- (id)_service;
- (id)_wrappedSendFailureError:(id)error;
- (void)_invokeCompletionForIdentifier:(id)identifier response:(id)response error:(id)error;
- (void)_sendResponse:(id)response forRequestId:(id)id;
- (void)sendRequestType:(unint64_t)type nonWaking:(BOOL)waking;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)setDelegate:(id)delegate;
@end

@implementation VTPeerRemoteConnection

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  if (!success)
  {
    v16 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = identifierCopy;
      v20 = 2114;
      v21 = errorCopy;
      _os_log_error_impl(&dword_223A31000, v16, OS_LOG_TYPE_ERROR, "Message send with identifier %{public}@ failed %{public}@", &v18, 0x16u);
    }

    v17 = [(VTPeerRemoteConnection *)self _wrappedSendFailureError:errorCopy];
    [(VTPeerRemoteConnection *)self _invokeCompletionForIdentifier:identifierCopy response:0 error:v17];
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  v47 = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  dCopy = d;
  contextCopy = context;
  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
  outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
  expectsPeerResponse = [contextCopy expectsPeerResponse];
  v16 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v17 = incomingResponseIdentifier;
    v18 = expectsPeerResponse;
    v19 = outgoingResponseIdentifier;
    v20 = dCopy;
    identifier = self->_identifier;
    v22 = v16;
    type = [protobufCopy type];
    selfCopy = self;
    v24 = protobufCopy;
    v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(contextCopy, "expectsPeerResponse")}];
    *buf = 138544642;
    v38 = identifier;
    dCopy = v20;
    outgoingResponseIdentifier = v19;
    expectsPeerResponse = v18;
    incomingResponseIdentifier = v17;
    v39 = 1026;
    *v40 = type;
    *&v40[4] = 2114;
    *&v40[6] = dCopy;
    v41 = 2114;
    v42 = v17;
    v43 = 2114;
    v44 = outgoingResponseIdentifier;
    v45 = 2114;
    v46 = v25;
    _os_log_impl(&dword_223A31000, v22, OS_LOG_TYPE_DEFAULT, "Received %{public}@ type %{public}d fromId %{public}@ incoming %{public}@ outgoing %{public}@ expects response %{public}@", buf, 0x3Au);

    protobufCopy = v24;
    self = selfCopy;
  }

  if (incomingResponseIdentifier)
  {
    [(VTPeerRemoteConnection *)self _invokeCompletionForIdentifier:incomingResponseIdentifier response:protobufCopy error:0];
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
        type2 = [protobufCopy type];
        if (expectsPeerResponse)
        {
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __83__VTPeerRemoteConnection_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke;
          v34[3] = &unk_2784EC560;
          v35 = outgoingResponseIdentifier;
          selfCopy2 = self;
          [v30 remoteConnection:self handleMessageType:type2 completion:v34];
        }

        else
        {
          [v30 remoteConnection:self handleMessageType:type2 completion:0];
        }
      }

      else if (v29)
      {
        *buf = 138543618;
        v38 = protobufCopy;
        v39 = 2114;
        *v40 = contextCopy;
        _os_log_impl(&dword_223A31000, v28, OS_LOG_TYPE_DEFAULT, "Tried to handle protobuf but couldn't find class or had no delegate %{public}@ %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v32 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v38 = protobufCopy;
        v39 = 2114;
        *v40 = contextCopy;
        _os_log_impl(&dword_223A31000, v32, OS_LOG_TYPE_DEFAULT, "Don't know how to handle protobuf %{public}@ %{public}@", buf, 0x16u);
      }

      if (expectsPeerResponse)
      {
        [(VTPeerRemoteConnection *)self _sendResponse:0 forRequestId:outgoingResponseIdentifier];
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

- (id)_wrappedSendFailureError:(id)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = objc_alloc(MEMORY[0x277CCA9B8]);
  if (errorCopy)
  {
    v9 = *MEMORY[0x277CCA7E8];
    v10[0] = errorCopy;
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

- (void)_invokeCompletionForIdentifier:(id)identifier response:(id)response error:(id)error
{
  identifierCopy = identifier;
  responseCopy = response;
  errorCopy = error;
  v10 = [(NSMutableDictionary *)self->_completions objectForKey:identifierCopy];
  if (errorCopy)
  {
LABEL_7:
    v13 = 0;
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (![responseCopy isResponse] || (v11 = objc_alloc(-[NSMutableDictionary objectForKey:](self->_responseClasses, "objectForKey:", identifierCopy)), objc_msgSend(responseCopy, "data"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "initWithData:", v12), v12, !v13))
  {
    errorCopy = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"VTRemoteConnectionErrorDomain" code:0 userInfo:0];
    goto LABEL_7;
  }

  errorCopy = 0;
  if (v10)
  {
LABEL_8:
    (v10)[2](v10, v13, errorCopy);
  }

LABEL_9:
  [(NSMutableDictionary *)self->_completions removeObjectForKey:identifierCopy];
  [(NSMutableDictionary *)self->_responseClasses removeObjectForKey:identifierCopy];
}

- (void)_sendResponse:(id)response forRequestId:(id)id
{
  v16 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  idCopy = id;
  if (idCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__VTPeerRemoteConnection__sendResponse_forRequestId___block_invoke;
    block[3] = &unk_2784EC538;
    v11 = responseCopy;
    v12 = idCopy;
    selfCopy = self;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = responseCopy;
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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__VTPeerRemoteConnection_setDelegate___block_invoke;
  v7[3] = &unk_2784ED118;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

id __38__VTPeerRemoteConnection_setDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  v3 = *(a1 + 40);
  v4 = (*(a1 + 32) + 56);

  return objc_storeWeak(v4, v3);
}

- (void)sendRequestType:(unint64_t)type nonWaking:(BOOL)waking
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = v7;
    v10 = [v8 numberWithUnsignedInteger:type];
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
  block[5] = type;
  wakingCopy = waking;
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
  accounts = [(IDSService *)self->_idsService accounts];
  anyObject = [accounts anyObject];

  return anyObject;
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
  _pairedDevice = [(VTPeerRemoteConnection *)self _pairedDevice];
  isNearby = [_pairedDevice isNearby];

  return isNearby;
}

- (id)_pairedDevice
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    serviceIdentifier = [(VTPeerRemoteConnection *)self serviceIdentifier];
    _service = [(VTPeerRemoteConnection *)self _service];
    devices = [_service devices];
    *buf = 138543618;
    v21 = serviceIdentifier;
    v22 = 2114;
    v23 = devices;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "devices for %{public}@: %{public}@", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  _service2 = [(VTPeerRemoteConnection *)self _service];
  devices2 = [_service2 devices];

  v10 = [devices2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(devices2);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 isDefaultPairedDevice])
        {
          v10 = v13;
          goto LABEL_13;
        }
      }

      v10 = [devices2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  _account = [(VTPeerRemoteConnection *)self _account];
  v3 = _account != 0;

  return v3;
}

- (VTPeerRemoteConnection)initWithServiceIdentifier:(id)identifier requireNearbyPeer:(BOOL)peer
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = VTPeerRemoteConnection;
  v7 = [(VTPeerRemoteConnection *)&v15 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v10 = dispatch_queue_create("VTRemotePeerConnection", 0);
    queue = v7->_queue;
    v7->_queue = v10;

    v12 = v7->_queue;
    v13 = dispatch_get_global_queue(33, 0);
    dispatch_set_target_queue(v12, v13);

    v7->_requireNearbyPeer = peer;
  }

  return v7;
}

@end