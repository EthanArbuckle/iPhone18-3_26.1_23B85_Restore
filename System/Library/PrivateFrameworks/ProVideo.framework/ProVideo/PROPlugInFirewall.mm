@interface PROPlugInFirewall
+ (id)methodSignatureForSelector:(SEL)a3;
- (PROPlugInFirewall)initWithProtectedObject:(id)a3 protocol:(id)a4 secondaryProtocol:(id)a5 errorHandler:(id)a6;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
@end

@implementation PROPlugInFirewall

- (PROPlugInFirewall)initWithProtectedObject:(id)a3 protocol:(id)a4 secondaryProtocol:(id)a5 errorHandler:(id)a6
{
  v11.receiver = self;
  v11.super_class = PROPlugInFirewall;
  result = [(PROPlugInFirewall *)&v11 init];
  if (result)
  {
    result->errorHandler = a6;
    result->protectedObject = a3;
    result->protocol = a4;
    result->secondaryProtocol = a5;
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

- (id)methodSignatureForSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = PROPlugInFirewall;
  result = [(PROPlugInFirewall *)&v7 methodSignatureForSelector:?];
  if (!result && (!protocol_getMethodDescription(self->protocol, a3, 1, 1).name && !protocol_getMethodDescription(self->secondaryProtocol, a3, 1, 1).name || (result = [self->protectedObject methodSignatureForSelector:a3]) == 0))
  {
    v6.receiver = self;
    v6.super_class = PROPlugInFirewall;
    return [(PROPlugInFirewall *)&v6 methodSignatureForSelector:sel_deadMethod];
  }

  return result;
}

- (void)forwardInvocation:(id)a3
{
  v5 = [a3 selector];
  if (protocol_getMethodDescription(self->protocol, v5, 1, 1).name || protocol_getMethodDescription(self->secondaryProtocol, v5, 1, 1).name) && (objc_opt_respondsToSelector())
  {
    protectedObject = self->protectedObject;

    [a3 invokeWithTarget:protectedObject];
  }

  else
  {

    [(PROPlugInFirewall *)self doesNotRecognizeSelector:v5];
  }
}

+ (id)methodSignatureForSelector:(SEL)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___PROPlugInFirewall;
  result = objc_msgSendSuper2(&v7, sel_methodSignatureForSelector_);
  if (!result)
  {
    [a1 doesNotRecognizeSelector:a3];
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___PROPlugInFirewall;
    return objc_msgSendSuper2(&v6, sel_methodSignatureForSelector_, sel_deadMethod);
  }

  return result;
}

@end