@interface SAExclaveFrame
- (id)exclave;
- (id)initCopyingFrame:(id)frame withParent:(id)parent;
- (id)initWithExclave:(void *)exclave;
- (void)reset;
@end

@implementation SAExclaveFrame

- (id)initWithExclave:(void *)exclave
{
  if (!exclave)
  {
    return 0;
  }

  v6.receiver = exclave;
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

- (id)initCopyingFrame:(id)frame withParent:(id)parent
{
  v8.receiver = self;
  v8.super_class = SAExclaveFrame;
  v5 = [(SAFrame *)&v8 initCopyingFrame:frame withParent:parent];
  if (v5)
  {
    exclave = [frame exclave];
    objc_storeWeak(v5 + 6, exclave);
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