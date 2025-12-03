@interface SBSceneViewAppIconView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBSceneViewAppIconView)initWithIcon:(id)icon;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation SBSceneViewAppIconView

- (SBSceneViewAppIconView)initWithIcon:(id)icon
{
  v25 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  v5 = [(SBSceneViewAppIconView *)self init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D66390]);
    imageView = v5->_imageView;
    v5->_imageView = v6;

    [(SBIconImageView *)v5->_imageView setIcon:iconCopy location:*MEMORY[0x277D666D0] animated:0];
    [(SBSceneViewAppIconView *)v5 addSubview:v5->_imageView];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = v5->_label;
    v5->_label = v8;

    [(UILabel *)v5->_label setTextAlignment:1];
    v10 = v5->_label;
    v11 = [iconCopy displayNameForLocation:*MEMORY[0x277D666C8]];
    [(UILabel *)v10 setText:v11];

    [(UILabel *)v5->_label setAdjustsFontSizeToFitWidth:1];
    v12 = v5->_label;
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v12 setFont:v13];

    [(UILabel *)v5->_label setAdjustsFontForContentSizeCategory:1];
    [(SBSceneViewAppIconView *)v5 addSubview:v5->_label];
    v14 = [objc_alloc(MEMORY[0x277D3D328]) initWithRecipe:1];
    shadowView = v5->_shadowView;
    v5->_shadowView = v14;

    v16 = v5->_shadowView;
    [(SBIconImageView *)v5->_imageView iconImageInfo];
    [(PLPlatterView *)v16 _setContinuousCornerRadius:v17];
    [(PLPlatterView *)v5->_shadowView setUsesBackgroundView:0];
    v18 = v5->_shadowView;
    *&v24[4] = *MEMORY[0x277CBF3A8];
    v20 = 1053609165;
    v21 = *v24;
    v22 = *&v24[16];
    v23 = 0x403E000000000000;
    [(PLPlatterView *)v18 setShadowAttributes:&v20];
    [(SBSceneViewAppIconView *)v5 addSubview:v5->_shadowView];
    [(SBSceneViewAppIconView *)v5 sendSubviewToBack:v5->_shadowView];
    [(SBSceneViewAppIconView *)v5 sizeToFit];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  imageView = [(SBSceneViewAppIconView *)self imageView];
  [imageView sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  label = [(SBSceneViewAppIconView *)self label];
  [label sizeThatFits:{width, height}];
  v13 = v12;
  v15 = v14;

  if (width >= v13 || width <= 0.0)
  {
    v17 = v13;
  }

  else
  {
    v17 = width;
  }

  if (v13 <= v8)
  {
    v17 = v8;
  }

  v18 = v10 + 4.0 + v15;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = SBSceneViewAppIconView;
  [(SBSceneViewAppIconView *)&v8 didMoveToWindow];
  window = [(SBSceneViewAppIconView *)self window];
  _sbWindowScene = [window _sbWindowScene];
  iconController = [_sbWindowScene iconController];
  iconManager = [iconController iconManager];
  iconImageCache = [iconManager iconImageCache];
  if (iconImageCache)
  {
    [(SBIconImageView *)self->_imageView setIconImageCache:iconImageCache];
  }
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = SBSceneViewAppIconView;
  [(SBSceneViewAppIconView *)&v24 layoutSubviews];
  [(SBSceneViewAppIconView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  imageView = [(SBSceneViewAppIconView *)self imageView];
  [imageView sizeThatFits:{v8, v10}];
  v13 = v12;
  v15 = v14;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = v13;
  v26.size.height = v15;
  v17 = MidX + CGRectGetWidth(v26) * -0.5;
  imageView2 = [(SBSceneViewAppIconView *)self imageView];
  [imageView2 setFrame:{v17, 0.0, v13, v15}];

  shadowView = [(SBSceneViewAppIconView *)self shadowView];
  [shadowView setFrame:{v17, 0.0, v13, v15}];

  label = [(SBSceneViewAppIconView *)self label];
  [label sizeThatFits:{v8, v10}];
  v22 = v21;
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  Width = CGRectGetWidth(v27);
  v28.origin.y = 0.0;
  v28.origin.x = v17;
  v28.size.width = v13;
  v28.size.height = v15;
  [label setFrame:{0.0, CGRectGetMaxY(v28) + 4.0, Width, v22}];
}

@end