@interface SKUIToastViewController
+ (id)_fontWithSize:(double)size textStyleAttribute:(__CFString *)attribute;
+ (id)_primaryLabelFont;
+ (id)_secondaryLabelFont;
- (SKUIToastViewController)initWithDialogTemplate:(id)template;
- (SKUIToastViewController)initWithTitle:(id)title description:(id)description image:(id)image;
- (void)_dismissWithDelay:(double)delay;
- (void)present;
- (void)presentFromViewController:(id)controller completion:(id)completion;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SKUIToastViewController

- (SKUIToastViewController)initWithTitle:(id)title description:(id)description image:(id)image
{
  titleCopy = title;
  descriptionCopy = description;
  imageCopy = image;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIToastViewController initWithTitle:description:image:];
  }

  v30.receiver = self;
  v30.super_class = SKUIToastViewController;
  v12 = [(SKUIToastViewController *)&v30 initWithNibName:0 bundle:0];
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277D756B8]);
    v14 = *MEMORY[0x277CBF3A0];
    v15 = *(MEMORY[0x277CBF3A0] + 8);
    v16 = *(MEMORY[0x277CBF3A0] + 16);
    v17 = *(MEMORY[0x277CBF3A0] + 24);
    v18 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], v15, v16, v17}];
    primaryLabel = v12->_primaryLabel;
    v12->_primaryLabel = v18;

    v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v14, v15, v16, v17}];
    secondaryLabel = v12->_secondaryLabel;
    v12->_secondaryLabel = v20;

    v22 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v14, v15, v16, v17}];
    imageView = v12->_imageView;
    v12->_imageView = v22;

    v24 = [imageCopy imageWithRenderingMode:2];
    [(UIImageView *)v12->_imageView setImage:v24];

    v25 = [MEMORY[0x277D75210] effectWithStyle:9];
    v26 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v25];
    [(UIVisualEffectView *)v26 setClipsToBounds:1];
    [(UIVisualEffectView *)v26 _setContinuousCornerRadius:9.0];
    toastView = v12->_toastView;
    v12->_toastView = v26;
    v28 = v26;

    objc_storeStrong(&v12->_titleText, title);
    objc_storeStrong(&v12->_descriptionText, description);

    [(SKUIToastViewController *)v12 setModalPresentationStyle:6];
  }

  return v12;
}

- (SKUIToastViewController)initWithDialogTemplate:(id)template
{
  templateCopy = template;
  title = [templateCopy title];
  text = [title text];
  v7 = [text attributedStringWithDefaultFont:0 foregroundColor:0];
  string = [v7 string];

  message = [templateCopy message];
  text2 = [message text];
  v11 = [text2 attributedStringWithDefaultFont:0 foregroundColor:0];
  string2 = [v11 string];

  image = [templateCopy image];

  resourceName = [image resourceName];

  if (resourceName)
  {
    v15 = SKUIImageWithResourceName(resourceName);
  }

  else
  {
    v15 = 0;
  }

  v16 = [(SKUIToastViewController *)self initWithTitle:string description:string2 image:v15];

  return v16;
}

