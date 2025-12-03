@interface SagaSetItemPropertyOperation
- (SagaSetItemPropertyOperation)initWithCoder:(id)coder;
- (SagaSetItemPropertyOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity sagaID:(unsigned int)d properties:(id)properties;
- (void)encodeWithCoder:(id)coder;
- (void)main;
@end

@implementation SagaSetItemPropertyOperation

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  v4 = [NSString stringWithFormat:@"SagaSetItemPropertyOperation - (saga_id = %u)", self->_sagaID];
  v5 = [[MSVXPCTransaction alloc] initWithName:v4];
  [v5 beginTransaction];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
  [musicLibrary setClientIdentity:clientIdentity];

  connection = [(CloudLibraryOperation *)self connection];
  databaseID = [connection databaseID];
  v10 = [NSNumber numberWithUnsignedInt:self->_sagaID];
  v20 = v10;
  v11 = [NSArray arrayWithObjects:&v20 count:1];
  properties = self->_properties;
  v12 = [NSArray arrayWithObjects:&properties count:1];
  v13 = [ICBulkSetItemPropertyRequest requestWithDatabaseID:databaseID itemIDs:v11 properties:v12 useLongIDs:0];

  [v13 setVerificationInteractionLevel:2];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008600C;
  v17[3] = &unk_1001DF838;
  v17[4] = self;
  v18 = dispatch_semaphore_create(0);
  v14 = v18;
  [connection sendRequest:v13 withResponseHandler:v17];
  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  v16 = MSVTCCIdentityForCurrentProcess();
  [musicLibrary2 setClientIdentity:v16];

  [v5 endTransaction];
  objc_autoreleasePoolPop(v3);
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaSetItemPropertyOperation;
  coderCopy = coder;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_sagaID forKey:{@"SagaSetItemPropertyOperationSagaIDKey", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_properties forKey:@"SagaSetItemPropertyOperationPropertiesKey"];
}

- (SagaSetItemPropertyOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SagaSetItemPropertyOperation;
  v5 = [(CloudLibraryOperation *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_sagaID = [coderCopy decodeInt32ForKey:@"SagaSetItemPropertyOperationSagaIDKey"];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"SagaSetItemPropertyOperationPropertiesKey"];
    properties = v5->_properties;
    v5->_properties = v10;
  }

  return v5;
}

- (SagaSetItemPropertyOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity sagaID:(unsigned int)d properties:(id)properties
{
  propertiesCopy = properties;
  v16.receiver = self;
  v16.super_class = SagaSetItemPropertyOperation;
  v11 = [(CloudLibraryOperation *)&v16 initWithConfiguration:configuration clientIdentity:identity];
  v12 = v11;
  if (v11)
  {
    v11->_sagaID = d;
    v13 = [propertiesCopy copy];
    properties = v12->_properties;
    v12->_properties = v13;
  }

  return v12;
}

@end