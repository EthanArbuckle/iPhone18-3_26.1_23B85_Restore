@interface UICollectionReusableView
- (BOOL)_disableGroupOpacityInAnimations;
- (BOOL)_disableRasterizeInAnimations;
- (BOOL)_isHiddenForReordering;
- (BOOL)_isStyledAsHeaderOrFooterFromLayoutAttributes:(id)a3;
- (UICollectionReusableView)initWithCoder:(id)a3;
- (UICollectionReusableView)initWithFrame:(CGRect)a3;
- (UICollectionView)_collectionView;
- (UICollectionViewLayoutAttributes)preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes;
- (UIEdgeInsets)_concreteDefaultLayoutMargins;
- (_WORD)_internalMaskView;
- (id)_preferredLayoutAttributesFittingAttributes:(id)a3 isAnimatingExistingView:(BOOL)a4;
- (id)_updateAnimationCompletionBlocks;
- (int64_t)_styleFromLayoutAttributes:(id)a3;
- (void)_addBackdropViewForMaskingIfNeeded;
- (void)_applyListEnvironmentTraitOverridesUsingNewListAttributes:(id)a3 previousListAttributes:(id)a4;
- (void)_clearUpdateAnimation;
- (void)_invalidatePreferredAttributes;
- (void)_notifyIsDisplaying:(BOOL)a3;
- (void)_removeExistingBackdropViewForMasking;
- (void)_setAutomaticIntrinsicContentSizeInvalidationEnabled:(BOOL)a3;
- (void)_setBaseLayoutAttributes:(id)a3;
- (void)_setHiddenForReuse:(BOOL)a3;
- (void)_setInternalMaskView:(_WORD *)a1;
- (void)_setIsBeingReused:(BOOL)a3;
- (void)_setLayoutAttributes:(id)a3 force:(BOOL)a4;
- (void)_setMaskView:(id)a3;
- (void)_setScrollPocketContainerInteraction:(uint64_t)a1;
- (void)_setShouldConstrainHeight:(BOOL)a3;
- (void)_setShouldConstrainWidth:(BOOL)a3;
- (void)_updateDefaultLayoutMarginsUsingAttributes:(id)a3;
- (void)_updateMaskViewUsingAttributes:(id)a3;
- (void)_updateMaskingUsingAttributes:(id)a3;
- (void)_updateScrollPocketContainerInteractionUsingAttributes:(id)a3;
- (void)_updateScrollPocketContributionUsingAttributes:(id)a3;
- (void)_willRevealWithLayoutAttributes:(id)a3;
- (void)didMoveToSuperview;
- (void)encodeWithCoder:(id)a3;
- (void)invalidateIntrinsicContentSize;
- (void)prepareForReuse;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3;
@end

@implementation UICollectionReusableView

- (BOOL)_disableRasterizeInAnimations
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 _userInterfaceRenderingMode] == 2;

  return v3;
}

- (BOOL)_disableGroupOpacityInAnimations
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 _userInterfaceRenderingMode] == 2;

  return v3;
}

- (void)_invalidatePreferredAttributes
{
  reusableViewFlags = self->_reusableViewFlags;
  if ((reusableViewFlags & 8) == 0)
  {
    *&self->_reusableViewFlags = reusableViewFlags & 0xFFF3;
  }
}

- (UIEdgeInsets)_concreteDefaultLayoutMargins
{
  if (dyld_program_sdk_at_least() && (*&self->_reusableViewFlags & 0x4000) != 0)
  {
    top = self->_defaultLayoutMargins.top;
    left = self->_defaultLayoutMargins.left;
    bottom = self->_defaultLayoutMargins.bottom;
    right = self->_defaultLayoutMargins.right;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UICollectionReusableView;
    [(UIView *)&v7 _concreteDefaultLayoutMargins];
  }

  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)didMoveToSuperview
{
  if ((*&self->_reusableViewFlags & 0x800) == 0)
  {
    objc_storeWeak(&self->_collectionView, 0);
  }

  v3.receiver = self;
  v3.super_class = UICollectionReusableView;
  [(UIView *)&v3 didMoveToSuperview];
}

- (_WORD)_internalMaskView
{
  if (a1)
  {
    if ((a1[232] & 0x80) == 0)
    {
      a1 = 0;

      return a1;
    }

    a1 = [(UIView *)a1 _safeMaskView];
  }

  return a1;
}

- (UICollectionView)_collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  if (!WeakRetained)
  {
    v4 = objc_opt_class();
    WeakRetained = _UIFallbackViewOfClassForReusableView(v4, self);
    if (WeakRetained)
    {
      objc_storeWeak(&self->_collectionView, WeakRetained);
    }
  }

  v5 = WeakRetained;

  return v5;
}

