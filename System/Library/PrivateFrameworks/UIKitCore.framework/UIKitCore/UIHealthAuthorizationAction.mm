@interface UIHealthAuthorizationAction
- (UIHealthAuthorizationAction)init;
@end

@implementation UIHealthAuthorizationAction

- (UIHealthAuthorizationAction)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6.receiver = self;
  v6.super_class = UIHealthAuthorizationAction;
  v4 = [(UIHealthAuthorizationAction *)&v6 initWithInfo:v3 timeout:0 forResponseOnQueue:0 withHandler:0.0];

  return v4;
}

@end