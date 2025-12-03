@interface STSXPCHelper
- (id)startHandoff;
- (void)altCarrierConnectedWithStatus:(unint64_t)status;
- (void)altCarrierDisconnectedWithStatus:(unint64_t)status;
- (void)altCarrierReceived:(id)received status:(id)status;
- (void)connectNotificationListenerEndpoint:(id)endpoint callback:(id)callback;
- (void)generateHandoverRequestWithCallback:(id)callback;
- (void)generateQRCodeHandoverRequestWithCallback:(id)callback;
- (void)invalidateWithCompletion:(id)completion;
- (void)iso18013ReaderSendSessionData:(id)data status:(id)status callback:(id)callback;
- (void)iso18013ReaderSendSessionEstablishment:(id)establishment callback:(id)callback;
- (void)processAlternativeCarrierRequest:(id)request callback:(id)callback;
- (void)processHandoverRequest:(id)request callback:(id)callback;
- (void)processHandoverResponse:(id)response callback:(id)callback;
- (void)processQRCodeHandoverRequestMessage:(id)message callback:(id)callback;
- (void)processUnifiedAccessStepupExchangeCommand:(id)command forAcwg:(BOOL)acwg callback:(id)callback;
- (void)receivedCredentialSelection:(id)selection callback:(id)callback;
- (void)setRequestHandoverConfirmation:(BOOL)confirmation;
- (void)startConnectionHandoverWithConfiguration:(unint64_t)configuration type:(unint64_t)type credentialType:(unsigned __int8)credentialType callback:(id)callback;
- (void)testBluetoothHandoverSessionType:(unint64_t)type uuid:(id)uuid peripheralAddress:(id)address callback:(id)callback;
- (void)testWifiHandoverSessionWithServiceName:(id)name publisherRole:(BOOL)role datapathPMK:(id)k datapathPMKID:(id)d callback:(id)callback;
- (void)transferSEProxyWithXPCEndpoint:(id)endpoint;
- (void)xpcInvalidated;
@end

@implementation STSXPCHelper

- (void)startConnectionHandoverWithConfiguration:(unint64_t)configuration type:(unint64_t)type credentialType:(unsigned __int8)credentialType callback:(id)callback
{
  callbackCopy = callback;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper startConnectionHandoverWithConfiguration:type:credentialType:callback:]", 129, self, @"config=0x%lx, type=0x%lx", v11, v12, configuration);
  v13 = os_transaction_create();
  sub_100027558(self, v13);

  if (self)
  {
    if (self->_connectionHandoverHandler)
    {
      v58 = NSLocalizedDescriptionKey;
      v60 = off_100069A50;
      v14 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v58 count:1];
      v15 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v14];

      goto LABEL_75;
    }

    self->_type = type;
    self->_credentialType = credentialType;
  }

  v16 = sub_100036CE8([STSConnectionHandoverHandler alloc], configuration, self);
  if (self)
  {
    objc_storeStrong(&self->_connectionHandoverHandler, v16);
  }

  v17 = objc_alloc_init(NSMutableData);
  if (self)
  {
    objc_storeStrong(&self->_receiveBuffer, v17);
  }

  v18 = sub_100002C74([STSISO18013Handler alloc], self, type == 1);
  v19 = v18;
  if (self)
  {
    objc_storeStrong(&self->_iso18013Handler, v18);

    sub_100002D44(&self->_iso18013Handler->super.isa, (configuration >> 5) & 1);
    connectionHandoverHandler = self->_connectionHandoverHandler;
  }

  else
  {

    connectionHandoverHandler = 0;
  }

  sub_100037C14(connectionHandoverHandler);
  if (!type)
  {
    if (self)
    {
      iso18013Handler = self->_iso18013Handler;
    }

    else
    {
      iso18013Handler = 0;
    }

    v30 = iso18013Handler;
    v57 = 0;
    v31 = sub_100005220(v30, &v57);
    v15 = v57;
    if (self)
    {
      v32 = self->_connectionHandoverHandler;
    }

    else
    {
      v32 = 0;
    }

    sub_1000154E4(v32, v31);
    goto LABEL_74;
  }

  if (type != 1)
  {
    v15 = 0;
    goto LABEL_75;
  }

  v21 = configuration & 6;
  if (!self || (configuration & 7) == 0)
  {
    v15 = 0;
    goto LABEL_65;
  }

  if ((configuration & 6) != 0)
  {
    v22 = self->_connectionHandoverHandler;
    if (v22 && v22->_bluetoothState)
    {
      v23 = self->_connectionHandoverHandler;
      if (!v23)
      {

        goto LABEL_20;
      }

      bluetoothState = v23->_bluetoothState;

      if (bluetoothState != 1)
      {
LABEL_20:
        v62 = NSLocalizedDescriptionKey;
        v63 = STSBluetoothErrorDescriptions;
        v25 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v26 = [NSError errorWithDomain:@"BluetoothDomain" code:0 userInfo:v25];

        v58 = NSLocalizedDescriptionKey;
        v59 = NSUnderlyingErrorKey;
        v60 = @"Bluetooth specific error";
        v61 = v26;
        v27 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v58 count:2];
        v28 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v27];

        goto LABEL_32;
      }
    }

    else
    {
    }

    v28 = 0;
LABEL_32:
    if ((configuration & 1) == 0)
    {
      v33 = self->_connectionHandoverHandler;
      if (v33 && v33->_bluetoothState)
      {
        v28 = v28;
        v15 = v28;
      }

      else
      {
        v58 = NSLocalizedDescriptionKey;
        v60 = off_100069A70;
        v42 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v58 count:1];
        v15 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:6 userInfo:v42];
      }

      goto LABEL_64;
    }

    goto LABEL_36;
  }

  v28 = 0;
  v15 = 0;
  if ((configuration & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_36:
  v34 = self->_connectionHandoverHandler;
  if (!v34 || !v34->_wifiState)
  {

    goto LABEL_42;
  }

  v35 = self->_connectionHandoverHandler;
  if (!v35)
  {

    goto LABEL_40;
  }

  wifiState = v35->_wifiState;

  if (wifiState == 1)
  {
LABEL_42:
    v15 = 0;
    goto LABEL_43;
  }

LABEL_40:
  v62 = NSLocalizedDescriptionKey;
  v63 = off_100069B18;
  v37 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  v38 = [NSError errorWithDomain:@"WifiDomain" code:3 userInfo:v37];

  v58 = NSLocalizedDescriptionKey;
  v59 = NSUnderlyingErrorKey;
  v60 = @"Wifi specific error";
  v61 = v38;
  v39 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v58 count:2];
  v15 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v39];

LABEL_43:
  v40 = self->_connectionHandoverHandler;
  if ((configuration & 6) != 0)
  {
    v41 = v40;
    if (v41 && v41->_bluetoothState)
    {

      goto LABEL_53;
    }

    v43 = self->_connectionHandoverHandler;
    if (v43)
    {
      v44 = v43->_wifiState;

      if (v44)
      {
LABEL_53:
        if (v28 && v15 || v28)
        {
          v28 = v28;

          v15 = v28;
        }

        goto LABEL_64;
      }
    }

    else
    {
    }
  }

  else if (v40 && v40->_wifiState)
  {
    goto LABEL_64;
  }

  v58 = NSLocalizedDescriptionKey;
  v60 = off_100069A70;
  v45 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v58 count:1];
  v46 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:6 userInfo:v45];

  v15 = v46;
