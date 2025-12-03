@interface _UIStatusBarRegionAxisAligningLayout
+ (id)aligningLayoutWithAlignment:(int64_t)alignment;
- (id)constraintsForDisplayItems:(id)items layoutGuides:(id)guides inContainerItem:(id)item axis:(int64_t)axis;
@end

@implementation _UIStatusBarRegionAxisAligningLayout

+ (id)aligningLayoutWithAlignment:(int64_t)alignment
{
  v4 = objc_alloc_init(_UIStatusBarRegionAxisAligningLayout);
  [(_UIStatusBarRegionAxisAligningLayout *)v4 setAlignment:alignment];

  return v4;
}

- (id)constraintsForDisplayItems:(id)items layoutGuides:(id)guides inContainerItem:(id)item axis:(int64_t)axis
{
  itemCopy = item;
  v10 = MEMORY[0x1E695DF70];
  itemsCopy = items;
  array = [v10 array];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101___UIStatusBarRegionAxisAligningLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke;
  v18[3] = &unk_1E711FDB0;
  axisCopy = axis;
  v18[4] = self;
  v13 = array;
  v19 = v13;
  v20 = itemCopy;
  v14 = itemCopy;
  [itemsCopy enumerateObjectsUsingBlock:v18];

  v15 = v20;
  v16 = v13;

  return v13;
}

@end