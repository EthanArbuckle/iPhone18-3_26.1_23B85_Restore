@interface UITableViewIndexVisualStyle_iOS
- (UITableViewIndex)tableViewIndex;
- (UITableViewIndexVisualStyle_iOS)initWithTableViewIndex:(id)index;
- (double)_lineSpacingForCurrentIdiom;
- (double)indexWidth;
- (double)minLineSpacing;
- (void)setFont:(id)font;
@end

@implementation UITableViewIndexVisualStyle_iOS

- (UITableViewIndexVisualStyle_iOS)initWithTableViewIndex:(id)index
{
  v7.receiver = self;
  v7.super_class = UITableViewIndexVisualStyle_iOS;
  indexCopy = index;
  v4 = [(UITableViewIndexVisualStyle_iOS *)&v7 init];
  [(UITableViewIndexVisualStyle_iOS *)v4 setTableViewIndex:indexCopy, v7.receiver, v7.super_class];

  v5 = [off_1E70ECC18 boldSystemFontOfSize:11.0];
  [(UITableViewIndexVisualStyle_iOS *)v4 setFont:v5];

  [(UITableViewIndexVisualStyle_iOS *)v4 setVerticalTextHeightEstimate:0.0];
  return v4;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (self->_font != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_font, font);
    [(UITableViewIndexVisualStyle_iOS *)self setVerticalTextHeightEstimate:0.0];
    fontCopy = v6;
  }
}

- (double)indexWidth
{
  tableViewIndex = [(UITableViewIndexVisualStyle_iOS *)self tableViewIndex];
  traitCollection = [tableViewIndex traitCollection];

  v4 = _UIDefaultIndexBarWidthForTraitCollection(traitCollection);
  return v4;
}

- (double)_lineSpacingForCurrentIdiom
{
  tableViewIndex = [(UITableViewIndexVisualStyle_iOS *)self tableViewIndex];
  traitCollection = [tableViewIndex traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v5 = 6.0;
  if (userInterfaceIdiom == 6)
  {
    v5 = 9.0;
  }

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (double)minLineSpacing
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (self->_verticalTextHeightEstimate == 0.0)
  {
    v12 = *off_1E70EC918;
    font = [(UITableViewIndexVisualStyle_iOS *)self font];
    v13[0] = font;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:0x1EFBB7A10 attributes:v4];
    v6 = CTLineCreateWithAttributedString(v5);
    if (v6)
    {
      v7 = v6;
      BoundsWithOptions = CTLineGetBoundsWithOptions(v6, 8uLL);
      [(UITableViewIndexVisualStyle_iOS *)self setVerticalTextHeightEstimate:BoundsWithOptions.size.height, BoundsWithOptions.origin.y, BoundsWithOptions.size.width];
      CFRelease(v7);
    }
  }

  [(UITableViewIndexVisualStyle_iOS *)self verticalTextHeightEstimate];
  v9 = v8;
  [(UITableViewIndexVisualStyle_iOS *)self _lineSpacingForCurrentIdiom];
  return v9 + v10;
}

- (UITableViewIndex)tableViewIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_tableViewIndex);

  return WeakRetained;
}

@end