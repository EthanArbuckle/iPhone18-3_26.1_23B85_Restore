@interface CKContainer(SCKProxying)
- (void)addDatabaseOperation:()SCKProxying;
@end

@implementation CKContainer(SCKProxying)

- (void)addDatabaseOperation:()SCKProxying
{
  v4 = a3;
  privateCloudDatabase = [self privateCloudDatabase];
  [privateCloudDatabase addOperation:v4];
}

@end