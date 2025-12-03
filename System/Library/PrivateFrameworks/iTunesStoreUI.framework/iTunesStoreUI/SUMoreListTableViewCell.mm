@interface SUMoreListTableViewCell
- (SUMoreListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation SUMoreListTableViewCell

- (SUMoreListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = SUMoreListTableViewCell;
  v4 = [(SUMoreListTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(SUMoreListTableViewCell *)v4 textLabel];
    [textLabel setFont:{objc_msgSend(MEMORY[0x1E69DB878], "boldSystemFontOfSize:", 18.0)}];
    [textLabel setTextColor:{objc_msgSend(MEMORY[0x1E69DC888], "colorWithWhite:alpha:", 0.301960784, 1.0)}];
  }

  return v5;
}

- (void)layoutSubviews
{
  textLabel = [(SUMoreListTableViewCell *)self textLabel];
  if ([(SUMoreListTableViewCell *)self isHighlighted])
  {
    [textLabel setShadowColor:0];
    v4 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    [textLabel setShadowColor:{objc_msgSend(MEMORY[0x1E69DC888], "whiteColor")}];
    v5 = 1.0;
    v4 = 0.0;
  }

  [textLabel setShadowOffset:{v4, v5}];
  v6.receiver = self;
  v6.super_class = SUMoreListTableViewCell;
  [(SUMoreListTableViewCell *)&v6 layoutSubviews];
}

@end