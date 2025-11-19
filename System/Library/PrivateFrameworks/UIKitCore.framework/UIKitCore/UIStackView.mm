@interface UIStackView
+ (Class)layerClass;
- (BOOL)_ola_isCandidateForMultilineTextWidthDisambiguationWhenArranged;
- (BOOL)_shouldRequestTallestBaselineViewForFirst:(BOOL)a3;
- (CGSize)_systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5 hasIntentionallyCollapsedHeight:(BOOL *)a6;
- (NSArray)arrangedSubviews;
- (UIStackView)initWithArrangedSubviews:(NSArray *)views;
- (UIStackView)initWithCoder:(NSCoder *)coder;
- (UIStackView)initWithFrame:(CGRect)frame;
- (UIStackViewAlignment)alignment;
- (double)_proportionalFillLengthForOrderedArrangement:(id)a3 relevantParentAxis:(int64_t)a4;
- (id)_baselineViewForFirst:(BOOL)a3;
- (id)description;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_commonStackViewInitializationWithArrangedSubviews:(id)a3;
- (void)_vendedBaselineViewDidMoveForFirst:(BOOL)a3;
- (void)_vendedBaselineViewParametersDidChange;
- (void)addArrangedSubview:(UIView *)view;
- (void)encodeWithCoder:(id)a3;
- (void)insertArrangedSubview:(UIView *)view atIndex:(NSUInteger)stackIndex;
- (void)removeArrangedSubview:(UIView *)view;
- (void)setAlignment:(UIStackViewAlignment)alignment;
- (void)setArrangedSubviews:(id)a3;
- (void)setAxis:(UILayoutConstraintAxis)axis;
- (void)setBackgroundColor:(id)a3;
- (void)setLayoutMarginsRelativeArrangement:(BOOL)layoutMarginsRelativeArrangement;
- (void)setOpaque:(BOOL)a3;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation UIStackView

