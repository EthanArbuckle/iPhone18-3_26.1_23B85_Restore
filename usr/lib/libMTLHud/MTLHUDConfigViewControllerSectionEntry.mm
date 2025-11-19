@interface MTLHUDConfigViewControllerSectionEntry
- (MTLHUDConfigViewControllerSectionEntry)initWithTitle:(id)a3;
@end

@implementation MTLHUDConfigViewControllerSectionEntry

- (MTLHUDConfigViewControllerSectionEntry)initWithTitle:(id)a3
{
  v4.receiver = self;
  v4.super_class = MTLHUDConfigViewControllerSectionEntry;
  return [(MTLHUDConfigViewControllerEntry *)&v4 initWithTitle:a3 envVar:0 enabled:1 representedObject:0 type:1 didChange:0];
}

@end