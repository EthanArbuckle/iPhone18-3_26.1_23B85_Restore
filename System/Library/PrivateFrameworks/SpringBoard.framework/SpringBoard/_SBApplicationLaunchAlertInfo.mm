@interface _SBApplicationLaunchAlertInfo
- (id)description;
- (void)initWithBundleID:(void *)a1;
@end

@implementation _SBApplicationLaunchAlertInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p [bundleID=%@, foregroundScenes=%@, alertItems=%@]>", v5, self, self->_bundleID, self->_foregroundScenes, self->_alertItems];

  return v6;
}

- (void)initWithBundleID:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = _SBApplicationLaunchAlertInfo;
    v5 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = a1[2];
      a1[2] = v6;

      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v9 = a1[3];
      a1[3] = v8;
    }
  }

  return a1;
}

@end