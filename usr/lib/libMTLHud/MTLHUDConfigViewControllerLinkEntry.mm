@interface MTLHUDConfigViewControllerLinkEntry
- (MTLHUDConfigViewControllerLinkEntry)initWithTitle:(id)title andURL:(id)l;
@end

@implementation MTLHUDConfigViewControllerLinkEntry

- (MTLHUDConfigViewControllerLinkEntry)initWithTitle:(id)title andURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = MTLHUDConfigViewControllerLinkEntry;
  v8 = [(MTLHUDConfigViewControllerEntry *)&v11 initWithTitle:title envVar:0 enabled:1 representedObject:0 type:6 didChange:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_URL, l);
  }

  return v9;
}

@end