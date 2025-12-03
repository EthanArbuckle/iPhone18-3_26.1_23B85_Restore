@interface CKContainer(SCProxying)
- (void)addDatabaseOperation:()SCProxying;
@end

@implementation CKContainer(SCProxying)

- (void)addDatabaseOperation:()SCProxying
{
  v4 = a3;
  privateCloudDatabase = [self privateCloudDatabase];
  [privateCloudDatabase addOperation:v4];
}

@end