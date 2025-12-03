@interface PUIStyleFontPickerButton
+ (CGSize)defaultFontPickerButtonSizeUsingSmallerSizing:(BOOL)sizing;
+ (Class)fontPickerButtonClassForRole:(id)role;
- (CGSize)cellSize;
- (void)_refreshHeightConstraint;
- (void)_refreshWidthConstraint;
- (void)configureWithAttributedString:(id)string;
- (void)configureWithFont:(id)font text:(id)text;
- (void)setUsingSmallerSizing:(BOOL)sizing;
@end

@implementation PUIStyleFontPickerButton

+ (Class)fontPickerButtonClassForRole:(id)role
{
  [role isEqual:*MEMORY[0x1E69C5218]];
  v3 = objc_opt_class();

  return v3;
}

+ (CGSize)defaultFontPickerButtonSizeUsingSmallerSizing:(BOOL)sizing
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
  isUsingSmallerSizing = [(PUIStyleFontPickerButton *)self isUsingSmallerSizing];

  [v3 defaultFontPickerButtonSizeUsingSmallerSizing:isUsingSmallerSizing];
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

  [(PUIStyleFontPickerButton *)self _refreshHeightConstraint];

  [(PUIStyleFontPickerButton *)self _refreshWidthConstraint];
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

  [(PUIStyleFontPickerButton *)self configureWithFont:v8 text:string];
}

- (void)setUsingSmallerSizing:(BOOL)sizing
{
  if (self->_usingSmallerSizing != sizing)
  {
    self->_usingSmallerSizing = sizing;
    [(PUIStyleFontPickerButton *)self _refreshHeightConstraint];

    [(PUIStyleFontPickerButton *)self _refreshWidthConstraint];
  }
}

- (void)_refreshHeightConstraint
{
  v14[1] = *MEMORY[0x1E69E9840];
  heightCellConstraint = [(PUIStyleFontPickerButton *)self heightCellConstraint];

  if (heightCellConstraint)
  {
    v4 = MEMORY[0x1E696ACD8];
    heightCellConstraint2 = [(PUIStyleFontPickerButton *)self heightCellConstraint];
    v14[0] = heightCellConstraint2;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v4 deactivateConstraints:v6];
  }

  heightAnchor = [(PUIStyleFontPickerButton *)self heightAnchor];
  [(PUIStyleFontPickerButton *)self cellSize];
  v9 = [heightAnchor constraintEqualToConstant:v8];
  [(PUIStyleFontPickerButton *)self setHeightCellConstraint:v9];

  v10 = MEMORY[0x1E696ACD8];
  heightCellConstraint3 = [(PUIStyleFontPickerButton *)self heightCellConstraint];
  v13 = heightCellConstraint3;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [v10 activateConstraints:v12];
}

- (void)_refreshWidthConstraint
{
  v13[1] = *MEMORY[0x1E69E9840];
  widthCellConstraint = [(PUIStyleFontPickerButton *)self widthCellConstraint];

  if (widthCellConstraint)
  {
    v4 = MEMORY[0x1E696ACD8];
    widthCellConstraint2 = [(PUIStyleFontPickerButton *)self widthCellConstraint];
    v13[0] = widthCellConstraint2;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v4 deactivateConstraints:v6];
  }

  widthAnchor = [(PUIStyleFontPickerButton *)self widthAnchor];
  [(PUIStyleFontPickerButton *)self cellSize];
  v8 = [widthAnchor constraintEqualToConstant:?];
  [(PUIStyleFontPickerButton *)self setWidthCellConstraint:v8];

  v9 = MEMORY[0x1E696ACD8];
  widthCellConstraint3 = [(PUIStyleFontPickerButton *)self widthCellConstraint];
  v12 = widthCellConstraint3;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v9 activateConstraints:v11];
}

@end