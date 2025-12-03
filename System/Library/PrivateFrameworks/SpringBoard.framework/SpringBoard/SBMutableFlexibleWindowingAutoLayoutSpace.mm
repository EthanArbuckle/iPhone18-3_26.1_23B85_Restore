@interface SBMutableFlexibleWindowingAutoLayoutSpace
- (id)flexibleAutoLayoutItemForDisplayItem:(id)item;
- (id)flexibleAutoLayoutItemForDisplayItemIfExists:(id)exists;
@end

@implementation SBMutableFlexibleWindowingAutoLayoutSpace

- (id)flexibleAutoLayoutItemForDisplayItemIfExists:(id)exists
{
  v5.receiver = self;
  v5.super_class = SBMutableFlexibleWindowingAutoLayoutSpace;
  v3 = [(SBFlexibleWindowingAutoLayoutSpace *)&v5 flexibleAutoLayoutItemForDisplayItemIfExists:exists];

  return v3;
}

- (id)flexibleAutoLayoutItemForDisplayItem:(id)item
{
  v5.receiver = self;
  v5.super_class = SBMutableFlexibleWindowingAutoLayoutSpace;
  v3 = [(SBFlexibleWindowingAutoLayoutSpace *)&v5 flexibleAutoLayoutItemForDisplayItem:item];

  return v3;
}

@end