- (void)_clearUpdateAnimation
{
  v17 = *MEMORY[0x1E69E9840];
  updateAnimationCount = self->_updateAnimationCount;
  if (updateAnimationCount <= 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:713 description:{@"unbalanced ending to update animation which apparently never began for this view (%@)", self}];

    self->_updateAnimationCount = updateAnimationCount - 1;
  }

  else
  {
    self->_updateAnimationCount = updateAnimationCount - 1;
    if (updateAnimationCount == 1)
    {
      v4 = [(UICollectionReusableView *)self _updateAnimationCompletionBlocks];
      objc_setAssociatedObject(self, &_UpdateCompletionBlocksKey, 0, 1);
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          v9 = 0;
          do
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v5);
            }

            (*(*(*(&v12 + 1) + 8 * v9++) + 16))();
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)invalidateIntrinsicContentSize
{
  v3 = [(UICollectionReusableView *)self _collectionView];
  v4 = v3;
  if (v3)
  {
    [v3 _reusableViewDidInvalidateIntrinsicContentSize:self];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UICollectionReusableView;
    [(UIView *)&v5 invalidateIntrinsicContentSize];
  }
}

- (void)_removeExistingBackdropViewForMasking
{
  v3 = objc_getAssociatedObject(self, &_UICollectionReusableViewBackdropViewForMasking);
  if (v3)
  {
    v4 = v3;
    [v3 removeFromSuperview];
    objc_setAssociatedObject(self, &_UICollectionReusableViewBackdropViewForMasking, 0, 1);
    v3 = v4;
  }
}

- (void)prepareForReuse
{
  v19 = *MEMORY[0x1E69E9840];
  *&self->_reusableViewFlags = *&self->_reusableViewFlags & 0xCFF9 | 2;
  v3 = [(UIView *)self _safeMaskView];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
      v5 = [WeakRetained collectionViewLayout];
      v6 = v5;
      if (v5)
      {
        v7 = [*(v5 + 136) currentSwipeOccurrence];
        v8 = v7;
        if (v7)
        {
          v9 = [v7 swipedView];
          v10 = [(UIView *)v9 _safeMaskView];

          if (v10 == v3)
          {
            if (os_variant_has_internal_diagnostics())
            {
              v12 = __UIFaultDebugAssertLog();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
              {
                v13 = 138412802;
                v14 = self;
                v15 = 2112;
                v16 = WeakRetained;
                v17 = 2112;
                v18 = v8;
                _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: unexpected removal of the current swipe occurrence's mask view. Please file a bug against UICollectionView. Reusable view: %@; Collection view: %@; Swipe occurrence: %@", &v13, 0x20u);
              }
            }

            else
            {
              v11 = *(__UILogGetCategoryCachedImpl("Assert", &prepareForReuse___s_category_0) + 8);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                v13 = 138412802;
                v14 = self;
                v15 = 2112;
                v16 = WeakRetained;
                v17 = 2112;
                v18 = v8;
                _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: unexpected removal of the current swipe occurrence's mask view. Please file a bug against UICollectionView. Reusable view: %@; Collection view: %@; Swipe occurrence: %@", &v13, 0x20u);
              }
            }
          }
        }
      }

      [(UIView *)self _setSafeMaskView:?];
    }
  }

  [(UICollectionReusableView *)self _notifyIsDisplaying:0];
}

- (id)_updateAnimationCompletionBlocks
{
  v1 = objc_getAssociatedObject(a1, &_UpdateCompletionBlocksKey);

  return v1;
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if ([(UIView *)self translatesAutoresizingMaskIntoConstraints])
    {
      if (dyld_program_sdk_at_least())
      {
        v5 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &setTranslatesAutoresizingMaskIntoConstraints____s_category) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = v5;
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v8 = @"UICollectionReusableView";
          if (isKindOfClass)
          {
            v8 = @"UICollectionViewCell";
          }

          *buf = 138412546;
          v11 = v8;
          v12 = 2112;
          v13 = self;
          _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Changing the translatesAutoresizingMaskIntoConstraints property of a %@ that is managed by a UICollectionView is not supported, and will result in incorrect self-sizing. View: %@", buf, 0x16u);
        }
      }
    }
  }

  v9.receiver = self;
  v9.super_class = UICollectionReusableView;
  [(UIView *)&v9 setTranslatesAutoresizingMaskIntoConstraints:v3];
}

- (UICollectionReusableView)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UICollectionReusableView;
  v5 = [(UIView *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UIReuseIdentifier"];
    v7 = [v6 copy];
    reuseIdentifier = v5->_reuseIdentifier;
    v5->_reuseIdentifier = v7;

    _UICollectionReusableViewCommonInit(v5);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = UICollectionReusableView;
  [(UIView *)&v6 encodeWithCoder:v4];
  reuseIdentifier = self->_reuseIdentifier;
  if (reuseIdentifier)
  {
    [v4 encodeObject:reuseIdentifier forKey:@"UIReuseIdentifier"];
  }
}

- (UICollectionReusableView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UICollectionReusableView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    _UICollectionReusableViewCommonInit(v3);
  }

  return v4;
}

