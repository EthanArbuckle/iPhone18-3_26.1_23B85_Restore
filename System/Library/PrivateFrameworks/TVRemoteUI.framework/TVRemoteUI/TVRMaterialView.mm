@interface TVRMaterialView
+ (id)backgroundMaterialViewWithWeighting:(double)weighting;
+ (id)seperatorMaterialView;
+ (id)trackpadMaterialView;
- (TVRMaterialView)initWithDarkMaterialView;
- (TVRMaterialView)initWithMaterialView:(id)view;
- (void)layoutSubviews;
@end

@implementation TVRMaterialView

- (TVRMaterialView)initWithDarkMaterialView
{
  v3 = [MEMORY[0x277D26718] materialViewWithRecipe:4];
  v4 = [(TVRMaterialView *)self initWithMaterialView:v3];

  return v4;
}

- (TVRMaterialView)initWithMaterialView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = TVRMaterialView;
  v6 = [(TVRMaterialView *)&v9 init];
  v7 = v6;
  if (viewCopy && v6)
  {
    objc_storeStrong(&v6->_materialView, view);
    [(TVRMaterialView *)v7 addSubview:v7->_materialView];
  }

  return v7;
}

+ (id)trackpadMaterialView
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D26718] materialViewWithRecipe:4];
  v3 = [[TVRMaterialView alloc] initWithMaterialView:v2];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v4 setBackgroundColor:whiteColor];

  [v4 setAlpha:0.12];
  [v4 setAutoresizingMask:18];
  layer = [v4 layer];
  v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
  v10[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [layer setCompositingFilter:v8];

  [(TVRMaterialView *)v3 insertSubview:v4 aboveSubview:v3->_materialView];

  return v3;
}

+ (id)seperatorMaterialView
{
  v2 = [[TVRMaterialView alloc] initWithMaterialView:0];
  v3 = [MEMORY[0x277D26740] _visualStylingProviderForRecipe:4 andCategory:0];
  [v3 automaticallyUpdateView:v2 withStyle:0];

  return v2;
}

+ (id)backgroundMaterialViewWithWeighting:(double)weighting
{
  v3 = [MEMORY[0x277D26718] materialViewWithRecipe:20 options:0 initialWeighting:weighting];
  v4 = [[TVRMaterialView alloc] initWithMaterialView:v3];

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = TVRMaterialView;
  [(TVRMaterialView *)&v4 layoutSubviews];
  materialView = self->_materialView;
  [(TVRMaterialView *)self bounds];
  [(MTMaterialView *)materialView setFrame:?];
}

@end