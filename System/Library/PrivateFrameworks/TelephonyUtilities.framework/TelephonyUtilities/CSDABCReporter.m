@interface CSDABCReporter
- (CSDABCReporter)initWithQueue:(id)a3;
- (CSDABCReporter)initWithQueue:(id)a3 block:(id)a4;
- (id)stringForIDSSessionEndedReason:(unsigned int)a3;
- (id)stringForIMAVChatEndedReason:(unsigned int)a3;
- (id)stringForSignatureType:(unint64_t)a3;
- (id)stringRepresentationForTUCallDisconnectedReason:(int)a3;
- (void)reportingController:(id)a3 forCallUUID:(id)a4 report:(id)a5;
- (void)reportingController:(id)a3 statusChangedForCall:(id)a4 totalCallCount:(unint64_t)a5;
@end

@implementation CSDABCReporter

- (CSDABCReporter)initWithQueue:(id)a3
{
  v4 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100236810;
  v9[3] = &unk_10061F2D8;
  v10 = [[SDRDiagnosticReporter alloc] initWithQueue:v4];
  v5 = v10;
  v6 = objc_retainBlock(v9);
  v7 = [(CSDABCReporter *)self initWithQueue:v4 block:v6];

  return v7;
}

- (CSDABCReporter)initWithQueue:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CSDABCReporter;
  v9 = [(CSDABCReporter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    v11 = objc_retainBlock(v8);
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

- (void)reportingController:(id)a3 forCallUUID:(id)a4 report:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDABCReporter *)self stringForSignatureType:1];
  v10 = TUCallTUStartCallActionDuration;
  v11 = [v8 objectForKey:TUCallTUStartCallActionDuration];

  if (v11)
  {
    v12 = [v8 objectForKeyedSubscript:v10];
    v17 = @"CallUUID";
    v18 = v7;
    v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = [(CSDABCReporter *)self block];
    (v14)[2](v14, v9, @"StartCallAction duration unexpected", v12, v13);
  }

  else
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unknown report: %@", &v15, 0xCu);
    }
  }
}

- (void)reportingController:(id)a3 statusChangedForCall:(id)a4 totalCallCount:(unint64_t)a5
{
  v6 = a4;
  v7 = -[CSDABCReporter stringRepresentationForTUCallDisconnectedReason:](self, "stringRepresentationForTUCallDisconnectedReason:", [v6 disconnectedReason]);
  v9 = [v6 status] == 6 && v7 != 0;
  v10 = [v6 provider];
  v11 = [v10 identifier];

  if (!v11 && v9)
  {
    v12 = [(CSDABCReporter *)self stringForSignatureType:0];
    v33 = @"CallUUID";
    v13 = [v6 uniqueProxyIdentifier];
    v34 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    v15 = [(CSDABCReporter *)self block];
    (v15)[2](v15, v12, @"nilCallProvider", 0, v14);
LABEL_24:

    goto LABEL_25;
  }

  v16 = [v6 provider];
  v17 = [v16 isFaceTimeProvider] & v9;

  if (v17 == 1)
  {
    v12 = [(CSDABCReporter *)self stringForSignatureType:0];
    v18 = [v6 providerErrorCode];
    v19 = [v6 providerContext];
    v20 = TUCallFaceTimeTransportTypeKey;
    v21 = [v19 objectForKeyedSubscript:TUCallFaceTimeTransportTypeKey];
    if (v21)
    {
      v22 = v21;
      v23 = [v6 providerContext];
      v24 = [v23 objectForKeyedSubscript:v20];
      v25 = [v24 integerValue];

      if (v25)
      {
        if (v25 == 1)
        {
          v26 = [(CSDABCReporter *)self stringForIMAVChatEndedReason:v18];
        }

        else
        {
          if (v25 != 2)
          {
            v14 = 0;
LABEL_20:
            if ([v6 isConversation])
            {
              if ([v6 disconnectedReason] != 49)
              {
                if ([v6 disconnectedReason] != 14 && objc_msgSend(v6, "disconnectedReason") != 17)
                {
                  goto LABEL_23;
                }

                v29 = [v6 providerEndedReason];
                if (v29 <= 505)
                {
                  if (v29 > 499)
                  {
                    if (v29 == 500)
                    {

                      v14 = @"AVC blob recovery timeout";
                      goto LABEL_23;
                    }

                    if (v29 == 505)
                    {

                      v14 = @"No AVC error reason given";
                      goto LABEL_23;
                    }
                  }

                  else
                  {
                    if (!v29)
                    {
                      v30 = [v6 disconnectedReason];

                      if (v30 == 17)
                      {
                        v14 = @"Unknown Dial Failure for Conversation";
                      }

                      else
                      {
                        v14 = @"Unknown Call Failure for Conversation";
                      }

                      goto LABEL_23;
                    }

                    if (v29 == 5)
                    {

                      v14 = @"Mediaserverd crash";
                      goto LABEL_23;
                    }
                  }
                }

                else
                {
                  if (v29 <= 507)
                  {
                    if (v29 == 506)
                    {

                      v14 = @"AVC session did not start";
                    }

                    else
                    {

                      v14 = @"AVC audio client did not start";
                    }

                    goto LABEL_23;
                  }

                  switch(v29)
                  {
                    case 508:

                      v14 = @"Join call action failed";
                      goto LABEL_23;
                    case 512:

                      v14 = @"Hold call action failed";
                      goto LABEL_23;
                    case 533:

                      v14 = @"No conversation participant";
                      goto LABEL_23;
                  }
                }

                if ((v29 - 3202800) < 0x64)
                {

                  v14 = @"Bad API usage";
                }

                goto LABEL_23;
              }

              v14 = @"No FaceTime account signed in";
            }

LABEL_23:
            v31 = @"CallUUID";
            v27 = [v6 uniqueProxyIdentifier];
            v32 = v27;
            v15 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];

            v28 = [(CSDABCReporter *)self block];
            (v28)[2](v28, v12, v14, 0, v15);

            goto LABEL_24;
          }

          v26 = [(CSDABCReporter *)self stringForIDSSessionEndedReason:v18];
        }

LABEL_19:
        v14 = v26;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v26 = v7;
    goto LABEL_19;
  }

LABEL_25:
}

- (id)stringRepresentationForTUCallDisconnectedReason:(int)a3
{
  if ((a3 - 8) > 0x10)
  {
    return 0;
  }

  else
  {
    return off_10061F2F8[a3 - 8];
  }
}

- (id)stringForIDSSessionEndedReason:(unsigned int)a3
{
  if (a3 > 0x31)
  {
    return &stru_100631E68;
  }

  else
  {
    return off_10061F380[a3];
  }
}

- (id)stringForIMAVChatEndedReason:(unsigned int)a3
{
  if (a3 > 0x1F)
  {
    return &stru_100631E68;
  }

  else
  {
    return off_10061F510[a3];
  }
}

- (id)stringForSignatureType:(unint64_t)a3
{
  if (a3)
  {
    return @"Call Info";
  }

  else
  {
    return @"Call Failure";
  }
}

@end