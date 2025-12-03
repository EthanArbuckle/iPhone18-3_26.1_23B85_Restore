@interface _UIActivityActionCellTitleLabel
- (CGSize)sizeThatFits:(CGSize)fits sizeCategory:(id)category;
- (NSString)textStyle;
- (void)_updateFontWithSizeCategory:(id)category;
- (void)setText:(id)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _UIActivityActionCellTitleLabel

- (void)setText:(id)text
{
  textCopy = text;
  text = [(_UIActivityActionCellTitleLabel *)self text];
  v6 = [text isEqualToString:textCopy];

  if ((v6 & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = _UIActivityActionCellTitleLabel;
    [(_UIActivityActionCellTitleLabel *)&v9 setText:textCopy];
    traitCollection = [(_UIActivityActionCellTitleLabel *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    [(_UIActivityActionCellTitleLabel *)self _updateFontWithSizeCategory:preferredContentSizeCategory];
  }
}

- (void)_updateFontWithSizeCategory:(id)category
{
  v4 = MEMORY[0x1E69DB878];
  v5 = MEMORY[0x1E69DB880];
  textStyle = [(_UIActivityActionCellTitleLabel *)self textStyle];
  v7 = [v5 preferredFontDescriptorWithTextStyle:textStyle addingSymbolicTraits:0x8000 options:0];
  v8 = [v4 fontWithDescriptor:v7 size:0.0];
  [(_UIActivityActionCellTitleLabel *)self setFont:v8];

  [(_UIActivityActionCellTitleLabel *)self setNumberOfLines:0];

  [(_UIActivityActionCellTitleLabel *)self setNeedsDisplay];
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = _UIActivityActionCellTitleLabel;
  changeCopy = change;
  [(_UIActivityActionCellTitleLabel *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(_UIActivityActionCellTitleLabel *)self traitCollection:v10.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
  {
    traitCollection = [(_UIActivityActionCellTitleLabel *)self traitCollection];
    preferredContentSizeCategory3 = [traitCollection preferredContentSizeCategory];
    [(_UIActivityActionCellTitleLabel *)self _updateFontWithSizeCategory:preferredContentSizeCategory3];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits sizeCategory:(id)category
{
  height = fits.height;
  width = fits.width;
  [(_UIActivityActionCellTitleLabel *)self _updateFontWithSizeCategory:category];
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