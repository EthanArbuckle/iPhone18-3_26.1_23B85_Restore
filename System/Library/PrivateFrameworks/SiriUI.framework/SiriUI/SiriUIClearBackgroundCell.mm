@interface SiriUIClearBackgroundCell
- (SiriUIClearBackgroundCell)initWithFrame:(CGRect)a3;
@end

@implementation SiriUIClearBackgroundCell

- (SiriUIClearBackgroundCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SiriUIClearBackgroundCell;
  v3 = [(SiriUIClearBackgroundCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(SiriUIClearBackgroundCell *)v3 setBackgroundColor:v4];
  }

  return v3;
}

@end