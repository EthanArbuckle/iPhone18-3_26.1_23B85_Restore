@interface TableCell
- (TableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureWithContent:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TableCell

- (TableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = TableCell;
  return [(TableCell *)&v5 initWithStyle:0 reuseIdentifier:a4];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TableCell;
  [(TableCell *)&v4 prepareForReuse];
  v3 = [(TableCell *)self contentCell];
  [v3 removeFromSuperview];

  [(TableCell *)self setContentCell:0];
}

- (void)configureWithContent:(id)a3
{
  v4 = a3;
  v5 = [v4 style];
  if (v5 > 6)
  {
    v7 = 0;
  }

  else
  {
    v6 = objc_alloc(*off_279AF6410[v5]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  [v7 configureWithContent:v4];
  CGAffineTransformMakeScale(&v13, 2.0, 2.0);
  v12 = v13;
  [v7 setTransform:&v12];
  v8 = [(TableCell *)self contentView];
  [v8 bounds];
  Width = CGRectGetWidth(v14);
  v10 = [(TableCell *)self contentView];
  [v10 bounds];
  [v7 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v15)}];

  [(TableCell *)self setContentCell:v7];
  v11 = [(TableCell *)self contentView];
  [v11 addSubview:v7];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = TableCell;
  [(TableCell *)&v8 layoutSubviews];
  v3 = [(TableCell *)self contentView];
  [v3 bounds];
  Width = CGRectGetWidth(v9);
  v5 = [(TableCell *)self contentView];
  [v5 bounds];
  Height = CGRectGetHeight(v10);
  v7 = [(TableCell *)self contentCell];
  [v7 setFrame:{0.0, 0.0, Width, Height}];
}

@end