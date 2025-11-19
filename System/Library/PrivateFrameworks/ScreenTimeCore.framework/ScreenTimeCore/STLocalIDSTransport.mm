@interface STLocalIDSTransport
- (STLocalIDSTransport)init;
- (STLocalIDSTransportDelegate)delegate;
- (STLocalIDSTransportReachabilityDelegate)reachabilityDelegate;
- (void)sendPayload:(id)a3;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation STLocalIDSTransport

- (STLocalIDSTransport)init
{
  v11.receiver = self;
  v11.super_class = STLocalIDSTransport;
  v2 = [(STLocalIDSTransport *)&v11 init];
  v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.screentimelocal"];
  service = v2->_service;
  v2->_service = v3;

  v5 = [@"com.apple.ScreenTimeAgent.local-ids-service" UTF8String];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create(v5, v6);
  serviceQueue = v2->_serviceQueue;
  v2->_serviceQueue = v7;

  [(IDSService *)v2->_service addDelegate:v2 queue:v2->_serviceQueue];
  v9 = +[STLog idsTransport];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v13 = "[STLocalIDSTransport init]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[local] %{public}s: \nLocal transport initialized", buf, 0xCu);
  }

  return v2;
}

- (void)sendPayload:(id)a3
{
  v4 = a3;
  v5 = +[STLog familyMessaging];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 payloadType];
    v7 = [v4 destinations];
    *buf = 136446722;
    v36 = "[STLocalIDSTransport sendPayload:]";
    v37 = 2112;
    v38 = v6;
    v39 = 2114;
    v40 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[local] %{public}s: \npayloadType: %@, \ndestinations: %{public}@", buf, 0x20u);
  }

  v8 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = [(STLocalIDSTransport *)self service];
  v10 = [v9 devices];

  v11 = [v10 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      v14 = 0;
      do
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v31 + 1) + 8 * v14) isLocallyPaired])
        {
          v15 = IDSCopyIDForDevice();
          [v8 addObject:v15];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v12);
  }

  if ([v8 count])
  {
    v30 = 0;
    v16 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v30];
    v17 = v30;
    if (!v16)
    {
      v18 = +[STLog idsTransport];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_100117DB8(v4, v17, v18);
      }

      v22 = v17;
      goto LABEL_25;
    }

    v18 = objc_opt_new();
    [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionCompressPayloadKey];
    [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionWantsClientAcknowledgementKey];
    v19 = [(STLocalIDSTransport *)self service];
    v28 = v17;
    v29 = 0;
    v20 = [v19 sendData:v16 toDestinations:v8 priority:300 options:v18 identifier:&v29 error:&v28];
    v21 = v29;
    v22 = v28;

    v23 = +[STLog idsTransport];
    v24 = v23;
    if (v20)
    {
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v25 = [v4 payloadType];
      v26 = [v16 length];
      *buf = 136446978;
      v36 = "[STLocalIDSTransport sendPayload:]";
      v37 = 2112;
      v38 = v25;
      v39 = 2048;
      v40 = v26;
      v41 = 2114;
      v42 = v21;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[local] %{public}s: \nForwarded payload to local transport \npayloadType: %@, \npayloadData.length: %lu, \nreturnUUID: %{public}@", buf, 0x2Au);
    }

    else
    {
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }

      v25 = [v4 payloadType];
      v27 = [v16 length];
      *buf = 136446978;
      v36 = "[STLocalIDSTransport sendPayload:]";
      v37 = 2112;
      v38 = v25;
      v39 = 2048;
      v40 = v27;
      v41 = 2114;
      v42 = v22;
      _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "[local] %{public}s: \nFailed to send payload data, \npayloadType: %@, \npayloadData.length:%lu, \nerror: %{public}@", buf, 0x2Au);
    }

    goto LABEL_24;
  }

  v22 = +[STLog idsTransport];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_100117E70(v4, v22);
  }

LABEL_26:
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a5;
  v10 = a6;
  v21 = 0;
  v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v21];
  v12 = v21;
  v13 = +[STLog idsTransport];
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v11 payloadType];
      v16 = [v9 length];
      *buf = 136446722;
      v24 = "[STLocalIDSTransport service:account:incomingData:fromID:context:]";
      v25 = 2112;
      v26 = v15;
      v27 = 2048;
      v28 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[local]: %{public}s: \nreceived payload, \npayloadType: %@, \ndata.length: %lu", buf, 0x20u);
    }

    v17 = [v11 userInfo];
    [v17 setObject:v10 forKeyedSubscript:@"altURI"];

    v18 = [STUnifiedTransportPayloadDestination alloc];
    v14 = [v18 initWithAddress:v10 type:STUnifiedTransportPayloadDestinationTypePairedDevice];
    v22 = v14;
    v19 = [NSArray arrayWithObjects:&v22 count:1];
    [v11 setDestinations:v19];

    v20 = [(STLocalIDSTransport *)self delegate];
    [v20 localTransport:self didReceivePayload:v11];
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_100117F10(v12, v14);
  }
}

- (STLocalIDSTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (STLocalIDSTransportReachabilityDelegate)reachabilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reachabilityDelegate);

  return WeakRetained;
}

@end