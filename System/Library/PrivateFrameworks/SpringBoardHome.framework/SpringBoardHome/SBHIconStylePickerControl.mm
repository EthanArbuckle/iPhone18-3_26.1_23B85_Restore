@interface SBHIconStylePickerControl
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (SBHIconStylePickerControl)initWithFrame:(CGRect)frame URLForResource:(id)resource extenstion:(id)extenstion enabledState:(id)state disabledState:(id)disabledState;
- (UIView)referenceLayoutView;
- (void)_updateFilters;
- (void)_updatePackageView:(BOOL)view;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setReferenceLayoutView:(id)view;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation SBHIconStylePickerControl

- (SBHIconStylePickerControl)initWithFrame:(CGRect)frame URLForResource:(id)resource extenstion:(id)extenstion enabledState:(id)state disabledState:(id)disabledState
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v42[1] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  extenstionCopy = extenstion;
  stateCopy = state;
  disabledStateCopy = disabledState;
  v41.receiver = self;
  v41.super_class = SBHIconStylePickerControl;
  height = [(SBHIconStylePickerControl *)&v41 initWithFrame:x, y, width, height];
  if (height)
  {
    v20 = [stateCopy copy];
    enabledState = height->_enabledState;
    height->_enabledState = v20;

    v22 = [disabledStateCopy copy];
    disabledState = height->_disabledState;
    height->_disabledState = v22;

    v24 = objc_alloc_init(SBHTouchPassThroughView);
    containerView = height->_containerView;
    height->_containerView = &v24->super;

    v26 = height->_containerView;
    [(SBHIconStylePickerControl *)height bounds];
    [(UIView *)v26 setFrame:?];
    [(SBHIconStylePickerControl *)height addSubview:height->_containerView];
    v27 = [resourceCopy copy];
    URLForResource = height->_URLForResource;
    height->_URLForResource = v27;

    v29 = [extenstionCopy copy];
    extension = height->_extension;
    height->_extension = v29;

    v31 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v32 = [v31 URLForResource:resourceCopy withExtension:extenstionCopy];

    v33 = [objc_alloc(MEMORY[0x1E698E7D8]) initWithURL:v32];
    packageView = height->_packageView;
    height->_packageView = v33;

    v35 = height->_packageView;
    [(SBHIconStylePickerControl *)height bounds];
    [(BSUICAPackageView *)v35 setFrame:?];
    [(BSUICAPackageView *)height->_packageView setUserInteractionEnabled:0];
    layer = [(BSUICAPackageView *)height->_packageView layer];
    [layer setAllowsGroupOpacity:1];

    [(UIView *)height->_containerView addSubview:height->_packageView];
    [(SBHIconStylePickerControl *)height setPointerStyleProvider:&__block_literal_global_43];
    [(SBHIconStylePickerControl *)height _updatePackageView:0];
    [(SBHIconStylePickerControl *)height _updateFilters];
    v37 = objc_opt_self();
    v42[0] = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    v39 = [(SBHIconStylePickerControl *)height registerForTraitChanges:v38 withTarget:height action:sel__updateFilters];
  }

  return height;
}

id __96__SBHIconStylePickerControl_initWithFrame_URLForResource_extenstion_enabledState_disabledState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 bounds];
  v10 = CGRectInset(v9, -8.0, -8.0);
  v5 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:{v10.origin.x, v10.origin.y, v10.size.width, v10.size.height}];
  v6 = [MEMORY[0x1E69DCDD0] styleWithEffect:v4 shape:v5];

  return v6;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SBHIconStylePickerControl;
  [(SBHIconStylePickerControl *)&v11 layoutSubviews];
  [(SBHIconStylePickerControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_containerView setFrame:?];
  [(BSUICAPackageView *)self->_packageView setFrame:v4, v6, v8, v10];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  if ([(SBHIconStylePickerControl *)self isSelected]!= selected)
  {
    v7.receiver = self;
    v7.super_class = SBHIconStylePickerControl;
    [(SBHIconStylePickerControl *)&v7 setSelected:selectedCopy];
    [(SBHIconStylePickerControl *)self sendActionsForControlEvents:4096];
    [(SBHIconStylePickerControl *)self _updatePackageView:animatedCopy];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = SBHIconStylePickerControl;
  [(SBHIconStylePickerControl *)&v5 setHighlighted:?];
  SBHUIViewAnimateHighlight(self->_packageView, highlightedCopy);
}

- (void)setReferenceLayoutView:(id)view
{
  objc_storeWeak(&self->_referenceLayoutView, view);
  [(SBHIconStylePickerControl *)self invalidateIntrinsicContentSize];

  [(SBHIconStylePickerControl *)self setNeedsLayout];
}

- (CGSize)intrinsicContentSize
{
  WeakRetained = objc_loadWeakRetained(&self->_referenceLayoutView);
  packageView = WeakRetained;
  if (!WeakRetained)
  {
    packageView = self->_packageView;
  }

  v5 = packageView;

  [(BSUICAPackageView *)v5 intrinsicContentSize];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  WeakRetained = objc_loadWeakRetained(&self->_referenceLayoutView);
  packageView = WeakRetained;
  if (!WeakRetained)
  {
    packageView = self->_packageView;
  }

  v12 = packageView;

  *&v13 = priority;
  *&v14 = fittingPriority;
  [(BSUICAPackageView *)v12 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v13, v14];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)_updateFilters
{
  v14[1] = *MEMORY[0x1E69E9840];
  traitCollection = [(SBHIconStylePickerControl *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v5 = MEMORY[0x1E6979CE8];
  if (userInterfaceStyle != 1)
  {
    v5 = MEMORY[0x1E6979CF8];
  }

  v6 = [MEMORY[0x1E6979378] filterWithType:*v5];
  layer = [(UIView *)self->_containerView layer];
  [layer setCompositingFilter:v6];

  layer2 = [(SBHIconStylePickerControl *)self layer];
  [layer2 setAllowsGroupBlending:0];

  if (userInterfaceStyle == 1)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v9 = ;
  v10 = [v9 colorWithAlphaComponent:0.54];

  v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979888]];
  [v11 setValue:objc_msgSend(v10 forKey:{"CGColor"), @"inputColor"}];
  [v11 setValue:&unk_1F3DB2B18 forKey:@"inputBias"];
  [v11 setValue:&unk_1F3DB2B28 forKey:@"inputAmount"];
  layer3 = [(UIView *)self->_containerView layer];
  v14[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [layer3 setFilters:v13];
}

- (void)_updatePackageView:(BOOL)view
{
  viewCopy = view;
  isSelected = [(SBHIconStylePickerControl *)self isSelected];
  v6 = &OBJC_IVAR___SBHIconStylePickerControl__disabledState;
  if (isSelected)
  {
    v6 = &OBJC_IVAR___SBHIconStylePickerControl__enabledState;
  }

  v7 = MEMORY[0x1E6979518];
  v8 = *(&self->super.super.super.super.super.isa + *v6);
  [v7 begin];
  [(BSUICAPackageView *)self->_packageView setState:v8 animated:viewCopy];

  [(SBHIconStylePickerControl *)self _updateFilters];
  v9 = MEMORY[0x1E6979518];

  [v9 commit];
}

- (UIView)referenceLayoutView
{
  WeakRetained = objc_loadWeakRetained(&self->_referenceLayoutView);

  return WeakRetained;
}

@end