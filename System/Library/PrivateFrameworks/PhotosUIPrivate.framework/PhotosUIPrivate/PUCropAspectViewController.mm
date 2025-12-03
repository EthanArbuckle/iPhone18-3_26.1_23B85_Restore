@interface PUCropAspectViewController
- (CGSize)currentCropSize;
- (CGSize)originalSize;
- (PUCropAspectViewController)initWithLayoutOrientation:(int64_t)orientation originalSize:(CGSize)size currentSize:(CGSize)currentSize currentCropAspect:(id)aspect spec:(id)spec;
- (PUCropAspectViewControllerDelegate)delegate;
- (id)matchingCropAspectTo:(id)to ignoreFreeform:(BOOL)freeform;
- (void)_updateScrollViewContainerMask;
- (void)aspectButtonPressed:(id)pressed;
- (void)setAspectOrientation:(int64_t)orientation;
- (void)setCurrentCropAspect:(id)aspect;
- (void)setLayoutOrientation:(int64_t)orientation;
- (void)setScrollExtraLeftView:(id)view;
- (void)updateAspectButtonSelection;
- (void)updateAspectButtons;
- (void)updateAspectConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PUCropAspectViewController

- (CGSize)originalSize
{
  width = self->_originalSize.width;
  height = self->_originalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PUCropAspectViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)currentCropSize
{
  width = self->_currentCropSize.width;
  height = self->_currentCropSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updateScrollViewContainerMask
{
  if ([(PUCropAspectViewController *)self layoutOrientation]|| ([(PUCropAspectViewController *)self scrollExtraLeftView], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    gradientMask = 0;
  }

  else
  {
    gradientMask = self->_gradientMask;
  }

  scrollViewContainer = self->_scrollViewContainer;

  [(UIView *)scrollViewContainer setMaskView:gradientMask];
}

- (void)aspectButtonPressed:(id)pressed
{
  v4 = [pressed tag];
  aspectButtons = [(PUCropAspectViewController *)self aspectButtons];
  v6 = [aspectButtons count];

  if (v6)
  {
    v7 = 0;
    do
    {
      aspectButtons2 = [(PUCropAspectViewController *)self aspectButtons];
      v9 = [aspectButtons2 objectAtIndexedSubscript:v7];

      [v9 setSelected:{objc_msgSend(v9, "tag") == v4}];
      ++v7;
      aspectButtons3 = [(PUCropAspectViewController *)self aspectButtons];
      v11 = [aspectButtons3 count];
    }

    while (v7 < v11);
  }

  delegate = [(PUCropAspectViewController *)self delegate];

  if (delegate)
  {
    allAspectRatios = [(PUCropAspectViewController *)self allAspectRatios];
    v15 = [allAspectRatios objectAtIndexedSubscript:v4];

    if ([v15 isFreeformCrop])
    {

      v15 = 0;
    }

    delegate2 = [(PUCropAspectViewController *)self delegate];
    [delegate2 cropAspectController:self cropAspectSelected:v15];
  }
}

- (void)setScrollExtraLeftView:(id)view
{
  objc_storeStrong(&self->_scrollExtraLeftView, view);
  [(PUCropAspectViewController *)self _updateScrollViewContainerMask];

  [(PUCropAspectViewController *)self updateAspectConstraints];
}

- (void)updateAspectConstraints
{
  aspectConstraints = [(PUCropAspectViewController *)self aspectConstraints];

  if (aspectConstraints)
  {
    view = [(PUCropAspectViewController *)self view];
    aspectConstraints2 = [(PUCropAspectViewController *)self aspectConstraints];
    [view removeConstraints:aspectConstraints2];

    [(PUCropAspectViewController *)self setAspectConstraints:0];
  }

  v125 = objc_alloc_init(MEMORY[0x1E695DF70]);
  contentLayoutGuide = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  if ([(PUCropAspectViewController *)self layoutOrientation])
  {
    allAspectRatios = [(PUCropAspectViewController *)self allAspectRatios];
    v8 = [allAspectRatios count];

    if (v8)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        aspectButtons = [(PUCropAspectViewController *)self aspectButtons];
        v12 = [aspectButtons objectAtIndexedSubscript:v10];

        leftAnchor = [(UIView *)self->_buttonContainer leftAnchor];
        leftAnchor2 = [v12 leftAnchor];
        v15 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:-5.0];
        [v125 addObject:v15];

        rightAnchor = [(UIView *)self->_buttonContainer rightAnchor];
        rightAnchor2 = [v12 rightAnchor];
        v18 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:5.0];
        [v125 addObject:v18];

        topAnchor = [v12 topAnchor];
        if (v9)
        {
          bottomAnchor = [v9 bottomAnchor];
          v21 = 10.0;
        }

        else
        {
          bottomAnchor = [(UIView *)self->_buttonContainer topAnchor];
          v21 = 0.0;
        }

        v22 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:v21];
        [v125 addObject:v22];

        ++v10;
        allAspectRatios2 = [(PUCropAspectViewController *)self allAspectRatios];
        v24 = [allAspectRatios2 count];

        v9 = v12;
      }

      while (v10 < v24);
      if (v12)
      {
        bottomAnchor2 = [v12 bottomAnchor];
        bottomAnchor3 = [(UIView *)self->_buttonContainer bottomAnchor];
        v27 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:0.0];
        [v125 addObject:v27];
      }
    }

    else
    {
      v12 = 0;
    }

    heightAnchor = [(UIScrollView *)self->_scrollView heightAnchor];
    heightAnchor2 = [(UIView *)self->_buttonContainer heightAnchor];
    v60 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:0.0];

    LODWORD(v61) = 1132068864;
    [v60 setPriority:v61];
    view2 = [(PUCropAspectViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];

    [v125 addObject:v60];
    leftAnchor3 = [(UIView *)self->_buttonContainer leftAnchor];
    leftAnchor4 = [(UIView *)self->_scrollViewContainer leftAnchor];
    v66 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    [v125 addObject:v66];

    rightAnchor3 = [(UIView *)self->_buttonContainer rightAnchor];
    rightAnchor4 = [(UIView *)self->_scrollViewContainer rightAnchor];
    v69 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    [v125 addObject:v69];

    topAnchor2 = [(UIView *)self->_buttonContainer topAnchor];
    topAnchor3 = [contentLayoutGuide topAnchor];
    v72 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    [v125 addObject:v72];

    bottomAnchor4 = [(UIView *)self->_buttonContainer bottomAnchor];
    bottomAnchor5 = [contentLayoutGuide bottomAnchor];
    v75 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    [v125 addObject:v75];

    heightAnchor3 = [(UIScrollView *)self->_scrollView heightAnchor];
    heightAnchor4 = [(UIView *)self->_scrollViewContainer heightAnchor];
    v78 = [heightAnchor3 constraintLessThanOrEqualToAnchor:heightAnchor4];
    [v125 addObject:v78];

    topAnchor4 = [(UIScrollView *)self->_scrollView topAnchor];
    topAnchor5 = [safeAreaLayoutGuide topAnchor];
    v81 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5];
    [v125 addObject:v81];

    centerYAnchor = [(UIScrollView *)self->_scrollView centerYAnchor];
    centerYAnchor2 = [(UIView *)self->_scrollViewContainer centerYAnchor];
    v84 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v125 addObject:v84];

    leftAnchor5 = [(UIScrollView *)self->_scrollView leftAnchor];
    leftAnchor6 = [(UIView *)self->_scrollViewContainer leftAnchor];
    v87 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
    [v125 addObject:v87];

    rightAnchor5 = [(UIScrollView *)self->_scrollView rightAnchor];
    rightAnchor6 = [(UIView *)self->_scrollViewContainer rightAnchor];
    v90 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
    [v125 addObject:v90];

    goto LABEL_31;
  }

  scrollExtraLeftView = [(PUCropAspectViewController *)self scrollExtraLeftView];

  if (scrollExtraLeftView)
  {
    scrollView = self->_scrollView;
    scrollExtraLeftView2 = [(PUCropAspectViewController *)self scrollExtraLeftView];
    [(UIScrollView *)scrollView addSubview:scrollExtraLeftView2];

    scrollExtraLeftView3 = [(PUCropAspectViewController *)self scrollExtraLeftView];
    leftAnchor7 = [scrollExtraLeftView3 leftAnchor];
    leftAnchor8 = [(UIView *)self->_buttonContainer leftAnchor];
    v34 = [leftAnchor7 constraintEqualToAnchor:leftAnchor8];
    [v125 addObject:v34];

    scrollExtraLeftView4 = [(PUCropAspectViewController *)self scrollExtraLeftView];
    centerYAnchor3 = [scrollExtraLeftView4 centerYAnchor];
    centerYAnchor4 = [(UIView *)self->_buttonContainer centerYAnchor];
    v38 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v125 addObject:v38];
  }

  allAspectRatios3 = [(PUCropAspectViewController *)self allAspectRatios];
  v40 = [allAspectRatios3 count];

  if (!v40)
  {
    v12 = 0;
    goto LABEL_30;
  }

  v124 = contentLayoutGuide;
  v12 = 0;
  v41 = 0;
  do
  {
    v42 = v12;
    aspectButtons2 = [(PUCropAspectViewController *)self aspectButtons];
    v12 = [aspectButtons2 objectAtIndexedSubscript:v41];

    topAnchor6 = [(UIView *)self->_buttonContainer topAnchor];
    topAnchor7 = [v12 topAnchor];
    v46 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:-5.0];
    [v125 addObject:v46];

    bottomAnchor6 = [(UIView *)self->_buttonContainer bottomAnchor];
    bottomAnchor7 = [v12 bottomAnchor];
    v49 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:5.0];
    [v125 addObject:v49];

    if (v42)
    {
      leftAnchor9 = [v12 leftAnchor];
      rightAnchor7 = [v42 rightAnchor];
      v52 = 10.0;
LABEL_18:
      v51RightAnchor = [leftAnchor9 constraintEqualToAnchor:rightAnchor7 constant:v52];
      [v125 addObject:v51RightAnchor];
      goto LABEL_21;
    }

    scrollExtraLeftView5 = [(PUCropAspectViewController *)self scrollExtraLeftView];

    leftAnchor9 = [v12 leftAnchor];
    if (!scrollExtraLeftView5)
    {
      rightAnchor7 = [(UIView *)self->_buttonContainer leftAnchor];
      v52 = 0.0;
      goto LABEL_18;
    }

    rightAnchor7 = [(PUCropAspectViewController *)self scrollExtraLeftView];
    v51RightAnchor = [rightAnchor7 rightAnchor];
    v55 = [leftAnchor9 constraintEqualToAnchor:v51RightAnchor constant:10.0];
    [v125 addObject:v55];

