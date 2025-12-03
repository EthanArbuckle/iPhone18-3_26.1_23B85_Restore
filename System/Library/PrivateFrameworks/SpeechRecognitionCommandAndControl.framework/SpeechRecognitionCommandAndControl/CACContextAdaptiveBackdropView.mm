@interface CACContextAdaptiveBackdropView
- (CACContextAdaptiveBackdropView)initWithFrame:(CGRect)frame;
- (void)setCornerRadius:(double)radius;
@end

@implementation CACContextAdaptiveBackdropView

- (CACContextAdaptiveBackdropView)initWithFrame:(CGRect)frame
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = CACContextAdaptiveBackdropView;
  v3 = [(CACContextAdaptiveBackdropView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v4 setValue:&unk_287BEFEF8 forKey:@"inputRadius"];
    v5 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA588]];
    v6 = MEMORY[0x277D755B8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    traitCollection = [(CACContextAdaptiveBackdropView *)v3 traitCollection];
    v9 = [v6 imageNamed:@"luminance" inBundle:v7 compatibleWithTraitCollection:traitCollection];

    [v5 setValue:objc_msgSend(v9 forKey:{"CGImage"), @"inputColorMap"}];
    [v5 setValue:&unk_287BEFF08 forKey:@"inputAmount"];
    v24[0] = v4;
    v24[1] = v5;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    layer = [(CACContextAdaptiveBackdropView *)v3 layer];
    [layer setFilters:v10];

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    layer2 = [(CACContextAdaptiveBackdropView *)v3 layer];
    [layer2 setGroupName:v13];

    v15 = objc_alloc(MEMORY[0x277D75D18]);
    [(CACContextAdaptiveBackdropView *)v3 bounds];
    v16 = [v15 initWithFrame:?];
    [(CACContextAdaptiveBackdropView *)v3 setTintView:v16];

    tintView = [(CACContextAdaptiveBackdropView *)v3 tintView];
    [tintView setAutoresizingMask:18];

    v18 = [MEMORY[0x277D75348] colorWithWhite:0.941176471 alpha:0.77];
    tintView2 = [(CACContextAdaptiveBackdropView *)v3 tintView];
    [tintView2 setBackgroundColor:v18];

    tintView3 = [(CACContextAdaptiveBackdropView *)v3 tintView];
    [tintView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    tintView4 = [(CACContextAdaptiveBackdropView *)v3 tintView];
    [(CACContextAdaptiveBackdropView *)v3 addSubview:tintView4];
  }

  return v3;
}

- (void)setCornerRadius:(double)radius
{
  layer = [(CACContextAdaptiveBackdropView *)self layer];
  [layer setCornerRadius:radius];

  tintView = [(CACContextAdaptiveBackdropView *)self tintView];
  layer2 = [tintView layer];
  [layer2 setCornerRadius:radius];
}

@end