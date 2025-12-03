@interface PCSLockAssertion
- (BOOL)holdAssertion;
- (id)initAssertion:(id)assertion manager:(id)manager;
- (void)dealloc;
- (void)dropAssertion;
@end

@implementation PCSLockAssertion

- (id)initAssertion:(id)assertion manager:(id)manager
{
  assertionCopy = assertion;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = PCSLockAssertion;
  v9 = [(PCSLockAssertion *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_name, assertion);
    objc_storeStrong(p_isa + 3, manager);
  }

  return p_isa;
}

- (BOOL)holdAssertion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_held)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(PCSLockManager *)selfCopy->_manager holdAssertion:selfCopy];
    selfCopy->_held = v3;
  }

  objc_sync_exit(selfCopy);

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