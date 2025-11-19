@interface UIExpandedBarItemTableCell
- (void)layoutSubviews;
@end

@implementation UIExpandedBarItemTableCell

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = UIExpandedBarItemTableCell;
  [(UITableViewCell *)&v14 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(UITableViewCell *)self imageView];
  [v7 setContentMode:4];

  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  v10 = [(UITableViewCell *)self imageView];
  [v10 setFrame:{v8, v9, 45.0, v6}];

  v11 = [(UITableViewCell *)self imageView];
  [v11 frame];
  v12 = CGRectGetMaxX(v15) + 10.0;

  v13 = [(UITableViewCell *)self textLabel];
  [v13 setFrame:{v12, 0.0, v4 - v12, v6}];
}

@end