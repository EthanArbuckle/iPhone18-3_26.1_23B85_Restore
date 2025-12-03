@interface PNPWizardScratchpadInkView
+ (void)initialize;
- (CGSize)intrinsicContentSize;
- (PNPWizardScratchpadInkView)initWithIndex:(int64_t)index;
- (void)layoutSubviews;
@end

@implementation PNPWizardScratchpadInkView

- (void)layoutSubviews
{
  [(PNPWizardScratchpadInkView *)self bounds];
  image = [(UIImageView *)self->_imageView image];
  [image size];

  [(PNPWizardScratchpadInkView *)self bounds];
  traitCollection = [(PNPWizardScratchpadInkView *)self traitCollection];
  [traitCollection displayScale];
  v13 = v5;
  UIRectCenteredXInRectScale();
  v7 = v6;
  v9 = v8;

  if ([(PNPWizardScratchpadInkView *)self selected])
  {
    v10 = 68.0;
  }

  else
  {
    v10 = 50.0;
  }

  if ([(PNPWizardScratchpadInkView *)self pressed])
  {
    v10 = v10 + -6.0;
  }

  [(PNPWizardScratchpadInkView *)self bounds];
  imageView = self->_imageView;

  [(UIImageView *)imageView setFrame:v7, v11 - v10, v9, v10];
}

- (CGSize)intrinsicContentSize
{
  image = [(UIImageView *)self->_imageView image];
  [image size];
  v4 = v3;
  [objc_opt_class() preferredHeight];
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (PNPWizardScratchpadInkView)initWithIndex:(int64_t)index
{
  v12.receiver = self;
  v12.super_class = PNPWizardScratchpadInkView;
  v4 = [(PNPWizardScratchpadInkView *)&v12 init];
  v5 = objc_alloc_init(MEMORY[0x277D755E8]);
  imageView = v4->_imageView;
  v4->_imageView = v5;

  v7 = v4->_imageView;
  v8 = [__PNPWizardScratchpadInkViewInkImages objectAtIndex:index];
  [(UIImageView *)v7 setImage:v8];

  [(PNPWizardScratchpadInkView *)v4 addSubview:v4->_imageView];
  v9 = [__PNPWizardScratchpadInkViewInks objectAtIndex:index];
  ink = v4->_ink;
  v4->_ink = v9;

  return v4;
}

+ (void)initialize
{
  v39[8] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v3 = __PNPWizardScratchpadInkViewInkImages;
  __PNPWizardScratchpadInkViewInkImages = array;

  array2 = [MEMORY[0x277CBEB18] array];
  v5 = __PNPWizardScratchpadInkViewInks;
  __PNPWizardScratchpadInkViewInks = array2;

  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  v39[0] = systemRedColor;
  systemRedColor2 = [MEMORY[0x277D75348] systemRedColor];
  v39[1] = systemRedColor2;
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  v39[2] = systemOrangeColor;
  systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
  v39[3] = systemYellowColor;
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v39[4] = systemBlueColor;
  systemPurpleColor = [MEMORY[0x277D75348] systemPurpleColor];
  v39[5] = systemPurpleColor;
  systemOrangeColor2 = [MEMORY[0x277D75348] systemOrangeColor];
  v39[6] = systemOrangeColor2;
  systemPinkColor = [MEMORY[0x277D75348] systemPinkColor];
  v39[7] = systemPinkColor;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:8];

  v15 = *MEMORY[0x277CD96E8];
  v32[0] = *MEMORY[0x277CD96E0];
  v32[1] = v15;
  v33 = *MEMORY[0x277CD96D0];
  v34 = v32[0];
  v35 = v33;
  v36 = v32[0];
  v16 = *MEMORY[0x277CD96D8];
  v37 = v32[0];
  v38 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:8];
  for (i = 0; i != 8; ++i)
  {
    v19 = [&unk_286FED320 objectAtIndex:i];
    v20 = [v14 objectAtIndex:i];
    v21 = [v17 objectAtIndex:i];
    v22 = MEMORY[0x277D755B8];
    v23 = PencilPairingUIBundle();
    v24 = [v22 imageNamed:v19 inBundle:v23 compatibleWithTraitCollection:0];

    [__PNPWizardScratchpadInkViewInkImages addObject:v24];
    v25 = [MEMORY[0x277CD9638] inkWithIdentifier:v21 color:v20];
    [__PNPWizardScratchpadInkViewInks addObject:v25];
    v26 = *&__PNPWizardScratchpadInkViewInkHeight;
    [v24 size];
    if (v26 >= v27)
    {
      *&v28 = v27;
    }

    else
    {
      *&v28 = v26;
    }

    __PNPWizardScratchpadInkViewInkHeight = v28;
    v29 = *&__PNPWizardScratchpadInkViewInkSelectedHeight;
    [v24 size];
    if (v29 >= v30)
    {
      *&v31 = v29;
    }

    else
    {
      *&v31 = v30;
    }

    __PNPWizardScratchpadInkViewInkSelectedHeight = v31;
  }
}

@end