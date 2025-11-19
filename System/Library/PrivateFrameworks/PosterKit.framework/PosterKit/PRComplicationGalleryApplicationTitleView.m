@interface PRComplicationGalleryApplicationTitleView
+ (CGSize)iconImageSize;
- (CGSize)imageSize;
- (NSDirectionalEdgeInsets)contentInsets;
- (PRComplicationGalleryApplicationTitleView)initWithFrame:(CGRect)a3;
- (id)_textLabelFont;
- (unint64_t)_textLabelNumberOfLines;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)setContentInsets:(NSDirectionalEdgeInsets)a3;
- (void)setIconImage:(id)a3;
- (void)setImageSize:(CGSize)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PRComplicationGalleryApplicationTitleView

- (PRComplicationGalleryApplicationTitleView)initWithFrame:(CGRect)a3
{
  v47[2] = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = PRComplicationGalleryApplicationTitleView;
  v3 = [(PRComplicationGalleryApplicationTitleView *)&v44 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v5 = *(v3 + 52);
    *(v3 + 52) = v4;

    [*(v3 + 52) setContentMode:1];
    [*(v3 + 52) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:*(v3 + 52)];
    *(v3 + 472) = vdupq_n_s64(0x4048000000000000uLL);
    v6 = [*(v3 + 52) widthAnchor];
    v7 = [v6 constraintEqualToConstant:48.0];
    v8 = *(v3 + 53);
    *(v3 + 53) = v7;

    LODWORD(v9) = 1148829696;
    [*(v3 + 53) setPriority:v9];
    v10 = [*(v3 + 52) heightAnchor];
    v11 = [v10 constraintEqualToConstant:48.0];
    v12 = *(v3 + 54);
    *(v3 + 54) = v11;

    LODWORD(v13) = 1148829696;
    [*(v3 + 54) setPriority:v13];
    v14 = MEMORY[0x1E696ACD8];
    v47[0] = *(v3 + 53);
    v47[1] = *(v3 + 54);
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    [v14 activateConstraints:v15];

    v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v17 = *(v3 + 51);
    *(v3 + 51) = v16;

    v18 = *(v3 + 51);
    v19 = [v3 _textLabelFont];
    [v18 setFont:v19];

    [*(v3 + 51) setNumberOfLines:{objc_msgSend(v3, "_textLabelNumberOfLines")}];
    LODWORD(v20) = 1148846080;
    [*(v3 + 51) setContentCompressionResistancePriority:1 forAxis:v20];
    v21 = objc_alloc(MEMORY[0x1E69DCF90]);
    v46[0] = *(v3 + 52);
    v46[1] = *(v3 + 51);
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    v23 = [v21 initWithArrangedSubviews:v22];

    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v23 setAxis:0];
    [v23 setSpacing:16.0];
    [v3 addSubview:v23];
    v24 = [v23 leadingAnchor];
    v25 = [v3 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v27 = *(v3 + 55);
    *(v3 + 55) = v26;

    v28 = [v23 trailingAnchor];
    v29 = [v3 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v31 = *(v3 + 56);
    *(v3 + 56) = v30;

    v32 = [v23 topAnchor];
    v33 = [v3 topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    v35 = *(v3 + 57);
    *(v3 + 57) = v34;

    v36 = [v23 bottomAnchor];
    v37 = [v3 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    v39 = *(v3 + 58);
    *(v3 + 58) = v38;

    v45[0] = *(v3 + 55);
    v45[1] = *(v3 + 56);
    v40 = MEMORY[0x1E696ACD8];
    v45[2] = *(v3 + 57);
    v45[3] = *(v3 + 58);
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
    [v40 activateConstraints:v41];

    [v3 setContentInsets:{12.0, 27.0, 12.0, 27.0}];
    v42 = [MEMORY[0x1E696AD88] defaultCenter];
    [v42 addObserver:v3 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PRComplicationGalleryApplicationTitleView;
  [(PRComplicationGalleryApplicationTitleView *)&v4 dealloc];
}

- (void)setIconImage:(id)a3
{
  [(UIImageView *)self->_imageView setImage:?];
  imageView = self->_imageView;

  [(UIImageView *)imageView setHidden:a3 == 0];
}

- (void)setImageSize:(CGSize)a3
{
  p_imageSize = &self->_imageSize;
  if (self->_imageSize.width != a3.width || self->_imageSize.height != a3.height)
  {
    p_imageSize->width = a3.width;
    self->_imageSize.height = a3.height;
    [(NSLayoutConstraint *)self->_imageWidthConstraint setConstant:?];
    height = p_imageSize->height;
    imageHeightConstraint = self->_imageHeightConstraint;

    [(NSLayoutConstraint *)imageHeightConstraint setConstant:height];
  }
}

+ (CGSize)iconImageSize
{
  v2 = 48.0;
  v3 = 48.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentInsets:(NSDirectionalEdgeInsets)a3
{
  p_contentInsets = &self->_contentInsets;
  v4.f64[0] = a3.top;
  v4.f64[1] = a3.leading;
  v5.f64[0] = a3.bottom;
  v5.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v4), vceqq_f64(*&self->_contentInsets.bottom, v5)))) & 1) == 0)
  {
    p_contentInsets->top = a3.top;
    self->_contentInsets.leading = a3.leading;
    self->_contentInsets.bottom = a3.bottom;
    self->_contentInsets.trailing = a3.trailing;
    [(NSLayoutConstraint *)self->_contentLeadingConstraint setConstant:a3.leading];
    [(NSLayoutConstraint *)self->_contentTrailingConstraint setConstant:-p_contentInsets->trailing];
    [(NSLayoutConstraint *)self->_contentTopConstraint setConstant:p_contentInsets->top];
    contentBottomConstraint = self->_contentBottomConstraint;
    v8 = -p_contentInsets->bottom;

    [(NSLayoutConstraint *)contentBottomConstraint setConstant:v8];
  }
}

- (id)_textLabelFont
{
  v3 = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [(PRComplicationGalleryApplicationTitleView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v3 preferredFontForTextStyle:v4 hiFontStyle:4 contentSizeCategory:v6];

  return v7;
}

- (unint64_t)_textLabelNumberOfLines
{
  v2 = [(PRComplicationGalleryApplicationTitleView *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  if (v3)
  {
    if (UIContentSizeCategoryIsAccessibilityCategory(v3))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  v5 = [(PRComplicationGalleryApplicationTitleView *)self textLabel];
  v4 = [(PRComplicationGalleryApplicationTitleView *)self _textLabelFont];
  [v5 setFont:v4];

  [v5 setNumberOfLines:{-[PRComplicationGalleryApplicationTitleView _textLabelNumberOfLines](self, "_textLabelNumberOfLines")}];
  [(PRComplicationGalleryApplicationTitleView *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PRComplicationGalleryApplicationTitleView;
  v4 = a3;
  [(PRComplicationGalleryApplicationTitleView *)&v8 traitCollectionDidChange:v4];
  v5 = [(PRComplicationGalleryApplicationTitleView *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  if ((v4 & 1) == 0)
  {
    [(PRComplicationGalleryApplicationTitleView *)self _contentSizeCategoryDidChange:0];
  }
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSDirectionalEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  leading = self->_contentInsets.leading;
  bottom = self->_contentInsets.bottom;
  trailing = self->_contentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end