- (void)_notifyIsDisplaying:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_reusableViewFlags = *&self->_reusableViewFlags & 0xFBFF | v3;
}

- (void)_setHiddenForReuse:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x1E69E9840];
  if ([(UIView *)self _isHiddenForReuse]!= a3)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UICollectionViewCellReuse", &_MergedGlobals_91_0);
    if (*CategoryCachedImpl)
    {
      v7 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        v9 = objc_opt_class();
        v10 = [(UICollectionReusableView *)self _layoutAttributes];
        v11 = [(UICollectionReusableView *)self _collectionView];
        *buf = 138413314;
        v18 = v9;
        v19 = 2048;
        v20 = self;
        v21 = 1024;
        *v22 = v3;
        *&v22[4] = 2112;
        *&v22[6] = v10;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "[%@ %p] _setHiddenForReuse: Setting hidden for reuse:%d on cell with attributes:%@ in collection view: %@", buf, 0x30u);
      }
    }

    v6 = __UILogGetCategoryCachedImpl("UICollectionViewCellReuse", &qword_1ED4964D8);
    if (*v6)
    {
      v12 = *(v6 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        v14 = objc_opt_class();
        v15 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 138412802;
        v18 = v14;
        v19 = 2048;
        v20 = self;
        v21 = 2112;
        *v22 = v15;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "[%@ %p] _setHiddenForReuse: Call stack: %@", buf, 0x20u);
      }
    }
  }

  v16.receiver = self;
  v16.super_class = UICollectionReusableView;
  [(UIView *)&v16 _setHiddenForReuse:v3];
}

- (BOOL)_isHiddenForReordering
{
  if (self)
  {
    LODWORD(self) = (*(&self->super._viewFlags + 10) >> 1) & 1;
  }

  return self;
}

- (void)_setBaseLayoutAttributes:(id)a3
{
  v8 = a3;
  if (![(UICollectionViewLayoutAttributes *)self->_layoutAttributes isEqual:?])
  {
    v4 = [v8 copy];
    layoutAttributes = self->_layoutAttributes;
    self->_layoutAttributes = v4;

    v6 = [(_UIKeyWindowSceneStack *)&self->_layoutAttributes->super.isa keyWindowSceneInStack];

    if (v6)
    {
      v7 = [(_UIKeyWindowSceneStack *)v8 keyWindowSceneInStack];
      [(UICollectionReusableView *)self _setReuseIdentifier:v7];
    }
  }
}

- (void)_willRevealWithLayoutAttributes:(id)a3
{
  v5 = [(UICollectionViewLayoutAttributes *)a3 _existingListAttributes];
  v4 = [(UICollectionViewLayoutAttributes *)&self->_layoutAttributes->super.isa _existingListAttributes];
  [(UICollectionReusableView *)self _applyListEnvironmentTraitOverridesUsingNewListAttributes:v5 previousListAttributes:v4];
}