LABEL_64:

LABEL_65:
  objc_opt_self();
  v47 = +[NSDate now];
  if ((configuration & 0x40) != 0)
  {
    v48 = 2;
  }

  else
  {
    v48 = 1;
  }

  v49 = objc_opt_new();
  [v49 setObject:v47 forKeyedSubscript:@"transactionStartEventTime"];
  v50 = [NSNumber numberWithInteger:v21];
  [v49 setObject:v50 forKeyedSubscript:@"supportedtedReaderBTRoles"];

  v51 = [NSNumber numberWithInteger:v48];
  [v49 setObject:v51 forKeyedSubscript:@"engagementType"];

  v52 = +[STSReaderAnalyticsLogger sharedCALogger];
  [v52 postReaderTransactionEvent:v49 prepOnly:1];

  if (!v15)
  {
    if (self)
    {
      v53 = self->_iso18013Handler;
    }

    else
    {
      v53 = 0;
    }

    v30 = v53;
    v56 = 0;
    v31 = sub_100005CBC(v30, &v56, v54);
    v15 = v56;
    if (self)
    {
      v55 = self->_connectionHandoverHandler;
    }

    else
    {
      v55 = 0;
    }

    sub_100014B64(v55, v31);
LABEL_74:
  }

LABEL_75:
  callbackCopy[2](callbackCopy, v15);
}

- (void)processUnifiedAccessStepupExchangeCommand:(id)command forAcwg:(BOOL)acwg callback:(id)callback
{
  commandCopy = command;
  callbackCopy = callback;
  if (!self)
  {
    v10 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v10 = self->_iso18013Handler;
  if (!v10 || self->_type != 2)
  {
    goto LABEL_7;
  }

  if (!acwg)
  {
LABEL_8:
    v16 = NSLocalizedDescriptionKey;
    v17 = off_100069A50;
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v12 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v13];

    callbackCopy[2](callbackCopy, 0, v12);
    goto LABEL_9;
  }

  iso18013Handler = self->_iso18013Handler;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100027E80;
  v14[3] = &unk_100059440;
  v15 = callbackCopy;
  sub_100004344(iso18013Handler, commandCopy, v14);
  v12 = v15;
LABEL_9:
}

- (void)transferSEProxyWithXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper transferSEProxyWithXPCEndpoint:]", 260, self, @"Receiving XPC Endpoint: %@", v6, v7, endpointCopy);
  if (self)
  {
    objc_storeStrong(&self->_seProxyConnection, endpoint);

    v8 = self->_seProxyConnection;
    notificationClient = self->_notificationClient;
    v10 = v8;
    if (notificationClient)
    {
      objc_storeWeak(&notificationClient->_seProxyConnection, v8);
    }
  }

  else
  {

    v10 = 0;
  }
}

- (void)connectNotificationListenerEndpoint:(id)endpoint callback:(id)callback
{
  endpointCopy = endpoint;
  callbackCopy = callback;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper connectNotificationListenerEndpoint:callback:]", 275, self, &stru_100059C08, v7, v8, v16);
  if (self)
  {
    notificationClient = self->_notificationClient;
    if (notificationClient)
    {
      v10 = notificationClient->_listenerEndpoint;

      if (v10 == endpointCopy)
      {
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper connectNotificationListenerEndpoint:callback:]", 278, self, @"Listener connection exists", v11, v12, v17);
        callbackCopy[2](callbackCopy, 0);
        goto LABEL_9;
      }

      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper connectNotificationListenerEndpoint:callback:]", 282, self, @"Notification client existed; dropping previous connection.", v11, v12, v17);
    }
  }

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create("com.apple.STSXPCHelper.clientNotification", v13);

  v15 = sub_10000B228([STSXPClientNotification alloc], endpointCopy, self, v14);
  if (self)
  {
    objc_storeStrong(&self->_notificationClient, v15);
  }

  callbackCopy[2](callbackCopy, 0);
LABEL_9:
}

- (void)processAlternativeCarrierRequest:(id)request callback:(id)callback
{
  callbackCopy = callback;
  requestCopy = request;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper processAlternativeCarrierRequest:callback:]", 302, self, &stru_100059C08, v8, v9, v14);
  if (self)
  {
    connectionHandoverHandler = self->_connectionHandoverHandler;
  }

  else
  {
    connectionHandoverHandler = 0;
  }

  v15 = 0;
  v11 = connectionHandoverHandler;
  v12 = sub_100036D6C(v11, requestCopy, &v15);

  v13 = v15;
  callbackCopy[2](callbackCopy, v12, v13);
}

- (void)processHandoverRequest:(id)request callback:(id)callback
{
  requestCopy = request;
  callbackCopy = callback;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper processHandoverRequest:callback:]", 317, self, &stru_100059C08, v8, v9, v77);
  v10 = +[NSDate now];
  v95 = @"handoverStartEventTime";
  v96 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
  v12 = +[STSAnalyticsLogger sharedCALogger];
  [v12 postISOHandoverEvent:v11 prepOnly:1];

  if (self && (self->_type | 2) != 2)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelper processHandoverRequest:callback:]", 323, self, @"Invalid state", v13, v14, v78);
    v97 = NSLocalizedDescriptionKey;
    *buf = off_100069A50;
    v26 = [NSDictionary dictionaryWithObjects:buf forKeys:&v97 count:1];
    v27 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v26];

    (*(callbackCopy + 2))(callbackCopy, 0, 0, v27);
    v93[0] = @"handoverEndEventTime";
    v93[1] = @"errorCode";
    v94[0] = v10;
    v94[1] = &off_10005F640;
    v28 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:2];
    v29 = +[STSAnalyticsLogger sharedCALogger];
    [v29 postISOHandoverEvent:v28 prepOnly:0];
    goto LABEL_51;
  }

  v84 = +[NSDate now];
  v80 = v11;
  v81 = v10;
  if (self)
  {
    connectionHandoverHandler = self->_connectionHandoverHandler;
  }

  else
  {
    connectionHandoverHandler = 0;
  }

  v86 = 0;
  v87 = 0;
  v16 = connectionHandoverHandler;
  v82 = requestCopy;
  v17 = sub_100036E54(v16, requestCopy, &v87, &v86);
  v18 = v87;
  v19 = v86;
  if (self)
  {
    objc_storeStrong(&self->_selectedAC, v17);
  }

  v20 = sub_100024AE0();
  if (os_signpost_enabled(v20))
  {
    if (self)
    {
      type = self->_type;
      selectedAC = self->_selectedAC;
    }

    else
    {
      type = 0;
      selectedAC = 0;
    }

    type = [(STSCHAlternativeCarrier *)selectedAC type];
    *buf = 134218240;
    *&buf[4] = type;
    v91 = 2048;
    v92 = type;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ISO18013_AltCarrierProcessing", "deviceType=%lu, selectedAC=%lu", buf, 0x16u);
  }

  v85 = v18;
  if (self && self->_selectedAC)
  {
    if (self->_handoverConfirmation)
    {
      if (!v19)
      {
        v83 = 4;
        goto LABEL_40;
      }

      v83 = 4;
    }

    else
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper processHandoverRequest:callback:]", 353, self, @"Auto connect enabled", v24, v25, v78);
      v38 = sub_100028A90(self, v84);

      if (!v38)
      {
        v83 = 0;
        v19 = 0;
        goto LABEL_40;
      }

      v83 = 0;
      v19 = v38;
    }

    goto LABEL_37;
  }

  v30 = v19;
  v19 = v30;
  if (!v30)
  {
    v37 = 0;
    v83 = 1;
LABEL_33:
    v47 = v19;
LABEL_34:

    goto LABEL_35;
  }

  domain = [v30 domain];
  if (([domain isEqualToString:@"STSXPCHelperErrorDomain"] & 1) == 0)
  {

    goto LABEL_26;
  }

  code = [v19 code];

  if (code != 12)
  {
LABEL_26:

    v37 = 0;
LABEL_27:
    v39 = 1;
    goto LABEL_28;
  }

  userInfo = [v19 userInfo];
  v34 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  domain2 = [v34 domain];
  v36 = [domain2 isEqualToString:@"BluetoothDomain"];

  if (v36)
  {
    v37 = v34;
  }

  else
  {
    v37 = 0;
  }

  if (!v37)
  {
    goto LABEL_27;
  }

  code2 = [v37 code];
  v39 = 3;
  if (code2)
  {
    v39 = 1;
  }

