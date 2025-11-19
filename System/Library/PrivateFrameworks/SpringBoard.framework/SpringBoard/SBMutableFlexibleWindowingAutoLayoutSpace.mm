@interface SBMutableFlexibleWindowingAutoLayoutSpace
- (id)flexibleAutoLayoutItemForDisplayItem:(id)a3;
- (id)flexibleAutoLayoutItemForDisplayItemIfExists:(id)a3;
@end

@implementation SBMutableFlexibleWindowingAutoLayoutSpace

- (id)flexibleAutoLayoutItemForDisplayItemIfExists:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBMutableFlexibleWindowingAutoLayoutSpace;
  v3 = [(SBFlexibleWindowingAutoLayoutSpace *)&v5 flexibleAutoLayoutItemForDisplayItemIfExists:a3];

  return v3;
}

- (id)flexibleAutoLayoutItemForDisplayItem:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBMutableFlexibleWindowingAutoLayoutSpace;
  v3 = [(SBFlexibleWindowingAutoLayoutSpace *)&v5 flexibleAutoLayoutItemForDisplayItem:a3];

  return v3;
}

@end