- (void)_setLayoutAttributes:(id)a3 force:(BOOL)a4
{
  v7 = a3;
  if (a4 || !-[UICollectionViewLayoutAttributes isEqual:](self->_layoutAttributes, "isEqual:", v7) || ([v7 alpha], v9 = v8, -[UIView alpha](self, "alpha"), vabdd_f64(v9, v10) > 0.0001))
  {
    [(UICollectionViewLayoutAttributes *)self->_layoutAttributes size];
    v11 = [(UICollectionViewLayoutAttributes *)&self->_layoutAttributes->super.isa _existingListAttributes];
    v12 = [v7 copy];
    layoutAttributes = self->_layoutAttributes;
    self->_layoutAttributes = v12;

    v14 = [(_UIKeyWindowSceneStack *)&self->_layoutAttributes->super.isa keyWindowSceneInStack];

    if (v14)
    {
      v15 = [(_UIKeyWindowSceneStack *)v7 keyWindowSceneInStack];
      [(UICollectionReusableView *)self _setReuseIdentifier:v15];
    }

    v16 = [(UICollectionViewLayoutAttributes *)v7 _existingListAttributes];
    [(UICollectionReusableView *)self _applyListEnvironmentTraitOverridesUsingNewListAttributes:v16 previousListAttributes:v11];

    [v7 center];
    [(UIView *)self setCenter:?];
    if (dyld_program_sdk_at_least())
    {
      [v7 bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [v7 size];
      if (!_UISizeEqualToSizeWithPrecision(v22, v24, v25, v26, 0.0001))
      {
        v27 = [MEMORY[0x1E696AAA8] currentHandler];
        v48.width = v22;
        v48.height = v24;
        v28 = NSStringFromCGSize(v48);
        [v7 size];
        v29 = NSStringFromCGSize(v49);
        [v27 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:343 description:{@"UICollectionViewReusableView received malformed layout attributes. attributes.bounds.size (%@) and attributes.size (%@) must be equal. This is a client error. Layout attributes: %@\nView: %@", v28, v29, v7, self}];
      }
    }

    else
    {
      [(UIView *)self bounds];
      v18 = v30;
      v20 = v31;
      [v7 size];
      v22 = v32;
      v24 = v33;
    }

    [(UIView *)self setBounds:v18, v20, v22, v24];
    [v7 alpha];
    [(UIView *)self setAlpha:?];
    if (v7)
    {
      [v7 transform3D];
    }

    else if (dyld_program_sdk_at_least())
    {
      v34 = *(MEMORY[0x1E69792E8] + 80);
      v44 = *(MEMORY[0x1E69792E8] + 64);
      v45 = v34;
      v35 = *(MEMORY[0x1E69792E8] + 112);
      v46 = *(MEMORY[0x1E69792E8] + 96);
      v47 = v35;
      v36 = *(MEMORY[0x1E69792E8] + 16);
      v40 = *MEMORY[0x1E69792E8];
      v41 = v36;
      v37 = *(MEMORY[0x1E69792E8] + 48);
      v42 = *(MEMORY[0x1E69792E8] + 32);
      v43 = v37;
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
    }

    v39[4] = v44;
    v39[5] = v45;
    v39[6] = v46;
    v39[7] = v47;
    v39[0] = v40;
    v39[1] = v41;
    v39[2] = v42;
    v39[3] = v43;
    [(UIView *)self setTransform3D:v39];
    [(UICollectionReusableView *)self _updateMaskingUsingAttributes:v7];
    [(UICollectionReusableView *)self _updateMaskViewUsingAttributes:v7];
    [(UICollectionReusableView *)self _updateScrollPocketContainerInteractionUsingAttributes:v7];
    [(UICollectionReusableView *)self _updateDefaultLayoutMarginsUsingAttributes:v7];
    [(UICollectionReusableView *)self _updateScrollPocketContributionUsingAttributes:v7];
    [(UICollectionReusableView *)self applyLayoutAttributes:v7];
    if (![(UICollectionReusableView *)self _isInUpdateAnimation]&& +[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __55__UICollectionReusableView__setLayoutAttributes_force___block_invoke;
      v38[3] = &unk_1E70F5AC0;
      v38[4] = self;
      [UIView _addCompletion:v38];
    }
  }
}

void __55__UICollectionReusableView__setLayoutAttributes_force___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && ([*(a1 + 32) _isHiddenForReuse] & 1) == 0)
  {
    v3 = [*(a1 + 32) window];

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v4[51];

      [v4 _setLayoutAttributes:v5 force:1];
    }
  }
}

- (void)_applyListEnvironmentTraitOverridesUsingNewListAttributes:(id)a3 previousListAttributes:(id)a4
{
  if (a3 || !a4)
  {
    if (!a3)
    {
      return;
    }

    v5 = _UIListEnvironmentFromListStyle(*(a3 + 2));
    v6 = [(UIView *)self _internalTraitOverrides];
    [v6 setListEnvironment:v5];
  }

  else
  {
    v6 = [(UIView *)self _internalTraitOverrides];
    [v6 removeTrait:objc_opt_class()];
  }
}