- (void)viewDidLoad
{
  v43.receiver = self;
  v43.super_class = SKUIToastViewController;
  [(SKUIToastViewController *)&v43 viewDidLoad];
  traitCollection = [(SKUIToastViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  presentationController = [(SKUIToastViewController *)self presentationController];
  [presentationController _setContainerIgnoresDirectTouchEvents:1];

  view = [(SKUIToastViewController *)self view];
  [view setUserInteractionEnabled:1];

  imageView = [(SKUIToastViewController *)self imageView];
  [imageView setAlpha:0.64];

  if (userInterfaceStyle == 2)
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v8 = ;
  imageView2 = [(SKUIToastViewController *)self imageView];
  [imageView2 setTintColor:v8];

  if (userInterfaceStyle == 2)
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v10 = ;
  v11 = [v10 colorWithAlphaComponent:0.64];

  titleText = [(SKUIToastViewController *)self titleText];
  primaryLabel = [(SKUIToastViewController *)self primaryLabel];
  [primaryLabel setText:titleText];

  primaryLabel2 = [(SKUIToastViewController *)self primaryLabel];
  [primaryLabel2 setTextAlignment:1];

  primaryLabel3 = [(SKUIToastViewController *)self primaryLabel];
  [primaryLabel3 setNumberOfLines:2];

  primaryLabel4 = [(SKUIToastViewController *)self primaryLabel];
  [primaryLabel4 setTextColor:v11];

  primaryLabel5 = [(SKUIToastViewController *)self primaryLabel];
  [primaryLabel5 setLineBreakMode:4];

  descriptionText = [(SKUIToastViewController *)self descriptionText];

  if (descriptionText)
  {
    v19 = objc_alloc(MEMORY[0x277CCAB48]);
    descriptionText2 = [(SKUIToastViewController *)self descriptionText];
    v21 = [v19 initWithString:descriptionText2];

    v22 = objc_alloc_init(MEMORY[0x277D74240]);
    [v22 setLineSpacing:2.0];
    [v21 addAttribute:*MEMORY[0x277D74118] value:v22 range:{0, objc_msgSend(v21, "length")}];
    secondaryLabel = [(SKUIToastViewController *)self secondaryLabel];
    [secondaryLabel setAttributedText:v21];
  }

  secondaryLabel2 = [(SKUIToastViewController *)self secondaryLabel];
  [secondaryLabel2 setTextAlignment:1];

  secondaryLabel3 = [(SKUIToastViewController *)self secondaryLabel];
  [secondaryLabel3 setNumberOfLines:4];

  secondaryLabel4 = [(SKUIToastViewController *)self secondaryLabel];
  [secondaryLabel4 setTextColor:v11];

  secondaryLabel5 = [(SKUIToastViewController *)self secondaryLabel];
  [secondaryLabel5 setLineBreakMode:4];

  toastView = [(SKUIToastViewController *)self toastView];
  contentView = [toastView contentView];
  imageView3 = [(SKUIToastViewController *)self imageView];
  [contentView addSubview:imageView3];

  toastView2 = [(SKUIToastViewController *)self toastView];
  contentView2 = [toastView2 contentView];
  primaryLabel6 = [(SKUIToastViewController *)self primaryLabel];
  [contentView2 addSubview:primaryLabel6];

  toastView3 = [(SKUIToastViewController *)self toastView];
  contentView3 = [toastView3 contentView];
  secondaryLabel6 = [(SKUIToastViewController *)self secondaryLabel];
  [contentView3 addSubview:secondaryLabel6];

  CGAffineTransformMakeScale(&v42, 0.88, 0.88);
  toastView4 = [(SKUIToastViewController *)self toastView];
  v41 = v42;
  [toastView4 setTransform:&v41];

  toastView5 = [(SKUIToastViewController *)self toastView];
  [toastView5 setAlpha:0.0];

  view2 = [(SKUIToastViewController *)self view];
  toastView6 = [(SKUIToastViewController *)self toastView];
  [view2 addSubview:toastView6];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SKUIToastViewController;
  [(SKUIToastViewController *)&v6 viewWillAppear:appear];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__SKUIToastViewController_viewWillAppear___block_invoke;
  v5[3] = &unk_2781F80F0;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__SKUIToastViewController_viewWillAppear___block_invoke_2;
  v4[3] = &unk_2781F84A0;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:2 delay:v5 options:v4 animations:0.2 completion:0.0];
}

void __42__SKUIToastViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = [*(a1 + 32) toastView];
  v4 = v5;
  [v2 setTransform:&v4];

  v3 = [*(a1 + 32) toastView];
  [v3 setAlpha:1.0];
}