LABEL_28:
  v83 = v39;
  v40 = v19;
  domain3 = [v40 domain];
  if (([domain3 isEqualToString:@"WifiDomain"] & 1) == 0)
  {

    goto LABEL_33;
  }

  v79 = v37;
  code3 = [v40 code];

  if (code3 != 12)
  {
    v47 = v19;
    v37 = v79;
    goto LABEL_34;
  }

  userInfo2 = [v40 userInfo];
  v44 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

  domain4 = [v44 domain];
  v46 = [domain4 isEqualToString:@"WifiDomain"];

  if (v46)
  {
    v47 = v44;
  }

  else
  {
    v47 = 0;
  }

  v37 = v79;
  if (v47)
  {
    code4 = [v47 code];
    v76 = v83;
    if (code4 == 3)
    {
      v76 = 2;
    }

    v83 = v76;
    goto LABEL_34;
  }

LABEL_35:
  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelper processHandoverRequest:callback:]", 368, self, @"No matching AC found, error=%@", v48, v49, v19);
  v88[0] = @"handoverEndEventTime";
  v50 = +[NSDate now];
  v88[1] = @"errorCode";
  v89[0] = v50;
  v51 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 code]);
  v89[1] = v51;
  v52 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:2];

  v53 = +[STSAnalyticsLogger sharedCALogger];
  [v53 postISOHandoverEvent:v52 prepOnly:0];

  if (v19)
  {
    v18 = v85;
    if (!self)
    {
      v54 = 0;
      goto LABEL_38;
    }

LABEL_37:
    v54 = self->_selectedAC;
LABEL_38:
    v55 = v54;
    type2 = [(STSCHAlternativeCarrier *)v55 type];
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelper processHandoverRequest:callback:]", 377, self, @"selectedAc=%lu, error=%@", v57, v58, type2);

    goto LABEL_39;
  }

  v18 = v85;
LABEL_39:
  if (self)
  {
LABEL_40:
    v59 = self->_selectedAC;
    goto LABEL_41;
  }

  v59 = 0;
LABEL_41:
  (*(callbackCopy + 2))(callbackCopy, v18, v59 != 0, v19);
  if (!self)
  {
    v70 = 0;
    v66 = 0;
    v62 = 0;
    v60 = 0;
    v64 = 0;
    v68 = 0;
LABEL_68:
    handoverSelectMessage = 0;
    goto LABEL_48;
  }

  v60 = self->_iso18013Handler;
  v61 = self->_connectionHandoverHandler;
  v62 = v61;
  if (v61)
  {
    deviceEngagement = v61->_deviceEngagement;
  }

  else
  {
    deviceEngagement = 0;
  }

  v64 = deviceEngagement;
  v65 = self->_connectionHandoverHandler;
  v66 = v65;
  if (v65)
  {
    handoverRequestMessage = v65->_handoverRequestMessage;
  }

  else
  {
    handoverRequestMessage = 0;
  }

  v68 = handoverRequestMessage;
  v69 = self->_connectionHandoverHandler;
  v70 = v69;
  if (!v69)
  {
    goto LABEL_68;
  }

  handoverSelectMessage = v69->_handoverSelectMessage;
LABEL_48:
  v72 = handoverSelectMessage;
  sub_100002FCC(&v60->super.isa, v64, v68, v72);

  if (self)
  {
    notificationClient = self->_notificationClient;
  }

  else
  {
    notificationClient = 0;
  }

  v11 = v80;
  v29 = v85;
  sub_10000B784(notificationClient, v83);

  v10 = v81;
  requestCopy = v82;
  v28 = v84;
LABEL_51:
}

- (void)generateHandoverRequestWithCallback:(id)callback
{
  callbackCopy = callback;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper generateHandoverRequestWithCallback:]", 395, self, &stru_100059C08, v5, v6, v35);
  if (!self || self->_type != 1)
  {
    v38 = NSLocalizedDescriptionKey;
    *buf = off_100069A50;
    v11 = [NSDictionary dictionaryWithObjects:buf forKeys:&v38 count:1];
    v12 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v11];

    callbackCopy[2](callbackCopy, 0, v12);
    goto LABEL_16;
  }

  if (self->_internalBuild)
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 integerForKey:@"DelayGenerateHandoverRequest"];

    if (v8 >= 16)
    {
      v8 = 15;
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper generateHandoverRequestWithCallback:]", 413, self, @"Restrict delay to %d seconds", v9, v10, 15);
LABEL_8:
      notify_post("com.apple.STSXPCHelper.QL.generateHandoverRequestWithCallback.delayStart");
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper generateHandoverRequestWithCallback:]", 421, self, @"Sleep for %d seconds", v13, v14, v8);
      sleep(v8);
      goto LABEL_9;
    }

    if (v8 >= 1)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  v15 = sub_100024AE0();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ISO18013_GenerateNFCHandoverRequest", &unk_10005485E, buf, 2u);
  }

  v16 = objc_opt_new();
  v17 = +[NSDate now];
  [v16 setObject:v17 forKeyedSubscript:@"handoverStartEventTime"];
  connectionHandoverHandler = self->_connectionHandoverHandler;
  v36 = 0;
  v19 = connectionHandoverHandler;
  v26 = sub_100039394(v19, &v36, v20, v21, v22, v23, v24, v25);
  v12 = v36;

  v27 = [v26 length];
  v28 = [NSNumber numberWithInteger:v27];
  [v16 setObject:v28 forKeyedSubscript:@"handoverRequestSize"];

  v29 = +[STSReaderAnalyticsLogger sharedCALogger];
  [v29 postReaderTransactionEvent:v16 prepOnly:1];

  if (v12)
  {
    v30 = +[NSDate now];
    v31 = objc_opt_new();
    [v31 setObject:&off_10005F658 forKeyedSubscript:@"handoverResponseSize"];
    [v31 setObject:v30 forKeyedSubscript:@"handoverEndEventTime"];
    [v31 setObject:v30 forKeyedSubscript:@"transactionEndEventTime"];
    v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 code]);
    [v31 setObject:v32 forKeyedSubscript:@"errorCode"];

    v33 = +[STSReaderAnalyticsLogger sharedCALogger];
    [v33 postReaderTransactionEvent:v31 prepOnly:0];
  }

  v34 = sub_100024AE0();
  if (os_signpost_enabled(v34))
  {
    *buf = 134217984;
    *&buf[4] = v27;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_GenerateNFCHandoverRequest", "Request size=%lu", buf, 0xCu);
  }

  (callbackCopy)[2](callbackCopy, v26, v12);
