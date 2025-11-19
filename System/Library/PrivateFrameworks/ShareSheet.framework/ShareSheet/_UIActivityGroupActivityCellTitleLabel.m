@interface _UIActivityGroupActivityCellTitleLabel
- (CGSize)sizeThatFits:(CGSize)a3 sizeCategory:(id)a4;
- (void)setText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFontWithSizeCategory:(id)a3;
@end

@implementation _UIActivityGroupActivityCellTitleLabel

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(_UIActivityGroupActivityCellTitleLabel *)self text];
  v6 = [v5 isEqualToString:v4];

  if ((v6 & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = _UIActivityGroupActivityCellTitleLabel;
    [(_UIActivityGroupActivityCellTitleLabel *)&v9 setText:v4];
    v7 = [(_UIActivityGroupActivityCellTitleLabel *)self traitCollection];
    v8 = [v7 preferredContentSizeCategory];
    [(_UIActivityGroupActivityCellTitleLabel *)self updateFontWithSizeCategory:v8];
  }
}

- (void)updateFontWithSizeCategory:(id)a3
{
  v4 = a3;
  v5 = [(_UIActivityGroupActivityCellTitleLabel *)self _screen];
  v6 = _UIActivityGroupActivityCellFont(v4, v5);
  [(_UIActivityGroupActivityCellTitleLabel *)self setFont:v6];

  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
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
    v9 = [(_UIActivityGroupActivityCellTitleLabel *)self text];
    v10 = [v9 length];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69___UIActivityGroupActivityCellTitleLabel_updateFontWithSizeCategory___block_invoke;
    v12[3] = &unk_1E71FB868;
    v12[5] = 0;
    v12[6] = v10;
    v12[4] = &v13;
    [v9 enumerateSubstringsInRange:0 options:v10 usingBlock:{3, v12}];
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

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = _UIActivityGroupActivityCellTitleLabel;
  v4 = a3;
  [(_UIActivityGroupActivityCellTitleLabel *)&v10 traitCollectionDidChange:v4];
  v5 = [(_UIActivityGroupActivityCellTitleLabel *)self traitCollection:v10.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  if ((v4 & 1) == 0)
  {
    v8 = [(_UIActivityGroupActivityCellTitleLabel *)self traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    [(_UIActivityGroupActivityCellTitleLabel *)self updateFontWithSizeCategory:v9];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3 sizeCategory:(id)a4
{
  height = a3.height;
  width = a3.width;
  [(_UIActivityGroupActivityCellTitleLabel *)self updateFontWithSizeCategory:a4];
  v9.receiver = self;
  v9.super_class = _UIActivityGroupActivityCellTitleLabel;
  [(_UIActivityGroupActivityCellTitleLabel *)&v9 sizeThatFits:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

@end