@interface SCLSingleGroupTableView
- (CGSize)intrinsicContentSize;
- (SCLSingleGroupTableView)initWithFrame:(CGRect)a3;
- (void)reloadData;
- (void)setBounds:(CGRect)a3;
- (void)setContentSize:(CGSize)a3;
@end

@implementation SCLSingleGroupTableView

- (SCLSingleGroupTableView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SCLSingleGroupTableView;
  v3 = [(SCLSingleGroupTableView *)&v7 initWithFrame:1 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

    [(SCLSingleGroupTableView *)v3 setScrollEnabled:0];
    v5 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SCLSingleGroupTableView *)v3 setBackgroundColor:v5];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(SCLSingleGroupTableView *)self numberOfRowsInSection:0];
  v4 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  [(SCLSingleGroupTableView *)self rectForRowAtIndexPath:v4];
  x = v5;
  y = v7;
  width = v9;
  height = v11;

  if (v3 >= 2)
  {
    for (i = 1; i != v3; ++i)
    {
      v14 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:0];
      [(SCLSingleGroupTableView *)self rectForRowAtIndexPath:v14];
      v24.origin.x = v15;
      v24.origin.y = v16;
      v24.size.width = v17;
      v24.size.height = v18;
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v23 = CGRectUnion(v22, v24);
      x = v23.origin.x;
      y = v23.origin.y;
      width = v23.size.width;
      height = v23.size.height;
    }
  }

  v19 = width;
  v20 = height;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)setContentSize:(CGSize)a3
{
  v4.receiver = self;
  v4.super_class = SCLSingleGroupTableView;
  [(SCLSingleGroupTableView *)&v4 setContentSize:a3.width, a3.height];
  [(SCLSingleGroupTableView *)self invalidateIntrinsicContentSize];
}

- (void)reloadData
{
  v3.receiver = self;
  v3.super_class = SCLSingleGroupTableView;
  [(SCLSingleGroupTableView *)&v3 reloadData];
  [(SCLSingleGroupTableView *)self invalidateIntrinsicContentSize];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(SCLSingleGroupTableView *)self numberOfRowsInSection:0]>= 1)
  {
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    [(SCLSingleGroupTableView *)self rectForRowAtIndexPath:v8];
    y = v9;
  }

  v10.receiver = self;
  v10.super_class = SCLSingleGroupTableView;
  [(SCLSingleGroupTableView *)&v10 setBounds:x, y, width, height];
}

@end