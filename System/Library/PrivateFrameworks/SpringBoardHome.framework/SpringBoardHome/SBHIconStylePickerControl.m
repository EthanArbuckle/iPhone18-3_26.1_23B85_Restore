@interface SBHIconStylePickerControl
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (SBHIconStylePickerControl)initWithFrame:(CGRect)a3 URLForResource:(id)a4 extenstion:(id)a5 enabledState:(id)a6 disabledState:(id)a7;
- (UIView)referenceLayoutView;
- (void)_updateFilters;
- (void)_updatePackageView:(BOOL)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setReferenceLayoutView:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation SBHIconStylePickerControl

- (SBHIconStylePickerControl)initWithFrame:(CGRect)a3 URLForResource:(id)a4 extenstion:(id)a5 enabledState:(id)a6 disabledState:(id)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v42[1] = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v41.receiver = self;
  v41.super_class = SBHIconStylePickerControl;
  v19 = [(SBHIconStylePickerControl *)&v41 initWithFrame:x, y, width, height];
  if (v19)
  {
    v20 = [v17 copy];
    enabledState = v19->_enabledState;
    v19->_enabledState = v20;

    v22 = [v18 copy];
    disabledState = v19->_disabledState;
    v19->_disabledState = v22;

    v24 = objc_alloc_init(SBHTouchPassThroughView);
    containerView = v19->_containerView;
    v19->_containerView = &v24->super;

    v26 = v19->_containerView;
    [(SBHIconStylePickerControl *)v19 bounds];
    [(UIView *)v26 setFrame:?];
    [(SBHIconStylePickerControl *)v19 addSubview:v19->_containerView];
    v27 = [v15 copy];
    URLForResource = v19->_URLForResource;
    v19->_URLForResource = v27;

    v29 = [v16 copy];
    extension = v19->_extension;
    v19->_extension = v29;

    v31 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v32 = [v31 URLForResource:v15 withExtension:v16];

    v33 = [objc_alloc(MEMORY[0x1E698E7D8]) initWithURL:v32];
    packageView = v19->_packageView;
    v19->_packageView = v33;

    v35 = v19->_packageView;
    [(SBHIconStylePickerControl *)v19 bounds];
    [(BSUICAPackageView *)v35 setFrame:?];
    [(BSUICAPackageView *)v19->_packageView setUserInteractionEnabled:0];
    v36 = [(BSUICAPackageView *)v19->_packageView layer];
    [v36 setAllowsGroupOpacity:1];

    [(UIView *)v19->_containerView addSubview:v19->_packageView];
    [(SBHIconStylePickerControl *)v19 setPointerStyleProvider:&__block_literal_global_43];
    [(SBHIconStylePickerControl *)v19 _updatePackageView:0];
    [(SBHIconStylePickerControl *)v19 _updateFilters];
    v37 = objc_opt_self();
    v42[0] = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    v39 = [(SBHIconStylePickerControl *)v19 registerForTraitChanges:v38 withTarget:v19 action:sel__updateFilters];
  }

  return v19;
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

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(SBHIconStylePickerControl *)self isSelected]!= a3)
  {
    v7.receiver = self;
    v7.super_class = SBHIconStylePickerControl;
    [(SBHIconStylePickerControl *)&v7 setSelected:v5];
    [(SBHIconStylePickerControl *)self sendActionsForControlEvents:4096];
    [(SBHIconStylePickerControl *)self _updatePackageView:v4];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SBHIconStylePickerControl;
  [(SBHIconStylePickerControl *)&v5 setHighlighted:?];
  SBHUIViewAnimateHighlight(self->_packageView, v3);
}

- (void)setReferenceLayoutView:(id)a3
{
  objc_storeWeak(&self->_referenceLayoutView, a3);
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->_referenceLayoutView);
  packageView = WeakRetained;
  if (!WeakRetained)
  {
    packageView = self->_packageView;
  }

  v12 = packageView;

  *&v13 = a4;
  *&v14 = a5;
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
  v3 = [(SBHIconStylePickerControl *)self traitCollection];
  v4 = [v3 userInterfaceStyle];
  v5 = MEMORY[0x1E6979CE8];
  if (v4 != 1)
  {
    v5 = MEMORY[0x1E6979CF8];
  }

  v6 = [MEMORY[0x1E6979378] filterWithType:*v5];
  v7 = [(UIView *)self->_containerView layer];
  [v7 setCompositingFilter:v6];

  v8 = [(SBHIconStylePickerControl *)self layer];
  [v8 setAllowsGroupBlending:0];

  if (v4 == 1)
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
  v12 = [(UIView *)self->_containerView layer];
  v14[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v12 setFilters:v13];
}

- (void)_updatePackageView:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBHIconStylePickerControl *)self isSelected];
  v6 = &OBJC_IVAR___SBHIconStylePickerControl__disabledState;
  if (v5)
  {
    v6 = &OBJC_IVAR___SBHIconStylePickerControl__enabledState;
  }

  v7 = MEMORY[0x1E6979518];
  v8 = *(&self->super.super.super.super.super.isa + *v6);
  [v7 begin];
  [(BSUICAPackageView *)self->_packageView setState:v8 animated:v3];

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