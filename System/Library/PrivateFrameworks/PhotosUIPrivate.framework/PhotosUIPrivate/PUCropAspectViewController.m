@interface PUCropAspectViewController
- (CGSize)currentCropSize;
- (CGSize)originalSize;
- (PUCropAspectViewController)initWithLayoutOrientation:(int64_t)a3 originalSize:(CGSize)a4 currentSize:(CGSize)a5 currentCropAspect:(id)a6 spec:(id)a7;
- (PUCropAspectViewControllerDelegate)delegate;
- (id)matchingCropAspectTo:(id)a3 ignoreFreeform:(BOOL)a4;
- (void)_updateScrollViewContainerMask;
- (void)aspectButtonPressed:(id)a3;
- (void)setAspectOrientation:(int64_t)a3;
- (void)setCurrentCropAspect:(id)a3;
- (void)setLayoutOrientation:(int64_t)a3;
- (void)setScrollExtraLeftView:(id)a3;
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

- (void)aspectButtonPressed:(id)a3
{
  v4 = [a3 tag];
  v5 = [(PUCropAspectViewController *)self aspectButtons];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [(PUCropAspectViewController *)self aspectButtons];
      v9 = [v8 objectAtIndexedSubscript:v7];

      [v9 setSelected:{objc_msgSend(v9, "tag") == v4}];
      ++v7;
      v10 = [(PUCropAspectViewController *)self aspectButtons];
      v11 = [v10 count];
    }

    while (v7 < v11);
  }

  v12 = [(PUCropAspectViewController *)self delegate];

  if (v12)
  {
    v13 = [(PUCropAspectViewController *)self allAspectRatios];
    v15 = [v13 objectAtIndexedSubscript:v4];

    if ([v15 isFreeformCrop])
    {

      v15 = 0;
    }

    v14 = [(PUCropAspectViewController *)self delegate];
    [v14 cropAspectController:self cropAspectSelected:v15];
  }
}

- (void)setScrollExtraLeftView:(id)a3
{
  objc_storeStrong(&self->_scrollExtraLeftView, a3);
  [(PUCropAspectViewController *)self _updateScrollViewContainerMask];

  [(PUCropAspectViewController *)self updateAspectConstraints];
}

