@interface TableCell
- (TableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureWithContent:(id)content;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TableCell

- (TableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = TableCell;
  return [(TableCell *)&v5 initWithStyle:0 reuseIdentifier:identifier];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TableCell;
  [(TableCell *)&v4 prepareForReuse];
  contentCell = [(TableCell *)self contentCell];
  [contentCell removeFromSuperview];

  [(TableCell *)self setContentCell:0];
}

- (void)configureWithContent:(id)content
{
  contentCopy = content;
  style = [contentCopy style];
  if (style > 6)
  {
    v7 = 0;
  }

  else
  {
    v6 = objc_alloc(*off_279AF6410[style]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  [v7 configureWithContent:contentCopy];
  CGAffineTransformMakeScale(&v13, 2.0, 2.0);
  v12 = v13;
  [v7 setTransform:&v12];
  contentView = [(TableCell *)self contentView];
  [contentView bounds];
  Width = CGRectGetWidth(v14);
  contentView2 = [(TableCell *)self contentView];
  [contentView2 bounds];
  [v7 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v15)}];

  [(TableCell *)self setContentCell:v7];
  contentView3 = [(TableCell *)self contentView];
  [contentView3 addSubview:v7];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = TableCell;
  [(TableCell *)&v8 layoutSubviews];
  contentView = [(TableCell *)self contentView];
  [contentView bounds];
  Width = CGRectGetWidth(v9);
  contentView2 = [(TableCell *)self contentView];
  [contentView2 bounds];
  Height = CGRectGetHeight(v10);
  contentCell = [(TableCell *)self contentCell];
  [contentCell setFrame:{0.0, 0.0, Width, Height}];
}

@end