@interface _UIViewControllerControlMessageDeputy
+ (id)XPCInterface;
+ (id)proxyWithTarget:(id)target;
- (id)invalidate;
@end

@implementation _UIViewControllerControlMessageDeputy

+ (id)XPCInterface
{
  if (qword_1ED4A29B0 != -1)
  {
    dispatch_once(&qword_1ED4A29B0, &__block_literal_global_136_2);
  }

  v3 = qword_1ED4A29B8;

  return v3;
}

+ (id)proxyWithTarget:(id)target
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS____UIViewControllerControlMessageDeputy;
  v3 = objc_msgSendSuper2(&v5, sel_proxyWithTarget_, target);

  return v3;
}

- (id)invalidate
{
  v2 = +[_UIAsyncInvocation emptyInvocation];
  invoke = [v2 invoke];

  return invoke;
}

@end