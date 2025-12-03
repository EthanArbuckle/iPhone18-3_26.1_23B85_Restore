@interface UIStackView
+ (Class)layerClass;
- (BOOL)_ola_isCandidateForMultilineTextWidthDisambiguationWhenArranged;
- (BOOL)_shouldRequestTallestBaselineViewForFirst:(BOOL)first;
- (CGSize)_systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority hasIntentionallyCollapsedHeight:(BOOL *)height;
- (NSArray)arrangedSubviews;
- (UIStackView)initWithArrangedSubviews:(NSArray *)views;
- (UIStackView)initWithCoder:(NSCoder *)coder;
- (UIStackView)initWithFrame:(CGRect)frame;
- (UIStackViewAlignment)alignment;
- (double)_proportionalFillLengthForOrderedArrangement:(id)arrangement relevantParentAxis:(int64_t)axis;
- (id)_baselineViewForFirst:(BOOL)first;
- (id)description;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_commonStackViewInitializationWithArrangedSubviews:(id)subviews;
- (void)_vendedBaselineViewDidMoveForFirst:(BOOL)first;
- (void)_vendedBaselineViewParametersDidChange;
- (void)addArrangedSubview:(UIView *)view;
- (void)encodeWithCoder:(id)coder;
- (void)insertArrangedSubview:(UIView *)view atIndex:(NSUInteger)stackIndex;
- (void)removeArrangedSubview:(UIView *)view;
- (void)setAlignment:(UIStackViewAlignment)alignment;
- (void)setArrangedSubviews:(id)subviews;
- (void)setAxis:(UILayoutConstraintAxis)axis;
- (void)setBackgroundColor:(id)color;
- (void)setLayoutMarginsRelativeArrangement:(BOOL)layoutMarginsRelativeArrangement;
- (void)setOpaque:(BOOL)opaque;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints;
- (void)updateConstraints;
@end

@implementation UIStackView

+ (Class)layerClass
{
  if (dyld_program_sdk_at_least())
  {
    v5.receiver = self;
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
  alignment = [(_UIAlignedLayoutArrangement *)self->_alignmentArrangement alignment];
  if ((alignment & 0x200) != 0)
  {
    return 3;
  }

  if ((alignment & 0x1000) != 0)
  {
    return 2;
  }

  if ((alignment & 0x800) != 0)
  {
    return 5;
  }

  if ((alignment & 8) != 0)
  {
    return ~(alignment >> 4) & 1;
  }

  return 4;
}

- (NSArray)arrangedSubviews
{
  items = [(_UILayoutArrangement *)self->_distributionArrangement items];
  v3 = [items copy];

  return v3;
}

- (id)viewForLastBaselineLayout
{
  selfCopy = self;
  v3 = [(UIStackView *)self _baselineViewForFirst:0];
  viewForLastBaselineLayout = [v3 viewForLastBaselineLayout];
  v5 = viewForLastBaselineLayout;
  if (viewForLastBaselineLayout)
  {
    selfCopy = viewForLastBaselineLayout;
  }

  v6 = selfCopy;

  return selfCopy;
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
  selfCopy = self;
  v3 = [(UIStackView *)self _baselineViewForFirst:1];
  viewForFirstBaselineLayout = [v3 viewForFirstBaselineLayout];
  v5 = viewForFirstBaselineLayout;
  if (viewForFirstBaselineLayout)
  {
    selfCopy = viewForFirstBaselineLayout;
  }

  v6 = selfCopy;

  return selfCopy;
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
    items = [(_UILayoutArrangement *)self->_distributionArrangement items];
    v4 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(items);
          }

          if ([*(*(&v10 + 1) + 8 * v7) _ola_isCandidateForMultilineTextWidthDisambiguationWhenArranged])
          {

            return 1;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)_commonStackViewInitializationWithArrangedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__UIStackView__commonStackViewInitializationWithArrangedSubviews___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = subviewsCopy;
  v5 = subviewsCopy;
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
  items = [(_UILayoutArrangement *)self->_distributionArrangement items];
  v9 = [items count];
  if (v9 < stackIndex)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"index out of bounds for arranged subview: index = %lu expected to be less than or equal to %lu", stackIndex, v9}];
  }

  items2 = [(_UILayoutArrangement *)self->_alignmentArrangement items];
  v11 = [items2 count];
  if (v9 != v11)
  {
    if (os_variant_has_internal_diagnostics())
    {
      logb = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(logb, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v22 = items;
        v23 = 2112;
        v24 = items2;
        _os_log_fault_impl(&dword_188A29000, logb, OS_LOG_TYPE_FAULT, "number of items in the arrangements for the stack view have gotten out of sync. distribution items: %@ alignment items: %@", buf, 0x16u);
      }
    }

    else
    {
      log = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED499F40) + 8);
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = items;
        v23 = 2112;
        v24 = items2;
        _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "number of items in the arrangements for the stack view have gotten out of sync. distribution items: %@ alignment items: %@", buf, 0x16u);
      }
    }
  }

  [(_UIOrderedLayoutArrangement *)self->_distributionArrangement insertItem:v7 atIndex:stackIndex];
  items3 = [(_UILayoutArrangement *)self->_alignmentArrangement items];

  v13 = [items3 count];
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

