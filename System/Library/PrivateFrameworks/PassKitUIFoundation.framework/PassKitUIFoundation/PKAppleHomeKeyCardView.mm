@interface PKAppleHomeKeyCardView
- (PKAppleHomeKeyCardView)initWithStyle:(int64_t)style text:(id)text font:(id)font textColor:(id)color;
- (void)layoutSubviews;
@end

@implementation PKAppleHomeKeyCardView

- (PKAppleHomeKeyCardView)initWithStyle:(int64_t)style text:(id)text font:(id)font textColor:(id)color
{
  textCopy = text;
  fontCopy = font;
  colorCopy = color;
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 URLForResource:@"homekey-metalness" withExtension:@"png"];
  v15 = [v13 URLForResource:@"homekey-normal" withExtension:@"png"];
  if (style > 3)
  {
    v18 = 0;
LABEL_22:
    selfCopy = 0;
    goto LABEL_30;
  }

  v16 = dword_25E0D5C00[style];
  v17 = [v13 URLForResource:off_2799FFDA0[style] withExtension:@"png"];
  v18 = v17;
  if (v17)
  {
    v19 = v14 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19 || v15 == 0)
  {
    goto LABEL_22;
  }

  v21 = PKCreateCGImage(v17);
  if (!v21)
  {
    v22 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E0A9000, v22, OS_LOG_TYPE_DEFAULT, "PKAppleHomeKeyCardView: could not load diffuse image.", buf, 2u);
    }
  }

  image = PKCreateCGImage(v14);
  if (!image)
  {
    v23 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E0A9000, v23, OS_LOG_TYPE_DEFAULT, "PKAppleHomeKeyCardView: could not load metalness image.", buf, 2u);
    }
  }

  v24 = PKCreateCGImage(v15);
  v25 = v24;
  if (!v24)
  {
    v32 = v21;
    v28 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E0A9000, v28, OS_LOG_TYPE_DEFAULT, "PKAppleHomeKeyCardView: could not load normal image.", buf, 2u);
    }

    v21 = v32;
    goto LABEL_26;
  }

  if (!v21 || !image)
  {
LABEL_26:

    v26 = 0;
    goto LABEL_27;
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __60__PKAppleHomeKeyCardView_initWithStyle_text_font_textColor___block_invoke;
  v34[3] = &__block_descriptor_60_e51___PKTexturedCardRenderer_16__0__PKMetalRenderLoop_8l;
  v34[4] = v21;
  v34[5] = image;
  v34[6] = v24;
  v35 = v16;
  v26 = [(PKTexturedCardView *)&self->super.super.super.super.isa _initWithPixelFormat:v34 renderer:?];
LABEL_27:
  CGImageRelease(v21);
  CGImageRelease(image);
  CGImageRelease(v25);
  if (v26)
  {
    v29 = objc_alloc_init(MEMORY[0x277D756B8]);
    v30 = v26[57];
    v26[57] = v29;

    [v26[57] setNumberOfLines:1];
    [v26[57] setFont:fontCopy];
    [v26[57] setText:textCopy];
    [v26[57] setTextColor:colorCopy];
    [v26[57] setAdjustsFontSizeToFitWidth:1];
    [v26[57] setMinimumScaleFactor:0.8];
    [v26 addSubview:v26[57]];
  }

  self = v26;
  selfCopy = self;
LABEL_30:

  return selfCopy;
}

id *__60__PKAppleHomeKeyCardView_initWithStyle_text_font_textColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setColorSpace:PKColorSpaceStandardRGB()];
  v4 = [[PKTexturedCardRenderer alloc] initWithStyle:v3 renderLoop:*(a1 + 32) diffuse:*(a1 + 40) metalness:*(a1 + 48) normal:?];

  [(PKTexturedCardRenderer *)v4 setLightIntensity:?];

  return v4;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = PKAppleHomeKeyCardView;
  [(PKTexturedCardView *)&v25 layoutSubviews];
  [(PKAppleHomeKeyCardView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  PKPaymentPassScaleFactor();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __40__PKAppleHomeKeyCardView_layoutSubviews__block_invoke;
  v24[3] = &__block_descriptor_40_e8_d16__0d8l;
  v24[4] = v11;
  v12 = MEMORY[0x25F8AAFE0](v24);
  v13 = v12[2](14.0);
  v14 = (v12[2])(v12, 20.0);
  v15 = (v12[2])(v12, 14.0);
  v16 = v4 + v14;
  v17 = v6 + v13;
  v18 = v8 - (v14 + (v12[2])(v12, 20.0));
  v19 = v10 - (v13 + v15);
  [(UILabel *)self->_titleLabel sizeThatFits:v18, v19];
  v22 = v21;
  if (v20 >= v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = v20;
  }

  v26.origin.x = v16;
  v26.origin.y = v17;
  v26.size.width = v18;
  v26.size.height = v19;
  [(UILabel *)self->_titleLabel setFrame:CGRectGetMaxX(v26) - v23, v17, v23, v22];
}

@end