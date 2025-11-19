@interface SUMoreListTableViewCell
- (SUMoreListTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation SUMoreListTableViewCell

- (SUMoreListTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = SUMoreListTableViewCell;
  v4 = [(SUMoreListTableViewCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SUMoreListTableViewCell *)v4 textLabel];
    [v6 setFont:{objc_msgSend(MEMORY[0x1E69DB878], "boldSystemFontOfSize:", 18.0)}];
    [v6 setTextColor:{objc_msgSend(MEMORY[0x1E69DC888], "colorWithWhite:alpha:", 0.301960784, 1.0)}];
  }

  return v5;
}

- (void)layoutSubviews
{
  v3 = [(SUMoreListTableViewCell *)self textLabel];
  if ([(SUMoreListTableViewCell *)self isHighlighted])
  {
    [v3 setShadowColor:0];
    v4 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    [v3 setShadowColor:{objc_msgSend(MEMORY[0x1E69DC888], "whiteColor")}];
    v5 = 1.0;
    v4 = 0.0;
  }

  [v3 setShadowOffset:{v4, v5}];
  v6.receiver = self;
  v6.super_class = SUMoreListTableViewCell;
  [(SUMoreListTableViewCell *)&v6 layoutSubviews];
}

@end