+ (Class)layerClass
{
  if (dyld_program_sdk_at_least())
  {
    v5.receiver = a1;
    v5.super_class = &OBJC_METACLASS___UIStackView;
    v3 = objc_msgSendSuper2(&v5, sel_layerClass);
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (void)_vendedBaselineViewParametersDidChange
{
  v3 = self->_didRequestTallestBaselineViewForFirst || self->_viewForFirstBaselineLayoutDidChange || [(UIStackView *)self _shouldRequestTallestBaselineViewForFirst:1];
  if (self->_didRequestTallestBaselineViewForLast || self->_viewForLastBaselineLayoutDidChange)
  {
    LOBYTE(v4) = 1;
LABEL_8:
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__UIStackView__vendedBaselineViewParametersDidChange__block_invoke;
    aBlock[3] = &unk_1E71293F0;
    v9 = v3;
    v10 = v4;
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__UIStackView__vendedBaselineViewParametersDidChange__block_invoke_2;
    v7[3] = &unk_1E7129418;
    v7[4] = self;
    v6 = _Block_copy(v7);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___UIViewEnumerateLayoutConstraintsAndAdjustForSelectedLayoutVariables_block_invoke;
    v11[3] = &unk_1E7129538;
    v11[4] = self;
    v11[5] = v5;
    v11[6] = v6;
    [(UIView *)self _withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists:v11];
    self->_viewForFirstBaselineLayoutDidChange = 0;
    self->_viewForLastBaselineLayoutDidChange = 0;

    return;
  }

  v4 = [(UIStackView *)self _shouldRequestTallestBaselineViewForFirst:0];
  if (v3 || v4)
  {
    goto LABEL_8;
  }
}

- (UIStackViewAlignment)alignment
{
  v2 = [(_UIAlignedLayoutArrangement *)self->_alignmentArrangement alignment];
  if ((v2 & 0x200) != 0)
  {
    return 3;
  }

  if ((v2 & 0x1000) != 0)
  {
    return 2;
  }

  if ((v2 & 0x800) != 0)
  {
    return 5;
  }

  if ((v2 & 8) != 0)
  {
    return ~(v2 >> 4) & 1;
  }

  return 4;
}

- (NSArray)arrangedSubviews
{
  v2 = [(_UILayoutArrangement *)self->_distributionArrangement items];
  v3 = [v2 copy];

  return v3;
}

- (id)viewForLastBaselineLayout
{
  v2 = self;
  v3 = [(UIStackView *)self _baselineViewForFirst:0];
  v4 = [v3 viewForLastBaselineLayout];
  v5 = v4;
  if (v4)
  {
    v2 = v4;
  }

  v6 = v2;

  return v2;
}

- (void)updateConstraints
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __32__UIStackView_updateConstraints__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [(UIView *)self _withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists:v2];
}

void __32__UIStackView_updateConstraints__block_invoke(uint64_t a1)
{
  v11.receiver = *(a1 + 32);
  v11.super_class = UIStackView;
  objc_msgSendSuper2(&v11, sel_updateConstraints);
  v2 = *(a1 + 32);
  if (qword_1ED499F58 != -1)
  {
    dispatch_once(&qword_1ED499F58, &__block_literal_global_169_3);
  }

  if (byte_1ED499F39 == 1)
  {
    v3 = [v2 arrangedSubviews];
    v4 = [v3 count];

    v5 = objc_getAssociatedObject(v2, &unk_1ED499F3A);
    v6 = v5;
    if (v4 || v5)
    {
      if (!v4 || !v5)
      {
        goto LABEL_11;
      }

      [v5 setActive:0];
      v8 = 0;
    }

    else
    {
      v7 = [v2 heightAnchor];
      v8 = [v7 constraintEqualToConstant:0.0];

      LODWORD(v9) = 1.0;
      [v8 setPriority:v9];
      [v8 setIdentifier:@"UISV-fix-for-app-bug-ambiguity"];
      [v8 setActive:1];
      v6 = v8;
    }

    objc_setAssociatedObject(v2, &unk_1ED499F3A, v8, 1);
LABEL_11:
  }

  v10 = *(a1 + 32);
  if ((*(v10 + 432) & 1) != 0 || *(v10 + 433) == 1)
  {
    [*(v10 + 416) _didEvaluateMultilineHeightForView:?];
  }
}

BOOL __53__UIStackView__vendedBaselineViewParametersDidChange__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 == 12 && (*(a1 + 40) & 1) != 0 || (v6 = 0, a3 == 11) && (*(a1 + 41) & 1) != 0)
  {
    v7 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      do
      {
        v8 = [v7 superview];

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v10 = v7 == v5;
        v6 = v7 == v5;
        v7 = v8;
      }

      while (!v10 && (isKindOfClass & 1) != 0);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)viewForFirstBaselineLayout
{
  v2 = self;
  v3 = [(UIStackView *)self _baselineViewForFirst:1];
  v4 = [v3 viewForFirstBaselineLayout];
  v5 = v4;
  if (v4)
  {
    v2 = v4;
  }

  v6 = v2;

  return v2;
}

void __53__UIStackView__vendedBaselineViewParametersDidChange__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 container];
  v5 = [v4 _layoutEngine];
  if (v5 && [v3 hasBeenLowered])
  {
    v6 = [v3 firstItem];
    v7 = *(a1 + 32);

    if (v6 == v7)
    {
      v8 = [v3 firstAttribute];
    }

    else
    {
      v8 = [v3 secondAttribute];
    }

    v9 = v8;
    v15 = 0.0;
    v10 = [(UIView *)*(a1 + 32) _baselineViewForConstraint:v3 forFirstItem:v6 == v7 withOffset:&v15];
    v11 = *(a1 + 32);
    if ((v9 - 11) > 1)
    {
      if (v10 != v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = [v11 _viewForLoweringBaselineLayoutAttribute:v9];

      if (v10 != v12)
      {
LABEL_8:
        [v3 _removeFromEngine:v5];
        [v3 _addToEngine:v5];
LABEL_12:

        goto LABEL_13;
      }
    }

    v13 = v15;
    [v10 _baselineOffsetFromNearestEdgeForLayoutAttribute:v9];
    if (v13 != v14)
    {
      [v3 _containerGeometryDidChange];
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (BOOL)_ola_isCandidateForMultilineTextWidthDisambiguationWhenArranged
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(UIView *)self _ola_shouldUseImprovedMultilineTextDisambiguation])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [(_UILayoutArrangement *)self->_distributionArrangement items];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v10 + 1) + 8 * v7) _ola_isCandidateForMultilineTextWidthDisambiguationWhenArranged])
          {

            return 1;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    return 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIStackView;
    return [(UIView *)&v9 _ola_isCandidateForMultilineTextWidthDisambiguationWhenArranged];
  }
}

