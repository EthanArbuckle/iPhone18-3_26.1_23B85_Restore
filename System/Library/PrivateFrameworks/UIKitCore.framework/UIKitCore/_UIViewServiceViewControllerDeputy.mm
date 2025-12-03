@interface _UIViewServiceViewControllerDeputy
+ (id)deputyWithViewController:(id)controller;
- (id)invalidate;
@end

@implementation _UIViewServiceViewControllerDeputy

+ (id)deputyWithViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS____UIViewServiceViewControllerDeputy;
  v3 = objc_msgSendSuper2(&v5, sel_proxyWithTarget_, controller);

  return v3;
}

- (id)invalidate
{
  v2 = +[_UIAsyncInvocation emptyInvocation];
  invoke = [v2 invoke];

  return invoke;
}

@end