@interface PSUIMBManagerWrapper
- (PSUIMBManagerWrapper)init;
@end

@implementation PSUIMBManagerWrapper

- (PSUIMBManagerWrapper)init
{
  v6.receiver = self;
  v6.super_class = PSUIMBManagerWrapper;
  v2 = [(PSUIMBManagerWrapper *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    backupManager = v2->_backupManager;
    v2->_backupManager = v3;
  }

  return v2;
}

@end