@interface UIPrintSupplyLevelView
- (BOOL)supplyLevelShowWarning;
- (UIPrintSupplyLevelView)initWithFrame:(CGRect)a3 supplyInfo:(id)a4;
- (void)drawRect:(CGRect)a3;
@end

@implementation UIPrintSupplyLevelView

- (UIPrintSupplyLevelView)initWithFrame:(CGRect)a3 supplyInfo:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v30.receiver = self;
  v30.super_class = UIPrintSupplyLevelView;
  v10 = [(UIPrintSupplyLevelView *)&v30 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(UIPrintSupplyLevelView *)v10 setSupplyInfo:v9];
    [(UIPrintSupplyLevelView *)v11 setOpaque:0];
    v12 = objc_alloc(MEMORY[0x277D755E8]);
    v13 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
    v14 = [v12 initWithImage:v13];
    [(UIPrintSupplyLevelView *)v11 setLowSupplyImageView:v14];

    v15 = [MEMORY[0x277D75348] systemYellowColor];
    v16 = [(UIPrintSupplyLevelView *)v11 lowSupplyImageView];
    [v16 setTintColor:v15];

    v17 = [(UIPrintSupplyLevelView *)v11 lowSupplyImageView];
    [v17 frame];
    v19 = (height - v18) * 0.5;
    v20 = [(UIPrintSupplyLevelView *)v11 lowSupplyImageView];
    [v20 frame];
    v22 = v21;
    v23 = [(UIPrintSupplyLevelView *)v11 lowSupplyImageView];
    [v23 frame];
    v25 = v24;
    v26 = [(UIPrintSupplyLevelView *)v11 lowSupplyImageView];
    [v26 setFrame:{0.0, v19, v22, v25}];

    LODWORD(v17) = [(UIPrintSupplyLevelView *)v11 supplyLevelShowWarning];
    v27 = [(UIPrintSupplyLevelView *)v11 lowSupplyImageView];
    [v27 setHidden:v17 ^ 1];

    v28 = [(UIPrintSupplyLevelView *)v11 lowSupplyImageView];
    [(UIPrintSupplyLevelView *)v11 addSubview:v28];
  }

  return v11;
}

- (BOOL)supplyLevelShowWarning
{
  v3 = [(UIPrintSupplyLevelView *)self supplyInfo];
  v4 = [v3 supplyType];

  v5 = [(UIPrintSupplyLevelView *)self supplyInfo];
  v6 = [v5 level];
  v7 = [(UIPrintSupplyLevelView *)self supplyInfo];
  v8 = v7;
  if (v4 == 3)
  {
    v9 = v6 <= [v7 lowLevel];
  }

  else
  {
    v9 = v6 >= [v7 highLevel];
  }

  return v9;
}

- (void)drawRect:(CGRect)a3
{
  v42 = *MEMORY[0x277D85DE8];
  CurrentContext = UIGraphicsGetCurrentContext();
  BlendMode = CGContextGetBlendMode();
  CGContextSetBlendMode(CurrentContext, kCGBlendModeNormal);
  [(UIPrintSupplyLevelView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(UIPrintSupplyLevelView *)self lowSupplyImageView];
  [v14 frame];
  v16 = v15 + 8.0;

  v17 = v7 + v16;
  v18 = v11 - v16;
  v19 = MEMORY[0x277D75208];
  v43.origin.x = v17;
  v43.origin.y = v9;
  v43.size.width = v18;
  v43.size.height = v13;
  v44 = CGRectInset(v43, 0.25, 0.25);
  v20 = [v19 bezierPathWithRoundedRect:v44.origin.x cornerRadius:{v44.origin.y, v44.size.width, v44.size.height, 3.0}];
  [v20 addClip];
  v21 = [MEMORY[0x277D75348] whiteColor];
  [v21 set];

  [v20 fill];
  v22 = [(UIPrintSupplyLevelView *)self supplyInfo];
  v23 = [v22 level];

  if (v23 >= 1)
  {
    v24 = [(UIPrintSupplyLevelView *)self supplyInfo];
    v25 = [v24 colors];

    v26 = [(UIPrintSupplyLevelView *)self supplyInfo];
    v27 = v18 * ([v26 level] / 100.0);

    if ([v25 count] == 1)
    {
      v28 = [v25 objectAtIndex:0];
      [v28 set];

      v45.origin.x = v17;
      v45.origin.y = v9;
      v45.size.width = v27;
      v45.size.height = v13;
      UIRectFill(v45);
    }

    else
    {
      v29 = [v25 count];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v30 = v25;
      v31 = [v30 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = v13 / v29;
        v34 = *v38;
        do
        {
          v35 = 0;
          do
          {
            if (*v38 != v34)
            {
              objc_enumerationMutation(v30);
            }

            [*(*(&v37 + 1) + 8 * v35) set];
            v46.origin.x = v17;
            v46.origin.y = v9;
            v46.size.width = v27;
            v46.size.height = v33;
            UIRectFill(v46);
            v9 = v33 + v9;
            ++v35;
          }

          while (v32 != v35);
          v32 = [v30 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v32);
      }
    }
  }

  v36 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v36 set];

  [v20 setLineWidth:0.5];
  [v20 stroke];
  CGContextSetBlendMode(CurrentContext, BlendMode);
}

@end