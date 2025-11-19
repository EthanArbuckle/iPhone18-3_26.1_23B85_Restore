@interface MTLHUDConfigPanel
- (MTLHUDConfigPanel)init;
@end

@implementation MTLHUDConfigPanel

- (MTLHUDConfigPanel)init
{
  v7.receiver = self;
  v7.super_class = MTLHUDConfigPanel;
  v2 = [(MTLHUDConfigPanel *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    entries = v2->_entries;
    v2->_entries = v3;

    name = v2->_name;
    v2->_name = @"Panel";
  }

  return v2;
}

@end