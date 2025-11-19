@interface PSGSelfSizingTableView
- (CGSize)intrinsicContentSize;
- (void)setContentSize:(CGSize)a3;
@end

@implementation PSGSelfSizingTableView

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PSGSelfSizingTableView *)self contentSize];
  if (width != v7 || height != v6)
  {
    v9.receiver = self;
    v9.super_class = PSGSelfSizingTableView;
    [(PSGSelfSizingTableView *)&v9 setContentSize:width, height];
    [(PSGSelfSizingTableView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  [(PSGSelfSizingTableView *)self layoutIfNeeded];
  v3 = *MEMORY[0x277D77260];
  [(PSGSelfSizingTableView *)self contentSize];
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

@end