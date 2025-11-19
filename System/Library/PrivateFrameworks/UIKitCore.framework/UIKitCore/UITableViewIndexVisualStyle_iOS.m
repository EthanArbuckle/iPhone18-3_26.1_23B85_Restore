@interface UITableViewIndexVisualStyle_iOS
- (UITableViewIndex)tableViewIndex;
- (UITableViewIndexVisualStyle_iOS)initWithTableViewIndex:(id)a3;
- (double)_lineSpacingForCurrentIdiom;
- (double)indexWidth;
- (double)minLineSpacing;
- (void)setFont:(id)a3;
@end

@implementation UITableViewIndexVisualStyle_iOS

- (UITableViewIndexVisualStyle_iOS)initWithTableViewIndex:(id)a3
{
  v7.receiver = self;
  v7.super_class = UITableViewIndexVisualStyle_iOS;
  v3 = a3;
  v4 = [(UITableViewIndexVisualStyle_iOS *)&v7 init];
  [(UITableViewIndexVisualStyle_iOS *)v4 setTableViewIndex:v3, v7.receiver, v7.super_class];

  v5 = [off_1E70ECC18 boldSystemFontOfSize:11.0];
  [(UITableViewIndexVisualStyle_iOS *)v4 setFont:v5];

  [(UITableViewIndexVisualStyle_iOS *)v4 setVerticalTextHeightEstimate:0.0];
  return v4;
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if (self->_font != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_font, a3);
    [(UITableViewIndexVisualStyle_iOS *)self setVerticalTextHeightEstimate:0.0];
    v5 = v6;
  }
}

- (double)indexWidth
{
  v2 = [(UITableViewIndexVisualStyle_iOS *)self tableViewIndex];
  v3 = [v2 traitCollection];

  v4 = _UIDefaultIndexBarWidthForTraitCollection(v3);
  return v4;
}

- (double)_lineSpacingForCurrentIdiom
{
  v2 = [(UITableViewIndexVisualStyle_iOS *)self tableViewIndex];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];
  v5 = 6.0;
  if (v4 == 6)
  {
    v5 = 9.0;
  }

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
    v3 = [(UITableViewIndexVisualStyle_iOS *)self font];
    v13[0] = v3;
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