@interface ButtonCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ButtonCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v13.receiver = self;
  v13.super_class = ButtonCell;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:specifier];
  textLabel = [(ButtonCell *)self textLabel];
  vui_keyColor = [MEMORY[0x1E69DC888] vui_keyColor];
  [textLabel setTextColor:vui_keyColor];

  textLabel2 = [(ButtonCell *)self textLabel];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [textLabel2 setHighlightedTextColor:whiteColor];

  textLabel3 = [(ButtonCell *)self textLabel];
  traitCollection = [(ButtonCell *)self traitCollection];
  if ([traitCollection isAXEnabled])
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  [textLabel3 setNumberOfLines:v10];

  v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
  vui_keyColor2 = [MEMORY[0x1E69DC888] vui_keyColor];
  [v11 setBackgroundColor:vui_keyColor2];

  [(ButtonCell *)self setSelectedBackgroundView:v11];
}

@end