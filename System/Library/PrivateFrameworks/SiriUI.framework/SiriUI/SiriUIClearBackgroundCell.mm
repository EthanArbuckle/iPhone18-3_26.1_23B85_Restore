@interface SiriUIClearBackgroundCell
- (SiriUIClearBackgroundCell)initWithFrame:(CGRect)frame;
@end

@implementation SiriUIClearBackgroundCell

- (SiriUIClearBackgroundCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SiriUIClearBackgroundCell;
  v3 = [(SiriUIClearBackgroundCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SiriUIClearBackgroundCell *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

@end