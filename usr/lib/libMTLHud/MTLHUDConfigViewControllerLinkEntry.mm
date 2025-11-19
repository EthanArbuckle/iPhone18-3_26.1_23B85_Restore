@interface MTLHUDConfigViewControllerLinkEntry
- (MTLHUDConfigViewControllerLinkEntry)initWithTitle:(id)a3 andURL:(id)a4;
@end

@implementation MTLHUDConfigViewControllerLinkEntry

- (MTLHUDConfigViewControllerLinkEntry)initWithTitle:(id)a3 andURL:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MTLHUDConfigViewControllerLinkEntry;
  v8 = [(MTLHUDConfigViewControllerEntry *)&v11 initWithTitle:a3 envVar:0 enabled:1 representedObject:0 type:6 didChange:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_URL, a4);
  }

  return v9;
}

@end