LABEL_16:
}

- (void)generateQRCodeHandoverRequestWithCallback:(id)callback
{
  callbackCopy = callback;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper generateQRCodeHandoverRequestWithCallback:]", 457, self, &stru_100059C08, v5, v6, v47);
  if (!self)
  {
    v9 = 0;
LABEL_5:
    v54 = 0;
    v10 = v9;
    v17 = sub_100039394(v10, &v54, v11, v12, v13, v14, v15, v16);
    v18 = v54;

    if (v18)
    {
      v8 = v18;
    }

    else
    {
      v8 = 0;
    }

    if (!v18 && self)
    {
      if (!self->_type && (v19 = self->_connectionHandoverHandler) != 0 && v19->_hasEstablishmentOverQR)
      {
        v20 = self->_iso18013Handler;
        v21 = self->_connectionHandoverHandler;
        v22 = v21;
        if (v21)
        {
          deviceEngagement = v21->_deviceEngagement;
        }

        else
        {
          deviceEngagement = 0;
        }

        v24 = deviceEngagement;
        v25 = self->_connectionHandoverHandler;
        v26 = v25;
        if (v25)
        {
          handoverRequestMessage = v25->_handoverRequestMessage;
        }

        else
        {
          handoverRequestMessage = 0;
        }

        v28 = handoverRequestMessage;
        v29 = self->_connectionHandoverHandler;
        v30 = v29;
        if (v29)
        {
          handoverSelectMessage = v29->_handoverSelectMessage;
        }

        else
        {
          handoverSelectMessage = 0;
        }

        v32 = handoverSelectMessage;
        sub_100002FCC(&v20->super.isa, v24, v28, v32);

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        connectionHandoverHandler = self->_connectionHandoverHandler;
        if (connectionHandoverHandler)
        {
          connectionHandoverHandler = connectionHandoverHandler->_readerACList;
        }

        v34 = connectionHandoverHandler;
        v35 = [(STSConnectionHandoverHandler *)v34 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v35)
        {
          v36 = v35;
          selfCopy = self;
          v48 = v17;
          v8 = 0;
          v37 = 0;
          v38 = *v51;
          while (1)
          {
            v39 = 0;
            do
            {
              if (*v51 != v38)
              {
                objc_enumerationMutation(v34);
              }

              v40 = *(*(&v50 + 1) + 8 * v39);
              if ([v40 type] == 1)
              {
                v56 = NSLocalizedDescriptionKey;
                v57 = off_100069A48;
                v41 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
                v42 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:1 userInfo:v41];
              }

              else
              {
                if ([v40 type] != 2)
                {
                  goto LABEL_33;
                }

                v42 = sub_10002967C(selfCopy, v40, 0);

                v43 = selfCopy->_btSession;
                v8 = v43;
                if (v43)
                {
                  queue = v43->_queue;
                }

                else
                {
                  queue = 0;
                }

                v45 = queue;

                v37 = v45;
              }

              v8 = v42;
LABEL_33:
              v39 = v39 + 1;
            }

            while (v36 != v39);
            v46 = [(STSConnectionHandoverHandler *)v34 countByEnumeratingWithState:&v50 objects:v55 count:16];
            v36 = v46;
            if (!v46)
            {

              v17 = v48;
              if (!v8 && v37)
              {
                sub_100029B10(&selfCopy->super.isa, v37);
                goto LABEL_44;
              }

              goto LABEL_45;
            }
          }
        }

        v37 = 0;
LABEL_44:
        v8 = 0;
LABEL_45:
      }

      else
      {
        v8 = 0;
      }
    }

    callbackCopy[2](callbackCopy, v17, v8);

    goto LABEL_42;
  }

  if (!self->_type)
  {
    v9 = self->_connectionHandoverHandler;
    goto LABEL_5;
  }

  v56 = NSLocalizedDescriptionKey;
  v57 = off_100069A50;
  v7 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v8 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v7];

  callbackCopy[2](callbackCopy, 0, v8);
LABEL_42:
}