LABEL_21:
    ++v41;
    allAspectRatios4 = [(PUCropAspectViewController *)self allAspectRatios];
    v57 = [allAspectRatios4 count];
  }

  while (v41 < v57);
  if (v12)
  {
    rightAnchor8 = [v12 rightAnchor];
    rightAnchor9 = [(UIView *)self->_buttonContainer rightAnchor];
    v93 = [rightAnchor8 constraintEqualToAnchor:rightAnchor9 constant:0.0];
    [v125 addObject:v93];
  }

  contentLayoutGuide = v124;
LABEL_30:
  spec = [(PUCropAspectViewController *)self spec];
  [spec cropAspectRatioScrollContentInset];
  v96 = v95;
  v98 = v97;

  widthAnchor = [(UIScrollView *)self->_scrollView widthAnchor];
  widthAnchor2 = [(UIView *)self->_buttonContainer widthAnchor];
  v60 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:v96 + v98];

  LODWORD(v101) = 1132068864;
  [v60 setPriority:v101];
  [v125 addObject:v60];
  leftAnchor10 = [(UIView *)self->_buttonContainer leftAnchor];
  leftAnchor11 = [contentLayoutGuide leftAnchor];
  v104 = [leftAnchor10 constraintEqualToAnchor:leftAnchor11];
  [v125 addObject:v104];

  rightAnchor10 = [(UIView *)self->_buttonContainer rightAnchor];
  rightAnchor11 = [contentLayoutGuide rightAnchor];
  v107 = [rightAnchor10 constraintEqualToAnchor:rightAnchor11];
  [v125 addObject:v107];

  topAnchor8 = [(UIView *)self->_buttonContainer topAnchor];
  topAnchor9 = [(UIScrollView *)self->_scrollView topAnchor];
  v110 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  [v125 addObject:v110];

  bottomAnchor8 = [(UIView *)self->_buttonContainer bottomAnchor];
  bottomAnchor9 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v113 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
  [v125 addObject:v113];

  widthAnchor3 = [(UIScrollView *)self->_scrollView widthAnchor];
  widthAnchor4 = [(UIView *)self->_scrollViewContainer widthAnchor];
  v116 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4];
  [v125 addObject:v116];

  centerXAnchor = [(UIScrollView *)self->_scrollView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_scrollViewContainer centerXAnchor];
  v119 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v125 addObject:v119];

  topAnchor10 = [(UIScrollView *)self->_scrollView topAnchor];
  topAnchor11 = [(UIView *)self->_scrollViewContainer topAnchor];
  v122 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
  [v125 addObject:v122];

  safeAreaLayoutGuide = [(UIScrollView *)self->_scrollView bottomAnchor];
  rightAnchor5 = [(UIView *)self->_scrollViewContainer bottomAnchor];
  rightAnchor6 = [safeAreaLayoutGuide constraintEqualToAnchor:rightAnchor5];
  [v125 addObject:rightAnchor6];
