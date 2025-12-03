@interface SBWindowingItemViewModelModifier
- (CGPoint)perspectiveAngle;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributes;
- (SBWindowingItemShadow)shadow;
- (SBWindowingItemViewModelModifier)initWithItem:(id)item;
@end

@implementation SBWindowingItemViewModelModifier

- (SBWindowingItemViewModelModifier)initWithItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    [(SBWindowingItemViewModelModifier *)a2 initWithItem:?];
  }

  v10.receiver = self;
  v10.super_class = SBWindowingItemViewModelModifier;
  v7 = [(SBWindowingModifier *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_item, item);
  }

  return v8;
}

- (SBWindowingItemShadow)shadow
{
  v2 = COERCE_DOUBLE([(SBWindowingModifier *)self shadowForItem:self->_item]);
  result.shadowStyle = v3;
  result.shadowOpacity = v2;
  return result;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributes
{
  [(SBWindowingModifier *)self wallpaperGradientAttributesForItem:self->_item];
  result.trailingAlpha = v3;
  result.leadingAlpha = v2;
  return result;
}

- (CGPoint)perspectiveAngle
{
  [(SBWindowingModifier *)self perspectiveAngleForItem:self->_item];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)initWithItem:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowingItemViewModelModifier.m" lineNumber:14 description:{@"Invalid parameter not satisfying: %@", @"item"}];
}

@end