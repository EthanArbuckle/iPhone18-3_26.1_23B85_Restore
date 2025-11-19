@interface _UIViewControllerControlMessageDeputy
+ (id)XPCInterface;
+ (id)proxyWithTarget:(id)a3;
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

+ (id)proxyWithTarget:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS____UIViewControllerControlMessageDeputy;
  v3 = objc_msgSendSuper2(&v5, sel_proxyWithTarget_, a3);

  return v3;
}

- (id)invalidate
{
  v2 = +[_UIAsyncInvocation emptyInvocation];
  v3 = [v2 invoke];

  return v3;
}

@end