@interface UIPrintSupplyLevelView
- (BOOL)supplyLevelShowWarning;
- (UIPrintSupplyLevelView)initWithFrame:(CGRect)frame supplyInfo:(id)info;
- (void)drawRect:(CGRect)rect;
@end

@implementation UIPrintSupplyLevelView

- (UIPrintSupplyLevelView)initWithFrame:(CGRect)frame supplyInfo:(id)info
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  infoCopy = info;
  v30.receiver = self;
  v30.super_class = UIPrintSupplyLevelView;
  height = [(UIPrintSupplyLevelView *)&v30 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(UIPrintSupplyLevelView *)height setSupplyInfo:infoCopy];
    [(UIPrintSupplyLevelView *)v11 setOpaque:0];
    v12 = objc_alloc(MEMORY[0x277D755E8]);
    v13 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
    v14 = [v12 initWithImage:v13];
    [(UIPrintSupplyLevelView *)v11 setLowSupplyImageView:v14];

    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
    lowSupplyImageView = [(UIPrintSupplyLevelView *)v11 lowSupplyImageView];
    [lowSupplyImageView setTintColor:systemYellowColor];

    lowSupplyImageView2 = [(UIPrintSupplyLevelView *)v11 lowSupplyImageView];
    [lowSupplyImageView2 frame];
    v19 = (height - v18) * 0.5;
    lowSupplyImageView3 = [(UIPrintSupplyLevelView *)v11 lowSupplyImageView];
    [lowSupplyImageView3 frame];
    v22 = v21;
    lowSupplyImageView4 = [(UIPrintSupplyLevelView *)v11 lowSupplyImageView];
    [lowSupplyImageView4 frame];
    v25 = v24;
    lowSupplyImageView5 = [(UIPrintSupplyLevelView *)v11 lowSupplyImageView];
    [lowSupplyImageView5 setFrame:{0.0, v19, v22, v25}];

    LODWORD(lowSupplyImageView2) = [(UIPrintSupplyLevelView *)v11 supplyLevelShowWarning];
    lowSupplyImageView6 = [(UIPrintSupplyLevelView *)v11 lowSupplyImageView];
    [lowSupplyImageView6 setHidden:lowSupplyImageView2 ^ 1];

    lowSupplyImageView7 = [(UIPrintSupplyLevelView *)v11 lowSupplyImageView];
    [(UIPrintSupplyLevelView *)v11 addSubview:lowSupplyImageView7];
  }

  return v11;
}

- (BOOL)supplyLevelShowWarning
{
  supplyInfo = [(UIPrintSupplyLevelView *)self supplyInfo];
  supplyType = [supplyInfo supplyType];

  supplyInfo2 = [(UIPrintSupplyLevelView *)self supplyInfo];
  level = [supplyInfo2 level];
  supplyInfo3 = [(UIPrintSupplyLevelView *)self supplyInfo];
  v8 = supplyInfo3;
  if (supplyType == 3)
  {
    v9 = level <= [supplyInfo3 lowLevel];
  }

  else
  {
    v9 = level >= [supplyInfo3 highLevel];
  }

  return v9;
}

- (void)drawRect:(CGRect)rect
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
  lowSupplyImageView = [(UIPrintSupplyLevelView *)self lowSupplyImageView];
  [lowSupplyImageView frame];
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
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [whiteColor set];

  [v20 fill];
  supplyInfo = [(UIPrintSupplyLevelView *)self supplyInfo];
  level = [supplyInfo level];

  if (level >= 1)
  {
    supplyInfo2 = [(UIPrintSupplyLevelView *)self supplyInfo];
    colors = [supplyInfo2 colors];

    supplyInfo3 = [(UIPrintSupplyLevelView *)self supplyInfo];
    v27 = v18 * ([supplyInfo3 level] / 100.0);

    if ([colors count] == 1)
    {
      v28 = [colors objectAtIndex:0];
      [v28 set];

      v45.origin.x = v17;
      v45.origin.y = v9;
      v45.size.width = v27;
      v45.size.height = v13;
      UIRectFill(v45);
    }

    else
    {
      v29 = [colors count];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v30 = colors;
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

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [secondaryLabelColor set];

  [v20 setLineWidth:0.5];
  [v20 stroke];
  CGContextSetBlendMode(CurrentContext, BlendMode);
}

@end