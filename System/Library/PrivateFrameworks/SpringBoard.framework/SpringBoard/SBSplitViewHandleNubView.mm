@interface SBSplitViewHandleNubView
+ (CGSize)nubHitTestSize;
- (SBSplitViewHandleNubView)initWithFrame:(CGRect)frame systemPointerInteractionManager:(id)manager;
- (UIEdgeInsets)pointerInteractionHitTestInsetsForView:(id)view;
- (id)styleForRegion:(id)region forView:(id)view;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation SBSplitViewHandleNubView

- (SBSplitViewHandleNubView)initWithFrame:(CGRect)frame systemPointerInteractionManager:(id)manager
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v28[4] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v27.receiver = self;
  v27.super_class = SBSplitViewHandleNubView;
  height = [(SBSplitViewHandleNubView *)&v27 initWithFrame:x, y, width, height];
  if (height)
  {
    v12 = objc_alloc_init(MEMORY[0x277CD9E08]);
    backdropLayer = height->_backdropLayer;
    height->_backdropLayer = v12;

    [(CABackdropLayer *)height->_backdropLayer setBackgroundColor:0];
    v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
    nubContainerView = height->_nubContainerView;
    height->_nubContainerView = v14;

    [(SBSplitViewHandleNubView *)height addSubview:height->_nubContainerView];
    layer = [(UIView *)height->_nubContainerView layer];
    [layer addSublayer:height->_backdropLayer];

    v17 = objc_alloc(MEMORY[0x277CD9EA0]);
    v18 = [v17 initWithType:*MEMORY[0x277CDA290]];
    v19 = *MEMORY[0x277CDA360];
    [v18 setValue:&unk_28336F480 forKey:*MEMORY[0x277CDA360]];
    v20 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v20 setValue:@"low" forKey:*MEMORY[0x277CDA4E8]];
    [v20 setValue:@"low" forKey:*MEMORY[0x277CDA4B8]];
    [v20 setValue:&unk_28336F490 forKey:*MEMORY[0x277CDA4F0]];
    v21 = MEMORY[0x277CBEC38];
    [v20 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDA4C8]];
    [v20 setValue:v21 forKey:*MEMORY[0x277CDA4A0]];
    v22 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2D0]];
    [v22 setValue:&unk_28336F4A0 forKey:v19];
    v23 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA580]];
    [v23 setValue:&unk_28336E700 forKey:*MEMORY[0x277CDA540]];
    [v23 setValue:&unk_28336F4F0 forKey:v19];
    v24 = height->_backdropLayer;
    v28[0] = v18;
    v28[1] = v20;
    v28[2] = v22;
    v28[3] = v23;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [(CABackdropLayer *)v24 setFilters:v25];

    objc_storeStrong(&height->_systemPointerInteractionManager, manager);
    [(SBSystemPointerInteractionManager *)height->_systemPointerInteractionManager registerView:height->_nubContainerView delegate:height];
  }

  return height;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SBSplitViewHandleNubView;
  [(SBSplitViewHandleNubView *)&v9 layoutSubviews];
  [(SBSplitViewHandleNubView *)self bounds];
  v4 = v3;
  v6 = v5;
  SBScreenScale();
  SBScreenScale();
  UIRectCenteredIntegralRect();
  [(CABackdropLayer *)self->_backdropLayer setCornerRadius:4.0 / SBScreenScale()];
  [(CABackdropLayer *)self->_backdropLayer setMaskedCorners:15];
  [(CABackdropLayer *)self->_backdropLayer setCornerCurve:*MEMORY[0x277CDA138]];
  nubContainerView = self->_nubContainerView;
  SBRectWithSize();
  [(UIView *)nubContainerView setBounds:?];
  [(UIView *)self->_nubContainerView setCenter:v4 * 0.5, v6 * 0.5];
  backdropLayer = self->_backdropLayer;
  [(UIView *)self->_nubContainerView bounds];
  [(CABackdropLayer *)backdropLayer setFrame:?];
}

+ (CGSize)nubHitTestSize
{
  SBRectWithSize();
  v3 = v2 + 40.0;
  v5 = v4 + 40.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)dealloc
{
  [(SBSystemPointerInteractionManager *)self->_systemPointerInteractionManager unregisterView:self->_nubContainerView];
  v3.receiver = self;
  v3.super_class = SBSplitViewHandleNubView;
  [(SBSplitViewHandleNubView *)&v3 dealloc];
}

- (UIEdgeInsets)pointerInteractionHitTestInsetsForView:(id)view
{
  v3 = -20.0;
  v4 = -20.0;
  v5 = -20.0;
  v6 = -20.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)styleForRegion:(id)region forView:(id)view
{
  v5 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self->_nubContainerView];
  v6 = [MEMORY[0x277D75878] effectWithPreview:v5];
  [(UIView *)self->_nubContainerView frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = +[SBMedusaDomain rootSettings];
  [v15 medusaSeparatorCursorEdgeInsets];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v28.origin.x = v8 + v19;
  v28.origin.y = v10 + v17;
  v28.size.width = v12 - (v19 + v23);
  v28.size.height = v14 - (v17 + v21);
  v24 = [MEMORY[0x277D75888] shapeWithRoundedRect:v28.origin.x cornerRadius:{v28.origin.y, v28.size.width, v28.size.height, CGRectGetHeight(v28) * 0.5}];
  v25 = [MEMORY[0x277D75890] styleWithEffect:v6 shape:v24];

  return v25;
}

@end