- (void)viewDidLayoutSubviews
{
  v75.receiver = self;
  v75.super_class = SKUIToastViewController;
  [(SKUIToastViewController *)&v75 viewDidLayoutSubviews];
  view = [(SKUIToastViewController *)self view];
  [view bounds];

  traitCollection = [(SKUIToastViewController *)self traitCollection];
  [traitCollection displayScale];
  v6 = v5;

  toastView = [(SKUIToastViewController *)self toastView];
  [toastView setFrame:{0.0, 0.0, 250.0, 450.0}];

  v69 = 0;
  v70 = &v69;
  v71 = 0x4010000000;
  v72 = &unk_215F8ACD7;
  v73 = 0u;
  v74 = 0u;
  toastView2 = [(SKUIToastViewController *)self toastView];
  [toastView2 bounds];
  *&v73 = v9 + 25.0;
  *(&v73 + 1) = v10 + 32.0;
  *&v74 = v11 + -50.0;
  *(&v74 + 1) = v12 + -57.0;

  toastView3 = [(SKUIToastViewController *)self toastView];
  [toastView3 bounds];
  UIRectCenteredXInRectScale();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  imageView = [(SKUIToastViewController *)self imageView];
  [imageView setFrame:{v15, v17, v19, v21}];

  v23 = v70;
  v70[5] = v21 + v70[5];
  v23[7] = v23[7] - v21;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v64[3] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__SKUIToastViewController_viewDidLayoutSubviews__block_invoke;
  aBlock[3] = &unk_2781FCC98;
  aBlock[4] = &v69;
  aBlock[5] = v64;
  aBlock[6] = &v65;
  v24 = _Block_copy(aBlock);
  _primaryLabelFont = [objc_opt_class() _primaryLabelFont];
  primaryLabel = [(SKUIToastViewController *)self primaryLabel];
  [primaryLabel setFont:_primaryLabelFont];

  primaryLabel2 = [(SKUIToastViewController *)self primaryLabel];
  v24[2](v24, primaryLabel2, 0, 18.0);

  _secondaryLabelFont = [objc_opt_class() _secondaryLabelFont];
  secondaryLabel = [(SKUIToastViewController *)self secondaryLabel];
  [secondaryLabel setFont:_secondaryLabelFont];

  secondaryLabel2 = [(SKUIToastViewController *)self secondaryLabel];
  v24[2](v24, secondaryLabel2, 0, 25.0);

  toastView4 = [(SKUIToastViewController *)self toastView];
  [toastView4 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = v66[3];
  toastView5 = [(SKUIToastViewController *)self toastView];
  v40 = toastView5;
  v41 = fmin(v38 + 25.0, 450.0);
  if (v41 < 250.0)
  {
    v41 = 250.0;
  }

  v42 = v41;
  [toastView5 setBounds:{v33, v35, v37, ceilf(v42)}];

  toastView6 = [(SKUIToastViewController *)self toastView];
  [toastView6 frame];
  UIRectCenteredXInRectScale();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  toastView7 = [(SKUIToastViewController *)self toastView];
  [toastView7 setFrame:{v45, v47, v49, v51}];

  toastView8 = [(SKUIToastViewController *)self toastView];
  [toastView8 frame];
  UIRectCenteredYInRectScale();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  toastView9 = [(SKUIToastViewController *)self toastView];
  [toastView9 setFrame:{v55, v57, v59, v61}];

  _Block_object_dispose(v64, 8);
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);
}

void __48__SKUIToastViewController_viewDidLayoutSubviews__block_invoke(void *a1, void *a2, double a3)
{
  v21 = a2;
  [v21 frame];
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);
  [v21 sizeThatFits:{v6, v7}];
  v9 = v8;
  MinX = CGRectGetMinX(*(*(a1[4] + 8) + 32));
  v11 = *(*(a1[5] + 8) + 24);
  if (v11 <= 0.0)
  {
    v14 = CGRectGetMinY(*(*(a1[4] + 8) + 32)) + a3;
  }

  else
  {
    v12 = v11 + a3;
    [v21 _firstBaselineOffsetFromTop];
    *&v13 = v12 - v13;
    v14 = ceilf(*&v13);
  }

  if (v9 >= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v9;
  }

  v16 = v15;
  v17 = ceilf(v16);
  [v21 setFrame:{MinX, v14, v6, v17}];
  v23.origin.x = MinX;
  v23.origin.y = v14;
  v23.size.width = v6;
  v23.size.height = v17;
  *(*(a1[4] + 8) + 56) = *(*(a1[4] + 8) + 56) - CGRectGetHeight(v23);
  Height = CGRectGetHeight(*(*(a1[4] + 8) + 32));
  if (Height < 0.0)
  {
    Height = 0.0;
  }

  *(*(a1[4] + 8) + 56) = Height;
  v24.origin.x = MinX;
  v24.origin.y = v14;
  v24.size.width = v6;
  v24.size.height = v17;
  MaxY = CGRectGetMaxY(v24);
  [v21 _baselineOffsetFromBottom];
  *(*(a1[5] + 8) + 24) = MaxY - v20;
  v25.origin.x = MinX;
  v25.origin.y = v14;
  v25.size.width = v6;
  v25.size.height = v17;
  *(*(a1[6] + 8) + 24) = CGRectGetMaxY(v25);
}