- (void)_updateMaskingUsingAttributes:(id)a3
{
  v14 = a3;
  v4 = [(UICollectionReusableView *)self _appliesLayoutAttributesMaskingToReusableView];
  v5 = [(UIView *)self layer];
  v6 = v14;
  if (v14)
  {
    p_reusableViewFlags = &self->_reusableViewFlags;
    reusableViewFlags = self->_reusableViewFlags;
    if (*&v4 & ((v14[36] & 0x10) >> 4))
    {
      *p_reusableViewFlags = reusableViewFlags | 0x10;
      [v5 setMasksToBounds:1];
      v6 = v14;
      reusableViewFlags = *p_reusableViewFlags;
LABEL_8:
      v9 = (*(v6 + 72) >> 5) & 0xF;
      goto LABEL_9;
    }
  }

  else
  {
    p_reusableViewFlags = &self->_reusableViewFlags;
    reusableViewFlags = self->_reusableViewFlags;
  }

  if ((reusableViewFlags & 0x10) != 0)
  {
    [v5 setMasksToBounds:0];
    v6 = v14;
    reusableViewFlags = *p_reusableViewFlags & 0xFFEF;
    *p_reusableViewFlags = reusableViewFlags;
  }

  if (v6)
  {
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:
  if (v9 != 15 && v4)
  {
    *p_reusableViewFlags = reusableViewFlags | 0x20;
    [v5 setMaskedCorners:v9];
    v6 = v14;
  }

  else if ((reusableViewFlags & 0x20) != 0)
  {
    [v5 setMaskedCorners:15];
    v6 = v14;
    *p_reusableViewFlags &= ~0x20u;
  }

  if (v6)
  {
    v10 = *p_reusableViewFlags;
    if (v6[39] != 0.0 && v4)
    {
      *p_reusableViewFlags = v10 | 0x40;
      v11 = [UICornerRadius fixedRadius:?];
      v12 = [UICornerConfiguration _configurationWithRadius:v11 mask:v9];
      [(UIView *)self setCornerConfiguration:v12];

      goto LABEL_20;
    }
  }

  else
  {
    v10 = *p_reusableViewFlags;
  }

  if ((v10 & 0x40) != 0)
  {
    v13 = +[UICornerConfiguration unspecifiedConfiguration];
    [(UIView *)self setCornerConfiguration:v13];

    *p_reusableViewFlags &= ~0x40u;
  }

LABEL_20:
}

- (void)_updateMaskViewUsingAttributes:(id)a3
{
  v4 = a3;
  if ([(UICollectionViewLayoutAttributes *)v4 _hasMaskViewFrame])
  {
    v5 = [(UIView *)self superview];
    if (v4)
    {
      v6 = v4[30];
      v7 = v4[31];
      v8 = v4[32];
      v9 = v4[33];
    }

    else
    {
      v7 = 0.0;
      v8 = 0.0;
      v9 = 0.0;
      v6 = 0.0;
    }

    [(UIView *)self convertRect:v5 fromView:v6, v7, v8, v9];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(UICollectionReusableView *)self _internalMaskView];
    v19 = v18;
    if (v18)
    {
      [v18 setFrame:{v11, v13, v15, v17}];
      if (!v4)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v21 = [[_UICollectionViewMaskView alloc] initWithFrame:v11, v13, v15, v17];
      [(UICollectionReusableView *)self _setInternalMaskView:v21];

      if (!v4)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    if ((*(v4 + 289) & 4) != 0)
    {
      if (self->_updateAnimationCount < 1)
      {
        [(UICollectionReusableView *)self _setInternalMaskView:?];
      }

      else
      {
        if (v19)
        {
          v22 = v19[51] + 1;
          v19[51] = v22;
        }

        else
        {
          v22 = 1;
        }

        v29 = MEMORY[0x1E69E9820];
        v30 = 3221225472;
        v31 = __59__UICollectionReusableView__updateMaskViewUsingAttributes___block_invoke;
        v32 = &unk_1E70FEF18;
        v33 = v19;
        v34 = self;
        v35 = v22;
        v23 = &v29;
        if (self->_updateAnimationCount <= 0)
        {
          v28 = [MEMORY[0x1E696AAA8] currentHandler];
          [v28 handleFailureInMethod:sel__addUpdateAnimationCompletionBlock_ object:self file:@"UICollectionViewCell.m" lineNumber:727 description:{@"UIKit internal bug: Attempting to add an update animation completion block without an inflight animation: %@", self, v29, v30, v31, v32}];
        }

        v24 = [(UICollectionReusableView *)self _updateAnimationCompletionBlocks];
        if (v24)
        {
          v25 = _Block_copy(v23);
          [v24 addObject:v25];
        }

        else
        {
          v26 = MEMORY[0x1E695DF70];
          v25 = _Block_copy(v23);
          v27 = [v26 arrayWithObject:v25];
          objc_setAssociatedObject(self, &_UpdateCompletionBlocksKey, v27, 1);
        }
      }
    }

    goto LABEL_22;
  }

  v20 = [(UICollectionReusableView *)self _internalMaskView];
  v5 = v20;
  if (v20 && !*(v20 + 408))
  {
    [(UICollectionReusableView *)self _setInternalMaskView:?];
  }

LABEL_23:
}

- (void)_setInternalMaskView:(_WORD *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = a1[232];
    if (v3)
    {
      a1[232] = v5 | 0x80;
      v6 = a1;
      v7 = v4;
    }

    else
    {
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_7;
      }

      a1[232] = v5 & 0xFF7F;
      v6 = a1;
      v7 = 0;
      v4 = 0;
    }

    [(UIView *)v6 _setSafeMaskView:v4];
    v4 = v7;
  }

LABEL_7:
}

void __59__UICollectionReusableView__updateMaskViewUsingAttributes___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [(UICollectionReusableView *)*(a1 + 40) _internalMaskView];
  if (v2 == v3)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 408);
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 48);

    if (v5 == v6)
    {
      v7 = *(a1 + 40);

      [(UICollectionReusableView *)v7 _setInternalMaskView:?];
    }
  }

  else
  {
  }
}

