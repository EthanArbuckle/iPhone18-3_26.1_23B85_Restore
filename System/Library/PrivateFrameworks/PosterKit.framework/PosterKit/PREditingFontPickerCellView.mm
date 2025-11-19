@interface PREditingFontPickerCellView
+ (CGSize)defaultCellSizeUsingSmallerSizing:(BOOL)a3;
+ (Class)fontPickerCellViewClassForRole:(id)a3;
- (CGSize)cellSize;
- (void)_refreshHeightConstraint;
- (void)_refreshWidthConstraint;
- (void)configureWithAttributedString:(id)a3;
- (void)configureWithFont:(id)a3 text:(id)a4;
- (void)setUsingSmallerSizing:(BOOL)a3;
@end

@implementation PREditingFontPickerCellView

+ (Class)fontPickerCellViewClassForRole:(id)a3
{
  [a3 isEqual:@"PRPosterRoleIncomingCall"];
  v3 = objc_opt_class();

  return v3;
}

+ (CGSize)defaultCellSizeUsingSmallerSizing:(BOOL)a3
{
  v3 = 79.0;
  if (a3)
  {
    v3 = 76.0;
  }

  v4 = 64.0;
  if (a3)
  {
    v4 = 62.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)cellSize
{
  v3 = objc_opt_class();
  v4 = [(PREditingFontPickerCellView *)self isUsingSmallerSizing];

  [v3 defaultCellSizeUsingSmallerSizing:v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)configureWithFont:(id)a3 text:(id)a4
{
  v6 = a3;
  v7 = a4;
  contentFont = self->_contentFont;
  self->_contentFont = v6;
  v9 = v6;

  contentText = self->_contentText;
  self->_contentText = v7;

  [(PREditingFontPickerCellView *)self _refreshHeightConstraint];

  [(PREditingFontPickerCellView *)self _refreshWidthConstraint];
}

- (void)configureWithAttributedString:(id)a3
{
  v4 = a3;
  v10 = [v4 attributesAtIndex:0 effectiveRange:0];
  v5 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  }

  v8 = v7;

  v9 = [v4 string];

  [(PREditingFontPickerCellView *)self configureWithFont:v8 text:v9];
}

- (void)setUsingSmallerSizing:(BOOL)a3
{
  if (self->_usingSmallerSizing != a3)
  {
    self->_usingSmallerSizing = a3;
    [(PREditingFontPickerCellView *)self _refreshHeightConstraint];

    [(PREditingFontPickerCellView *)self _refreshWidthConstraint];
  }
}

- (void)_refreshHeightConstraint
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(PREditingFontPickerCellView *)self heightCellConstraint];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD8];
    v5 = [(PREditingFontPickerCellView *)self heightCellConstraint];
    v14[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v4 deactivateConstraints:v6];
  }

  v7 = [(PREditingFontPickerCellView *)self heightAnchor];
  [(PREditingFontPickerCellView *)self cellSize];
  v9 = [v7 constraintEqualToConstant:v8];
  [(PREditingFontPickerCellView *)self setHeightCellConstraint:v9];

  v10 = MEMORY[0x1E696ACD8];
  v11 = [(PREditingFontPickerCellView *)self heightCellConstraint];
  v13 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [v10 activateConstraints:v12];
}

- (void)_refreshWidthConstraint
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(PREditingFontPickerCellView *)self widthCellConstraint];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD8];
    v5 = [(PREditingFontPickerCellView *)self widthCellConstraint];
    v13[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v4 deactivateConstraints:v6];
  }

  v7 = [(PREditingFontPickerCellView *)self widthAnchor];
  [(PREditingFontPickerCellView *)self cellSize];
  v8 = [v7 constraintEqualToConstant:?];
  [(PREditingFontPickerCellView *)self setWidthCellConstraint:v8];

  v9 = MEMORY[0x1E696ACD8];
  v10 = [(PREditingFontPickerCellView *)self widthCellConstraint];
  v12 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v9 activateConstraints:v11];
}

@end