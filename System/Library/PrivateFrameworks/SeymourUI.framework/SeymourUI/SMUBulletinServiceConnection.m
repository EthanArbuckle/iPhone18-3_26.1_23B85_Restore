@interface SMUBulletinServiceConnection
+ (id)sharedBulletinService;
@end

@implementation SMUBulletinServiceConnection

+ (id)sharedBulletinService
{
  if (sharedBulletinService_onceToken[0] != -1)
  {
    +[SMUBulletinServiceConnection sharedBulletinService];
  }

  v3 = sharedBulletinService_service;

  return v3;
}

void __53__SMUBulletinServiceConnection_sharedBulletinService__block_invoke()
{
  v0 = [[SMUBulletinService alloc] initNoop];
  v1 = sharedBulletinService_service;
  sharedBulletinService_service = v0;
}

@end