@interface SBSystemApertureSecureElementCaptureBoundsView
- (SBSystemApertureSecureElementCaptureBoundsView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setDebugOutlineColor:(id)a3;
- (void)setDebugString:(id)a3;
@end

@implementation SBSystemApertureSecureElementCaptureBoundsView

- (SBSystemApertureSecureElementCaptureBoundsView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = SBSystemApertureSecureElementCaptureBoundsView;
  v3 = [(SBSystemApertureSecureElementCaptureBoundsView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    debugLabel = v3->_debugLabel;
    v3->_debugLabel = v4;

    v6 = [(UILabel *)v3->_debugLabel layer];
    [v6 setDisableUpdateMask:18];

    v7 = v3->_debugLabel;
    v8 = [MEMORY[0x277D74300] systemFontOfSize:9.0];
    [(UILabel *)v7 setFont:v8];

    [(UILabel *)v3->_debugLabel setNumberOfLines:0];
    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    debugRectView = v3->_debugRectView;
    v3->_debugRectView = v9;

    v11 = [(UIView *)v3->_debugRectView layer];
    v12 = [(SBSystemApertureSecureElementCaptureBoundsView *)v3 traitCollection];
    [v12 displayScale];
    [v11 setBorderWidth:1.0 / v13];

    v14 = [(UIView *)v3->_debugRectView layer];
    [v14 setDisableUpdateMask:18];

    v15 = objc_alloc_init(_SBSABackdropView);
    boundsDefiningView = v3->_boundsDefiningView;
    v3->_boundsDefiningView = v15;

    [(SBSystemApertureSecureElementCaptureBoundsView *)v3 addSubview:v3->_boundsDefiningView];
    [(SBSystemApertureSecureElementCaptureBoundsView *)v3 addSubview:v3->_debugLabel];
    [(SBSystemApertureSecureElementCaptureBoundsView *)v3 addSubview:v3->_debugRectView];
    v17 = [MEMORY[0x277D75348] redColor];
    [(SBSystemApertureSecureElementCaptureBoundsView *)v3 setDebugOutlineColor:v17];

    [(SBSystemApertureSecureElementCaptureBoundsView *)v3 setNeedsLayout];
  }

  return v3;
}

- (void)setDebugOutlineColor:(id)a3
{
  v6 = a3;
  v4 = [(UIView *)self->_debugRectView layer];
  if (v6)
  {
    v5 = [v6 CGColor];
  }

  else
  {
    v5 = 0;
  }

  [v4 setBorderColor:v5];

  [(UILabel *)self->_debugLabel setTextColor:v6];
}

- (void)setDebugString:(id)a3
{
  [(UILabel *)self->_debugLabel setText:a3];

  [(SBSystemApertureSecureElementCaptureBoundsView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = SBSystemApertureSecureElementCaptureBoundsView;
  [(SBSystemApertureSecureElementCaptureBoundsView *)&v20 layoutSubviews];
  [(SBSystemApertureSecureElementCaptureBoundsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_SBSABackdropView *)self->_boundsDefiningView setFrame:?];
  v11 = [(SBSystemApertureSecureElementCaptureBoundsView *)self traitCollection];
  [v11 displayScale];
  v13 = v12;

  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  v22 = CGRectInset(v21, -1.0 / v13, -1.0 / v13);
  [(UIView *)self->_debugRectView setFrame:v22.origin.x, v22.origin.y, v22.size.width, v22.size.height];
  [(UILabel *)self->_debugLabel sizeThatFits:200.0, 1.79769313e308];
  v15 = v14;
  v17 = v16;
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  v18 = CGRectGetHeight(v23) + 20.0;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = 0.0;
  v25.origin.y = v18;
  v25.size.width = v15;
  v25.size.height = v17;
  [(UILabel *)self->_debugLabel setFrame:MidX + CGRectGetWidth(v25) * -0.5, v18, v15, v17];
}

@end