- (void)updateAspectConstraints
{
  v3 = [(PUCropAspectViewController *)self aspectConstraints];

  if (v3)
  {
    v4 = [(PUCropAspectViewController *)self view];
    v5 = [(PUCropAspectViewController *)self aspectConstraints];
    [v4 removeConstraints:v5];

    [(PUCropAspectViewController *)self setAspectConstraints:0];
  }

  v125 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  if ([(PUCropAspectViewController *)self layoutOrientation])
  {
    v7 = [(PUCropAspectViewController *)self allAspectRatios];
    v8 = [v7 count];

    if (v8)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = [(PUCropAspectViewController *)self aspectButtons];
        v12 = [v11 objectAtIndexedSubscript:v10];

        v13 = [(UIView *)self->_buttonContainer leftAnchor];
        v14 = [v12 leftAnchor];
        v15 = [v13 constraintEqualToAnchor:v14 constant:-5.0];
        [v125 addObject:v15];

        v16 = [(UIView *)self->_buttonContainer rightAnchor];
        v17 = [v12 rightAnchor];
        v18 = [v16 constraintEqualToAnchor:v17 constant:5.0];
        [v125 addObject:v18];

        v19 = [v12 topAnchor];
        if (v9)
        {
          v20 = [v9 bottomAnchor];
          v21 = 10.0;
        }

        else
        {
          v20 = [(UIView *)self->_buttonContainer topAnchor];
          v21 = 0.0;
        }

        v22 = [v19 constraintEqualToAnchor:v20 constant:v21];
        [v125 addObject:v22];

        ++v10;
        v23 = [(PUCropAspectViewController *)self allAspectRatios];
        v24 = [v23 count];

        v9 = v12;
      }

      while (v10 < v24);
      if (v12)
      {
        v25 = [v12 bottomAnchor];
        v26 = [(UIView *)self->_buttonContainer bottomAnchor];
        v27 = [v25 constraintEqualToAnchor:v26 constant:0.0];
        [v125 addObject:v27];
      }
    }

    else
    {
      v12 = 0;
    }

    v58 = [(UIScrollView *)self->_scrollView heightAnchor];
    v59 = [(UIView *)self->_buttonContainer heightAnchor];
    v60 = [v58 constraintEqualToAnchor:v59 constant:0.0];

    LODWORD(v61) = 1132068864;
    [v60 setPriority:v61];
    v62 = [(PUCropAspectViewController *)self view];
    v63 = [v62 safeAreaLayoutGuide];

    [v125 addObject:v60];
    v64 = [(UIView *)self->_buttonContainer leftAnchor];
    v65 = [(UIView *)self->_scrollViewContainer leftAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];
    [v125 addObject:v66];

    v67 = [(UIView *)self->_buttonContainer rightAnchor];
    v68 = [(UIView *)self->_scrollViewContainer rightAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];
    [v125 addObject:v69];

    v70 = [(UIView *)self->_buttonContainer topAnchor];
    v71 = [v6 topAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];
    [v125 addObject:v72];

    v73 = [(UIView *)self->_buttonContainer bottomAnchor];
    v74 = [v6 bottomAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];
    [v125 addObject:v75];

    v76 = [(UIScrollView *)self->_scrollView heightAnchor];
    v77 = [(UIView *)self->_scrollViewContainer heightAnchor];
    v78 = [v76 constraintLessThanOrEqualToAnchor:v77];
    [v125 addObject:v78];

    v79 = [(UIScrollView *)self->_scrollView topAnchor];
    v80 = [v63 topAnchor];
    v81 = [v79 constraintGreaterThanOrEqualToAnchor:v80];
    [v125 addObject:v81];

    v82 = [(UIScrollView *)self->_scrollView centerYAnchor];
    v83 = [(UIView *)self->_scrollViewContainer centerYAnchor];
    v84 = [v82 constraintEqualToAnchor:v83];
    [v125 addObject:v84];

    v85 = [(UIScrollView *)self->_scrollView leftAnchor];
    v86 = [(UIView *)self->_scrollViewContainer leftAnchor];
    v87 = [v85 constraintEqualToAnchor:v86];
    [v125 addObject:v87];

    v88 = [(UIScrollView *)self->_scrollView rightAnchor];
    v89 = [(UIView *)self->_scrollViewContainer rightAnchor];
    v90 = [v88 constraintEqualToAnchor:v89];
    [v125 addObject:v90];

    goto LABEL_31;
  }

  v28 = [(PUCropAspectViewController *)self scrollExtraLeftView];

  if (v28)
  {
    scrollView = self->_scrollView;
    v30 = [(PUCropAspectViewController *)self scrollExtraLeftView];
    [(UIScrollView *)scrollView addSubview:v30];

    v31 = [(PUCropAspectViewController *)self scrollExtraLeftView];
    v32 = [v31 leftAnchor];
    v33 = [(UIView *)self->_buttonContainer leftAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v125 addObject:v34];

    v35 = [(PUCropAspectViewController *)self scrollExtraLeftView];
    v36 = [v35 centerYAnchor];
    v37 = [(UIView *)self->_buttonContainer centerYAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [v125 addObject:v38];
  }

  v39 = [(PUCropAspectViewController *)self allAspectRatios];
  v40 = [v39 count];

  if (!v40)
  {
    v12 = 0;
    goto LABEL_30;
  }

  v124 = v6;
  v12 = 0;
  v41 = 0;
  do
  {
    v42 = v12;
    v43 = [(PUCropAspectViewController *)self aspectButtons];
    v12 = [v43 objectAtIndexedSubscript:v41];

    v44 = [(UIView *)self->_buttonContainer topAnchor];
    v45 = [v12 topAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 constant:-5.0];
    [v125 addObject:v46];

    v47 = [(UIView *)self->_buttonContainer bottomAnchor];
    v48 = [v12 bottomAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 constant:5.0];
    [v125 addObject:v49];

    if (v42)
    {
      v50 = [v12 leftAnchor];
      v51 = [v42 rightAnchor];
      v52 = 10.0;
LABEL_18:
      v53 = [v50 constraintEqualToAnchor:v51 constant:v52];
      [v125 addObject:v53];
      goto LABEL_21;
    }

    v54 = [(PUCropAspectViewController *)self scrollExtraLeftView];

    v50 = [v12 leftAnchor];
    if (!v54)
    {
      v51 = [(UIView *)self->_buttonContainer leftAnchor];
      v52 = 0.0;
      goto LABEL_18;
    }

    v51 = [(PUCropAspectViewController *)self scrollExtraLeftView];
    v53 = [v51 rightAnchor];
    v55 = [v50 constraintEqualToAnchor:v53 constant:10.0];
    [v125 addObject:v55];

LABEL_21:
    ++v41;
    v56 = [(PUCropAspectViewController *)self allAspectRatios];
    v57 = [v56 count];
  }

  while (v41 < v57);
  if (v12)
  {
    v91 = [v12 rightAnchor];
    v92 = [(UIView *)self->_buttonContainer rightAnchor];
    v93 = [v91 constraintEqualToAnchor:v92 constant:0.0];
    [v125 addObject:v93];
  }

  v6 = v124;
LABEL_30:
  v94 = [(PUCropAspectViewController *)self spec];
  [v94 cropAspectRatioScrollContentInset];
  v96 = v95;
  v98 = v97;

  v99 = [(UIScrollView *)self->_scrollView widthAnchor];
  v100 = [(UIView *)self->_buttonContainer widthAnchor];
  v60 = [v99 constraintEqualToAnchor:v100 constant:v96 + v98];

  LODWORD(v101) = 1132068864;
  [v60 setPriority:v101];
  [v125 addObject:v60];
  v102 = [(UIView *)self->_buttonContainer leftAnchor];
  v103 = [v6 leftAnchor];
  v104 = [v102 constraintEqualToAnchor:v103];
  [v125 addObject:v104];

  v105 = [(UIView *)self->_buttonContainer rightAnchor];
  v106 = [v6 rightAnchor];
  v107 = [v105 constraintEqualToAnchor:v106];
  [v125 addObject:v107];

  v108 = [(UIView *)self->_buttonContainer topAnchor];
  v109 = [(UIScrollView *)self->_scrollView topAnchor];
  v110 = [v108 constraintEqualToAnchor:v109];
  [v125 addObject:v110];

  v111 = [(UIView *)self->_buttonContainer bottomAnchor];
  v112 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v113 = [v111 constraintEqualToAnchor:v112];
  [v125 addObject:v113];

  v114 = [(UIScrollView *)self->_scrollView widthAnchor];
  v115 = [(UIView *)self->_scrollViewContainer widthAnchor];
  v116 = [v114 constraintLessThanOrEqualToAnchor:v115];
  [v125 addObject:v116];

  v117 = [(UIScrollView *)self->_scrollView centerXAnchor];
  v118 = [(UIView *)self->_scrollViewContainer centerXAnchor];
  v119 = [v117 constraintEqualToAnchor:v118];
  [v125 addObject:v119];

  v120 = [(UIScrollView *)self->_scrollView topAnchor];
  v121 = [(UIView *)self->_scrollViewContainer topAnchor];
  v122 = [v120 constraintEqualToAnchor:v121];
  [v125 addObject:v122];

  v63 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v88 = [(UIView *)self->_scrollViewContainer bottomAnchor];
  v89 = [v63 constraintEqualToAnchor:v88];
  [v125 addObject:v89];
LABEL_31:

  v123 = [(PUCropAspectViewController *)self view];
  [v123 addConstraints:v125];

  [(PUCropAspectViewController *)self setAspectConstraints:v125];
}

