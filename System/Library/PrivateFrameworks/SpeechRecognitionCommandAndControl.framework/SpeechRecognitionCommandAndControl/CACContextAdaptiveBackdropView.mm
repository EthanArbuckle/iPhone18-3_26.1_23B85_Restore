@interface CACContextAdaptiveBackdropView
- (CACContextAdaptiveBackdropView)initWithFrame:(CGRect)a3;
- (void)setCornerRadius:(double)a3;
@end

@implementation CACContextAdaptiveBackdropView

- (CACContextAdaptiveBackdropView)initWithFrame:(CGRect)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = CACContextAdaptiveBackdropView;
  v3 = [(CACContextAdaptiveBackdropView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v4 setValue:&unk_287BEFEF8 forKey:@"inputRadius"];
    v5 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA588]];
    v6 = MEMORY[0x277D755B8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [(CACContextAdaptiveBackdropView *)v3 traitCollection];
    v9 = [v6 imageNamed:@"luminance" inBundle:v7 compatibleWithTraitCollection:v8];

    [v5 setValue:objc_msgSend(v9 forKey:{"CGImage"), @"inputColorMap"}];
    [v5 setValue:&unk_287BEFF08 forKey:@"inputAmount"];
    v24[0] = v4;
    v24[1] = v5;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v11 = [(CACContextAdaptiveBackdropView *)v3 layer];
    [v11 setFilters:v10];

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [(CACContextAdaptiveBackdropView *)v3 layer];
    [v14 setGroupName:v13];

    v15 = objc_alloc(MEMORY[0x277D75D18]);
    [(CACContextAdaptiveBackdropView *)v3 bounds];
    v16 = [v15 initWithFrame:?];
    [(CACContextAdaptiveBackdropView *)v3 setTintView:v16];

    v17 = [(CACContextAdaptiveBackdropView *)v3 tintView];
    [v17 setAutoresizingMask:18];

    v18 = [MEMORY[0x277D75348] colorWithWhite:0.941176471 alpha:0.77];
    v19 = [(CACContextAdaptiveBackdropView *)v3 tintView];
    [v19 setBackgroundColor:v18];

    v20 = [(CACContextAdaptiveBackdropView *)v3 tintView];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(CACContextAdaptiveBackdropView *)v3 tintView];
    [(CACContextAdaptiveBackdropView *)v3 addSubview:v21];
  }

  return v3;
}

- (void)setCornerRadius:(double)a3
{
  v5 = [(CACContextAdaptiveBackdropView *)self layer];
  [v5 setCornerRadius:a3];

  v7 = [(CACContextAdaptiveBackdropView *)self tintView];
  v6 = [v7 layer];
  [v6 setCornerRadius:a3];
}

@end