- (UIStackView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIStackView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIStackView *)v3 _commonStackViewInitializationWithArrangedSubviews:MEMORY[0x1E695E0F0]];
    [(UIView *)v4 setLayoutMargins:0.0, 0.0, 0.0, 0.0];
  }

  return v4;
}

- (void)_commonStackViewInitializationWithArrangedSubviews:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__UIStackView__commonStackViewInitializationWithArrangedSubviews___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [UIView performWithoutAnimation:v6];
}

uint64_t __66__UIStackView__commonStackViewInitializationWithArrangedSubviews___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 408);
  *(v3 + 408) = v2;

  v5 = [(_UILayoutArrangement *)[_UIOrderedLayoutArrangement alloc] initWithItems:*(a1 + 40) onAxis:0];
  v6 = *(a1 + 32);
  v7 = *(v6 + 416);
  *(v6 + 416) = v5;

  v8 = [(_UILayoutArrangement *)[_UIAlignedLayoutArrangement alloc] initWithItems:*(a1 + 40) onAxis:0];
  v9 = *(a1 + 32);
  v10 = *(v9 + 424);
  *(v9 + 424) = v8;

  [*(*(a1 + 32) + 424) setAlignment:120];
  [*(*(a1 + 32) + 416) setCanvas:?];
  [*(*(a1 + 32) + 424) setCanvas:?];
  [*(*(a1 + 32) + 416) setLayoutFillsCanvas:1];
  [*(*(a1 + 32) + 424) setLayoutFillsCanvas:1];
  result = [*(a1 + 32) translatesAutoresizingMaskIntoConstraints];
  if (result)
  {
    v12 = *(a1 + 32);

    return [v12 _setHostsLayoutEngine:1];
  }

  return result;
}

