@interface SMUBulletinService
- (id)initNoop;
@end

@implementation SMUBulletinService

- (id)initNoop
{
  v3.receiver = self;
  v3.super_class = SMUBulletinService;
  return [(SMUBulletinService *)&v3 init];
}

@end