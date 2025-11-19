@interface SBSaturatedIconView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SBSaturatedIconView)initWithImage:(id)a3;
@end

@implementation SBSaturatedIconView

- (SBSaturatedIconView)initWithImage:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = SBSaturatedIconView;
  v3 = [(SBSaturatedIconView *)&v13 initWithImage:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C8]];
    [v4 setValue:&unk_28336F350 forKey:@"inputBias"];
    [v4 setValue:&unk_28336F360 forKey:@"inputAmount"];
    [(SBSaturatedIconView *)v3 setContentMode:1];
    [(SBSaturatedIconView *)v3 setAlpha:0.899999976];
    v5 = [(SBSaturatedIconView *)v3 layer];
    v14[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v5 setFilters:v6];

    v7 = [(SBSaturatedIconView *)v3 layer];
    [v7 setCompositingFilter:*MEMORY[0x277CDA5D0]];

    v8 = [(SBSaturatedIconView *)v3 layer];
    [v8 setShouldRasterize:1];

    v9 = [(SBSaturatedIconView *)v3 layer];
    [v9 setRasterizationScale:SBScreenScale()];

    v10 = [(SBSaturatedIconView *)v3 layer];
    [v10 setAllowsGroupOpacity:0];

    v11 = [(SBSaturatedIconView *)v3 layer];
    [v11 setAllowsGroupBlending:0];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(SBSaturatedIconView *)self image:a3.width];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end