- (void)updateAspectButtons
{
  v3 = [PUCropAspect allAspectsWithOriginalSize:self->_originalSize.width currentSize:self->_originalSize.height, self->_currentCropSize.width, self->_currentCropSize.height];
  [(PUCropAspectViewController *)self setAllAspectRatios:v3];

  v4 = [(PUCropAspectViewController *)self aspectButtons];

  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(PUCropAspectViewController *)self scrollView];
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
    [v6 addSubview:self->_buttonContainer];
    v11 = [(PUCropAspectViewController *)self allAspectRatios];
    v12 = [v11 count];

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
        v15 = [(PUCropAspectViewController *)self allAspectRatios];
        v16 = [v15 count];
      }

      while (v13 < v16);
    }

    [(PUCropAspectViewController *)self setAspectButtons:v5];
  }

  [(PUCropAspectViewController *)self updateAspectConstraints];
  v17 = [MEMORY[0x1E69DC888] labelColor];
  v18 = [(PUCropAspectViewController *)self traitCollection];
  v19 = [v17 resolvedColorWithTraitCollection:v18];
  v44 = [v19 colorWithAlphaComponent:0.2];

  [MEMORY[0x1E69DB878] systemFontSize];
  v20 = PXMonospacedNumberFontWithSize();
  v21 = [(PUCropAspectViewController *)self spec];
  v22 = [v21 cropAspectButtonColor];
  v23 = [(PUCropAspectViewController *)self traitCollection];
  v24 = [v22 resolvedColorWithTraitCollection:v23];

  v25 = [(PUCropAspectViewController *)self spec];
  v26 = [v25 cropAspectButtonSelectedColor];
  v27 = [(PUCropAspectViewController *)self traitCollection];
  v28 = [v26 resolvedColorWithTraitCollection:v27];

  v29 = [(PUCropAspectViewController *)self allAspectRatios];
  v30 = [v29 count];

  if (v30)
  {
    v31 = 0;
    do
    {
      v32 = [(PUCropAspectViewController *)self allAspectRatios];
      v33 = [v32 objectAtIndexedSubscript:v31];

      v34 = [(PUCropAspectViewController *)self aspectButtons];
      v35 = [v34 objectAtIndexedSubscript:v31];

      v36 = [v33 localizedName];
      v37 = [v36 localizedUppercaseString];

      v38 = [MEMORY[0x1E69DCAB8] pu_imageWithIconImage:0 iconImageColor:0 text:v37 font:v20 textColor:v24 fillColor:0 strokeColor:15.0 cornerRadius:7.0 inset:{2.0, 0}];
      [MEMORY[0x1E69DCAB8] pu_imageWithIconImage:0 iconImageColor:0 text:v37 font:v20 textColor:v28 fillColor:v44 strokeColor:15.0 cornerRadius:7.0 inset:{2.0, 0}];
      v39 = v28;
      v41 = v40 = v24;
      [v35 setImage:v38 forState:0];
      [v35 setImage:v41 forState:4];

      v24 = v40;
      v28 = v39;

      ++v31;
      v42 = [(PUCropAspectViewController *)self allAspectRatios];
      v43 = [v42 count];
    }

    while (v31 < v43);
  }

  [(PUCropAspectViewController *)self updateAspectButtonSelection];
}

