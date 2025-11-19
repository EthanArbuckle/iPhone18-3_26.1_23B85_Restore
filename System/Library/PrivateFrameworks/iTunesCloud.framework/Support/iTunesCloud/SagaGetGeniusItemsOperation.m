@interface SagaGetGeniusItemsOperation
- (SagaGetGeniusItemsOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 seedID:(unint64_t)a5 numberOfItems:(unsigned int)a6;
- (void)main;
@end

@implementation SagaGetGeniusItemsOperation

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  v4 = [NSString stringWithFormat:@"SagaGetGeniusItemsOperation - (seed_id = %llu)", self->_seedID];
  v5 = [[MSVXPCTransaction alloc] initWithName:v4];
  [v5 beginTransaction];
  v6 = [(CloudLibraryOperation *)self musicLibrary];
  v7 = [(CloudLibraryOperation *)self clientIdentity];
  [v6 setClientIdentity:v7];

  v8 = [(CloudLibraryOperation *)self connection];
  v9 = +[ICGetGeniusItemsRequest requestWithDatabaseID:seedID:numberOfItems:](ICGetGeniusItemsRequest, "requestWithDatabaseID:seedID:numberOfItems:", [v8 databaseID], LODWORD(self->_seedID), self->_numberOfItems);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100096464;
  v13[3] = &unk_1001DF838;
  v13[4] = self;
  v14 = dispatch_semaphore_create(0);
  v10 = v14;
  [v8 sendRequest:v9 withResponseHandler:v13];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11 = [(CloudLibraryOperation *)self musicLibrary];
  v12 = MSVTCCIdentityForCurrentProcess();
  [v11 setClientIdentity:v12];

  [v5 endTransaction];
  objc_autoreleasePoolPop(v3);
}

- (SagaGetGeniusItemsOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 seedID:(unint64_t)a5 numberOfItems:(unsigned int)a6
{
  v9.receiver = self;
  v9.super_class = SagaGetGeniusItemsOperation;
  result = [(CloudLibraryOperation *)&v9 initWithConfiguration:a3 clientIdentity:a4];
  if (result)
  {
    result->_seedID = a5;
    result->_numberOfItems = a6;
  }

  return result;
}

@end