@interface SagaSetItemPropertyOperation
- (SagaSetItemPropertyOperation)initWithCoder:(id)a3;
- (SagaSetItemPropertyOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 sagaID:(unsigned int)a5 properties:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation SagaSetItemPropertyOperation

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  v4 = [NSString stringWithFormat:@"SagaSetItemPropertyOperation - (saga_id = %u)", self->_sagaID];
  v5 = [[MSVXPCTransaction alloc] initWithName:v4];
  [v5 beginTransaction];
  v6 = [(CloudLibraryOperation *)self musicLibrary];
  v7 = [(CloudLibraryOperation *)self clientIdentity];
  [v6 setClientIdentity:v7];

  v8 = [(CloudLibraryOperation *)self connection];
  v9 = [v8 databaseID];
  v10 = [NSNumber numberWithUnsignedInt:self->_sagaID];
  v20 = v10;
  v11 = [NSArray arrayWithObjects:&v20 count:1];
  properties = self->_properties;
  v12 = [NSArray arrayWithObjects:&properties count:1];
  v13 = [ICBulkSetItemPropertyRequest requestWithDatabaseID:v9 itemIDs:v11 properties:v12 useLongIDs:0];

  [v13 setVerificationInteractionLevel:2];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008600C;
  v17[3] = &unk_1001DF838;
  v17[4] = self;
  v18 = dispatch_semaphore_create(0);
  v14 = v18;
  [v8 sendRequest:v13 withResponseHandler:v17];
  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v15 = [(CloudLibraryOperation *)self musicLibrary];
  v16 = MSVTCCIdentityForCurrentProcess();
  [v15 setClientIdentity:v16];

  [v5 endTransaction];
  objc_autoreleasePoolPop(v3);
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaSetItemPropertyOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:self->_sagaID forKey:{@"SagaSetItemPropertyOperationSagaIDKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_properties forKey:@"SagaSetItemPropertyOperationPropertiesKey"];
}

- (SagaSetItemPropertyOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SagaSetItemPropertyOperation;
  v5 = [(CloudLibraryOperation *)&v13 initWithCoder:v4];
  if (v5)
  {
    v5->_sagaID = [v4 decodeInt32ForKey:@"SagaSetItemPropertyOperationSagaIDKey"];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"SagaSetItemPropertyOperationPropertiesKey"];
    properties = v5->_properties;
    v5->_properties = v10;
  }

  return v5;
}

- (SagaSetItemPropertyOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 sagaID:(unsigned int)a5 properties:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = SagaSetItemPropertyOperation;
  v11 = [(CloudLibraryOperation *)&v16 initWithConfiguration:a3 clientIdentity:a4];
  v12 = v11;
  if (v11)
  {
    v11->_sagaID = a5;
    v13 = [v10 copy];
    properties = v12->_properties;
    v12->_properties = v13;
  }

  return v12;
}

@end