- (id)matchingCropAspectTo:(id)a3 ignoreFreeform:(BOOL)a4
{
  v23 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [(PUCropAspectViewController *)self allAspectRatios];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v24 + 1) + 8 * v11);
      v13 = [(PUCropAspectViewController *)self currentCropAspect];
      if ([v12 isEqualToCropAspect:v13])
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
        v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }
    }

    if (!v23)
    {

LABEL_25:
      v21 = v12;

      goto LABEL_26;
    }

    v14 = [v12 isFreeformCrop];

    if ((v14 & 1) == 0)
    {
      goto LABEL_25;
    }

    if (v9)
    {
      goto LABEL_19;
    }

LABEL_12:
    v15 = v12;
    v16 = v15;
    if ([v15 allowOrientationChange])
    {
      [v15 ratio];
      v18 = v17 < 1.0;
      [v5 ratio];
      v20 = v18 ^ (v19 >= 1.0);
      v16 = v15;
      if ((v20 & 1) == 0)
      {
        v16 = [v15 inverseAspect];
      }
    }

    if ([v16 isEquivalentToCropAspect:v5])
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
  v3 = [(PUCropAspectViewController *)self currentCropAspect];
  v13 = [(PUCropAspectViewController *)self matchingCropAspectTo:v3 ignoreFreeform:0];

  v4 = [(PUCropAspectViewController *)self allAspectRatios];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(PUCropAspectViewController *)self allAspectRatios];
      v8 = [v7 objectAtIndexedSubscript:v6];

      v9 = [(PUCropAspectViewController *)self aspectButtons];
      v10 = [v9 objectAtIndexedSubscript:v6];

      [v10 setSelected:v8 == v13];
      ++v6;
      v11 = [(PUCropAspectViewController *)self allAspectRatios];
      v12 = [v11 count];
    }

    while (v6 < v12);
  }
}

