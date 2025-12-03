@interface SKUIDownloadsCellView
- (SKUIDownloadsCellView)init;
- (void)init;
- (void)layoutSubviews;
- (void)setAttributedTitle:(id)title;
- (void)setBackgroundColor:(id)color;
- (void)setButtonType:(int64_t)type;
- (void)setImage:(id)image;
- (void)setIsPad:(BOOL)pad;
- (void)setSubtitle:(id)subtitle;
@end

@implementation SKUIDownloadsCellView

- (SKUIDownloadsCellView)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDownloadsCellView init];
  }

  v29.receiver = self;
  v29.super_class = SKUIDownloadsCellView;
  v3 = [(SKUIDownloadsCellView *)&v29 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(SKUIDownloadsCellView *)v3 addSubview:v3->_titleLabel];
    [(SKUIDownloadsCellView *)v3 setAttributedTitle:0];
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v6;

    v8 = v3->_subtitleLabel;
    v9 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v8 setFont:v9];

    v10 = v3->_subtitleLabel;
    _secondaryLabelColor = [MEMORY[0x277D75348] _secondaryLabelColor];
    [(UILabel *)v10 setTextColor:_secondaryLabelColor];

    [(SKUIDownloadsCellView *)v3 addSubview:v3->_subtitleLabel];
    [(SKUIDownloadsCellView *)v3 setSubtitle:0];
    v12 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v3->_imageView;
    v3->_imageView = v12;

    [(UIImageView *)v3->_imageView setContentMode:1];
    layer = [(UIImageView *)v3->_imageView layer];
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [layer setBorderColor:{objc_msgSend(v15, "CGColor")}];

    layer2 = [(UIImageView *)v3->_imageView layer];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    [layer2 setBorderWidth:1.0 / v18];

    v19 = v3->_imageView;
    v20 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
    [(UIImageView *)v19 setBackgroundColor:v20];

    [(SKUIDownloadsCellView *)v3 addSubview:v3->_imageView];
    v21 = [MEMORY[0x277D75220] buttonWithType:0];
    button = v3->_button;
    v3->_button = v21;

    [(UIButton *)v3->_button setUserInteractionEnabled:0];
    [(SKUIDownloadsCellView *)v3 addSubview:v3->_button];
    v23 = objc_alloc_init(MEMORY[0x277D75A30]);
    progressSlider = v3->_progressSlider;
    v3->_progressSlider = v23;

    [(UISlider *)v3->_progressSlider setUserInteractionEnabled:0];
    v25 = v3->_progressSlider;
    v26 = objc_alloc_init(MEMORY[0x277D755B8]);
    [(UISlider *)v25 setThumbImage:v26 forState:0];

    [(SKUIDownloadsCellView *)v3 addSubview:v3->_progressSlider];
    _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
    [(SKUIDownloadsCellView *)v3 setBackgroundColor:_systemBackgroundColor];
  }

  return v3;
}

- (void)setAttributedTitle:(id)title
{
  v12[1] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  if (self->_attributedTitle != titleCopy)
  {
    objc_storeStrong(&self->_attributedTitle, title);
    titleLabel = self->_titleLabel;
    if (titleCopy)
    {
      [(UILabel *)titleLabel setAttributedText:titleCopy];
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277CCA898]);
      v11 = *MEMORY[0x277D740A8];
      v8 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
      v12[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v10 = [v7 initWithString:@" " attributes:v9];
      [(UILabel *)titleLabel setAttributedText:v10];
    }
  }
}

- (void)setSubtitle:(id)subtitle
{
  p_isa = subtitle;
  if (self->_subtitle != p_isa)
  {
    v7 = p_isa;
    objc_storeStrong(&self->_subtitle, subtitle);
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = @" ";
    }

    [(UILabel *)self->_subtitleLabel setText:v6];
    p_isa = &v7->isa;
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_imageView image];

  v5 = imageCopy;
  if (image != imageCopy)
  {
    [(UIImageView *)self->_imageView setImage:imageCopy];
    [(SKUIDownloadsCellView *)self setNeedsLayout];
    v5 = imageCopy;
  }
}

- (void)setIsPad:(BOOL)pad
{
  if (self->_isPad != pad)
  {
    self->_isPad = pad;
    [(SKUIDownloadsCellView *)self setNeedsLayout];
  }
}

