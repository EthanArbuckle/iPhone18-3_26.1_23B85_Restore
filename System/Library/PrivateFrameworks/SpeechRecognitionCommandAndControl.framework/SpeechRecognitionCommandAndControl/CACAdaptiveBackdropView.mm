@interface CACAdaptiveBackdropView
+ (id)contrastAdaptiveBackdropViewWithFrame:(CGRect)frame;
- (CACAdaptiveBackdropView)initWithFrame:(CGRect)frame isContrasted:(BOOL)contrasted;
@end

@implementation CACAdaptiveBackdropView

- (CACAdaptiveBackdropView)initWithFrame:(CGRect)frame isContrasted:(BOOL)contrasted
{
  contrastedCopy = contrasted;
  v29[3] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = CACAdaptiveBackdropView;
  v5 = [(CACAdaptiveBackdropView *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v6 setValue:&unk_287BEFEC8 forKey:@"inputRadius"];
    gaussianBlurFilter = v5->_gaussianBlurFilter;
    v5->_gaussianBlurFilter = v6;
    v8 = v6;

    v9 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA588]];
    v10 = MEMORY[0x277D755B8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    traitCollection = [(CACAdaptiveBackdropView *)v5 traitCollection];
    v13 = [v10 imageNamed:@"luminance" inBundle:v11 compatibleWithTraitCollection:traitCollection];

    [v9 setValue:objc_msgSend(v13 forKey:{"CGImage"), @"inputColorMap"}];
    [v9 setValue:&unk_287BEFED8 forKey:@"inputAmount"];
    luminanceMapFilter = v5->_luminanceMapFilter;
    v5->_luminanceMapFilter = v9;
    v15 = v9;

    v16 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
    CAColorMatrixMakeColorSourceOver();
    memset(v27, 0, sizeof(v27));
    v17 = [MEMORY[0x277CCAE60] valueWithBytes:v27 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
    [v16 setValue:v17 forKey:@"inputColorMatrix"];

    colorMatrix = v5->_colorMatrix;
    v5->_colorMatrix = v16;
    v19 = v16;

    v29[0] = v8;
    v29[1] = v15;
    v29[2] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];

    layer = [(CACAdaptiveBackdropView *)v5 layer];
    [layer setFilters:v20];

    if (contrastedCopy)
    {
      CACAdaptiveBackdropContrastedGroupName();
    }

    else
    {
      CACAdaptiveBackdropGroupName();
    }
    v22 = ;
    layer2 = [(CACAdaptiveBackdropView *)v5 layer];
    [layer2 setGroupName:v22];

    v24 = CACAdaptiveBackdropScale();
    layer3 = [(CACAdaptiveBackdropView *)v5 layer];
    [layer3 setScale:v24];
  }

  return v5;
}

+ (id)contrastAdaptiveBackdropViewWithFrame:(CGRect)frame
{
  v3 = [[CACAdaptiveBackdropView alloc] initWithFrame:1 isContrasted:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return v3;
}

@end