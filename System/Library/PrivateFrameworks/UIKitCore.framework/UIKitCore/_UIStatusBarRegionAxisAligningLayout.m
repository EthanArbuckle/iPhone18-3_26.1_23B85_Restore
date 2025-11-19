@interface _UIStatusBarRegionAxisAligningLayout
+ (id)aligningLayoutWithAlignment:(int64_t)a3;
- (id)constraintsForDisplayItems:(id)a3 layoutGuides:(id)a4 inContainerItem:(id)a5 axis:(int64_t)a6;
@end

@implementation _UIStatusBarRegionAxisAligningLayout

+ (id)aligningLayoutWithAlignment:(int64_t)a3
{
  v4 = objc_alloc_init(_UIStatusBarRegionAxisAligningLayout);
  [(_UIStatusBarRegionAxisAligningLayout *)v4 setAlignment:a3];

  return v4;
}

- (id)constraintsForDisplayItems:(id)a3 layoutGuides:(id)a4 inContainerItem:(id)a5 axis:(int64_t)a6
{
  v9 = a5;
  v10 = MEMORY[0x1E695DF70];
  v11 = a3;
  v12 = [v10 array];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101___UIStatusBarRegionAxisAligningLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke;
  v18[3] = &unk_1E711FDB0;
  v21 = a6;
  v18[4] = self;
  v13 = v12;
  v19 = v13;
  v20 = v9;
  v14 = v9;
  [v11 enumerateObjectsUsingBlock:v18];

  v15 = v20;
  v16 = v13;

  return v13;
}

@end