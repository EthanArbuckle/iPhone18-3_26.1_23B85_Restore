@interface CKContainer(SCKProxying)
- (void)addDatabaseOperation:()SCKProxying;
@end

@implementation CKContainer(SCKProxying)

- (void)addDatabaseOperation:()SCKProxying
{
  v4 = a3;
  v5 = [a1 privateCloudDatabase];
  [v5 addOperation:v4];
}

@end