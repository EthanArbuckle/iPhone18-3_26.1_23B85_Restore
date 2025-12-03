@interface STMessageTrackingTransportService
+ (int64_t)_ledgerItemStateForSendMessageResult:(id)result;
- (STMessageTrackingTransportService)initWithTransport:(id)transport returnAddressProvider:(id)provider messageLedger:(id)ledger queue:(id)queue;
- (STTransportServiceDelegate)delegate;
- (id)sendMessage:(id)message toAddresses:(id)addresses;
- (void)stopTrackingMessageWithIdentifier:(id)identifier;
- (void)transport:(id)transport didDeliverMessageWithIdentifier:(id)identifier toMessageAddress:(id)address;
- (void)transport:(id)transport didReceiveMessage:(id)message;
- (void)transport:(id)transport didSendMessageWithIdentifier:(id)identifier result:(id)result;
- (void)transport:(id)transport willSendMessage:(id)message errorsByAddress:(id)address;
@end

@implementation STMessageTrackingTransportService

- (STMessageTrackingTransportService)initWithTransport:(id)transport returnAddressProvider:(id)provider messageLedger:(id)ledger queue:(id)queue
{
  transportCopy = transport;
  providerCopy = provider;
  ledgerCopy = ledger;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = STMessageTrackingTransportService;
  v14 = [(STMessageTrackingTransportService *)&v23 init];
  transport = v14->_transport;
  v14->_transport = transportCopy;
  v16 = transportCopy;

  [(STMessageTrackingTransport *)v14->_transport setDelegate:v14];
  returnAddressProvider = v14->_returnAddressProvider;
  v14->_returnAddressProvider = providerCopy;
  v18 = providerCopy;

  messageLedger = v14->_messageLedger;
  v14->_messageLedger = ledgerCopy;
  v20 = ledgerCopy;

  queue = v14->_queue;
  v14->_queue = queueCopy;

  return v14;
}

- (id)sendMessage:(id)message toAddresses:(id)addresses
{
  messageCopy = message;
  addressesCopy = addresses;
  messageLedger = [(STMessageTrackingTransportService *)self messageLedger];
  v9 = +[STLog familyMessaging];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [messageCopy contentType] - 1;
    if (v10 > 4)
    {
      v11 = @"Unknown";
    }

    else
    {
      v11 = off_1001A46F0[v10];
    }

    identifier = [messageCopy identifier];
    *buf = 136446979;
    v41 = "[STMessageTrackingTransportService sendMessage:toAddresses:]";
    v42 = 2114;
    v43 = v11;
    v44 = 2114;
    v45 = identifier;
    v46 = 2113;
    v47 = messageLedger;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nSending message \nmessage.contentType: %{public}@ \nmessage.identifier: %{public}@ \nmessage ledger: %{private}@", buf, 0x2Au);
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10004C7AC;
  v37[3] = &unk_1001A45D0;
  v13 = messageLedger;
  v38 = v13;
  v14 = messageCopy;
  v39 = v14;
  v15 = objc_retainBlock(v37);
  identifier2 = [(__CFString *)v14 identifier];
  v17 = [v13 fetchItemWithMessageIdentifier:identifier2];

  if (v17)
  {
    v18 = [v17 itemWithUpdatedStatusUsingBlock:&stru_1001A45F0];
  }

  else
  {
    v18 = [[STTransportServiceMessageLedgerItem alloc] initWithMessage:v14 addresses:addressesCopy];
  }

  identifier3 = [(__CFString *)v14 identifier];
  [v13 setItem:v18 forMessageIdentifier:identifier3];

  returnAddressProvider = [(STMessageTrackingTransportService *)self returnAddressProvider];
  returnAddress = [returnAddressProvider returnAddress];

  v22 = +[STLog familyMessaging];
  v23 = v22;
  if (returnAddress)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      identifier4 = [(__CFString *)v14 identifier];
      *buf = 136447235;
      v41 = "[STMessageTrackingTransportService sendMessage:toAddresses:]";
      v42 = 2113;
      v43 = v14;
      v44 = 2114;
      v45 = identifier4;
      v46 = 2113;
      v47 = addressesCopy;
      v48 = 2113;
      v49 = returnAddress;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nSending message: %{private}@ withIdentifier: %{public}@ \n toAddress: %{private}@: fromAddress: %{private}@:", buf, 0x34u);
    }

    transport = [(STMessageTrackingTransportService *)self transport];
    v26 = [transport sendMessage:v14 toAddresses:addressesCopy fromAddress:returnAddress];
    catch = [v26 catch];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10004C914;
    v32[3] = &unk_1001A4618;
    v33 = v14;
    v36 = v15;
    v34 = v18;
    v35 = addressesCopy;
    v28 = (catch)[2](catch, v32);
  }

  else
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1001185B0(v23);
    }

    (v15[2])(v15, v18, addressesCopy);
    v29 = [NSError alloc];
    transport = [v29 initWithDomain:STErrorDomain code:27 userInfo:0];
    v30 = [STPromise alloc];
    v26 = [STResult failure:transport];
    catch = [(STMessageTrackingTransportService *)self queue];
    v28 = [(STPromise *)v30 initWithResolution:v26 onQueue:catch];
  }

  return v28;
}

