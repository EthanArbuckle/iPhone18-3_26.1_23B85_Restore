@interface StocksListBoxView
- (StocksListBoxView)initWithBackgroundMask:(id)mask;
@end

@implementation StocksListBoxView

- (StocksListBoxView)initWithBackgroundMask:(id)mask
{
  maskCopy = mask;
  v10.receiver = self;
  v10.super_class = StocksListBoxView;
  v5 = [(StocksListBoxView *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(StocksListBoxView *)v5 setImage:maskCopy];
    [(StocksListBoxView *)v6 setContentMode:3];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(StocksListBoxView *)v6 setTintColor:clearColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(StocksListBoxView *)v6 setBackgroundColor:clearColor2];
  }

  return v6;
}

@end