- (void)processHandoverResponse:(id)response callback:(id)callback
{
  responseCopy = response;
  callbackCopy = callback;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper processHandoverResponse:callback:]", 494, self, &stru_100059C08, v8, v9, v77);
  if (self && self->_type == 1)
  {
    v10 = objc_opt_new();
    v11 = [responseCopy length];
    v12 = [NSNumber numberWithInteger:v11];
    [v10 setObject:v12 forKeyedSubscript:@"handoverResponseSize"];

    v13 = +[STSReaderAnalyticsLogger sharedCALogger];
    [v13 postReaderTransactionEvent:v10 prepOnly:1];

    v14 = sub_100024AE0();
    if (os_signpost_enabled(v14))
    {
      *buf = 134217984;
      *&buf[4] = v11;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ISO18013_ProcessHandoverSelectResponse", "response size=%lu", buf, 0xCu);
    }

    connectionHandoverHandler = self->_connectionHandoverHandler;
    v86 = 0;
    v16 = connectionHandoverHandler;
    v17 = sub_100039EBC(v16, responseCopy, &v86);
    ecCurveIdentifier2 = v86;

    if (ecCurveIdentifier2)
    {
      v19 = +[NSDate now];
      v20 = objc_opt_new();
      [v20 setObject:v19 forKeyedSubscript:@"handoverEndEventTime"];
      [v20 setObject:v19 forKeyedSubscript:@"transactionEndEventTime"];
      v21 = [NSNumber numberWithInteger:[(STSISO18013Handler *)ecCurveIdentifier2 code]];
      [v20 setObject:v21 forKeyedSubscript:@"errorCode"];

      v22 = +[STSReaderAnalyticsLogger sharedCALogger];
      v84 = v20;
      [v22 postReaderTransactionEvent:v20 prepOnly:0];

      v23 = sub_100024AE0();
      if (os_signpost_enabled(v23))
      {
        *buf = 138412290;
        *&buf[4] = ecCurveIdentifier2;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_ProcessHandoverSelectResponse", "Failed, Error=%@", buf, 0xCu);
      }

      callbackCopy[2](callbackCopy, ecCurveIdentifier2);
      sub_10002A5B4(self, ecCurveIdentifier2);
LABEL_47:

      goto LABEL_48;
    }

    v83 = v17;
    v25 = [COSEKey alloc];
    v26 = self->_connectionHandoverHandler;
    if (v26)
    {
      v26 = v26->_ephemeralDeviceKey;
    }

    v27 = v26;
    v28 = [v25 initWithData:v27];

    v29 = [COSEKey alloc];
    v30 = self->_connectionHandoverHandler;
    if (v30)
    {
      v30 = v30->_ephemeralReaderKey;
    }

    ecCurveIdentifier = v30;
    v32 = [v29 initWithData:ecCurveIdentifier];

    type = [v32 type];
    v82 = v28;
    v84 = v32;
    if (type != [v28 type])
    {
      goto LABEL_25;
    }

    type2 = [v32 type];
    if (type2 == 2)
    {
      ecCurveIdentifier = [v28 ecCurveIdentifier];
      ecCurveIdentifier2 = [v32 ecCurveIdentifier];
      if (([(STSConnectionHandoverHandler *)ecCurveIdentifier isEqualToNumber:ecCurveIdentifier2]& 1) == 0)
      {

        goto LABEL_25;
      }

      if ([v32 type] != 1)
      {
        v79 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    else if ([v32 type] != 1)
    {
LABEL_23:
      v79 = 0;
LABEL_27:
      iso18013Handler = self->_iso18013Handler;
      v44 = self->_connectionHandoverHandler;
      v45 = iso18013Handler;
      if (v44)
      {
        deviceEngagement = v44->_deviceEngagement;
      }

      else
      {
        deviceEngagement = 0;
      }

      v47 = deviceEngagement;
      v48 = self->_connectionHandoverHandler;
      v49 = v48;
      if (v48)
      {
        handoverRequestMessage = v48->_handoverRequestMessage;
      }

      else
      {
        handoverRequestMessage = 0;
      }

      v51 = handoverRequestMessage;
      v52 = self->_connectionHandoverHandler;
      v53 = v52;
      v81 = responseCopy;
      if (v52)
      {
        handoverSelectMessage = v52->_handoverSelectMessage;
      }

      else
      {
        handoverSelectMessage = 0;
      }

      v55 = handoverSelectMessage;
      sub_100002FCC(v45, v47, v51, v55);

      v56 = self->_iso18013Handler;
      v57 = self->_connectionHandoverHandler;
      v58 = v56;
      if (v57)
      {
        ephemeralReaderKey = v57->_ephemeralReaderKey;
      }

      else
      {
        ephemeralReaderKey = 0;
      }

      v60 = ephemeralReaderKey;
      v61 = sub_1000036F4(v58, v60);

      notificationClient = self->_notificationClient;
      v63 = self->_iso18013Handler;
      v64 = notificationClient;
      if (v63)
      {
        readerCryptor = v63->_readerCryptor;
      }

      else
      {
        readerCryptor = 0;
      }

      v66 = readerCryptor;
      v67 = sub_10002A734(self);
      sub_10000C5E0(v64, v67, v61);

      if ([v83 type] == 1)
      {
        ecCurveIdentifier2 = sub_10002A820(self, v83, 0);
        responseCopy = v81;
      }

      else
      {
        responseCopy = v81;
        if ([v83 type] == 2)
        {
          ecCurveIdentifier2 = sub_10002967C(self, v83, 1);
        }

        else
        {
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelper processHandoverResponse:callback:]", 564, self, @"No valid AC found.", v68, v69, v78);
          v88 = NSLocalizedDescriptionKey;
          *buf = off_100069AA8;
          v70 = [NSDictionary dictionaryWithObjects:buf forKeys:&v88 count:1];
          ecCurveIdentifier2 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:13 userInfo:v70];
        }
      }

      v71 = +[NSDate now];
      [v10 setObject:v71 forKeyedSubscript:@"handoverEndEventTime"];
      v72 = +[STSReaderAnalyticsLogger sharedCALogger];
      [v72 postReaderTransactionEvent:v10 prepOnly:1];

      if (ecCurveIdentifier2)
      {
        v80 = +[NSDate now];
        v73 = objc_opt_new();
        [v73 setObject:v80 forKeyedSubscript:@"transactionEndEventTime"];
        v74 = [NSNumber numberWithInteger:[(STSISO18013Handler *)ecCurveIdentifier2 code]];
        [v73 setObject:v74 forKeyedSubscript:@"errorCode"];

        v75 = +[STSReaderAnalyticsLogger sharedCALogger];
        [v75 postReaderTransactionEvent:v73 prepOnly:0];
      }

      v76 = sub_100024AE0();
      if (os_signpost_enabled(v76))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v76, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_ProcessHandoverSelectResponse", &unk_10005485E, buf, 2u);
      }

      callbackCopy[2](callbackCopy, ecCurveIdentifier2);
      sub_10002A5B4(self, ecCurveIdentifier2);

      v19 = v82;
      v17 = v83;
      goto LABEL_47;
    }

    okpCurveIdentifier = [v28 okpCurveIdentifier];
    v38 = v32;
    v39 = okpCurveIdentifier;
    okpCurveIdentifier2 = [v38 okpCurveIdentifier];
    v41 = [v39 isEqualToNumber:okpCurveIdentifier2];

    if (type2 == 2)
    {
    }

    v28 = v82;
    if (v41)
    {
      goto LABEL_23;
    }

LABEL_25:
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSXPCHelper processHandoverResponse:callback:]", 537, self, @"Device CurveIdentifier does not match Reader curve identifier. Create new Reader Key ", v34, v35, v78);
    v42 = self->_iso18013Handler;
    v85 = 0;
    ecCurveIdentifier2 = v42;
    ecCurveIdentifier = sub_100005F08(ecCurveIdentifier2, v28, &v85);
    v79 = v85;
    sub_100014B64(self->_connectionHandoverHandler, ecCurveIdentifier);
    goto LABEL_26;
  }

  v88 = NSLocalizedDescriptionKey;
  *buf = off_100069A50;
  v24 = [NSDictionary dictionaryWithObjects:buf forKeys:&v88 count:1];
  v10 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v24];

  callbackCopy[2](callbackCopy, v10);
LABEL_48:
}