- (void)setArrangedSubviews:(id)subviews
{
  v19 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  arrangedSubviews = [(UIStackView *)self arrangedSubviews];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:subviewsCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = arrangedSubviews;
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
  [subviewsCopy enumerateObjectsWithOptions:2 usingBlock:v13];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSLayoutFormatOptions _alignmentOptionsForStackViewAlignment(UIStackViewAlignment)"];
    [currentHandler handleFailureInFunction:v6 file:@"UIStackView.m" lineNumber:223 description:@"failed to convert stackAlignment to alignmentOptions"];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = UIStackView;
  [(UIView *)&v6 encodeWithCoder:coderCopy];
  arrangedSubviews = [(UIStackView *)self arrangedSubviews];
  if ([arrangedSubviews count])
  {
    [coderCopy encodeObject:arrangedSubviews forKey:@"UIStackViewArrangedSubviews"];
  }

  [coderCopy encodeInteger:-[UIStackView axis](self forKey:{"axis"), @"UIStackViewAxis"}];
  [coderCopy encodeInteger:-[UIStackView distribution](self forKey:{"distribution"), @"UIStackViewDistribution"}];
  [coderCopy encodeInteger:-[UIStackView alignment](self forKey:{"alignment"), @"UIStackViewAlignment"}];
  [(UIStackView *)self spacing];
  [coderCopy encodeDouble:@"UIStackViewSpacing" forKey:?];
  [coderCopy encodeBool:-[UIStackView isBaselineRelativeArrangement](self forKey:{"isBaselineRelativeArrangement"), @"UIStackViewBaselineRelative"}];
  [coderCopy encodeBool:-[UIStackView isLayoutMarginsRelativeArrangement](self forKey:{"isLayoutMarginsRelativeArrangement"), @"UIStackViewLayoutMarginsRelative"}];
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

- (void)setOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  if (dyld_program_sdk_at_least())
  {
    v5.receiver = self;
    v5.super_class = UIStackView;
    [(UIView *)&v5 setOpaque:opaqueCopy];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
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
      [(UIView *)&v5 setBackgroundColor:colorCopy];
    }
  }
}

void __34__UIStackView_setBackgroundColor___block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  _MergedGlobals_17_6 = [v0 isEqualToString:@"com.apple.CarPlayApp"];
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints
{
  constraintsCopy = constraints;
  if (!constraints)
  {
    [(UIView *)self _setHostsLayoutEngine:0];
  }

  v5.receiver = self;
  v5.super_class = UIStackView;
  [(UIView *)&v5 setTranslatesAutoresizingMaskIntoConstraints:constraintsCopy];
}

