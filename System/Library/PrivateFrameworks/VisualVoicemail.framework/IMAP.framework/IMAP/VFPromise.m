@interface VFPromise
+ (id)promise;
- (BOOL)respondsToSelector:(SEL)a3;
- (VFPromise)init;
- (id)methodSignatureForSelector:(SEL)a3;
@end

@implementation VFPromise

+ (id)promise
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (VFPromise)init
{
  v6.receiver = self;
  v6.super_class = VFPromise;
  v2 = [(VFPromise *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(VFFuture);
    future = v2->_future;
    v2->_future = v3;
  }

  return v2;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = VFPromise;
  if ([(VFPromise *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    future = self->_future;
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v10.receiver = self;
  v10.super_class = VFPromise;
  v5 = [(VFPromise *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(VFFuture *)self->_future methodSignatureForSelector:a3];
  }

  v8 = v7;

  return v8;
}

@end