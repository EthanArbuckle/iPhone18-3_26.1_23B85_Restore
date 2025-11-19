@interface SAExclaveFrame
- (id)exclave;
- (id)initCopyingFrame:(id)a3 withParent:(id)a4;
- (id)initWithExclave:(void *)a1;
- (void)reset;
@end

@implementation SAExclaveFrame

- (id)initWithExclave:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = SAExclaveFrame;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeWeak(v3 + 6, a2);
    *(v4 + 8) |= 4u;
  }

  return v4;
}

- (id)exclave
{
  WeakRetained = objc_loadWeakRetained(&self->_exclave);

  return WeakRetained;
}

- (id)initCopyingFrame:(id)a3 withParent:(id)a4
{
  v8.receiver = self;
  v8.super_class = SAExclaveFrame;
  v5 = [(SAFrame *)&v8 initCopyingFrame:a3 withParent:a4];
  if (v5)
  {
    v6 = [a3 exclave];
    objc_storeWeak(v5 + 6, v6);
  }

  return v5;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = SAExclaveFrame;
  [(SAFrame *)&v3 reset];
  objc_storeWeak(&self->_exclave, 0);
}

@end