LABEL_31:

  view3 = [(PUCropAspectViewController *)self view];
  [view3 addConstraints:v125];

  [(PUCropAspectViewController *)self setAspectConstraints:v125];
}

- (void)updateAspectButtons
{
  v3 = [PUCropAspect allAspectsWithOriginalSize:self->_originalSize.width currentSize:self->_originalSize.height, self->_currentCropSize.width, self->_currentCropSize.height];
  [(PUCropAspectViewController *)self setAllAspectRatios:v3];

  aspectButtons = [(PUCropAspectViewController *)self aspectButtons];

  if (!aspectButtons)
  {
    v5 = objc_opt_new();
    scrollView = [(PUCropAspectViewController *)self scrollView];
    buttonContainer = self->_buttonContainer;
    if (buttonContainer)
    {
      [(UIView *)buttonContainer removeFromSuperview];
      v8 = self->_buttonContainer;
      self->_buttonContainer = 0;
    }

    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v10 = self->_buttonContainer;
    self->_buttonContainer = v9;

    [(UIView *)self->_buttonContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [scrollView addSubview:self->_buttonContainer];
    allAspectRatios = [(PUCropAspectViewController *)self allAspectRatios];
    v12 = [allAspectRatios count];

    if (v12)
    {
      v13 = 0;
      do
      {
        v14 = [MEMORY[0x1E69DC738] buttonWithType:0];
        [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v14 setTag:v13];
        [v14 addTarget:self action:sel_aspectButtonPressed_ forControlEvents:0x2000];
        [(UIView *)self->_buttonContainer addSubview:v14];
        [v5 addObject:v14];

        ++v13;
        allAspectRatios2 = [(PUCropAspectViewController *)self allAspectRatios];
        v16 = [allAspectRatios2 count];
      }

      while (v13 < v16);
    }

    [(PUCropAspectViewController *)self setAspectButtons:v5];
  }

  [(PUCropAspectViewController *)self updateAspectConstraints];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  traitCollection = [(PUCropAspectViewController *)self traitCollection];
  v19 = [labelColor resolvedColorWithTraitCollection:traitCollection];
  v44 = [v19 colorWithAlphaComponent:0.2];

  [MEMORY[0x1E69DB878] systemFontSize];
  v20 = PXMonospacedNumberFontWithSize();
  spec = [(PUCropAspectViewController *)self spec];
  cropAspectButtonColor = [spec cropAspectButtonColor];
  traitCollection2 = [(PUCropAspectViewController *)self traitCollection];
  v24 = [cropAspectButtonColor resolvedColorWithTraitCollection:traitCollection2];

  spec2 = [(PUCropAspectViewController *)self spec];
  cropAspectButtonSelectedColor = [spec2 cropAspectButtonSelectedColor];
  traitCollection3 = [(PUCropAspectViewController *)self traitCollection];
  v28 = [cropAspectButtonSelectedColor resolvedColorWithTraitCollection:traitCollection3];

  allAspectRatios3 = [(PUCropAspectViewController *)self allAspectRatios];
  v30 = [allAspectRatios3 count];

  if (v30)
  {
    v31 = 0;
    do
    {
      allAspectRatios4 = [(PUCropAspectViewController *)self allAspectRatios];
      v33 = [allAspectRatios4 objectAtIndexedSubscript:v31];

      aspectButtons2 = [(PUCropAspectViewController *)self aspectButtons];
      v35 = [aspectButtons2 objectAtIndexedSubscript:v31];

      localizedName = [v33 localizedName];
      localizedUppercaseString = [localizedName localizedUppercaseString];

      v38 = [MEMORY[0x1E69DCAB8] pu_imageWithIconImage:0 iconImageColor:0 text:localizedUppercaseString font:v20 textColor:v24 fillColor:0 strokeColor:15.0 cornerRadius:7.0 inset:{2.0, 0}];
      [MEMORY[0x1E69DCAB8] pu_imageWithIconImage:0 iconImageColor:0 text:localizedUppercaseString font:v20 textColor:v28 fillColor:v44 strokeColor:15.0 cornerRadius:7.0 inset:{2.0, 0}];
      v39 = v28;
      v41 = v40 = v24;
      [v35 setImage:v38 forState:0];
      [v35 setImage:v41 forState:4];

      v24 = v40;
      v28 = v39;

      ++v31;
      allAspectRatios5 = [(PUCropAspectViewController *)self allAspectRatios];
      v43 = [allAspectRatios5 count];
    }

    while (v31 < v43);
  }

  [(PUCropAspectViewController *)self updateAspectButtonSelection];
}

- (id)matchingCropAspectTo:(id)to ignoreFreeform:(BOOL)freeform
{
  freeformCopy = freeform;
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  allAspectRatios = [(PUCropAspectViewController *)self allAspectRatios];
  v7 = [allAspectRatios countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v25;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(allAspectRatios);
      }

      v12 = *(*(&v24 + 1) + 8 * v11);
      currentCropAspect = [(PUCropAspectViewController *)self currentCropAspect];
      if ([v12 isEqualToCropAspect:currentCropAspect])
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_12;
      }

LABEL_19:
      if (v8 == ++v11)
      {
        v8 = [allAspectRatios countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }
    }

    if (!freeformCopy)
    {

LABEL_25:
      v21 = v12;

      goto LABEL_26;
    }

    isFreeformCrop = [v12 isFreeformCrop];

    if ((isFreeformCrop & 1) == 0)
    {
      goto LABEL_25;
    }

    if (v9)
    {
      goto LABEL_19;
    }

LABEL_12:
    v15 = v12;
    inverseAspect = v15;
    if ([v15 allowOrientationChange])
    {
      [v15 ratio];
      v18 = v17 < 1.0;
      [toCopy ratio];
      v20 = v18 ^ (v19 >= 1.0);
      inverseAspect = v15;
      if ((v20 & 1) == 0)
      {
        inverseAspect = [v15 inverseAspect];
      }
    }

    if ([inverseAspect isEquivalentToCropAspect:toCopy])
    {
      v9 = v15;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_19;
  }

  v9 = 0;
LABEL_23:

  v9 = v9;
  v21 = v9;
LABEL_26:

  return v21;
}