- (void)processQRCodeHandoverRequestMessage:(id)message callback:(id)callback
{
  messageCopy = message;
  callbackCopy = callback;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper processQRCodeHandoverRequestMessage:callback:]", 593, self, &stru_100059C08, v8, v9, v116);
  if (self && self->_type == 1)
  {
    v10 = objc_opt_new();
    v11 = +[NSDate now];
    v12 = [(STSISO18013Handler *)messageCopy length];
    v128 = v11;
    [v10 setObject:v11 forKeyedSubscript:@"handoverStartEventTime"];
    v13 = [NSNumber numberWithInteger:v12];
    [v10 setObject:v13 forKeyedSubscript:@"handoverRequestSize"];

    v14 = +[STSReaderAnalyticsLogger sharedCALogger];
    [v14 postReaderTransactionEvent:v10 prepOnly:1];

    v15 = sub_100024AE0();
    if (os_signpost_enabled(v15))
    {
      *buf = 134217984;
      *&buf[4] = v12;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ISO18013_ProcessQrCodeHandoverRequest", "request size=%lu", buf, 0xCu);
    }

    connectionHandoverHandler = self->_connectionHandoverHandler;
    v130 = 0;
    v131 = 0;
    v17 = connectionHandoverHandler;
    v18 = sub_100038340(v17, messageCopy, &v131, &v130);
    v19 = v131;
    v20 = v130;

    objc_storeStrong(&self->_selectedAC, v18);
    if (v20)
    {
      v21 = +[NSDate now];
      v22 = objc_opt_new();
      [v22 setObject:&off_10005F658 forKeyedSubscript:@"handoverResponseSize"];
      [v22 setObject:v21 forKeyedSubscript:@"handoverEndEventTime"];
      [v22 setObject:v21 forKeyedSubscript:@"transactionEndEventTime"];
      v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v20 code]);
      [v22 setObject:v23 forKeyedSubscript:@"errorCode"];

      v24 = +[STSReaderAnalyticsLogger sharedCALogger];
      [v24 postReaderTransactionEvent:v22 prepOnly:0];

      v25 = sub_100024AE0();
      if (os_signpost_enabled(v25))
      {
        *buf = 138412290;
        *&buf[4] = v20;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_ProcessQrCodeHandoverRequest", "Failed, Error=%@", buf, 0xCu);
      }

      callbackCopy[2](callbackCopy, v20);
      sub_10002A5B4(self, v20);
