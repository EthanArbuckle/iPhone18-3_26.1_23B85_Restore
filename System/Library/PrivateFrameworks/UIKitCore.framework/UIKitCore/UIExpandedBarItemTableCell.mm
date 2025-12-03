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
  imageView = [(UITableViewCell *)self imageView];
  [imageView setContentMode:4];

  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  imageView2 = [(UITableViewCell *)self imageView];
  [imageView2 setFrame:{v8, v9, 45.0, v6}];

  imageView3 = [(UITableViewCell *)self imageView];
  [imageView3 frame];
  v12 = CGRectGetMaxX(v15) + 10.0;

  textLabel = [(UITableViewCell *)self textLabel];
  [textLabel setFrame:{v12, 0.0, v4 - v12, v6}];
}

@end