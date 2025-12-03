@interface STSTransactionEndEvent
- (STSTransactionEndEvent)initWithCredential:(id)credential andDigitalCarKeyEndEvent:(id)event;
- (STSTransactionEndEvent)initWithCredential:(id)credential andNearFieldEndEvent:(id)event;
@end

@implementation STSTransactionEndEvent

- (STSTransactionEndEvent)initWithCredential:(id)credential andNearFieldEndEvent:(id)event
{
  credentialCopy = credential;
  eventCopy = event;
  v17.receiver = self;
  v17.super_class = STSTransactionEndEvent;
  v8 = [(STSTransactionEndEvent *)&v17 init];
  v9 = v8;
  if (v8)
  {
    [(STSTransactionEndEvent *)v8 setCredential:credentialCopy];
    -[STSTransactionEndEvent setBackground:](v9, "setBackground:", [eventCopy background]);
    parsedInfo = [eventCopy parsedInfo];
    [(STSTransactionEndEvent *)v9 setParsedInfo:parsedInfo];

    readerIdentifier = [eventCopy readerIdentifier];
    [(STSTransactionEndEvent *)v9 setReaderIdentifier:readerIdentifier];

    keyIdentifier = [eventCopy keyIdentifier];
    [(STSTransactionEndEvent *)v9 setKeyIdentifier:keyIdentifier];

    transactionIdentifier = [eventCopy transactionIdentifier];
    [(STSTransactionEndEvent *)v9 setTransactionIdentifier:transactionIdentifier];

    if ([eventCopy didError])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    [(STSTransactionEndEvent *)v9 setStatus:v14];
    -[STSTransactionEndEvent setAnonymousCredentialInfoSharing:](v9, "setAnonymousCredentialInfoSharing:", [credentialCopy type] == 5);
    v15 = [eventCopy result] + 4092;
    if (v15 <= 2u)
    {
      [(STSTransactionEndEvent *)v9 setStatus:v15 | 8u];
    }
  }

  return v9;
}

- (STSTransactionEndEvent)initWithCredential:(id)credential andDigitalCarKeyEndEvent:(id)event
{
  credentialCopy = credential;
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = STSTransactionEndEvent;
  v8 = [(STSTransactionEndEvent *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(STSTransactionEndEvent *)v8 setAnonymousCredentialInfoSharing:0];
    [(STSTransactionEndEvent *)v9 setBackground:0];
    [(STSTransactionEndEvent *)v9 setReaderIdentifier:0];
    [(STSTransactionEndEvent *)v9 setTransactionIdentifier:0];
    [(STSTransactionEndEvent *)v9 setParsedInfo:0];
    [(STSTransactionEndEvent *)v9 setCredential:credentialCopy];
    keyIdentifier = [eventCopy keyIdentifier];
    [(STSTransactionEndEvent *)v9 setKeyIdentifier:keyIdentifier];

    if ([eventCopy didError])
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    [(STSTransactionEndEvent *)v9 setStatus:v11];
    v12 = [eventCopy result] - 61444;
    if (v12 <= 2)
    {
      [(STSTransactionEndEvent *)v9 setStatus:v12 | 8];
    }
  }

  return v9;
}

@end