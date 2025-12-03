@interface PUImportOneUpViewControllerSpec
- (CGSize)selectionBadgeSize;
- (PUImportOneUpViewControllerSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options style:(unint64_t)style;
- (UIOffset)selectionBadgeOffset;
@end

@implementation PUImportOneUpViewControllerSpec

- (UIOffset)selectionBadgeOffset
{
  horizontal = self->_selectionBadgeOffset.horizontal;
  vertical = self->_selectionBadgeOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (CGSize)selectionBadgeSize
{
  width = self->_selectionBadgeSize.width;
  height = self->_selectionBadgeSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PUImportOneUpViewControllerSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options style:(unint64_t)style
{
  v19.receiver = self;
  v19.super_class = PUImportOneUpViewControllerSpec;
  v6 = [(PUImportOneUpViewControllerSpec *)&v19 initWithExtendedTraitCollection:collection options:options];
  v7 = v6;
  if (v6)
  {
    v6->_style = style;
    v8 = 0.0;
    if (!style)
    {
      v9 = PLIsTallScreen();
      v8 = 15.0;
      if (v9)
      {
        v8 = 10.0;
      }
    }

    v7->_interItemSpacing = v8;
    v10 = [MEMORY[0x1E69DD250] px_circularGlyphViewWithName:@"circle" backgroundColor:0];
    [v10 bounds];
    v7->_selectionBadgeSize.width = v11;
    v7->_selectionBadgeSize.height = v12;
    __asm { FMOV            V0.2D, #6.0 }

    v7->_selectionBadgeOffset = _Q0;
    v7->_selectionBadgeCorner = 8;
    v7->_allowsInterfaceRotation = 0;
  }

  return v7;
}

@end