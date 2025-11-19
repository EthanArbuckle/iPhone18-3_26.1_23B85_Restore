@interface StockView.PriceChangeButton
- (_TtCC8StocksUI9StockView17PriceChangeButton)initWithCoder:(id)a3;
- (_TtCC8StocksUI9StockView17PriceChangeButton)initWithFrame:(CGRect)a3;
@end

@implementation StockView.PriceChangeButton

- (_TtCC8StocksUI9StockView17PriceChangeButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtCC8StocksUI9StockView17PriceChangeButton_onTap;
  sub_2204D05C8(0, &qword_281297130, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBB8]);
  *(&self->super.super.super.super.super.isa + v8) = [objc_allocWithZone(v9) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for StockView.PriceChangeButton();
  return [(StockView.PriceChangeButton *)&v11 initWithFrame:x, y, width, height];
}

- (_TtCC8StocksUI9StockView17PriceChangeButton)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtCC8StocksUI9StockView17PriceChangeButton_onTap;
  sub_2204D05C8(0, &qword_281297130, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBB8]);
  v7 = objc_allocWithZone(v6);
  v8 = a3;
  *(&self->super.super.super.super.super.isa + v5) = [v7 init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for StockView.PriceChangeButton();
  v9 = [(StockView.PriceChangeButton *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end