- (void)_setMaskView:(id)a3
{
  v5.receiver = self;
  v5.super_class = UICollectionReusableView;
  [(UIView *)&v5 _setMaskView:?];
  if (a3)
  {
    [(UICollectionReusableView *)self _addBackdropViewForMaskingIfNeeded];
  }

  else
  {
    [(UICollectionReusableView *)self _removeExistingBackdropViewForMasking];
  }
}

- (void)_addBackdropViewForMaskingIfNeeded
{
  v3 = objc_getAssociatedObject(self, &_UICollectionReusableViewBackdropViewForMasking);
  if (!v3)
  {
    v4 = [_UIVisualEffectBackdropView alloc];
    [(UIView *)self bounds];
    value = [(_UIVisualEffectSubview *)v4 initWithFrame:?];
    [(UIView *)value setAutoresizingMask:18];
    [(UIView *)self insertSubview:value atIndex:0];
    objc_setAssociatedObject(self, &_UICollectionReusableViewBackdropViewForMasking, value, 1);
    v3 = value;
  }
}

- (BOOL)_isStyledAsHeaderOrFooterFromLayoutAttributes:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (v3[36] & 3) == 0)
  {
    v7 = 1;
  }

  else
  {
    v5 = [v3 indexPath];
    v6 = [v5 item];

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v8 = [(UICollectionViewLayoutAttributes *)v4 _existingListAttributes];
      if (v8)
      {
        v7 = v8[8] & 1;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (int64_t)_styleFromLayoutAttributes:(id)a3
{
  v3 = [(UICollectionViewLayoutAttributes *)a3 _existingListAttributes];
  if (v3)
  {
    v4 = v3[2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateScrollPocketContainerInteractionUsingAttributes:(id)a3
{
  v15 = a3;
  v4 = _UIScrollPocketEnabled();
  v5 = v15;
  if (v4)
  {
    if (!v15)
    {
      v6 = 0;
      if (self)
      {
        goto LABEL_19;
      }

      goto LABEL_35;
    }

    v6 = 0;
    v7 = (*(v15 + 72) >> 11) & 0xF;
    if (v7 <= 3)
    {
      if (v7 - 1 < 2)
      {
        goto LABEL_12;
      }

      if (v7 != 3)
      {
        goto LABEL_18;
      }

      v8 = ![(UIView *)self _shouldReverseLayoutDirection];
      v9 = 2;
      v10 = 8;
    }

    else
    {
      if (v7 - 4 < 3)
      {
        v6 = 4;
        if (!self)
        {
          goto LABEL_35;
        }

LABEL_19:
        scrollPocketContainerInteraction = self->__scrollPocketContainerInteraction;
LABEL_20:
        v12 = scrollPocketContainerInteraction;
        v13 = v12;
        if (!v6 || v12)
        {
          if (!v6 && v12)
          {
            [(UIView *)self removeInteraction:v12];
            [(UICollectionReusableView *)self _setScrollPocketContainerInteraction:?];
LABEL_30:

            v5 = v15;
            goto LABEL_31;
          }
        }

        else
        {
          v13 = [[_UIScrollPocketContainerInteraction alloc] initWithEdge:v6];
          [(UIView *)self addInteraction:v13];
          [(UICollectionReusableView *)self _setScrollPocketContainerInteraction:v13];
        }

        v5 = v15;
        if (!v13)
        {
          goto LABEL_31;
        }

        [(_UIScrollPocketContainerInteraction *)v13 _setEdge:v6];
        if (v15)
        {
          v14 = v15[289] >> 7;
        }

        else
        {
          v14 = 0;
        }

        [(_UIScrollPocketContainerInteraction *)v13 _setActive:v14];
        goto LABEL_30;
      }

      if (v7 != 7)
      {
        if (v7 == 8)
        {
LABEL_12:
          v6 = 1;
          if (!self)
          {
            goto LABEL_35;
          }

          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v8 = ![(UIView *)self _shouldReverseLayoutDirection];
      v9 = 8;
      v10 = 2;
    }

    if (v8)
    {
      v6 = v9;
    }

    else
    {
      v6 = v10;
    }

LABEL_18:
    if (self)
    {
      goto LABEL_19;
    }

LABEL_35:
    scrollPocketContainerInteraction = 0;
    goto LABEL_20;
  }

LABEL_31:
}

- (void)_setScrollPocketContainerInteraction:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 480), a2);
  }
}

- (void)_updateScrollPocketContributionUsingAttributes:(id)a3
{
  v4 = a3;
  layoutAttributes = self->_layoutAttributes;
  if (layoutAttributes)
  {
    layoutFlags = layoutAttributes->_layoutFlags;
    if (v4)
    {
      v7 = (*&layoutFlags >> 15) & 1;
      v8 = v4[72];
      if (v7 == (v8 & 0x8000) >> 15)
      {
        goto LABEL_10;
      }

      if ((v8 & 0x8000) == 0)
      {
        goto LABEL_5;
      }

LABEL_8:
      v11 = v4;
      v9 = [(UIView *)self traitOverrides];
      v10 = objc_opt_self();
      [v9 setNSIntegerValue:1 forTrait:v10];
      goto LABEL_9;
    }

    if ((*&layoutFlags & 0x8000) != 0)
    {
LABEL_5:
      v11 = v4;
      v9 = [(UIView *)self _traitOverridesIfExist];
      v10 = objc_opt_self();
      [v9 removeTrait:v10];
LABEL_9:

      v4 = v11;
    }
  }

  else if (v4 && (*(v4 + 289) & 0x80) != 0)
  {
    goto LABEL_8;
  }

LABEL_10:
}

- (void)_updateDefaultLayoutMarginsUsingAttributes:(id)a3
{
  v4 = a3;
  reusableViewFlags = self->_reusableViewFlags;
  v6 = reusableViewFlags & 0x4000;
  if (v4)
  {
    v7 = (BYTE1(v4[9].top) >> 1) & 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == v6 >> 14)
  {
    if ((reusableViewFlags & 0x4000) != 0)
    {
      if (v4)
      {
        v8 = &UIEdgeInsetsZero;
        p_bottom = &UIEdgeInsetsZero.bottom;
        p_left = &UIEdgeInsetsZero.left;
        p_right = &UIEdgeInsetsZero.right;
        if ((BYTE1(v4[9].top) & 2) != 0)
        {
          p_right = &v4[10].right;
          p_left = &v4[10].left;
          p_bottom = &v4[10].bottom;
          v8 = v4 + 10;
        }

        v13.f64[0] = v8->top;
        v12.f64[0] = *p_bottom;
        v12.f64[1] = *p_right;
        v13.f64[1] = *p_left;
      }

      else
      {
        v13 = 0uLL;
        v12 = 0uLL;
      }

      v6 = vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&self->_defaultLayoutMargins.top, v13), vceqq_f64(*&self->_defaultLayoutMargins.bottom, v12))))) & 1;
    }
  }

  else
  {
    v6 = 1;
  }

  if (v7)
  {
    v14 = 0x4000;
  }

  else
  {
    v14 = 0;
  }

  *&self->_reusableViewFlags = v14 | reusableViewFlags & 0xBFFF;
  p_defaultLayoutMargins = &self->_defaultLayoutMargins;
  if (!v7)
  {
    *&p_defaultLayoutMargins->top = 0u;
    *&self->_defaultLayoutMargins.bottom = 0u;
    if (!v6)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v4)
  {
    v16 = &UIEdgeInsetsZero;
    v17 = &UIEdgeInsetsZero.bottom;
    v18 = &UIEdgeInsetsZero.left;
    v19 = &UIEdgeInsetsZero.right;
    if ((BYTE1(v4[9].top) & 2) != 0)
    {
      v19 = &v4[10].right;
      v18 = &v4[10].left;
      v17 = &v4[10].bottom;
      v16 = v4 + 10;
    }

    top = v16->top;
    v21 = *v17;
    v22 = *v18;
    v23 = *v19;
  }

  else
  {
    v22 = 0.0;
    v21 = 0.0;
    v23 = 0.0;
    top = 0.0;
  }

  p_defaultLayoutMargins->top = top;
  self->_defaultLayoutMargins.left = v22;
  self->_defaultLayoutMargins.bottom = v21;
  self->_defaultLayoutMargins.right = v23;
  if (v6)
  {
LABEL_22:
    [(UIView *)self _updateInferredLayoutMargins];
  }

