@interface SKADatabasePendingPublishRequest
- (SKADatabasePendingPublishRequest)initWithCoreDataPendingPublishRequest:(id)a3;
- (SKADatabasePendingPublishRequest)initWithStatusTypeIdentifier:(id)a3 dateCreated:(id)a4 payloadData:(id)a5 statusUniqueIdentifier:(id)a6 retryCount:(int64_t)a7;
@end

@implementation SKADatabasePendingPublishRequest

- (SKADatabasePendingPublishRequest)initWithCoreDataPendingPublishRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 statusTypeIdentifier];
  v6 = [v4 dateCreated];
  v7 = [v4 payloadData];
  v8 = [v4 statusUniqueIdentifier];
  v9 = [v4 retryCount];

  v10 = [(SKADatabasePendingPublishRequest *)self initWithStatusTypeIdentifier:v5 dateCreated:v6 payloadData:v7 statusUniqueIdentifier:v8 retryCount:v9];
  return v10;
}

- (SKADatabasePendingPublishRequest)initWithStatusTypeIdentifier:(id)a3 dateCreated:(id)a4 payloadData:(id)a5 statusUniqueIdentifier:(id)a6 retryCount:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24.receiver = self;
  v24.super_class = SKADatabasePendingPublishRequest;
  v16 = [(SKADatabasePendingPublishRequest *)&v24 init];
  if (v16)
  {
    v17 = [v12 copy];
    statusTypeIdentifier = v16->_statusTypeIdentifier;
    v16->_statusTypeIdentifier = v17;

    v19 = [v13 copy];
    dateCreated = v16->_dateCreated;
    v16->_dateCreated = v19;

    objc_storeStrong(&v16->_payloadData, a5);
    v21 = [v15 copy];
    statusUniqueIdentifier = v16->_statusUniqueIdentifier;
    v16->_statusUniqueIdentifier = v21;

    v16->_retryCount = a7;
  }

  return v16;
}

@end