@interface StocksListBoxView
- (StocksListBoxView)initWithBackgroundMask:(id)a3;
@end

@implementation StocksListBoxView

- (StocksListBoxView)initWithBackgroundMask:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = StocksListBoxView;
  v5 = [(StocksListBoxView *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(StocksListBoxView *)v5 setImage:v4];
    [(StocksListBoxView *)v6 setContentMode:3];
    v7 = [MEMORY[0x277D75348] clearColor];
    [(StocksListBoxView *)v6 setTintColor:v7];

    v8 = [MEMORY[0x277D75348] clearColor];
    [(StocksListBoxView *)v6 setBackgroundColor:v8];
  }

  return v6;
}

@end