- (UIStackView)initWithArrangedSubviews:(NSArray *)views
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = views;
  v5 = [(UIStackView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(UIStackView *)v5 addArrangedSubview:*(*(&v12 + 1) + 8 * v10++), v12];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (void)addArrangedSubview:(UIView *)view
{
  distributionArrangement = self->_distributionArrangement;
  v5 = view;
  [(_UILayoutArrangement *)distributionArrangement addItem:v5];
  [(_UILayoutArrangement *)self->_alignmentArrangement addItem:v5];
}

- (void)insertArrangedSubview:(UIView *)view atIndex:(NSUInteger)stackIndex
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = view;
  v8 = [(_UILayoutArrangement *)self->_distributionArrangement items];
  v9 = [v8 count];
  if (v9 < stackIndex)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"index out of bounds for arranged subview: index = %lu expected to be less than or equal to %lu", stackIndex, v9}];
  }

  v10 = [(_UILayoutArrangement *)self->_alignmentArrangement items];
  v11 = [v10 count];
  if (v9 != v11)
  {
    if (os_variant_has_internal_diagnostics())
    {
      logb = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(logb, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v22 = v8;
        v23 = 2112;
        v24 = v10;
        _os_log_fault_impl(&dword_188A29000, logb, OS_LOG_TYPE_FAULT, "number of items in the arrangements for the stack view have gotten out of sync. distribution items: %@ alignment items: %@", buf, 0x16u);
      }
    }

    else
    {
      log = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED499F40) + 8);
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = v8;
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "number of items in the arrangements for the stack view have gotten out of sync. distribution items: %@ alignment items: %@", buf, 0x16u);
      }
    }
  }

  [(_UIOrderedLayoutArrangement *)self->_distributionArrangement insertItem:v7 atIndex:stackIndex];
  v12 = [(_UILayoutArrangement *)self->_alignmentArrangement items];

  v13 = [v12 count];
  if (v13 != v11)
  {
    if (os_variant_has_internal_diagnostics())
    {
      logc = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(logc, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        v22 = v11;
        v23 = 2048;
        v24 = v13;
        _os_log_fault_impl(&dword_188A29000, logc, OS_LOG_TYPE_FAULT, "number of items in the alignment arrangement changed from %lu to %lu after inserting item in the distribution arrangement", buf, 0x16u);
      }
    }

    else
    {
      loga = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED499F48) + 8);
      if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v22 = v11;
        v23 = 2048;
        v24 = v13;
        _os_log_impl(&dword_188A29000, loga, OS_LOG_TYPE_ERROR, "number of items in the alignment arrangement changed from %lu to %lu after inserting item in the distribution arrangement", buf, 0x16u);
      }
    }
  }

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    logd = [MEMORY[0x1E696AAA8] currentHandler];
    [logd handleFailureInMethod:a2 object:self file:@"UIStackView.m" lineNumber:118 description:@"number of items in the alignment arrangement is NSNotFound"];
  }

  alignmentArrangement = self->_alignmentArrangement;
  if (v9 == v11 || v13 >= stackIndex)
  {
    [(_UILayoutArrangement *)alignmentArrangement insertItem:v7 atIndex:stackIndex];
  }

  else
  {
    [(_UILayoutArrangement *)alignmentArrangement addItem:v7];
  }
}

- (void)removeArrangedSubview:(UIView *)view
{
  distributionArrangement = self->_distributionArrangement;
  v5 = view;
  [(_UIOrderedLayoutArrangement *)distributionArrangement removeItem:v5];
  [(_UILayoutArrangement *)self->_alignmentArrangement removeItem:v5];
}

- (void)setArrangedSubviews:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIStackView *)self arrangedSubviews];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([v6 containsObject:v12] & 1) == 0)
        {
          [(UIStackView *)self removeArrangedSubview:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __35__UIStackView_setArrangedSubviews___block_invoke;
  v13[3] = &unk_1E70F3F18;
  v13[4] = self;
  [v4 enumerateObjectsWithOptions:2 usingBlock:v13];
}

- (void)setAxis:(UILayoutConstraintAxis)axis
{
  [(_UIOrderedLayoutArrangement *)self->_distributionArrangement setAxis:?];
  alignmentArrangement = self->_alignmentArrangement;

  [(_UIAlignedLayoutArrangement *)alignmentArrangement setAxis:axis];
}

- (void)setAlignment:(UIStackViewAlignment)alignment
{
  alignmentArrangement = self->_alignmentArrangement;
  if (alignment >= (UIStackViewAlignmentBottom|UIStackViewAlignmentFirstBaseline))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSLayoutFormatOptions _alignmentOptionsForStackViewAlignment(UIStackViewAlignment)"];
    [v5 handleFailureInFunction:v6 file:@"UIStackView.m" lineNumber:223 description:@"failed to convert stackAlignment to alignmentOptions"];

    v4 = 0;
  }

  else
  {
    v4 = qword_18A683528[alignment];
  }

  [(_UIAlignedLayoutArrangement *)alignmentArrangement setAlignment:v4];
}