- (void)updateAspectButtonSelection
{
  currentCropAspect = [(PUCropAspectViewController *)self currentCropAspect];
  v13 = [(PUCropAspectViewController *)self matchingCropAspectTo:currentCropAspect ignoreFreeform:0];

  allAspectRatios = [(PUCropAspectViewController *)self allAspectRatios];
  v5 = [allAspectRatios count];

  if (v5)
  {
    v6 = 0;
    do
    {
      allAspectRatios2 = [(PUCropAspectViewController *)self allAspectRatios];
      v8 = [allAspectRatios2 objectAtIndexedSubscript:v6];

      aspectButtons = [(PUCropAspectViewController *)self aspectButtons];
      v10 = [aspectButtons objectAtIndexedSubscript:v6];

      [v10 setSelected:v8 == v13];
      ++v6;
      allAspectRatios3 = [(PUCropAspectViewController *)self allAspectRatios];
      v12 = [allAspectRatios3 count];
    }

    while (v6 < v12);
  }
}

- (void)setLayoutOrientation:(int64_t)orientation
{
  if (self->_layoutOrientation != orientation)
  {
    self->_layoutOrientation = orientation;
    [(PUCropAspectViewController *)self _updateScrollViewContainerMask];

    [(PUCropAspectViewController *)self updateAspectConstraints];
  }
}

