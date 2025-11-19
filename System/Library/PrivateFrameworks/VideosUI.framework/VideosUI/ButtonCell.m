@interface ButtonCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ButtonCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v13.receiver = self;
  v13.super_class = ButtonCell;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:a3];
  v4 = [(ButtonCell *)self textLabel];
  v5 = [MEMORY[0x1E69DC888] vui_keyColor];
  [v4 setTextColor:v5];

  v6 = [(ButtonCell *)self textLabel];
  v7 = [MEMORY[0x1E69DC888] whiteColor];
  [v6 setHighlightedTextColor:v7];

  v8 = [(ButtonCell *)self textLabel];
  v9 = [(ButtonCell *)self traitCollection];
  if ([v9 isAXEnabled])
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  [v8 setNumberOfLines:v10];

  v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v12 = [MEMORY[0x1E69DC888] vui_keyColor];
  [v11 setBackgroundColor:v12];

  [(ButtonCell *)self setSelectedBackgroundView:v11];
}

@end