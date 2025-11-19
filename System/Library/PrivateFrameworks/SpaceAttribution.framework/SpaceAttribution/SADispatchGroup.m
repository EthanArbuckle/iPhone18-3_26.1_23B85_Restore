@interface SADispatchGroup
- (SADispatchGroup)init;
- (void)enter;
- (void)leave;
@end

@implementation SADispatchGroup

- (SADispatchGroup)init
{
  v6.receiver = self;
  v6.super_class = SADispatchGroup;
  v2 = [(SADispatchGroup *)&v6 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    group = v2->_group;
    v2->_group = v3;

    v2->_entries = 0;
  }

  return v2;
}

- (void)enter
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_entries;
  dispatch_group_enter(obj->_group);
  objc_sync_exit(obj);
}

- (void)leave
{
  obj = self;
  objc_sync_enter(obj);
  entries = obj->_entries;
  v3 = __OFSUB__(entries, 1);
  v4 = entries - 1;
  if (v4 < 0 == v3)
  {
    obj->_entries = v4;
    dispatch_group_leave(obj->_group);
  }

  objc_sync_exit(obj);
}

@end