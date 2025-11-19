@interface _UIActivityActionCellTitleLabel
- (CGSize)sizeThatFits:(CGSize)a3 sizeCategory:(id)a4;
- (NSString)textStyle;
- (void)_updateFontWithSizeCategory:(id)a3;
- (void)setText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation _UIActivityActionCellTitleLabel

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(_UIActivityActionCellTitleLabel *)self text];
  v6 = [v5 isEqualToString:v4];

  if ((v6 & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = _UIActivityActionCellTitleLabel;
    [(_UIActivityActionCellTitleLabel *)&v9 setText:v4];
    v7 = [(_UIActivityActionCellTitleLabel *)self traitCollection];
    v8 = [v7 preferredContentSizeCategory];
    [(_UIActivityActionCellTitleLabel *)self _updateFontWithSizeCategory:v8];
  }
}

- (void)_updateFontWithSizeCategory:(id)a3
{
  v4 = MEMORY[0x1E69DB878];
  v5 = MEMORY[0x1E69DB880];
  v6 = [(_UIActivityActionCellTitleLabel *)self textStyle];
  v7 = [v5 preferredFontDescriptorWithTextStyle:v6 addingSymbolicTraits:0x8000 options:0];
  v8 = [v4 fontWithDescriptor:v7 size:0.0];
  [(_UIActivityActionCellTitleLabel *)self setFont:v8];

  [(_UIActivityActionCellTitleLabel *)self setNumberOfLines:0];

  [(_UIActivityActionCellTitleLabel *)self setNeedsDisplay];
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = _UIActivityActionCellTitleLabel;
  v4 = a3;
  [(_UIActivityActionCellTitleLabel *)&v10 traitCollectionDidChange:v4];
  v5 = [(_UIActivityActionCellTitleLabel *)self traitCollection:v10.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  if ((v4 & 1) == 0)
  {
    v8 = [(_UIActivityActionCellTitleLabel *)self traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    [(_UIActivityActionCellTitleLabel *)self _updateFontWithSizeCategory:v9];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3 sizeCategory:(id)a4
{
  height = a3.height;
  width = a3.width;
  [(_UIActivityActionCellTitleLabel *)self _updateFontWithSizeCategory:a4];
  v9.receiver = self;
  v9.super_class = _UIActivityActionCellTitleLabel;
  [(_UIActivityActionCellTitleLabel *)&v9 sizeThatFits:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (NSString)textStyle
{
  if (self->_textStyle)
  {
    return self->_textStyle;
  }

  else
  {
    return *MEMORY[0x1E69DDCF8];
  }
}

@end