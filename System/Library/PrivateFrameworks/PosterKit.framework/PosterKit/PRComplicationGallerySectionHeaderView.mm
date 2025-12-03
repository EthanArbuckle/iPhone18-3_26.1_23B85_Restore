@interface PRComplicationGallerySectionHeaderView
+ (CGSize)iconImageSize;
- (PRComplicationGallerySectionHeaderView)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setIconImage:(id)image;
@end

@implementation PRComplicationGallerySectionHeaderView

- (PRComplicationGallerySectionHeaderView)initWithFrame:(CGRect)frame
{
  v37[2] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = PRComplicationGallerySectionHeaderView;
  v3 = [(PRComplicationGallerySectionHeaderView *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v4;

    LODWORD(v6) = 1148846080;
    [(UIImageView *)v3->_iconImageView setContentCompressionResistancePriority:1 forAxis:v6];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v3->_label;
    v3->_label = v7;

    v9 = v3->_label;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v9 setTextColor:labelColor];

    v11 = v3->_label;
    v12 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB980]];
    [(UILabel *)v11 setFont:v12];

    [(UILabel *)v3->_label setAdjustsFontForContentSizeCategory:1];
    v13 = objc_alloc(MEMORY[0x1E69DCF90]);
    v37[0] = v3->_iconImageView;
    v37[1] = v3->_label;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v15 = [v13 initWithArrangedSubviews:v14];

    [v15 setAlignment:3];
    [v15 setSpacing:8.0];
    [(PRComplicationGallerySectionHeaderView *)v3 addSubview:v15];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = MEMORY[0x1E696ACD8];
    widthAnchor = [(UIImageView *)v3->_iconImageView widthAnchor];
    v33 = [widthAnchor constraintEqualToConstant:24.0];
    v36[0] = v33;
    heightAnchor = [(UIImageView *)v3->_iconImageView heightAnchor];
    v31 = [heightAnchor constraintEqualToConstant:24.0];
    v36[1] = v31;
    leadingAnchor = [v15 leadingAnchor];
    leadingAnchor2 = [(PRComplicationGallerySectionHeaderView *)v3 leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v36[2] = v27;
    trailingAnchor = [v15 trailingAnchor];
    trailingAnchor2 = [(PRComplicationGallerySectionHeaderView *)v3 trailingAnchor];
    v16 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-16.0];
    v36[3] = v16;
    topAnchor = [v15 topAnchor];
    topAnchor2 = [(PRComplicationGallerySectionHeaderView *)v3 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v36[4] = v19;
    bottomAnchor = [v15 bottomAnchor];
    bottomAnchor2 = [(PRComplicationGallerySectionHeaderView *)v3 bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v36[5] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:6];
    [v28 activateConstraints:v23];
  }

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PRComplicationGallerySectionHeaderView;
  [(PRComplicationGallerySectionHeaderView *)&v3 prepareForReuse];
  [(UIImageView *)self->_iconImageView setHidden:0];
}

- (void)setIconImage:(id)image
{
  [(UIImageView *)self->_iconImageView setImage:?];
  iconImageView = self->_iconImageView;

  [(UIImageView *)iconImageView setHidden:image == 0];
}

+ (CGSize)iconImageSize
{
  v2 = 24.0;
  v3 = 24.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end