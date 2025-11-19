@interface PCSLockAssertion
- (BOOL)holdAssertion;
- (id)initAssertion:(id)a3 manager:(id)a4;
- (void)dealloc;
- (void)dropAssertion;
@end

@implementation PCSLockAssertion

- (id)initAssertion:(id)a3 manager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PCSLockAssertion;
  v9 = [(PCSLockAssertion *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(p_isa + 3, a4);
  }

  return p_isa;
}

- (BOOL)holdAssertion
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_held)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(PCSLockManager *)v2->_manager holdAssertion:v2];
    v2->_held = v3;
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)dropAssertion
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_held)
  {
    [(PCSLockManager *)obj->_manager dropAssertion:?];
  }

  objc_sync_exit(obj);
}

- (void)dealloc
{
  [(PCSLockManager *)self->_manager removeAssertion:self];
  v3.receiver = self;
  v3.super_class = PCSLockAssertion;
  [(PCSLockAssertion *)&v3 dealloc];
}

@end