@interface TKPickerTableViewCell
- (void)_updateTextLabelColor;
- (void)setShouldTintTextLabel:(BOOL)a3;
- (void)setTextLabelColor:(id)a3;
- (void)tintColorDidChange;
@end

@implementation TKPickerTableViewCell

- (void)setTextLabelColor:(id)a3
{
  v5 = a3;
  if (self->_textLabelColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_textLabelColor, a3);
    [(TKPickerTableViewCell *)self _updateTextLabelColor];
    v5 = v6;
  }
}

- (void)setShouldTintTextLabel:(BOOL)a3
{
  if (self->_shouldTintTextLabel != a3)
  {
    self->_shouldTintTextLabel = a3;
    if (!self->_textLabelColor)
    {
      [(TKPickerTableViewCell *)self _updateTextLabelColor];
    }
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = TKPickerTableViewCell;
  [(TKPickerTableViewCell *)&v3 tintColorDidChange];
  if (!self->_textLabelColor && self->_shouldTintTextLabel)
  {
    [(TKPickerTableViewCell *)self _updateTextLabelColor];
  }
}

- (void)_updateTextLabelColor
{
  v3 = self->_textLabelColor;
  if (!v3)
  {
    if (!self->_shouldTintTextLabel || ([(TKPickerTableViewCell *)self tintColor], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v3 = +[TKUIKitConstants defaultTableViewCellTextColor];
    }
  }

  v5 = v3;
  v4 = [(TKPickerTableViewCell *)self textLabel];
  [v4 setTextColor:v5];
}

@end