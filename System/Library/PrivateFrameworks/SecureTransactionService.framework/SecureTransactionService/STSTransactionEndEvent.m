@interface STSTransactionEndEvent
- (STSTransactionEndEvent)initWithCredential:(id)a3 andDigitalCarKeyEndEvent:(id)a4;
- (STSTransactionEndEvent)initWithCredential:(id)a3 andNearFieldEndEvent:(id)a4;
@end

@implementation STSTransactionEndEvent

- (STSTransactionEndEvent)initWithCredential:(id)a3 andNearFieldEndEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = STSTransactionEndEvent;
  v8 = [(STSTransactionEndEvent *)&v17 init];
  v9 = v8;
  if (v8)
  {
    [(STSTransactionEndEvent *)v8 setCredential:v6];
    -[STSTransactionEndEvent setBackground:](v9, "setBackground:", [v7 background]);
    v10 = [v7 parsedInfo];
    [(STSTransactionEndEvent *)v9 setParsedInfo:v10];

    v11 = [v7 readerIdentifier];
    [(STSTransactionEndEvent *)v9 setReaderIdentifier:v11];

    v12 = [v7 keyIdentifier];
    [(STSTransactionEndEvent *)v9 setKeyIdentifier:v12];

    v13 = [v7 transactionIdentifier];
    [(STSTransactionEndEvent *)v9 setTransactionIdentifier:v13];

    if ([v7 didError])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    [(STSTransactionEndEvent *)v9 setStatus:v14];
    -[STSTransactionEndEvent setAnonymousCredentialInfoSharing:](v9, "setAnonymousCredentialInfoSharing:", [v6 type] == 5);
    v15 = [v7 result] + 4092;
    if (v15 <= 2u)
    {
      [(STSTransactionEndEvent *)v9 setStatus:v15 | 8u];
    }
  }

  return v9;
}

- (STSTransactionEndEvent)initWithCredential:(id)a3 andDigitalCarKeyEndEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    [(STSTransactionEndEvent *)v9 setCredential:v6];
    v10 = [v7 keyIdentifier];
    [(STSTransactionEndEvent *)v9 setKeyIdentifier:v10];

    if ([v7 didError])
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    [(STSTransactionEndEvent *)v9 setStatus:v11];
    v12 = [v7 result] - 61444;
    if (v12 <= 2)
    {
      [(STSTransactionEndEvent *)v9 setStatus:v12 | 8];
    }
  }

  return v9;
}

@end