LABEL_23:

  MEMORY[0x1EEE66C38]();
}

- (void)_setAutomaticIntrinsicContentSizeInvalidationEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_reusableViewFlags = v3 & 0x8000 | *&self->_reusableViewFlags & 0x7FFF;
}

- (void)_setIsBeingReused:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_reusableViewFlags = *&self->_reusableViewFlags & 0xFDFF | v3;
}

- (id)_preferredLayoutAttributesFittingAttributes:(id)a3 isAnimatingExistingView:(BOOL)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  *&self->_reusableViewFlags |= 0xCu;
  [(UIView *)self updateTraitsIfNeeded];
  kdebug_trace();
  v7 = [(UICollectionReusableView *)self preferredLayoutAttributesFittingAttributes:v6];
  kdebug_trace();
  if (!v7)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [(UICollectionReusableView *)self _collectionView];
    [v31 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:811 description:{@"Received nil preferred attributes from -preferredLayoutAttributesFittingAttributes: in view %@. Original attributes: %@. Collection view: %@", self, v6, v32}];
  }

  if (dyld_program_sdk_at_least())
  {
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(UIView *)self _currentScreenScale];
    v17 = UIPointRoundToScale(v9, v11, v16);
    v19 = v18;
    v20 = v18;
    [(UIView *)self _currentScreenScale];
    v22 = UISizeRoundToScale(v13, v15, v21);
    v24 = v23;
    v25 = dyld_program_sdk_at_least();
    if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      if (v25)
      {
LABEL_11:
        v27 = [MEMORY[0x1E696AAA8] currentHandler];
        v47.origin.x = v9;
        v47.origin.y = v11;
        v47.size.width = v13;
        v47.size.height = v15;
        v28 = NSStringFromCGRect(v47);
        v48.origin.x = v17;
        v48.origin.y = v19;
        v48.size.width = v22;
        v48.size.height = v24;
        v29 = NSStringFromCGRect(v48);
        [v27 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:830 description:{@"Rounding frame (%@) from preferred layout attributes resulted in a frame with one or more invalid members (%@).\nLayout attributes: %@\nView: %@", v28, v29, v7, self}];

        goto LABEL_13;
      }
    }

    else
    {
      v26 = fabs(v24);
      if (v25)
      {
        if (v26 != INFINITY)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      if (v26 != INFINITY)
      {
LABEL_13:
        v49.origin.x = v17;
        v49.origin.y = v19;
        v49.size.width = v22;
        v49.size.height = v24;
        v52.origin.x = v9;
        v52.origin.y = v11;
        v52.size.width = v13;
        v52.size.height = v15;
        if (!CGRectEqualToRect(v49, v52))
        {
          [v7 setFrame:{v17, v19, v22, v24}];
        }

        goto LABEL_15;
      }
    }

    v33 = *(__UILogGetCategoryCachedImpl("Assert", &_preferredLayoutAttributesFittingAttributes_isAnimatingExistingView____s_category) + 8);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = v33;
      v50.origin.x = v9;
      v50.origin.y = v11;
      v50.size.width = v13;
      v50.size.height = v15;
      v35 = NSStringFromCGRect(v50);
      v51.origin.x = v17;
      v51.origin.y = v19;
      v51.size.width = v22;
      v51.size.height = v24;
      v36 = NSStringFromCGRect(v51);
      *buf = 138413058;
      v38 = v35;
      v39 = 2112;
      v40 = v36;
      v41 = 2112;
      v42 = v7;
      v43 = 2112;
      v44 = self;
      _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "Rounding frame (%@) from preferred layout attributes resulted in a frame with one or more invalid members (%@).\nLayout attributes: %@\nView: %@", buf, 0x2Au);
    }

    goto LABEL_13;
  }

