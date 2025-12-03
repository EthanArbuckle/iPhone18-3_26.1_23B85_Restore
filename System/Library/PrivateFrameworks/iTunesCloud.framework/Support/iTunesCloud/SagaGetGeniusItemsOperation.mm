@interface SagaGetGeniusItemsOperation
- (SagaGetGeniusItemsOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity seedID:(unint64_t)d numberOfItems:(unsigned int)items;
- (void)main;
@end

@implementation SagaGetGeniusItemsOperation

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  v4 = [NSString stringWithFormat:@"SagaGetGeniusItemsOperation - (seed_id = %llu)", self->_seedID];
  v5 = [[MSVXPCTransaction alloc] initWithName:v4];
  [v5 beginTransaction];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
  [musicLibrary setClientIdentity:clientIdentity];

  connection = [(CloudLibraryOperation *)self connection];
  v9 = +[ICGetGeniusItemsRequest requestWithDatabaseID:seedID:numberOfItems:](ICGetGeniusItemsRequest, "requestWithDatabaseID:seedID:numberOfItems:", [connection databaseID], LODWORD(self->_seedID), self->_numberOfItems);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100096464;
  v13[3] = &unk_1001DF838;
  v13[4] = self;
  v14 = dispatch_semaphore_create(0);
  v10 = v14;
  [connection sendRequest:v9 withResponseHandler:v13];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  v12 = MSVTCCIdentityForCurrentProcess();
  [musicLibrary2 setClientIdentity:v12];

  [v5 endTransaction];
  objc_autoreleasePoolPop(v3);
}

- (SagaGetGeniusItemsOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity seedID:(unint64_t)d numberOfItems:(unsigned int)items
{
  v9.receiver = self;
  v9.super_class = SagaGetGeniusItemsOperation;
  result = [(CloudLibraryOperation *)&v9 initWithConfiguration:configuration clientIdentity:identity];
  if (result)
  {
    result->_seedID = d;
    result->_numberOfItems = items;
  }

  return result;
}

@end