- (UIStackView)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v10.receiver = self;
  v10.super_class = UIStackView;
  v5 = [(UIView *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectForKey:@"UIStackViewArrangedSubviews"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    [(UIStackView *)v5 _commonStackViewInitializationWithArrangedSubviews:v8];
    [(UIStackView *)v5 setAxis:[(NSCoder *)v4 decodeIntegerForKey:@"UIStackViewAxis"]];
    [(UIStackView *)v5 setDistribution:[(NSCoder *)v4 decodeIntegerForKey:@"UIStackViewDistribution"]];
    [(UIStackView *)v5 setAlignment:[(NSCoder *)v4 decodeIntegerForKey:@"UIStackViewAlignment"]];
    [(NSCoder *)v4 decodeDoubleForKey:@"UIStackViewSpacing"];
    [(UIStackView *)v5 setSpacing:?];
    [(UIStackView *)v5 setBaselineRelativeArrangement:[(NSCoder *)v4 decodeBoolForKey:@"UIStackViewBaselineRelative"]];
    [(UIStackView *)v5 setLayoutMarginsRelativeArrangement:[(NSCoder *)v4 decodeBoolForKey:@"UIStackViewLayoutMarginsRelative"]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = UIStackView;
  [(UIView *)&v6 encodeWithCoder:v4];
  v5 = [(UIStackView *)self arrangedSubviews];
  if ([v5 count])
  {
    [v4 encodeObject:v5 forKey:@"UIStackViewArrangedSubviews"];
  }

  [v4 encodeInteger:-[UIStackView axis](self forKey:{"axis"), @"UIStackViewAxis"}];
  [v4 encodeInteger:-[UIStackView distribution](self forKey:{"distribution"), @"UIStackViewDistribution"}];
  [v4 encodeInteger:-[UIStackView alignment](self forKey:{"alignment"), @"UIStackViewAlignment"}];
  [(UIStackView *)self spacing];
  [v4 encodeDouble:@"UIStackViewSpacing" forKey:?];
  [v4 encodeBool:-[UIStackView isBaselineRelativeArrangement](self forKey:{"isBaselineRelativeArrangement"), @"UIStackViewBaselineRelative"}];
  [v4 encodeBool:-[UIStackView isLayoutMarginsRelativeArrangement](self forKey:{"isLayoutMarginsRelativeArrangement"), @"UIStackViewLayoutMarginsRelative"}];
}

- (void)setLayoutMarginsRelativeArrangement:(BOOL)layoutMarginsRelativeArrangement
{
  if (self->_layoutMarginsRelativeArrangement != layoutMarginsRelativeArrangement)
  {
    v4 = layoutMarginsRelativeArrangement;
    self->_layoutMarginsRelativeArrangement = layoutMarginsRelativeArrangement;
    [(_UIOrderedLayoutArrangement *)self->_distributionArrangement setLayoutUsesCanvasMarginsWhenFilling:?];
    alignmentArrangement = self->_alignmentArrangement;

    [(_UIAlignedLayoutArrangement *)alignmentArrangement setLayoutUsesCanvasMarginsWhenFilling:v4];
  }
}

- (void)setOpaque:(BOOL)a3
{
  v3 = a3;
  if (dyld_program_sdk_at_least())
  {
    v5.receiver = self;
    v5.super_class = UIStackView;
    [(UIView *)&v5 setOpaque:v3];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if (dyld_program_sdk_at_least())
  {
    if (qword_1ED499F50 != -1)
    {
      dispatch_once(&qword_1ED499F50, &__block_literal_global_679);
    }

    if ((_MergedGlobals_17_6 & 1) == 0)
    {
      v5.receiver = self;
      v5.super_class = UIStackView;
      [(UIView *)&v5 setBackgroundColor:v4];
    }
  }
}

void __34__UIStackView_setBackgroundColor___block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  _MergedGlobals_17_6 = [v0 isEqualToString:@"com.apple.CarPlayApp"];
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3
{
  v3 = a3;
  if (!a3)
  {
    [(UIView *)self _setHostsLayoutEngine:0];
  }

  v5.receiver = self;
  v5.super_class = UIStackView;
  [(UIView *)&v5 setTranslatesAutoresizingMaskIntoConstraints:v3];
}

- (CGSize)_systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5 hasIntentionallyCollapsedHeight:(BOOL *)a6
{
  height = a3.height;
  width = a3.width;
  v12 = [(UIView *)self _isInAnimatedLayout];
  if (!v12 && +[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    [(UIView *)self _setInAnimatedLayout:1];
    [(UIView *)self _setNeedsUpdateConstraintsNeedingLayout:0];
  }

  v21.receiver = self;
  v21.super_class = UIStackView;
  *&v13 = a4;
  *&v14 = a5;
  [(UIView *)&v21 _systemLayoutSizeFittingSize:a6 withHorizontalFittingPriority:width verticalFittingPriority:height hasIntentionallyCollapsedHeight:v13, v14];
  v16 = v15;
  v18 = v17;
  [(UIView *)self _setInAnimatedLayout:v12];
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (BOOL)_shouldRequestTallestBaselineViewForFirst:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIStackView *)self alignment];
  if ([(UIStackView *)self axis])
  {
    return 0;
  }

  if ((v5 - 3) >= 0xFFFFFFFFFFFFFFFELL && !v3)
  {
    return 1;
  }

  v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) == 4 && v3;
  return v5 == UIStackViewAlignmentCenter || v7;
}

- (id)_baselineViewForFirst:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIStackView *)self _shouldRequestTallestBaselineViewForFirst:?];
  v6 = v5;
  v7 = 5;
  if (v3)
  {
    v7 = 4;
  }

  *(&self->super.super.super.isa + OBJC_IVAR___UIStackView__mutableLayoutArrangements[v7]) = v5;
  distributionArrangement = self->_distributionArrangement;

  return [(_UIOrderedLayoutArrangement *)distributionArrangement _baselineViewVendTallest:v6 forFirstBaseline:v3];
}

