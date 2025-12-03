@interface CSDABCReporter
- (CSDABCReporter)initWithQueue:(id)queue;
- (CSDABCReporter)initWithQueue:(id)queue block:(id)block;
- (id)stringForIDSSessionEndedReason:(unsigned int)reason;
- (id)stringForIMAVChatEndedReason:(unsigned int)reason;
- (id)stringForSignatureType:(unint64_t)type;
- (id)stringRepresentationForTUCallDisconnectedReason:(int)reason;
- (void)reportingController:(id)controller forCallUUID:(id)d report:(id)report;
- (void)reportingController:(id)controller statusChangedForCall:(id)call totalCallCount:(unint64_t)count;
@end

@implementation CSDABCReporter

- (CSDABCReporter)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100236810;
  v9[3] = &unk_10061F2D8;
  v10 = [[SDRDiagnosticReporter alloc] initWithQueue:queueCopy];
  v5 = v10;
  v6 = objc_retainBlock(v9);
  v7 = [(CSDABCReporter *)self initWithQueue:queueCopy block:v6];

  return v7;
}

- (CSDABCReporter)initWithQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = CSDABCReporter;
  v9 = [(CSDABCReporter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = objc_retainBlock(blockCopy);
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

- (void)reportingController:(id)controller forCallUUID:(id)d report:(id)report
{
  dCopy = d;
  reportCopy = report;
  v9 = [(CSDABCReporter *)self stringForSignatureType:1];
  v10 = TUCallTUStartCallActionDuration;
  v11 = [reportCopy objectForKey:TUCallTUStartCallActionDuration];

  if (v11)
  {
    v12 = [reportCopy objectForKeyedSubscript:v10];
    v17 = @"CallUUID";
    v18 = dCopy;
    v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    block = [(CSDABCReporter *)self block];
    (block)[2](block, v9, @"StartCallAction duration unexpected", v12, v13);
  }

  else
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = reportCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unknown report: %@", &v15, 0xCu);
    }
  }
}

- (void)reportingController:(id)controller statusChangedForCall:(id)call totalCallCount:(unint64_t)count
{
  callCopy = call;
  v7 = -[CSDABCReporter stringRepresentationForTUCallDisconnectedReason:](self, "stringRepresentationForTUCallDisconnectedReason:", [callCopy disconnectedReason]);
  v9 = [callCopy status] == 6 && v7 != 0;
  provider = [callCopy provider];
  identifier = [provider identifier];

  if (!identifier && v9)
  {
    v12 = [(CSDABCReporter *)self stringForSignatureType:0];
    v33 = @"CallUUID";
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v34 = uniqueProxyIdentifier;
    v14 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    block = [(CSDABCReporter *)self block];
    (block)[2](block, v12, @"nilCallProvider", 0, v14);
LABEL_24:

    goto LABEL_25;
  }

  provider2 = [callCopy provider];
  v17 = [provider2 isFaceTimeProvider] & v9;

  if (v17 == 1)
  {
    v12 = [(CSDABCReporter *)self stringForSignatureType:0];
    providerErrorCode = [callCopy providerErrorCode];
    providerContext = [callCopy providerContext];
    v20 = TUCallFaceTimeTransportTypeKey;
    v21 = [providerContext objectForKeyedSubscript:TUCallFaceTimeTransportTypeKey];
    if (v21)
    {
      v22 = v21;
      providerContext2 = [callCopy providerContext];
      v24 = [providerContext2 objectForKeyedSubscript:v20];
      integerValue = [v24 integerValue];

      if (integerValue)
      {
        if (integerValue == 1)
        {
          v26 = [(CSDABCReporter *)self stringForIMAVChatEndedReason:providerErrorCode];
        }

        else
        {
          if (integerValue != 2)
          {
            v14 = 0;
LABEL_20:
            if ([callCopy isConversation])
            {
              if ([callCopy disconnectedReason] != 49)
              {
                if ([callCopy disconnectedReason] != 14 && objc_msgSend(callCopy, "disconnectedReason") != 17)
                {
                  goto LABEL_23;
                }

                providerEndedReason = [callCopy providerEndedReason];
                if (providerEndedReason <= 505)
                {
                  if (providerEndedReason > 499)
                  {
                    if (providerEndedReason == 500)
                    {

                      v14 = @"AVC blob recovery timeout";
                      goto LABEL_23;
                    }

                    if (providerEndedReason == 505)
                    {

                      v14 = @"No AVC error reason given";
                      goto LABEL_23;
                    }
                  }

                  else
                  {
                    if (!providerEndedReason)
                    {
                      disconnectedReason = [callCopy disconnectedReason];

                      if (disconnectedReason == 17)
                      {
                        v14 = @"Unknown Dial Failure for Conversation";
                      }

                      else
                      {
                        v14 = @"Unknown Call Failure for Conversation";
                      }

                      goto LABEL_23;
                    }

                    if (providerEndedReason == 5)
                    {

                      v14 = @"Mediaserverd crash";
                      goto LABEL_23;
                    }
                  }
                }

                else
                {
                  if (providerEndedReason <= 507)
                  {
                    if (providerEndedReason == 506)
                    {

                      v14 = @"AVC session did not start";
                    }

                    else
                    {

                      v14 = @"AVC audio client did not start";
                    }

                    goto LABEL_23;
                  }

                  switch(providerEndedReason)
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

                if ((providerEndedReason - 3202800) < 0x64)
                {

                  v14 = @"Bad API usage";
                }

                goto LABEL_23;
              }

              v14 = @"No FaceTime account signed in";
            }

LABEL_23:
            v31 = @"CallUUID";
            uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
            v32 = uniqueProxyIdentifier2;
            block = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];

            block2 = [(CSDABCReporter *)self block];
            (block2)[2](block2, v12, v14, 0, block);

            goto LABEL_24;
          }

          v26 = [(CSDABCReporter *)self stringForIDSSessionEndedReason:providerErrorCode];
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

- (id)stringRepresentationForTUCallDisconnectedReason:(int)reason
{
  if ((reason - 8) > 0x10)
  {
    return 0;
  }

  else
  {
    return off_10061F2F8[reason - 8];
  }
}

- (id)stringForIDSSessionEndedReason:(unsigned int)reason
{
  if (reason > 0x31)
  {
    return &stru_100631E68;
  }

  else
  {
    return off_10061F380[reason];
  }
}

- (id)stringForIMAVChatEndedReason:(unsigned int)reason
{
  if (reason > 0x1F)
  {
    return &stru_100631E68;
  }

  else
  {
    return off_10061F510[reason];
  }
}

- (id)stringForSignatureType:(unint64_t)type
{
  if (type)
  {
    return @"Call Info";
  }

  else
  {
    return @"Call Failure";
  }
}

@end