LABEL_15:
  *&self->_reusableViewFlags &= ~8u;

  return v7;
}

- (UICollectionViewLayoutAttributes)preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes
{
  v4 = layoutAttributes;
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  v6 = [WeakRetained collectionViewLayout];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_collectionView);
    v8 = [v7 collectionViewLayout];
    v9 = [v8 _cellsShouldConferWithAutolayoutEngineForSizingInfo];

    if (!v9)
    {
      goto LABEL_14;
    }
  }

  v10 = [(UICollectionReusableView *)self _shouldConstrainWidth];
  v11 = [(UICollectionReusableView *)self _shouldConstrainHeight];
  if (v10 && v11)
  {
    goto LABEL_14;
  }

  if (v10)
  {
    v12 = 1000.0;
  }

  else
  {
    v12 = 50.0;
  }

  [(UICollectionReusableView *)self _updateDefaultLayoutMarginsUsingAttributes:v4];
  [(UICollectionViewLayoutAttributes *)v4 size];
  v14 = v13;
  v16 = v15;
  [UIView systemLayoutSizeFittingSize:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" withHorizontalFittingPriority:? verticalFittingPriority:?];
  v18 = v17;
  v20 = v19;
  [(UICollectionViewLayoutAttributes *)v4 _listLayoutItemMaxWidth];
  if (v12 != 1000.0 && v21 != 0.0 && v18 > v21)
  {
    [UIView systemLayoutSizeFittingSize:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" withHorizontalFittingPriority:? verticalFittingPriority:?];
    v18 = v22;
    v20 = v23;
  }

  if (v14 == v18 && v16 == v20)
  {
LABEL_14:
    v24 = v4;
  }

  else
  {
    v24 = [(UICollectionViewLayoutAttributes *)v4 copy];
    [(UICollectionViewLayoutAttributes *)v24 setSize:v18, v20];
  }

  return v24;
}

- (void)_setShouldConstrainWidth:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_reusableViewFlags = *&self->_reusableViewFlags & 0xEFFF | v3;
}

- (void)_setShouldConstrainHeight:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_reusableViewFlags = *&self->_reusableViewFlags & 0xDFFF | v3;
}

@end