- (void)_vendedBaselineViewDidMoveForFirst:(BOOL)a3
{
  v3 = 7;
  if (a3)
  {
    v3 = 6;
  }

  *(&self->super.super.super.isa + OBJC_IVAR___UIStackView__mutableLayoutArrangements[v3]) = 1;
}

- (double)_proportionalFillLengthForOrderedArrangement:(id)a3 relevantParentAxis:(int64_t)a4
{
  v6 = [a3 canvas];
  v7 = v6;
  if (a4 == 1 && ![v6 alignment])
  {
    v12 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
    if (([v7 translatesAutoresizingMaskIntoConstraints] & 1) == 0)
    {
      v16 = [v7 _layoutEngine];

      if (v16)
      {
        [v7 _nsis_bounds];
        v12 = v17;
        v13 = v18;
        v14 = v19;
        v15 = v20;
      }
    }

    v21 = *MEMORY[0x1E695F060];
    v22 = *(MEMORY[0x1E695F060] + 8);
    if (*MEMORY[0x1E695F060] == v14 && v22 == v15)
    {
      [v7 bounds];
      v12 = v21;
      v13 = v22;
      v14 = v24;
      v15 = v25;
    }

    if ([v7 isLayoutMarginsRelativeArrangement])
    {
      [v7 layoutMargins];
      v12 = v12 + v26;
      v13 = v13 + v27;
      v14 = v14 - (v26 + v28);
      v15 = v15 - (v27 + v29);
    }

    v30 = [(UIView *)self _layoutEngine];
    [(NSISEngine *)v30 _UIKitPerformPendingChangeNotifications];

    v34.origin.x = v12;
    v34.origin.y = v13;
    v34.size.width = v14;
    v34.size.height = v15;
    Width = CGRectGetWidth(v34);
    LODWORD(v32) = 1148846080;
    LODWORD(v33) = 1112014848;
    [(UIView *)self systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:v32, v33];
  }

  else
  {
    [(UIView *)self systemLayoutSizeFittingSize:0.0, 0.0];
  }

  if (a4)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

- (id)description
{
  v32.receiver = self;
  v32.super_class = UIStackView;
  v3 = [(UIView *)&v32 description];
  v4 = [(UIStackView *)self axis];
  v5 = @"vert";
  if (v4 == UILayoutConstraintAxisHorizontal)
  {
    v5 = @"horiz";
  }

  v6 = v5;
  v7 = [(UIStackView *)self distribution];
  if (v7 > UIStackViewDistributionEqualCentering)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E7129438[v7];
  }

  v9 = [(UIStackView *)self alignment];
  v10 = [(UIStackView *)self axis];
  if (v9 > UIStackViewAlignmentFirstBaseline)
  {
    if (v9 == UIStackViewAlignmentCenter)
    {
      v11 = @"center";
      goto LABEL_23;
    }

    if (v9 != UIStackViewAlignmentTrailing)
    {
      if (v9 == UIStackViewAlignmentLastBaseline)
      {
        v11 = @"lastBaseline";
        goto LABEL_23;
      }

      goto LABEL_17;
    }

    v12 = @"trailing";
    v13 = @"bottom";
  }

  else
  {
    if (v9 == UIStackViewAlignmentFill)
    {
      v11 = @"fill";
      goto LABEL_23;
    }

    if (v9 != UIStackViewAlignmentLeading)
    {
      if (v9 == UIStackViewAlignmentFirstBaseline)
      {
        v11 = @"firstBaseline";
        goto LABEL_23;
      }

LABEL_17:
      v11 = @"unknown";
      goto LABEL_23;
    }

    v12 = @"leading";
    v13 = @"top";
  }

  if (v10 == UILayoutConstraintAxisHorizontal)
  {
    v12 = v13;
  }

  v11 = v12;
LABEL_23:
  v14 = [v3 stringByAppendingFormat:@" axis=%@ distribution=%@ alignment=%@", v6, v8, v11];

  if ([(UIStackView *)self axis]== UILayoutConstraintAxisVertical && [(UIStackView *)self isBaselineRelativeArrangement])
  {
    v15 = [v14 stringByAppendingString:@" baselineRelative"];

    v14 = v15;
  }

  if ([(UIStackView *)self isLayoutMarginsRelativeArrangement])
  {
    v16 = [v14 stringByAppendingString:@" layoutMarginsRelative"];

    v14 = v16;
  }

  if (!os_variant_has_internal_diagnostics())
  {
    v17 = [(UIStackView *)self arrangedSubviews];
    v18 = [v17 count];

    if (v18)
    {
      goto LABEL_32;
    }

    v19 = @" NO ARRANGED SUBVIEWS";
    goto LABEL_31;
  }

  v22 = [(_UILayoutArrangement *)self->_distributionArrangement _mutableItems];
  v23 = [v22 count];

  if (v23)
  {
    v24 = [(_UILayoutArrangement *)self->_distributionArrangement _mutableItems];
    v25 = [v14 stringByAppendingFormat:@" arrangedSubviews=%p distributionArrangement=%p alignmentArrangement=%p", v24, self->_distributionArrangement, self->_alignmentArrangement];

    v14 = v25;
  }

  else
  {
    v24 = [v14 stringByAppendingString:@" NO ARRANGED SUBVIEWS"];

    v26 = [(_UILayoutArrangement *)self->_distributionArrangement _mutableItems];
    v27 = [(_UILayoutArrangement *)self->_alignmentArrangement _mutableItems];
    v28 = _deferringTokenEqualToToken(v26, v27);

    if (v28)
    {
      v14 = v24;
      goto LABEL_41;
    }

    v14 = [v24 stringByAppendingFormat:@" distributionArrangement=%p alignmentArrangement=%p", self->_distributionArrangement, self->_alignmentArrangement];
  }

LABEL_41:
  v29 = [(_UILayoutArrangement *)self->_distributionArrangement _mutableItems];
  v30 = [(_UILayoutArrangement *)self->_alignmentArrangement _mutableItems];
  v31 = _deferringTokenEqualToToken(v29, v30);

  if ((v31 & 1) == 0)
  {
    v19 = @" ERROR: arrangement mismatch";
LABEL_31:
    v20 = [v14 stringByAppendingString:v19];

    v14 = v20;
  }

LABEL_32:

  return v14;
}

@end