@interface SVAdGradientView
- (SVAdGradientView)initWithFrame:(CGRect)frame;
@end

@implementation SVAdGradientView

- (SVAdGradientView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = SVAdGradientView;
  v3 = [(SVAdGradientView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(SVAdGradientView *)v3 layer];
    [layer setStartPoint:{0.5, 0.0}];
    [layer setEndPoint:{0.5, 1.0}];
    v20 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.03];
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.12];
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.35];
    v19 = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:{objc_msgSend(v20, "CGColor"), objc_msgSend(v6, "CGColor"), objc_msgSend(v7, "CGColor"), objc_msgSend(v8, "CGColor"), 0}];
    [layer setColors:v9];
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    LODWORD(v11) = 0.5;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    LODWORD(v13) = 0.75;
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    LODWORD(v15) = 1.0;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:{v10, v12, v14, v16, 0}];
    [layer setLocations:v17];
  }

  return v4;
}

@end