@interface STSXPClientNotification
- (void)dealloc;
- (void)getRemoteTransceiverProxyXPCEndpointWithType:(unint64_t)type callback:(id)callback;
- (void)iso18013ReaderSendSessionData:(id)data status:(id)status callback:(id)callback;
- (void)iso18013ReaderSendSessionEstablishment:(id)establishment callback:(id)callback;
- (void)sendConnectionHandoverCompleted;
- (void)sendConnectionHandoverStarted;
- (void)sendCredentialSelect:(id)select callback:(id)callback;
- (void)sendRawDataToAlternativeCarrier:(id)carrier callback:(id)callback;
- (void)startHandoffWithCompletion:(id)completion;
@end

@implementation STSXPClientNotification

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    self = self->_xpc;
  }

  [(STSXPClientNotification *)self invalidate];
  v3.receiver = selfCopy;
  v3.super_class = STSXPClientNotification;
  [(STSXPClientNotification *)&v3 dealloc];
}

- (void)sendRawDataToAlternativeCarrier:(id)carrier callback:(id)callback
{
  carrierCopy = carrier;
  callbackCopy = callback;
  sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSXPClientNotification sendRawDataToAlternativeCarrier:callback:]", 179, self, @"data: %@", v8, v9, carrierCopy);
  if (self && (WeakRetained = objc_loadWeakRetained(&self->_alternativeCarrier)) != 0)
  {
    v13 = WeakRetained;
    objc_initWeak(&location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000C904;
    v16[3] = &unk_100058AA8;
    objc_copyWeak(&v18, &location);
    v16[4] = self;
    v17 = callbackCopy;
    [v13 altCarrierSendData:carrierCopy completion:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPClientNotification sendRawDataToAlternativeCarrier:callback:]", 195, self, @"AC not initialized", v10, v11, v15);
    v19 = NSLocalizedDescriptionKey;
    location = off_100069A50;
    v14 = [NSDictionary dictionaryWithObjects:&location forKeys:&v19 count:1];
    v13 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v14];

    (*(callbackCopy + 2))(callbackCopy, v13);
  }
}

- (void)sendConnectionHandoverStarted
{
  v2 = +[NSDate now];
  v5 = @"handoverStartEventTime";
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = +[STSAnalyticsLogger sharedCALogger];
  [v4 postISOHandoverEvent:v3 prepOnly:1];
}

- (void)sendConnectionHandoverCompleted
{
  v2 = +[NSDate now];
  v5 = @"handoverEndEventTime";
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = +[STSAnalyticsLogger sharedCALogger];
  [v4 postISOHandoverEvent:v3 prepOnly:0];
}

- (void)getRemoteTransceiverProxyXPCEndpointWithType:(unint64_t)type callback:(id)callback
{
  callbackCopy = callback;
  v8 = callbackCopy;
  if (!type)
  {
    if (self)
    {
      p_nfcReaderProxyConnection = &self->_nfcReaderProxyConnection;
      goto LABEL_7;
    }

LABEL_8:
    v8[2](v8, self);

    goto LABEL_10;
  }

  if (type == 1)
  {
    if (self)
    {
      p_nfcReaderProxyConnection = &self->_seProxyConnection;
LABEL_7:
      self = objc_loadWeakRetained(p_nfcReaderProxyConnection);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  callbackCopy[2](callbackCopy, 0);
LABEL_10:
}

- (void)sendCredentialSelect:(id)select callback:(id)callback
{
  selectCopy = select;
  callbackCopy = callback;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPClientNotification sendCredentialSelect:callback:]", 253, self, &stru_100059C08, v8, v9, v11);
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000CD68;
  v12[3] = &unk_100058AD0;
  v13 = callbackCopy;
  v10 = callbackCopy;
  [(STSXPClientNotification *)self receivedCredentialSelection:selectCopy callback:v12];
}

- (void)iso18013ReaderSendSessionEstablishment:(id)establishment callback:(id)callback
{
  establishmentCopy = establishment;
  callbackCopy = callback;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPClientNotification iso18013ReaderSendSessionEstablishment:callback:]", 267, self, &stru_100059C08, v8, v9, v18);
  if (!self || (WeakRetained = objc_loadWeakRetained(&self->_alternativeCarrier), WeakRetained, !WeakRetained))
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPClientNotification iso18013ReaderSendSessionEstablishment:callback:]", 269, self, @"AC not initialized", v10, v11, v19);
    v20 = NSLocalizedDescriptionKey;
    v21 = off_100069A50;
    v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v17 = 2;
LABEL_7:
    v15 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:v17 userInfo:v16];

    callbackCopy[2](callbackCopy, v15);
    goto LABEL_8;
  }

  if (![establishmentCopy length])
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPClientNotification iso18013ReaderSendSessionEstablishment:callback:]", 275, self, @"SessionEstablishment is empty", v13, v14, v19);
    v20 = NSLocalizedDescriptionKey;
    v21 = off_100069A58;
    v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v17 = 3;
    goto LABEL_7;
  }

  v15 = objc_loadWeakRetained(&self->_delegate);
  [v15 iso18013ReaderSendSessionEstablishment:establishmentCopy callback:callbackCopy];
LABEL_8:
}

- (void)iso18013ReaderSendSessionData:(id)data status:(id)status callback:(id)callback
{
  dataCopy = data;
  statusCopy = status;
  callbackCopy = callback;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPClientNotification iso18013ReaderSendSessionData:status:callback:]", 286, self, &stru_100059C08, v11, v12, v18);
  if (self && (v15 = objc_loadWeakRetained(&self->_alternativeCarrier), v15, v15))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained iso18013ReaderSendSessionData:dataCopy status:statusCopy callback:callbackCopy];
  }

  else
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPClientNotification iso18013ReaderSendSessionData:status:callback:]", 288, self, @"AC not initialized", v13, v14, v19);
    v20 = NSLocalizedDescriptionKey;
    v21 = off_100069A50;
    v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    WeakRetained = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v17];

    callbackCopy[2](callbackCopy, WeakRetained);
  }
}

- (void)startHandoffWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  startHandoff = [(STSXPClientNotification *)self startHandoff];
  completionCopy[2](completionCopy, startHandoff);
}

@end