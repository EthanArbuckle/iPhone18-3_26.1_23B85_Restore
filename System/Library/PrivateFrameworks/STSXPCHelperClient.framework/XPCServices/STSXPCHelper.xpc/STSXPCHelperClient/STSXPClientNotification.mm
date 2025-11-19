@interface STSXPClientNotification
- (void)dealloc;
- (void)getRemoteTransceiverProxyXPCEndpointWithType:(unint64_t)a3 callback:(id)a4;
- (void)iso18013ReaderSendSessionData:(id)a3 status:(id)a4 callback:(id)a5;
- (void)iso18013ReaderSendSessionEstablishment:(id)a3 callback:(id)a4;
- (void)sendConnectionHandoverCompleted;
- (void)sendConnectionHandoverStarted;
- (void)sendCredentialSelect:(id)a3 callback:(id)a4;
- (void)sendRawDataToAlternativeCarrier:(id)a3 callback:(id)a4;
- (void)startHandoffWithCompletion:(id)a3;
@end

@implementation STSXPClientNotification

- (void)dealloc
{
  v2 = self;
  if (self)
  {
    self = self->_xpc;
  }

  [(STSXPClientNotification *)self invalidate];
  v3.receiver = v2;
  v3.super_class = STSXPClientNotification;
  [(STSXPClientNotification *)&v3 dealloc];
}

- (void)sendRawDataToAlternativeCarrier:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSXPClientNotification sendRawDataToAlternativeCarrier:callback:]", 179, self, @"data: %@", v8, v9, v6);
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
    v17 = v7;
    [v13 altCarrierSendData:v6 completion:v16];

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

    (*(v7 + 2))(v7, v13);
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

- (void)getRemoteTransceiverProxyXPCEndpointWithType:(unint64_t)a3 callback:(id)a4
{
  v6 = a4;
  v8 = v6;
  if (!a3)
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

  if (a3 == 1)
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

  v6[2](v6, 0);
LABEL_10:
}

- (void)sendCredentialSelect:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPClientNotification sendCredentialSelect:callback:]", 253, self, &stru_100059C08, v8, v9, v11);
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000CD68;
  v12[3] = &unk_100058AD0;
  v13 = v7;
  v10 = v7;
  [(STSXPClientNotification *)self receivedCredentialSelection:v6 callback:v12];
}

- (void)iso18013ReaderSendSessionEstablishment:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    v7[2](v7, v15);
    goto LABEL_8;
  }

  if (![v6 length])
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPClientNotification iso18013ReaderSendSessionEstablishment:callback:]", 275, self, @"SessionEstablishment is empty", v13, v14, v19);
    v20 = NSLocalizedDescriptionKey;
    v21 = off_100069A58;
    v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v17 = 3;
    goto LABEL_7;
  }

  v15 = objc_loadWeakRetained(&self->_delegate);
  [v15 iso18013ReaderSendSessionEstablishment:v6 callback:v7];
LABEL_8:
}

- (void)iso18013ReaderSendSessionData:(id)a3 status:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPClientNotification iso18013ReaderSendSessionData:status:callback:]", 286, self, &stru_100059C08, v11, v12, v18);
  if (self && (v15 = objc_loadWeakRetained(&self->_alternativeCarrier), v15, v15))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained iso18013ReaderSendSessionData:v8 status:v9 callback:v10];
  }

  else
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPClientNotification iso18013ReaderSendSessionData:status:callback:]", 288, self, @"AC not initialized", v13, v14, v19);
    v20 = NSLocalizedDescriptionKey;
    v21 = off_100069A50;
    v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    WeakRetained = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v17];

    v10[2](v10, WeakRetained);
  }
}

- (void)startHandoffWithCompletion:(id)a3
{
  v5 = a3;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  v4 = [(STSXPClientNotification *)self startHandoff];
  v5[2](v5, v4);
}

@end