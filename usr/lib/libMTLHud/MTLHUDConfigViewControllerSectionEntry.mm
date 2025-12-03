@interface MTLHUDConfigViewControllerSectionEntry
- (MTLHUDConfigViewControllerSectionEntry)initWithTitle:(id)title;
@end

@implementation MTLHUDConfigViewControllerSectionEntry

- (MTLHUDConfigViewControllerSectionEntry)initWithTitle:(id)title
{
  v4.receiver = self;
  v4.super_class = MTLHUDConfigViewControllerSectionEntry;
  return [(MTLHUDConfigViewControllerEntry *)&v4 initWithTitle:title envVar:0 enabled:1 representedObject:0 type:1 didChange:0];
}

@end