- (void)setCurrentCropAspect:(id)aspect
{
  objc_storeStrong(&self->_currentCropAspect, aspect);

  [(PUCropAspectViewController *)self updateAspectButtonSelection];
}

- (void)setAspectOrientation:(int64_t)orientation
{
  if (self->_aspectOrientation != orientation)
  {
    width = self->_originalSize.width;
    height = self->_originalSize.height;
    if ((!orientation && width < height || orientation == 1 && height < width) && self->_currentCropSize.width != self->_currentCropSize.height)
    {
      self->_originalSize.width = height;
      self->_originalSize.height = width;
    }

    self->_aspectOrientation = orientation;
    [(PUCropAspectViewController *)self updateAspectButtons];
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PUCropAspectViewController;
  [(PUCropAspectViewController *)&v4 viewDidLayoutSubviews];
  view = [(PUCropAspectViewController *)self view];
  [view bounds];
  [(CEKEdgeGradientView *)self->_gradientMask setFrame:?];

  [(CEKEdgeGradientView *)self->_gradientMask setGradientDirection:0];
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  [(CEKEdgeGradientView *)self->_gradientMask setGradientDimensions:0.0];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = PUCropAspectViewController;
  [(PUCropAspectViewController *)&v24 viewDidLoad];
  view = [(PUCropAspectViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  scrollViewContainer = self->_scrollViewContainer;
  self->_scrollViewContainer = v4;

  [(UIView *)self->_scrollViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_scrollViewContainer];
  topAnchor = [(UIView *)self->_scrollViewContainer topAnchor];
  topAnchor2 = [view topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v8 setActive:1];

  bottomAnchor = [(UIView *)self->_scrollViewContainer bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v11 setActive:1];

  leftAnchor = [(UIView *)self->_scrollViewContainer leftAnchor];
  leftAnchor2 = [view leftAnchor];
  v14 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v14 setActive:1];

  rightAnchor = [(UIView *)self->_scrollViewContainer rightAnchor];
  rightAnchor2 = [view rightAnchor];
  v17 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v17 setActive:1];

  v18 = objc_alloc(MEMORY[0x1E6993848]);
  v19 = [v18 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  gradientMask = self->_gradientMask;
  self->_gradientMask = v19;

  [(CEKEdgeGradientView *)self->_gradientMask setEdgeGradientStyleMask];
  [(PUCropAspectViewController *)self _updateScrollViewContainerMask];
  v21 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v21;

  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setUserInteractionEnabled:1];
  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
  spec = [(PUCropAspectViewController *)self spec];
  [spec cropAspectRatioScrollContentInset];
  [(UIScrollView *)self->_scrollView setContentInset:?];

  [(UIView *)self->_scrollViewContainer addSubview:self->_scrollView];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  self->_aspectOrientation = -1;
  [(PUCropAspectViewController *)self setAspectOrientation:self->_currentCropSize.width < self->_currentCropSize.height];
}

- (PUCropAspectViewController)initWithLayoutOrientation:(int64_t)orientation originalSize:(CGSize)size currentSize:(CGSize)currentSize currentCropAspect:(id)aspect spec:(id)spec
{
  height = currentSize.height;
  width = currentSize.width;
  v11 = size.height;
  v12 = size.width;
  v24[3] = *MEMORY[0x1E69E9840];
  aspectCopy = aspect;
  specCopy = spec;
  v23.receiver = self;
  v23.super_class = PUCropAspectViewController;
  v17 = [(PUCropAspectViewController *)&v23 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    v17->_layoutOrientation = orientation;
    v17->_currentCropSize.width = width;
    v17->_currentCropSize.height = height;
    v17->_originalSize.width = v12;
    v17->_originalSize.height = v11;
    objc_storeStrong(&v17->_currentCropAspect, aspect);
    objc_storeStrong(&v18->_spec, spec);
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v24[2] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
    v20 = [(PUCropAspectViewController *)v18 registerForTraitChanges:v19 withAction:sel_traitEnvironment_didChangeTraitCollection_];

    v21 = v18;
  }

  return v18;
}

@end