- (void)present
{
  v3 = objc_alloc_init(SKUIToastPresentationWindow);
  [(SKUIToastViewController *)self setPresentationWindow:v3];
  [(SKUIToastPresentationWindow *)v3 setHidden:0];
  [(SKUIToastPresentationWindow *)v3 setUserInteractionEnabled:0];
  [(SKUIToastPresentationWindow *)v3 presentViewController:self animated:1 completion:0];
}

- (void)presentFromViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  [(SKUIToastViewController *)self setCompletion:completion];
  [controllerCopy presentViewController:self animated:1 completion:0];
}

+ (id)_primaryLabelFont
{
  v2 = _primaryLabelFont__primaryLabelFont;
  if (!_primaryLabelFont__primaryLabelFont)
  {
    v3 = [self _fontWithSize:*MEMORY[0x277CC4880] textStyleAttribute:22.0];
    v4 = _primaryLabelFont__primaryLabelFont;
    _primaryLabelFont__primaryLabelFont = v3;

    v2 = _primaryLabelFont__primaryLabelFont;
  }

  return v2;
}

+ (id)_secondaryLabelFont
{
  v2 = _secondaryLabelFont__secondaryLabelFont;
  if (!_secondaryLabelFont__secondaryLabelFont)
  {
    v3 = [self _fontWithSize:*MEMORY[0x277CC4878] textStyleAttribute:16.0];
    v4 = _secondaryLabelFont__secondaryLabelFont;
    _secondaryLabelFont__secondaryLabelFont = v3;

    v2 = _secondaryLabelFont__secondaryLabelFont;
  }

  return v2;
}

+ (id)_fontWithSize:(double)size textStyleAttribute:(__CFString *)attribute
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D74300] systemFontOfSize:size];
  fontDescriptor = [v5 fontDescriptor];
  v11 = *MEMORY[0x277D74378];
  v12[0] = attribute;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [fontDescriptor fontDescriptorByAddingAttributes:v7];
  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];

  return v9;
}

- (void)_dismissWithDelay:(double)delay
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__SKUIToastViewController__dismissWithDelay___block_invoke;
  v4[3] = &unk_2781F80F0;
  v4[4] = self;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__SKUIToastViewController__dismissWithDelay___block_invoke_2;
  v3[3] = &unk_2781F84A0;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:2 delay:v4 options:v3 animations:0.2 completion:delay];
}

void __45__SKUIToastViewController__dismissWithDelay___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) toastView];
  v3 = [v2 contentView];
  v4 = [v3 superview];
  [v4 setAlpha:0.0];

  v5 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v6 = [*(a1 + 32) toastView];
  [v6 setBackgroundColor:v5];

  CGAffineTransformMakeScale(&v9, 0.88, 0.88);
  v7 = [*(a1 + 32) view];
  v8 = v9;
  [v7 setTransform:&v8];
}

uint64_t __45__SKUIToastViewController__dismissWithDelay___block_invoke_2(uint64_t a1)
{
  CGAffineTransformMakeScale(&v7, 1.0, 1.0);
  v2 = [*(a1 + 32) view];
  v6 = v7;
  [v2 setTransform:&v6];

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SKUIToastViewController__dismissWithDelay___block_invoke_3;
  v5[3] = &unk_2781F80F0;
  v5[4] = v3;
  return [v3 dismissViewControllerAnimated:0 completion:v5];
}

void __45__SKUIToastViewController__dismissWithDelay___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v3 = [*(a1 + 32) completion];
    v3[2]();
  }
}

- (void)initWithTitle:description:image:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIToastViewController initWithTitle:description:image:]";
}

@end