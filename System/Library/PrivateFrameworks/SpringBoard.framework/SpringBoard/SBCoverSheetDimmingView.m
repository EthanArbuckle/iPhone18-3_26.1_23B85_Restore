@interface SBCoverSheetDimmingView
- (SBCoverSheetDimmingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SBCoverSheetDimmingView

- (SBCoverSheetDimmingView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = SBCoverSheetDimmingView;
  v3 = [(SBCoverSheetDimmingView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
    [(SBCoverSheetDimmingView *)v3 setBackgroundColor:v4];

    v5 = [SBCoverSheetDestOutLayerView alloc];
    [(SBCoverSheetDimmingView *)v3 bounds];
    v6 = [(SBCoverSheetDestOutLayerView *)v5 initWithFrame:?];
    destOutLayerView = v3->_destOutLayerView;
    v3->_destOutLayerView = v6;

    [(SBCoverSheetDimmingView *)v3 addSubview:v3->_destOutLayerView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBCoverSheetDimmingView;
  [(SBCoverSheetDimmingView *)&v4 layoutSubviews];
  destOutLayerView = self->_destOutLayerView;
  [(SBCoverSheetDimmingView *)self bounds];
  [(SBCoverSheetDestOutLayerView *)destOutLayerView setBounds:?];
}

@end