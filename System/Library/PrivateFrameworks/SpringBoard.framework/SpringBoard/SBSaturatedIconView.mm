@interface SBSaturatedIconView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBSaturatedIconView)initWithImage:(id)image;
@end

@implementation SBSaturatedIconView

- (SBSaturatedIconView)initWithImage:(id)image
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = SBSaturatedIconView;
  v3 = [(SBSaturatedIconView *)&v13 initWithImage:image];
  if (v3)
  {
    v4 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C8]];
    [v4 setValue:&unk_28336F350 forKey:@"inputBias"];
    [v4 setValue:&unk_28336F360 forKey:@"inputAmount"];
    [(SBSaturatedIconView *)v3 setContentMode:1];
    [(SBSaturatedIconView *)v3 setAlpha:0.899999976];
    layer = [(SBSaturatedIconView *)v3 layer];
    v14[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [layer setFilters:v6];

    layer2 = [(SBSaturatedIconView *)v3 layer];
    [layer2 setCompositingFilter:*MEMORY[0x277CDA5D0]];

    layer3 = [(SBSaturatedIconView *)v3 layer];
    [layer3 setShouldRasterize:1];

    layer4 = [(SBSaturatedIconView *)v3 layer];
    [layer4 setRasterizationScale:SBScreenScale()];

    layer5 = [(SBSaturatedIconView *)v3 layer];
    [layer5 setAllowsGroupOpacity:0];

    layer6 = [(SBSaturatedIconView *)v3 layer];
    [layer6 setAllowsGroupBlending:0];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(SBSaturatedIconView *)self image:fits.width];
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