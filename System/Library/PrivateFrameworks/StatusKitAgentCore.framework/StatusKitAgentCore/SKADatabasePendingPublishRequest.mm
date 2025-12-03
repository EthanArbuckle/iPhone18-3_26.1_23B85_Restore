@interface SKADatabasePendingPublishRequest
- (SKADatabasePendingPublishRequest)initWithCoreDataPendingPublishRequest:(id)request;
- (SKADatabasePendingPublishRequest)initWithStatusTypeIdentifier:(id)identifier dateCreated:(id)created payloadData:(id)data statusUniqueIdentifier:(id)uniqueIdentifier retryCount:(int64_t)count;
@end

@implementation SKADatabasePendingPublishRequest

- (SKADatabasePendingPublishRequest)initWithCoreDataPendingPublishRequest:(id)request
{
  requestCopy = request;
  statusTypeIdentifier = [requestCopy statusTypeIdentifier];
  dateCreated = [requestCopy dateCreated];
  payloadData = [requestCopy payloadData];
  statusUniqueIdentifier = [requestCopy statusUniqueIdentifier];
  retryCount = [requestCopy retryCount];

  v10 = [(SKADatabasePendingPublishRequest *)self initWithStatusTypeIdentifier:statusTypeIdentifier dateCreated:dateCreated payloadData:payloadData statusUniqueIdentifier:statusUniqueIdentifier retryCount:retryCount];
  return v10;
}

- (SKADatabasePendingPublishRequest)initWithStatusTypeIdentifier:(id)identifier dateCreated:(id)created payloadData:(id)data statusUniqueIdentifier:(id)uniqueIdentifier retryCount:(int64_t)count
{
  identifierCopy = identifier;
  createdCopy = created;
  dataCopy = data;
  uniqueIdentifierCopy = uniqueIdentifier;
  v24.receiver = self;
  v24.super_class = SKADatabasePendingPublishRequest;
  v16 = [(SKADatabasePendingPublishRequest *)&v24 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    statusTypeIdentifier = v16->_statusTypeIdentifier;
    v16->_statusTypeIdentifier = v17;

    v19 = [createdCopy copy];
    dateCreated = v16->_dateCreated;
    v16->_dateCreated = v19;

    objc_storeStrong(&v16->_payloadData, data);
    v21 = [uniqueIdentifierCopy copy];
    statusUniqueIdentifier = v16->_statusUniqueIdentifier;
    v16->_statusUniqueIdentifier = v21;

    v16->_retryCount = count;
  }

  return v16;
}

@end