LABEL_67:

      goto LABEL_68;
    }

    v127 = v19;
    ecCurveIdentifier = &AnalyticsSendEventLazy_ptr;
    v28 = [COSEKey alloc];
    v29 = self->_connectionHandoverHandler;
    if (v29)
    {
      v29 = v29->_ephemeralDeviceKey;
    }

    v30 = v29;
    v31 = [v28 initWithData:v30];

    v32 = [COSEKey alloc];
    v33 = self->_connectionHandoverHandler;
    v123 = messageCopy;
    if (v33)
    {
      v33 = v33->_ephemeralReaderKey;
    }

    v34 = v33;
    v35 = [v32 initWithData:v34];

    type = [v35 type];
    v124 = v31;
    if (type != [v31 type])
    {
      goto LABEL_25;
    }

    type2 = [v35 type];
    if (type2 == 2)
    {
      ecCurveIdentifier = [v31 ecCurveIdentifier];
      messageCopy = [v35 ecCurveIdentifier];
      if (([ecCurveIdentifier isEqualToNumber:messageCopy] & 1) == 0)
      {

        goto LABEL_25;
      }

      if ([v35 type] != 1)
      {
        v120 = 0;
LABEL_26:

LABEL_27:
        iso18013Handler = self->_iso18013Handler;
        v45 = self->_connectionHandoverHandler;
        v46 = iso18013Handler;
        if (v45)
        {
          deviceEngagement = v45->_deviceEngagement;
        }

        else
        {
          deviceEngagement = 0;
        }

        v48 = deviceEngagement;
        v49 = self->_connectionHandoverHandler;
        v50 = v49;
        if (v49)
        {
          handoverRequestMessage = v49->_handoverRequestMessage;
        }

        else
        {
          handoverRequestMessage = 0;
        }

        v52 = handoverRequestMessage;
        v53 = self->_connectionHandoverHandler;
        v54 = v53;
        v125 = v35;
        if (v53)
        {
          handoverSelectMessage = v53->_handoverSelectMessage;
        }

        else
        {
          handoverSelectMessage = 0;
        }

        v56 = handoverSelectMessage;
        sub_100002FCC(v46, v48, v52, v56);

        v57 = self->_iso18013Handler;
        v58 = self->_connectionHandoverHandler;
        v59 = v57;
        if (v58)
        {
          ephemeralReaderKey = v58->_ephemeralReaderKey;
        }

        else
        {
          ephemeralReaderKey = 0;
        }

        v22 = v125;
        v61 = ephemeralReaderKey;
        v126 = sub_1000036F4(v59, v61);

        notificationClient = self->_notificationClient;
        v63 = self->_iso18013Handler;
        v64 = notificationClient;
        if (v63)
        {
          readerCryptor = v63->_readerCryptor;
        }

        else
        {
          readerCryptor = 0;
        }

        v66 = readerCryptor;
        v67 = sub_10002A734(self);
        sub_10000C5E0(v64, v67, v126);

        type3 = [(STSCHAlternativeCarrier *)self->_selectedAC type];
        selectedAC = self->_selectedAC;
        v122 = callbackCopy;
        if (type3 == 1)
        {
          v70 = selectedAC;
          v20 = sub_10002A820(self, v70, 0);

          p_info = (&OBJC_METACLASS___ISOKey + 32);
          v72 = &AnalyticsSendEventLazy_ptr;
LABEL_61:
          v75 = &AnalyticsSendEventLazy_ptr;
          goto LABEL_62;
        }

        v75 = &AnalyticsSendEventLazy_ptr;
        if ([(STSCHAlternativeCarrier *)selectedAC type]!= 2)
        {
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelper processQRCodeHandoverRequestMessage:callback:]", 666, self, @"No valid AC found.", v73, v74, v117);
          v138[0] = NSLocalizedDescriptionKey;
          *buf = off_100069AA8;
          v81 = [NSDictionary dictionaryWithObjects:buf forKeys:v138 count:1];
          v20 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:13 userInfo:v81];

          v70 = v120;
          p_info = (&OBJC_METACLASS___ISOKey + 32);
          v72 = &AnalyticsSendEventLazy_ptr;
LABEL_62:

          v103 = objc_opt_new();
          v104 = [v75[246] now];
          [v72[224] numberWithInteger:{objc_msgSend(v127, "length")}];
          v106 = v105 = v72;
          [v103 setObject:v106 forKeyedSubscript:@"handoverResponseSize"];

          v121 = v104;
          [v103 setObject:v104 forKeyedSubscript:@"handoverEndEventTime"];
          sharedCALogger = [p_info + 81 sharedCALogger];
          [sharedCALogger postReaderTransactionEvent:v103 prepOnly:1];

          v21 = v124;
          if (v20)
          {
            [v75[246] now];
            v109 = v108 = p_info;
            v110 = objc_opt_new();
            [v110 setObject:v109 forKeyedSubscript:@"transactionEndEventTime"];
            v111 = [v105[224] numberWithInteger:{objc_msgSend(v20, "code")}];
            [v110 setObject:v111 forKeyedSubscript:@"errorCode"];

            v112 = v108 + 81;
            v22 = v125;
            sharedCALogger2 = [v112 sharedCALogger];
            [sharedCALogger2 postReaderTransactionEvent:v110 prepOnly:0];

            v21 = v124;
          }

          v114 = sub_100024AE0();
          if (os_signpost_enabled(v114))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v114, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_ProcessQrCodeHandoverRequest", &unk_10005485E, buf, 2u);
          }

          callbackCopy = v122;
          v122[2](v122, v20);
          sub_10002A5B4(self, v20);

          messageCopy = v123;
          v19 = v127;
          goto LABEL_67;
        }

        v70 = self->_selectedAC;
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper _startQRCodeBleSession:]", 1205, self, @"selectedAc = %@ ", v76, v77, v70);
        leRole = [(STSCHAlternativeCarrier *)v70 leRole];
        v79 = 0;
        if (leRole <= 1)
        {
          if (!leRole)
          {
LABEL_49:
            v80 = @"ReaderCentral";
            v79 = 1;
            goto LABEL_50;
          }

          v80 = 0;
          if (leRole != 1)
          {
LABEL_50:
            v82 = sub_10000E574([STSBluetoothSession alloc], self, v79, self, 0);
            btSession = self->_btSession;
            self->_btSession = v82;

            v84 = self->_connectionHandoverHandler;
            if (v84)
            {
              v85 = v84->_configuration & 8;
            }

            else
            {
              v85 = 0;
            }

            v86 = self->_notificationClient;
            v87 = self->_btSession;
            if (v86)
            {
              objc_storeWeak(&v86->_alternativeCarrier, v87);
            }

            objc_storeWeak(&self->_alternativeCarrier, self->_btSession);
            v88 = self->_connectionHandoverHandler;
            v132 = 0;
            v89 = v88;
            v119 = sub_10003AA34(v89, &v132);
            v90 = v132;

            if (v90)
            {
              v138[0] = NSLocalizedDescriptionKey;
              v138[1] = NSUnderlyingErrorKey;
              *buf = @"Reader Ident calculation error";
              *&buf[8] = v90;
              humanReadableAdvertiseUUID = [NSDictionary dictionaryWithObjects:buf forKeys:v138 count:2];
              v20 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:6 userInfo:humanReadableAdvertiseUUID];
              v92 = v90;
              p_info = (&OBJC_METACLASS___ISOKey + 32);
              v72 = &AnalyticsSendEventLazy_ptr;
              v93 = v119;
            }

            else
            {
              v94 = sub_100024AE0();
              if (os_signpost_enabled(v94))
              {
                advertiseUUID = [(STSCHAlternativeCarrier *)v70 advertiseUUID];
                leAddr = [(STSCHAlternativeCarrier *)v70 leAddr];
                *buf = 138413058;
                *&buf[4] = v80;
                *&buf[12] = 1024;
                *&buf[14] = v85 >> 3;
                v134 = 2112;
                v135 = advertiseUUID;
                v136 = 2112;
                v137 = leAddr;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v94, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "StartBleSession", "%@,l2Cap=%d,selected advertiseUUID=%@,selected leAddr=%@", buf, 0x26u);
              }

              advertiseUUID2 = [(STSCHAlternativeCarrier *)v70 advertiseUUID];
              leAddr2 = [(STSCHAlternativeCarrier *)v70 leAddr];
              sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper _startQRCodeBleSession:]", 1238, self, @"Starting %@,l2Cap=%d,selected advertiseUUID=%@,selected leAddr=%@", v98, v99, v80);

              v100 = self->_btSession;
              humanReadableAdvertiseUUID = [(STSCHAlternativeCarrier *)v70 humanReadableAdvertiseUUID];
              humanReadableLEAddress = [(STSCHAlternativeCarrier *)v70 humanReadableLEAddress];
              v102 = v85 != 0;
              v93 = v119;
              v20 = sub_10000E6A4(v100, humanReadableAdvertiseUUID, humanReadableLEAddress, v102, v119);

              p_info = &OBJC_METACLASS___ISOKey.info;
              v72 = &AnalyticsSendEventLazy_ptr;
              v92 = 0;
            }

            v22 = v125;
            goto LABEL_60;
          }
        }

        else
        {
          if (leRole == 4)
          {
            v138[0] = NSLocalizedDescriptionKey;
            *buf = off_100069A50;
            v115 = [NSDictionary dictionaryWithObjects:buf forKeys:v138 count:1];
            v20 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v115];

            p_info = (&OBJC_METACLASS___ISOKey + 32);
            v72 = &AnalyticsSendEventLazy_ptr;
LABEL_60:

            goto LABEL_61;
          }

          if (leRole != 3)
          {
            v80 = 0;
            if (leRole != 2)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          }
        }

        v79 = 0;
        v80 = @"ReaderPeripheral";
        goto LABEL_50;
      }
    }

    else if ([v35 type] != 1)
    {
LABEL_23:
      v120 = 0;
      goto LABEL_27;
    }

    okpCurveIdentifier = [v31 okpCurveIdentifier];
    okpCurveIdentifier2 = [v35 okpCurveIdentifier];
    v42 = [okpCurveIdentifier isEqualToNumber:okpCurveIdentifier2];

    if (type2 == 2)
    {
    }

    v31 = v124;
    if (v42)
    {
      goto LABEL_23;
    }

LABEL_25:
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSXPCHelper processQRCodeHandoverRequestMessage:callback:]", 641, self, @"Device CurveIdentifier does not match Reader ecCurveIdentifier. Create new Reader Key ", v37, v38, v117);
    v43 = self->_iso18013Handler;
    v129 = 0;
    messageCopy = v43;
    ecCurveIdentifier = sub_100005F08(messageCopy, v31, &v129);
    v120 = v129;
    sub_100014B64(self->_connectionHandoverHandler, ecCurveIdentifier);
    goto LABEL_26;
  }

  v138[0] = NSLocalizedDescriptionKey;
  *buf = off_100069A50;
  v26 = [NSDictionary dictionaryWithObjects:buf forKeys:v138 count:1];
  v10 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v26];

  callbackCopy[2](callbackCopy, v10);
LABEL_68:
}

- (void)invalidateWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = +[NSXPCConnection currentConnection];
  processIdentifier = [v8 processIdentifier];
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper invalidateWithCompletion:]", 699, self, @"PID=%d", v6, v7, processIdentifier);
  [STSXPCHelper xpcInvalidated]_0(self);
  completionCopy[2](completionCopy);
}

- (void)xpcInvalidated
{
  if (self)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v8 = sub_10002DDD8;
    v9 = &unk_100058AF8;
    selfCopy = self;
    v11 = &v12;
    v2 = v7;
    os_unfair_lock_lock(self + 4);
    v8(v2);
    os_unfair_lock_unlock(self + 4);

    if (*(v13 + 24) == 1)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper _invalidate]", 1053, self, @"Previously invalidated", v3, v4, v5);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002DE08;
      block[3] = &unk_100058A08;
      block[4] = self;
      sub_10002C7B4(self, block, QOS_CLASS_USER_INITIATED);
    }

    _Block_object_dispose(&v12, 8);
  }
}

