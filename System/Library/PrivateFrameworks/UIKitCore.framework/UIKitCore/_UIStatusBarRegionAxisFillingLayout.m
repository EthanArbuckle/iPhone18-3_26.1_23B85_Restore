@interface _UIStatusBarRegionAxisFillingLayout
+ (id)fillingLayout;
- (id)constraintsForDisplayItems:(id)a3 layoutGuides:(id)a4 inContainerItem:(id)a5 axis:(int64_t)a6;
@end

@implementation _UIStatusBarRegionAxisFillingLayout

+ (id)fillingLayout
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52___UIStatusBarRegionAxisFillingLayout_fillingLayout__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_1280 != -1)
  {
    dispatch_once(&_MergedGlobals_1280, block);
  }

  v2 = qword_1ED4A0930;

  return v2;
}

- (id)constraintsForDisplayItems:(id)a3 layoutGuides:(id)a4 inContainerItem:(id)a5 axis:(int64_t)a6
{
  v8 = a5;
  v9 = MEMORY[0x1E695DF70];
  v10 = a3;
  v11 = [v9 array];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100___UIStatusBarRegionAxisFillingLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke;
  v17[3] = &unk_1E711FE00;
  v12 = v11;
  v19 = v8;
  v20 = a6;
  v18 = v12;
  v13 = v8;
  [v10 enumerateObjectsUsingBlock:v17];

  v14 = v19;
  v15 = v12;

  return v12;
}

@end