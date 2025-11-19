@interface OS_cryptex_actor
- (void)dealloc;
@end

@implementation OS_cryptex_actor

- (void)dealloc
{
  _cryptex_actor_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_cryptex_actor;
  [(OS_cryptex_actor *)&v3 dealloc];
}

@end