- (CGSize)_systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority hasIntentionallyCollapsedHeight:(BOOL *)height
{
  height = size.height;
  width = size.width;
  _isInAnimatedLayout = [(UIView *)self _isInAnimatedLayout];
  if (!_isInAnimatedLayout && +[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    [(UIView *)self _setInAnimatedLayout:1];
    [(UIView *)self _setNeedsUpdateConstraintsNeedingLayout:0];
  }

  v21.receiver = self;
  v21.super_class = UIStackView;
  *&v13 = priority;
  *&v14 = fittingPriority;
  [(UIView *)&v21 _systemLayoutSizeFittingSize:height withHorizontalFittingPriority:width verticalFittingPriority:height hasIntentionallyCollapsedHeight:v13, v14];
  v16 = v15;
  v18 = v17;
  [(UIView *)self _setInAnimatedLayout:_isInAnimatedLayout];
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (BOOL)_shouldRequestTallestBaselineViewForFirst:(BOOL)first
{
  firstCopy = first;
  alignment = [(UIStackView *)self alignment];
  if ([(UIStackView *)self axis])
  {
    return 0;
  }

  if ((alignment - 3) >= 0xFFFFFFFFFFFFFFFELL && !firstCopy)
  {
    return 1;
  }

  v7 = (alignment & 0xFFFFFFFFFFFFFFFELL) == 4 && firstCopy;
  return alignment == UIStackViewAlignmentCenter || v7;
}

- (id)_baselineViewForFirst:(BOOL)first
{
  firstCopy = first;
  v5 = [(UIStackView *)self _shouldRequestTallestBaselineViewForFirst:?];
  v6 = v5;
  v7 = 5;
  if (firstCopy)
  {
    v7 = 4;
  }

  *(&self->super.super.super.isa + OBJC_IVAR___UIStackView__mutableLayoutArrangements[v7]) = v5;
  distributionArrangement = self->_distributionArrangement;

  return [(_UIOrderedLayoutArrangement *)distributionArrangement _baselineViewVendTallest:v6 forFirstBaseline:firstCopy];
}

- (void)_vendedBaselineViewDidMoveForFirst:(BOOL)first
{
  v3 = 7;
  if (first)
  {
    v3 = 6;
  }

  *(&self->super.super.super.isa + OBJC_IVAR___UIStackView__mutableLayoutArrangements[v3]) = 1;
}

- (double)_proportionalFillLengthForOrderedArrangement:(id)arrangement relevantParentAxis:(int64_t)axis
{
  canvas = [arrangement canvas];
  v7 = canvas;
  if (axis == 1 && ![canvas alignment])
  {
    v12 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
    if (([v7 translatesAutoresizingMaskIntoConstraints] & 1) == 0)
    {
      _layoutEngine = [v7 _layoutEngine];

      if (_layoutEngine)
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

    _layoutEngine2 = [(UIView *)self _layoutEngine];
    [(NSISEngine *)_layoutEngine2 _UIKitPerformPendingChangeNotifications];

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

  if (axis)
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
  axis = [(UIStackView *)self axis];
  v5 = @"vert";
  if (axis == UILayoutConstraintAxisHorizontal)
  {
    v5 = @"horiz";
  }

  v6 = v5;
  distribution = [(UIStackView *)self distribution];
  if (distribution > UIStackViewDistributionEqualCentering)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E7129438[distribution];
  }

  alignment = [(UIStackView *)self alignment];
  axis2 = [(UIStackView *)self axis];
  if (alignment > UIStackViewAlignmentFirstBaseline)
  {
    if (alignment == UIStackViewAlignmentCenter)
    {
      v11 = @"center";
      goto LABEL_23;
    }

    if (alignment != UIStackViewAlignmentTrailing)
    {
      if (alignment == UIStackViewAlignmentLastBaseline)
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
    if (alignment == UIStackViewAlignmentFill)
    {
      v11 = @"fill";
      goto LABEL_23;
    }

    if (alignment != UIStackViewAlignmentLeading)
    {
      if (alignment == UIStackViewAlignmentFirstBaseline)
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

  if (axis2 == UILayoutConstraintAxisHorizontal)
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
    arrangedSubviews = [(UIStackView *)self arrangedSubviews];
    v18 = [arrangedSubviews count];

    if (v18)
    {
      goto LABEL_32;
    }

    v19 = @" NO ARRANGED SUBVIEWS";
    goto LABEL_31;
  }

  _mutableItems = [(_UILayoutArrangement *)self->_distributionArrangement _mutableItems];
  v23 = [_mutableItems count];

  if (v23)
  {
    _mutableItems2 = [(_UILayoutArrangement *)self->_distributionArrangement _mutableItems];
    v25 = [v14 stringByAppendingFormat:@" arrangedSubviews=%p distributionArrangement=%p alignmentArrangement=%p", _mutableItems2, self->_distributionArrangement, self->_alignmentArrangement];

    v14 = v25;
  }

  else
  {
    _mutableItems2 = [v14 stringByAppendingString:@" NO ARRANGED SUBVIEWS"];

    _mutableItems3 = [(_UILayoutArrangement *)self->_distributionArrangement _mutableItems];
    _mutableItems4 = [(_UILayoutArrangement *)self->_alignmentArrangement _mutableItems];
    v28 = _deferringTokenEqualToToken(_mutableItems3, _mutableItems4);

    if (v28)
    {
      v14 = _mutableItems2;
      goto LABEL_41;
    }

    v14 = [_mutableItems2 stringByAppendingFormat:@" distributionArrangement=%p alignmentArrangement=%p", self->_distributionArrangement, self->_alignmentArrangement];
  }

LABEL_41:
  _mutableItems5 = [(_UILayoutArrangement *)self->_distributionArrangement _mutableItems];
  _mutableItems6 = [(_UILayoutArrangement *)self->_alignmentArrangement _mutableItems];
  v31 = _deferringTokenEqualToToken(_mutableItems5, _mutableItems6);

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