- (void)testWifiHandoverSessionWithServiceName:(id)name publisherRole:(BOOL)role datapathPMK:(id)k datapathPMKID:(id)d callback:(id)callback
{
  kCopy = k;
  dCopy = d;
  callbackCopy = callback;
  nameCopy = name;
  if ([kCopy length])
  {
    v15 = [[STSCHWiFiAwareSecurityInfo alloc] initWithPMK:kCopy pmkID:dCopy];
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_alloc_init(STSWifiAwareConfigurationParams);
  sub_100002540(v16, v15);
  v17 = sub_1000025D4(STSWifiAwareConfiguration, nameCopy, role, v16);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper testWifiHandoverSessionWithServiceName:publisherRole:datapathPMK:datapathPMKID:callback:]", 720, self, @"config=%@", v18, v19, v17);
  v20 = os_transaction_create();
  sub_100027558(self, v20);

  v21 = sub_100021234([STSWifiSession alloc], self, v17, self, 0);
  v22 = v21;
  if (self)
  {
    objc_storeStrong(&self->_wifiSession, v21);

    v23 = self->_wifiSession;
    notificationClient = self->_notificationClient;
    if (notificationClient)
    {
      objc_storeWeak(&notificationClient->_alternativeCarrier, v23);
    }

    v32 = self->_notificationClient;
    if (v32)
    {
      v32->_testRawTransceiveEnable = 1;
    }

    wifiSession = self->_wifiSession;
  }

  else
  {

    wifiSession = 0;
  }

  v34 = sub_1000213BC(wifiSession, v25, v26, v27, v28, v29, v30, v31);
  callbackCopy[2](callbackCopy, 0);
}

- (void)testBluetoothHandoverSessionType:(unint64_t)type uuid:(id)uuid peripheralAddress:(id)address callback:(id)callback
{
  callbackCopy = callback;
  addressCopy = address;
  uuidCopy = uuid;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper testBluetoothHandoverSessionType:uuid:peripheralAddress:callback:]", 735, self, @"type=%lu,uuid=%@,peripheralAddress=%@", v12, v13, type);
  if ((type & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v14 = +[(ISO18013_3_Peripheral *)ReaderPeripheral];
    sTS_reverseBytes = [v14 STS_reverseBytes];
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper testBluetoothHandoverSessionType:uuid:peripheralAddress:callback:]", 738, self, @"PublicAddress=%@", v16, v17, sTS_reverseBytes);
  }

  if (type - 1 >= 3)
  {
    type = 0;
  }

  v18 = os_transaction_create();
  sub_100027558(self, v18);

  v19 = sub_10000E574([STSBluetoothSession alloc], self, type, self, 0);
  if (self)
  {
    objc_storeStrong(&self->_btSession, v19);
  }

  v20 = [[NSMutableData alloc] initWithLength:16];
  if (self)
  {
    btSession = self->_btSession;
  }

  else
  {
    btSession = 0;
  }

  v22 = sub_10000E6A4(btSession, uuidCopy, addressCopy, 0, v20);

  if (!v22 && self)
  {
    v23 = self->_btSession;
    notificationClient = self->_notificationClient;
    if (notificationClient)
    {
      objc_storeWeak(&notificationClient->_alternativeCarrier, v23);
    }

    v25 = self->_notificationClient;
    if (v25)
    {
      v25->_testRawTransceiveEnable = 1;
    }
  }

  callbackCopy[2](callbackCopy, v22);
}

- (void)altCarrierReceived:(id)received status:(id)status
{
  receivedCopy = received;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BFD0;
  block[3] = &unk_100059168;
  block[4] = self;
  statusCopy = status;
  v11 = receivedCopy;
  v7 = receivedCopy;
  v8 = statusCopy;
  sub_10002C7B4(self, block, QOS_CLASS_USER_INTERACTIVE);
}

- (void)altCarrierConnectedWithStatus:(unint64_t)status
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002C88C;
  v3[3] = &unk_100058DE0;
  v3[4] = self;
  v3[5] = status;
  sub_10002C7B4(self, v3, QOS_CLASS_USER_INTERACTIVE);
}

- (void)altCarrierDisconnectedWithStatus:(unint64_t)status
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002CDEC;
  v3[3] = &unk_100058DE0;
  v3[4] = self;
  v3[5] = status;
  sub_10002C7B4(self, v3, QOS_CLASS_USER_INTERACTIVE);
}

- (void)receivedCredentialSelection:(id)selection callback:(id)callback
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002CFD4;
  block[3] = &unk_100059190;
  selfCopy = self;
  selectionCopy = selection;
  callbackCopy = callback;
  v5 = callbackCopy;
  v6 = selectionCopy;
  sub_10002C7B4(selfCopy, block, QOS_CLASS_USER_INTERACTIVE);
}

- (void)iso18013ReaderSendSessionEstablishment:(id)establishment callback:(id)callback
{
  establishmentCopy = establishment;
  callbackCopy = callback;
  v8 = [establishmentCopy length];
  v9 = objc_opt_new();
  v10 = [NSNumber numberWithInteger:v8];
  [v9 setObject:v10 forKeyedSubscript:@"requestSize"];

  v11 = +[STSReaderAnalyticsLogger sharedCALogger];
  [v11 postReaderTransactionEvent:v9 prepOnly:1];

  v12 = sub_100024AE0();
  if (os_signpost_enabled(v12))
  {
    if (self)
    {
      type = self->_type;
    }

    else
    {
      type = 0;
    }

    *buf = 134218240;
    v20 = type;
    v21 = 2048;
    v22 = v8;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ISO18013_GenerateMDocRequest", "type=%lu requestSize = %lu", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D58C;
  block[3] = &unk_100059190;
  block[4] = self;
  v17 = establishmentCopy;
  v18 = callbackCopy;
  v14 = callbackCopy;
  v15 = establishmentCopy;
  sub_10002C7B4(self, block, QOS_CLASS_USER_INTERACTIVE);
}

- (void)iso18013ReaderSendSessionData:(id)data status:(id)status callback:(id)callback
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002D9BC;
  v10[3] = &unk_1000594E0;
  selfCopy = self;
  dataCopy = data;
  statusCopy = status;
  callbackCopy = callback;
  v7 = callbackCopy;
  v8 = statusCopy;
  v9 = dataCopy;
  sub_10002C7B4(selfCopy, v10, QOS_CLASS_USER_INTERACTIVE);
}

- (void)setRequestHandoverConfirmation:(BOOL)confirmation
{
  if (self)
  {
    self->_handoverConfirmation = confirmation;
  }
}

- (id)startHandoff
{
  if (self && self->_handoverConfirmation)
  {
    v5 = +[NSDate now];
    v6 = sub_100028A90(self, v5);

    if (!v6)
    {
      sub_10000B784(self->_notificationClient, 0);
    }
  }

  else
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper startHandoff]", 997, self, @"Auto connect is enabled", v2, v3, v9);
    v10 = NSLocalizedDescriptionKey;
    v11 = off_100069A50;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v6 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v7];
  }

  return v6;
}

@end