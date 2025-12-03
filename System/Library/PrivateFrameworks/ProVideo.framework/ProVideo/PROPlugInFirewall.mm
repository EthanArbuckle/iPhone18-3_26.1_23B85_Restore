@interface PROPlugInFirewall
+ (id)methodSignatureForSelector:(SEL)selector;
- (PROPlugInFirewall)initWithProtectedObject:(id)object protocol:(id)protocol secondaryProtocol:(id)secondaryProtocol errorHandler:(id)handler;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
@end

@implementation PROPlugInFirewall

- (PROPlugInFirewall)initWithProtectedObject:(id)object protocol:(id)protocol secondaryProtocol:(id)secondaryProtocol errorHandler:(id)handler
{
  v11.receiver = self;
  v11.super_class = PROPlugInFirewall;
  result = [(PROPlugInFirewall *)&v11 init];
  if (result)
  {
    result->errorHandler = handler;
    result->protectedObject = object;
    result->protocol = protocol;
    result->secondaryProtocol = secondaryProtocol;
  }

  return result;
}

- (void)dealloc
{
  self->errorHandler = 0;
  self->protectedObject = 0;
  v2.receiver = self;
  v2.super_class = PROPlugInFirewall;
  [(PROPlugInFirewall *)&v2 dealloc];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = PROPlugInFirewall;
  result = [(PROPlugInFirewall *)&v7 methodSignatureForSelector:?];
  if (!result && (!protocol_getMethodDescription(self->protocol, selector, 1, 1).name && !protocol_getMethodDescription(self->secondaryProtocol, selector, 1, 1).name || (result = [self->protectedObject methodSignatureForSelector:selector]) == 0))
  {
    v6.receiver = self;
    v6.super_class = PROPlugInFirewall;
    return [(PROPlugInFirewall *)&v6 methodSignatureForSelector:sel_deadMethod];
  }

  return result;
}

- (void)forwardInvocation:(id)invocation
{
  selector = [invocation selector];
  if (protocol_getMethodDescription(self->protocol, selector, 1, 1).name || protocol_getMethodDescription(self->secondaryProtocol, selector, 1, 1).name) && (objc_opt_respondsToSelector())
  {
    protectedObject = self->protectedObject;

    [invocation invokeWithTarget:protectedObject];
  }

  else
  {

    [(PROPlugInFirewall *)self doesNotRecognizeSelector:selector];
  }
}

+ (id)methodSignatureForSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___PROPlugInFirewall;
  result = objc_msgSendSuper2(&v7, sel_methodSignatureForSelector_);
  if (!result)
  {
    [self doesNotRecognizeSelector:selector];
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___PROPlugInFirewall;
    return objc_msgSendSuper2(&v6, sel_methodSignatureForSelector_, sel_deadMethod);
  }

  return result;
}

@end