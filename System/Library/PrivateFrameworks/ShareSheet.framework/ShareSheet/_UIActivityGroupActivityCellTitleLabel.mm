@interface _UIActivityGroupActivityCellTitleLabel
- (CGSize)sizeThatFits:(CGSize)fits sizeCategory:(id)category;
- (void)setText:(id)text;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFontWithSizeCategory:(id)category;
@end

@implementation _UIActivityGroupActivityCellTitleLabel

- (void)setText:(id)text
{
  textCopy = text;
  text = [(_UIActivityGroupActivityCellTitleLabel *)self text];
  v6 = [text isEqualToString:textCopy];

  if ((v6 & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = _UIActivityGroupActivityCellTitleLabel;
    [(_UIActivityGroupActivityCellTitleLabel *)&v9 setText:textCopy];
    traitCollection = [(_UIActivityGroupActivityCellTitleLabel *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    [(_UIActivityGroupActivityCellTitleLabel *)self updateFontWithSizeCategory:preferredContentSizeCategory];
  }
}

- (void)updateFontWithSizeCategory:(id)category
{
  categoryCopy = category;
  _screen = [(_UIActivityGroupActivityCellTitleLabel *)self _screen];
  v6 = _UIActivityGroupActivityCellFont(categoryCopy, _screen);
  [(_UIActivityGroupActivityCellTitleLabel *)self setFont:v6];

  if (UIContentSizeCategoryIsAccessibilityCategory(categoryCopy))
  {
    [(_UIActivityGroupActivityCellTitleLabel *)self setNumberOfLines:2];
    LODWORD(v7) = 0.5;
    [(_UIActivityGroupActivityCellTitleLabel *)self _setHyphenationFactor:v7];
    if ([(_UIActivityGroupActivityCellTitleLabel *)self _shouldReverseLayoutDirection])
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    [(_UIActivityGroupActivityCellTitleLabel *)self setTextAlignment:v8];
    [(_UIActivityGroupActivityCellTitleLabel *)self setAdjustsFontSizeToFitWidth:0];
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    text = [(_UIActivityGroupActivityCellTitleLabel *)self text];
    v10 = [text length];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69___UIActivityGroupActivityCellTitleLabel_updateFontWithSizeCategory___block_invoke;
    v12[3] = &unk_1E71FB868;
    v12[5] = 0;
    v12[6] = v10;
    v12[4] = &v13;
    [text enumerateSubstringsInRange:0 options:v10 usingBlock:{3, v12}];
    if (*(v14 + 24))
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    [(_UIActivityGroupActivityCellTitleLabel *)self setNumberOfLines:v11];
    [(_UIActivityGroupActivityCellTitleLabel *)self _setHyphenationFactor:0.0];
    [(_UIActivityGroupActivityCellTitleLabel *)self setTextAlignment:1];
    [(_UIActivityGroupActivityCellTitleLabel *)self setAdjustsFontSizeToFitWidth:1];

    _Block_object_dispose(&v13, 8);
  }

  [(_UIActivityGroupActivityCellTitleLabel *)self setNeedsDisplay];
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = _UIActivityGroupActivityCellTitleLabel;
  changeCopy = change;
  [(_UIActivityGroupActivityCellTitleLabel *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(_UIActivityGroupActivityCellTitleLabel *)self traitCollection:v10.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
  {
    traitCollection = [(_UIActivityGroupActivityCellTitleLabel *)self traitCollection];
    preferredContentSizeCategory3 = [traitCollection preferredContentSizeCategory];
    [(_UIActivityGroupActivityCellTitleLabel *)self updateFontWithSizeCategory:preferredContentSizeCategory3];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits sizeCategory:(id)category
{
  height = fits.height;
  width = fits.width;
  [(_UIActivityGroupActivityCellTitleLabel *)self updateFontWithSizeCategory:category];
  v9.receiver = self;
  v9.super_class = _UIActivityGroupActivityCellTitleLabel;
  [(_UIActivityGroupActivityCellTitleLabel *)&v9 sizeThatFits:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

@end