- (void)setLayoutOrientation:(int64_t)a3
{
  if (self->_layoutOrientation != a3)
  {
    self->_layoutOrientation = a3;
    [(PUCropAspectViewController *)self _updateScrollViewContainerMask];

    [(PUCropAspectViewController *)self updateAspectConstraints];
  }
}

- (void)setCurrentCropAspect:(id)a3
{
  objc_storeStrong(&self->_currentCropAspect, a3);

  [(PUCropAspectViewController *)self updateAspectButtonSelection];
}

- (void)setAspectOrientation:(int64_t)a3
{
  if (self->_aspectOrientation != a3)
  {
    width = self->_originalSize.width;
    height = self->_originalSize.height;
    if ((!a3 && width < height || a3 == 1 && height < width) && self->_currentCropSize.width != self->_currentCropSize.height)
    {
      self->_originalSize.width = height;
      self->_originalSize.height = width;
    }

    self->_aspectOrientation = a3;
    [(PUCropAspectViewController *)self updateAspectButtons];
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PUCropAspectViewController;
  [(PUCropAspectViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(PUCropAspectViewController *)self view];
  [v3 bounds];
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
  v3 = [(PUCropAspectViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  scrollViewContainer = self->_scrollViewContainer;
  self->_scrollViewContainer = v4;

  [(UIView *)self->_scrollViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:self->_scrollViewContainer];
  v6 = [(UIView *)self->_scrollViewContainer topAnchor];
  v7 = [v3 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [v8 setActive:1];

  v9 = [(UIView *)self->_scrollViewContainer bottomAnchor];
  v10 = [v3 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(UIView *)self->_scrollViewContainer leftAnchor];
  v13 = [v3 leftAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [(UIView *)self->_scrollViewContainer rightAnchor];
  v16 = [v3 rightAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
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
  v23 = [(PUCropAspectViewController *)self spec];
  [v23 cropAspectRatioScrollContentInset];
  [(UIScrollView *)self->_scrollView setContentInset:?];

  [(UIView *)self->_scrollViewContainer addSubview:self->_scrollView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  self->_aspectOrientation = -1;
  [(PUCropAspectViewController *)self setAspectOrientation:self->_currentCropSize.width < self->_currentCropSize.height];
}

- (PUCropAspectViewController)initWithLayoutOrientation:(int64_t)a3 originalSize:(CGSize)a4 currentSize:(CGSize)a5 currentCropAspect:(id)a6 spec:(id)a7
{
  height = a5.height;
  width = a5.width;
  v11 = a4.height;
  v12 = a4.width;
  v24[3] = *MEMORY[0x1E69E9840];
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = PUCropAspectViewController;
  v17 = [(PUCropAspectViewController *)&v23 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    v17->_layoutOrientation = a3;
    v17->_currentCropSize.width = width;
    v17->_currentCropSize.height = height;
    v17->_originalSize.width = v12;
    v17->_originalSize.height = v11;
    objc_storeStrong(&v17->_currentCropAspect, a6);
    objc_storeStrong(&v18->_spec, a7);
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