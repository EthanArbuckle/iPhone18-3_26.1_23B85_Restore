@interface PREditingFontPickerCellView
+ (CGSize)defaultCellSizeUsingSmallerSizing:(BOOL)sizing;
+ (Class)fontPickerCellViewClassForRole:(id)role;
- (CGSize)cellSize;
- (void)_refreshHeightConstraint;
- (void)_refreshWidthConstraint;
- (void)configureWithAttributedString:(id)string;
- (void)configureWithFont:(id)font text:(id)text;
- (void)setUsingSmallerSizing:(BOOL)sizing;
@end

@implementation PREditingFontPickerCellView

+ (Class)fontPickerCellViewClassForRole:(id)role
{
  [role isEqual:@"PRPosterRoleIncomingCall"];
  v3 = objc_opt_class();

  return v3;
}

+ (CGSize)defaultCellSizeUsingSmallerSizing:(BOOL)sizing
{
  v3 = 79.0;
  if (sizing)
  {
    v3 = 76.0;
  }

  v4 = 64.0;
  if (sizing)
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
  isUsingSmallerSizing = [(PREditingFontPickerCellView *)self isUsingSmallerSizing];

  [v3 defaultCellSizeUsingSmallerSizing:isUsingSmallerSizing];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)configureWithFont:(id)font text:(id)text
{
  fontCopy = font;
  textCopy = text;
  contentFont = self->_contentFont;
  self->_contentFont = fontCopy;
  v9 = fontCopy;

  contentText = self->_contentText;
  self->_contentText = textCopy;

  [(PREditingFontPickerCellView *)self _refreshHeightConstraint];

  [(PREditingFontPickerCellView *)self _refreshWidthConstraint];
}

- (void)configureWithAttributedString:(id)string
{
  stringCopy = string;
  v10 = [stringCopy attributesAtIndex:0 effectiveRange:0];
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

  string = [stringCopy string];

  [(PREditingFontPickerCellView *)self configureWithFont:v8 text:string];
}

- (void)setUsingSmallerSizing:(BOOL)sizing
{
  if (self->_usingSmallerSizing != sizing)
  {
    self->_usingSmallerSizing = sizing;
    [(PREditingFontPickerCellView *)self _refreshHeightConstraint];

    [(PREditingFontPickerCellView *)self _refreshWidthConstraint];
  }
}

- (void)_refreshHeightConstraint
{
  v14[1] = *MEMORY[0x1E69E9840];
  heightCellConstraint = [(PREditingFontPickerCellView *)self heightCellConstraint];

  if (heightCellConstraint)
  {
    v4 = MEMORY[0x1E696ACD8];
    heightCellConstraint2 = [(PREditingFontPickerCellView *)self heightCellConstraint];
    v14[0] = heightCellConstraint2;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v4 deactivateConstraints:v6];
  }

  heightAnchor = [(PREditingFontPickerCellView *)self heightAnchor];
  [(PREditingFontPickerCellView *)self cellSize];
  v9 = [heightAnchor constraintEqualToConstant:v8];
  [(PREditingFontPickerCellView *)self setHeightCellConstraint:v9];

  v10 = MEMORY[0x1E696ACD8];
  heightCellConstraint3 = [(PREditingFontPickerCellView *)self heightCellConstraint];
  v13 = heightCellConstraint3;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [v10 activateConstraints:v12];
}

- (void)_refreshWidthConstraint
{
  v13[1] = *MEMORY[0x1E69E9840];
  widthCellConstraint = [(PREditingFontPickerCellView *)self widthCellConstraint];

  if (widthCellConstraint)
  {
    v4 = MEMORY[0x1E696ACD8];
    widthCellConstraint2 = [(PREditingFontPickerCellView *)self widthCellConstraint];
    v13[0] = widthCellConstraint2;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v4 deactivateConstraints:v6];
  }

  widthAnchor = [(PREditingFontPickerCellView *)self widthAnchor];
  [(PREditingFontPickerCellView *)self cellSize];
  v8 = [widthAnchor constraintEqualToConstant:?];
  [(PREditingFontPickerCellView *)self setWidthCellConstraint:v8];

  v9 = MEMORY[0x1E696ACD8];
  widthCellConstraint3 = [(PREditingFontPickerCellView *)self widthCellConstraint];
  v12 = widthCellConstraint3;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v9 activateConstraints:v11];
}

@end