- (void)transport:(id)transport willSendMessage:(id)message errorsByAddress:(id)address
{
  addressCopy = address;
  identifier = [message identifier];
  messageLedger = [(STMessageTrackingTransportService *)self messageLedger];
  v10 = [messageLedger fetchItemWithMessageIdentifier:identifier];
  if (v10)
  {
    v11 = v10;
    v12 = objc_opt_new();
    statusesByAddress = [v11 statusesByAddress];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10004CB50;
    v19[3] = &unk_1001A4640;
    v20 = addressCopy;
    v14 = identifier;
    v21 = v14;
    v22 = v12;
    v15 = v12;
    [statusesByAddress enumerateKeysAndObjectsUsingBlock:v19];

    v16 = [STTransportServiceMessageLedgerItem alloc];
    message = [v11 message];
    v18 = [(STTransportServiceMessageLedgerItem *)v16 initWithMessage:message statusesByAddress:v15];

    [messageLedger setItem:v18 forMessageIdentifier:v14];
  }

  else
  {
    v18 = +[STLog familyMessaging];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1001186C4();
    }
  }
}

- (void)transport:(id)transport didSendMessageWithIdentifier:(id)identifier result:(id)result
{
  identifierCopy = identifier;
  resultCopy = result;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10004CF04;
  v20[3] = &unk_1001A4668;
  v21 = identifierCopy;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004CFC8;
  v18[3] = &unk_1001A4048;
  v9 = v21;
  v19 = v9;
  [resultCopy evaluateWithSuccess:v20 failure:v18];
  messageLedger = [(STMessageTrackingTransportService *)self messageLedger];
  v11 = [STMessageTrackingTransportService _ledgerItemStateForSendMessageResult:resultCopy];
  v12 = [messageLedger fetchItemWithMessageIdentifier:v9];
  if (v12)
  {
    v13 = v12;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004D034;
    v17[3] = &unk_1001A4688;
    v17[4] = v11;
    v14 = [v12 itemWithUpdatedStatusUsingBlock:v17];

    [messageLedger setItem:v14 forMessageIdentifier:v9];
    delegate = [(STMessageTrackingTransportService *)self delegate];
    [delegate transportService:self didSendMessageWithIdentifier:v9 result:resultCopy];

    [messageLedger removeItemWithMessageIdentifier:v9];
    transport = [(STMessageTrackingTransportService *)self transport];
    [transport stopTrackingMessageWithIdentifier:v9];
  }

  else
  {
    v14 = +[STLog familyMessaging];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001187C8(v11, v9, v14);
    }
  }
}

+ (int64_t)_ledgerItemStateForSendMessageResult:(id)result
{
  if ([result type])
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (void)transport:(id)transport didDeliverMessageWithIdentifier:(id)identifier toMessageAddress:(id)address
{
  transportCopy = transport;
  identifierCopy = identifier;
  addressCopy = address;
  v11 = +[STLog familyMessaging];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446723;
    v29 = "[STMessageTrackingTransportService transport:didDeliverMessageWithIdentifier:toMessageAddress:]";
    v30 = 2114;
    v31 = identifierCopy;
    v32 = 2113;
    v33 = addressCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: Did deliver message identifier: %{public}@ - to address: %{private}@", buf, 0x20u);
  }

  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10004D3BC;
  v25 = &unk_1001A46B0;
  v12 = transportCopy;
  v26 = v12;
  selfCopy = self;
  v13 = objc_retainBlock(&v22);
  v14 = [(STMessageTrackingTransportService *)self messageLedger:v22];
  v15 = [v14 fetchItemWithMessageIdentifier:identifierCopy];
  if (v15)
  {
    v16 = v15;
    v17 = [NSSet setWithObject:addressCopy];
    v18 = [v16 itemWithUpdatedStatusForAddresses:v17 usingBlock:&stru_1001A46D0];

    v19 = +[STLog familyMessaging];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v29 = "[STMessageTrackingTransportService transport:didDeliverMessageWithIdentifier:toMessageAddress:]";
      v30 = 2114;
      v31 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: Did fully deliver message identifier: %{public}@", buf, 0x16u);
    }

    v20 = +[STLog familyMessaging];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v29 = "[STMessageTrackingTransportService transport:didDeliverMessageWithIdentifier:toMessageAddress:]";
      v30 = 2114;
      v31 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: Did fully deliver message identifier: %{public}@", buf, 0x16u);
    }

    [v14 removeItemWithMessageIdentifier:identifierCopy];
    (v13[2])(v13, identifierCopy);
  }

  else
  {
    v21 = +[STLog familyMessaging];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1001188E8();
    }

    (v13[2])(v13, identifierCopy);
  }
}

- (void)stopTrackingMessageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[STLog familyMessaging];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[STMessageTrackingTransportService stopTrackingMessageWithIdentifier:]";
    v9 = 2114;
    v10 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: Stop tracking message with identifier: %{public}@", &v7, 0x16u);
  }

  transport = [(STMessageTrackingTransportService *)self transport];
  [transport stopTrackingMessageWithIdentifier:identifierCopy];
}

- (void)transport:(id)transport didReceiveMessage:(id)message
{
  messageCopy = message;
  v6 = +[STLog familyMessaging];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    message = [messageCopy message];
    identifier = [message identifier];
    v16 = 136446466;
    v17 = "[STMessageTrackingTransportService transport:didReceiveMessage:]";
    v18 = 2114;
    v19 = identifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: Did receive message identifier: %{public}@", &v16, 0x16u);
  }

  delegate = [(STMessageTrackingTransportService *)self delegate];
  [delegate transportService:self didReceiveMessage:messageCopy];

  messageLedger = [(STMessageTrackingTransportService *)self messageLedger];
  message2 = [messageCopy message];
  identifier2 = [message2 identifier];
  [messageLedger removeItemWithMessageIdentifier:identifier2];

  transport = [(STMessageTrackingTransportService *)self transport];
  message3 = [messageCopy message];
  identifier3 = [message3 identifier];
  [transport stopTrackingMessageWithIdentifier:identifier3];
}

- (STTransportServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end