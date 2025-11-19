@interface _SBDisplayItemFreeFormGrid
- (CGSize)minSize;
- (CGSize)nearestGridSizeForSize:(CGSize)a3 countOnStage:(unint64_t)a4;
@end

@implementation _SBDisplayItemFreeFormGrid

- (CGSize)minSize
{
  [(SBSwitcherWindowingConfiguration *)self->super._windowingConfiguration minimumWindowWidth];
  v4 = v3;
  [(SBSwitcherWindowingConfiguration *)self->super._windowingConfiguration minimumWindowHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)nearestGridSizeForSize:(CGSize)a3 countOnStage:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  [(SBSwitcherWindowingConfiguration *)self->super._windowingConfiguration minimumWindowWidth];
  if (v7 >= width)
  {
    width = v7;
  }

  [(SBSwitcherWindowingConfiguration *)self->super._windowingConfiguration minimumWindowHeight];
  if (v8 >= height)
  {
    v9 = v8;
  }

  else
  {
    v9 = height;
  }

  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

@end