- (void)setButtonType:(int64_t)type
{
  if (self->_buttonType == type)
  {
    return;
  }

  self->_buttonType = type;
  if (type == 1)
  {
    v4 = @"DownloadsPauseIcon";
  }

  else
  {
    if (type != 2)
    {
      v7 = 0;
      goto LABEL_8;
    }

    v4 = @"DownloadsResumeIcon";
  }

  v5 = MEMORY[0x277D755B8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 imageNamed:v4 inBundle:v6];

LABEL_8:
  [(UIButton *)self->_button setHidden:self->_buttonType == 0];
  tintColor = [(SKUIDownloadsCellView *)self tintColor];
  v9 = [v7 _flatImageWithColor:tintColor];

  [(UIButton *)self->_button setImage:v9 forState:0];
  [(SKUIDownloadsCellView *)self setNeedsLayout];
}

- (void)setBackgroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = SKUIDownloadsCellView;
  colorCopy = color;
  [(SKUIDownloadsCellView *)&v5 setBackgroundColor:colorCopy];
  [(UISlider *)self->_progressSlider setBackgroundColor:colorCopy, v5.receiver, v5.super_class];
  [(UIButton *)self->_button setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_subtitleLabel setBackgroundColor:colorCopy];
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = SKUIDownloadsCellView;
  [(SKUIDownloadsCellView *)&v50 layoutSubviews];
  [(SKUIDownloadsCellView *)self bounds];
  v7 = v6;
  if (self->_isPad)
  {
    v8 = 15.0;
  }

  else
  {
    v8 = 10.0;
  }

  v9 = v3 + v8;
  v49 = v4;
  v10 = v7;
  MaxX = CGRectGetMaxX(*&v3);
  if (self->_isPad)
  {
    v12 = 15.0;
  }

  else
  {
    v12 = 10.0;
  }

  image = [(UIImageView *)self->_imageView image];

  if (image)
  {
    image2 = [(UIImageView *)self->_imageView image];
    [image2 size];
    v16 = v15;
    v18 = v17;

    v19 = 44.0;
    if (self->_isPad)
    {
      v19 = 75.0;
    }

    v20 = v19 / v16;
    if (v19 / v16 >= v19 / v18)
    {
      v20 = v19 / v18;
    }

    v21 = v16 * v20;
    v22 = v18 * v20;
  }

  else
  {
    v19 = 44.0;
    if (self->_isPad)
    {
      v19 = 75.0;
    }

    v21 = v19;
    v22 = v19;
  }

  v23 = MaxX - v12;
  v24 = (v7 - v22) * 0.5;
  v25 = v9 + (v19 - v21) * 0.5;
  [(UIImageView *)self->_imageView setFrame:roundf(v25), roundf(v24)];
  isPad = self->_isPad;
  v27 = [(UIButton *)self->_button imageForState:0];

  if (v27)
  {
    [(UIButton *)self->_button sizeToFit];
    [(UIButton *)self->_button frame];
    v29 = v28;
    v31 = v30;
    v32 = (v7 - v30) * 0.5;
    v33 = roundf(v32);
    v34 = v23 - v28;
    [(UIButton *)self->_button setFrame:v34, v33];
    v51.origin.x = v34;
    v51.origin.y = v33;
    v51.size.width = v29;
    v51.size.height = v31;
    MinX = CGRectGetMinX(v51);
    v36 = 10.0;
    if (self->_isPad)
    {
      v36 = 15.0;
    }

    v23 = MinX - v36;
  }

  v37 = 54.0;
  if (isPad)
  {
    v37 = 90.0;
  }

  v38 = v9 + v37;
  v39 = v23 - (v9 + v37);
  [(UILabel *)self->_titleLabel sizeThatFits:v39, v7];
  v41 = v40;
  [(UILabel *)self->_subtitleLabel sizeThatFits:v39, v7];
  v43 = v42;
  v48 = v42;
  [(UISlider *)self->_progressSlider sizeThatFits:v39, v7];
  v45 = v44;
  *&v44 = (v7 - (v43 + v41 + -4.0 + -3.0 + 10.0 + v44 + 10.0 + -3.0 + -3.0)) * 0.5;
  v46 = v49 + roundf(*&v44) + -4.0;
  [(UILabel *)self->_titleLabel setFrame:v38, v46, v39, v41];
  v52.origin.x = v38;
  v52.origin.y = v46;
  v52.size.width = v39;
  v52.size.height = v41;
  v47 = CGRectGetMaxY(v52) + -3.0 + 10.0;
  [(UISlider *)self->_progressSlider setFrame:v38, v47, v39, v45];
  v53.origin.x = v38;
  v53.origin.y = v47;
  v53.size.width = v39;
  v53.size.height = v45;
  [(UILabel *)self->_subtitleLabel setFrame:v38, CGRectGetMaxY(v53) + 10.0 + -3.0, v39, v48];
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDownloadsCellView init]";
}

@end