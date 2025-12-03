@interface UICollectionViewAnimation
- (UICollectionViewAnimation)initWithView:(id)view viewType:(int64_t)type finalLayoutAttributes:(id)attributes startFraction:(double)fraction endFraction:(double)endFraction animateFromCurrentPostion:(BOOL)postion deleteAfterAnimation:(BOOL)animation customAnimations:(id)self0;
- (id)description;
- (void)addCompletionHandler:(id)handler;
- (void)addStartupHandler:(id)handler;
- (void)setRasterizeAfterAnimation:(BOOL)animation;
- (void)setResetRasterizationAfterAnimation:(BOOL)animation;
- (void)startWithAnimator:(id)animator;
@end

@implementation UICollectionViewAnimation

- (UICollectionViewAnimation)initWithView:(id)view viewType:(int64_t)type finalLayoutAttributes:(id)attributes startFraction:(double)fraction endFraction:(double)endFraction animateFromCurrentPostion:(BOOL)postion deleteAfterAnimation:(BOOL)animation customAnimations:(id)self0
{
  animationCopy = animation;
  viewCopy = view;
  attributesCopy = attributes;
  animationsCopy = animations;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionView_InternalHelperClasses.m" lineNumber:255 description:@"attempt to create view animation for nil view"];
  }

  v36.receiver = self;
  v36.super_class = UICollectionViewAnimation;
  v22 = [(UICollectionViewAnimation *)&v36 init];
  if (v22)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      layer = [viewCopy layer];
    }

    else
    {
      layer = viewCopy;
    }

    view = v22->_view;
    v22->_view = layer;

    v22->_viewType = type;
    objc_storeStrong(&v22->_finalLayoutAttributes, attributes);
    v22->_startFraction = fraction;
    v22->_endFraction = endFraction;
    if (animationCopy)
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    *&v22->_collectionViewAnimationFlags = v25 | postion | *&v22->_collectionViewAnimationFlags & 0xFC;
    _layoutAttributes = [viewCopy _layoutAttributes];
    zIndex = [_layoutAttributes zIndex];
    *&v22->_collectionViewAnimationFlags = *&v22->_collectionViewAnimationFlags & 0xEF | (16 * (zIndex != [attributesCopy zIndex]));

    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionHandlers = v22->_completionHandlers;
    v22->_completionHandlers = v28;

    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    startupHandlers = v22->_startupHandlers;
    v22->_startupHandlers = v30;

    v32 = [animationsCopy copy];
    animationBlock = v22->_animationBlock;
    v22->_animationBlock = v32;
  }

  return v22;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = UICollectionViewAnimation;
  v3 = [(UICollectionViewAnimation *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" view: %@ finalLayoutAttributes = %@", self->_view, self->_finalLayoutAttributes];;

  return v4;
}

- (void)setRasterizeAfterAnimation:(BOOL)animation
{
  if (animation)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_collectionViewAnimationFlags = *&self->_collectionViewAnimationFlags & 0xFB | v3;
}

- (void)setResetRasterizationAfterAnimation:(BOOL)animation
{
  if (animation)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_collectionViewAnimationFlags = *&self->_collectionViewAnimationFlags & 0xF7 | v3;
}

- (void)startWithAnimator:(id)animator
{
  v75 = *MEMORY[0x1E69E9840];
  animatorCopy = animator;
  if ([(UICollectionViewAnimation *)self parentInCollectionViewDuringAnimation])
  {
    superview = [(UIView *)self->_view superview];
    _collectionView = [(UICollectionReusableView *)self->_view _collectionView];
    v7 = superview != _collectionView;
  }

  else
  {
    v7 = 0;
  }

  _collectionView2 = [(UICollectionReusableView *)self->_view _collectionView];
  v9 = self->_view;
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __47__UICollectionViewAnimation_startWithAnimator___block_invoke;
  v70[3] = &unk_1E70F5AF0;
  v10 = v9;
  v71 = v10;
  v73 = v7;
  v11 = _collectionView2;
  v72 = v11;
  [UIView performWithoutAnimation:v70];
  collectionViewAnimationFlags = self->_collectionViewAnimationFlags;
  v13 = dyld_program_sdk_at_least();
  v14 = 4 * (collectionViewAnimationFlags & 1);
  if (v13)
  {
    v14 |= 2uLL;
  }

  v35 = v14;
  if (self->_startFraction <= 0.0 && self->_endFraction >= 1.0)
  {
    v20 = 0.0;
    v19 = 0.3;
  }

  else
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    startFraction = self->_startFraction;
    endFraction = self->_endFraction;
    if (has_internal_diagnostics)
    {
      if (endFraction < startFraction)
      {
        v33 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v33, OS_LOG_TYPE_FAULT, "Cell animation stop fraction must be greater than start fraction", buf, 2u);
        }
      }
    }

    else if (endFraction < startFraction)
    {
      v34 = *(__UILogGetCategoryCachedImpl("Assert", &startWithAnimator____s_category) + 8);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "Cell animation stop fraction must be greater than start fraction", buf, 2u);
      }
    }

    v18 = self->_startFraction;
    v19 = (self->_endFraction - v18) * 0.3;
    v20 = v18 * 0.3;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v21 = self->_startupHandlers;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v22)
  {
    v23 = *v67;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v67 != v23)
        {
          objc_enumerationMutation(v21);
        }

        (*(*(*(&v66 + 1) + 8 * i) + 16))();
      }

      v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v22);
  }

  [(NSMutableArray *)self->_startupHandlers removeAllObjects];
  *buf = 0;
  v63 = buf;
  v64 = 0x2020000000;
  v65 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v61 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionView_InternalHelperClasses.m" lineNumber:355 description:@"Collection View no longer support raw layer or view animations."];
  }

  if (self->_animationBlock)
  {
    [(UICollectionReusableView *)v10 _setBaseLayoutAttributes:self->_finalLayoutAttributes];
    animationBlock = self->_animationBlock;
    v55 = MEMORY[0x1E69E9820];
    v56 = 3221225472;
    v57 = __47__UICollectionViewAnimation_startWithAnimator___block_invoke_102;
    v58 = &unk_1E70F5AC0;
    selfCopy = self;
    animationBlock[2]();
    [(UICollectionReusableView *)v10 applyLayoutAttributes:self->_finalLayoutAttributes];
  }

  else
  {
    if (animatorCopy)
    {
      shouldLayoutSubviews = [animatorCopy shouldLayoutSubviews];
    }

    else
    {
      shouldLayoutSubviews = 1;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__UICollectionViewAnimation_startWithAnimator___block_invoke_2;
    aBlock[3] = &unk_1E7100220;
    v27 = v10;
    v49 = v27;
    selfCopy2 = self;
    v52 = buf;
    v53 = v60;
    v28 = v11;
    v51 = v28;
    v54 = shouldLayoutSubviews;
    v29 = _Block_copy(aBlock);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __47__UICollectionViewAnimation_startWithAnimator___block_invoke_3;
    v41[3] = &unk_1E7100248;
    v45 = buf;
    v42 = v27;
    v46 = v60;
    v47 = v7;
    v43 = v28;
    selfCopy3 = self;
    v30 = _Block_copy(v41);
    if (animatorCopy)
    {
      [animatorCopy addAnimations:v29];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __47__UICollectionViewAnimation_startWithAnimator___block_invoke_4;
      v39[3] = &unk_1E70FFB68;
      v40 = v30;
      [animatorCopy addCompletion:v39];
      if (([animatorCopy isRunning] & 1) == 0)
      {
        if (v20 <= 0.0)
        {
          [animatorCopy startAnimation];
        }

        else
        {
          v31 = dispatch_time(0, (v20 * 1000000000.0));
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __47__UICollectionViewAnimation_startWithAnimator___block_invoke_5;
          block[3] = &unk_1E70F3590;
          v38 = animatorCopy;
          dispatch_after(v31, MEMORY[0x1E69E96A0], block);
        }
      }
    }

    else if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v29[2](v29);
      [UIView _addCompletion:v30];
    }

    else
    {
      [(UIView *)v19 _animateCollectionTableAnimationWithDuration:v20 delay:UIView options:v35 animations:v29 completion:v30];
    }
  }

  _Block_object_dispose(v60, 8);
  _Block_object_dispose(buf, 8);
}

uint64_t __47__UICollectionViewAnimation_startWithAnimator___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) layoutBelowIfNeeded];
  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 _reparentViewIntoSelf:v4];
  }

  return result;
}

uint64_t __47__UICollectionViewAnimation_startWithAnimator___block_invoke_102(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 48) removeAllObjects];
}

void __47__UICollectionViewAnimation_startWithAnimator___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *(*(a1 + 40) + 8);
    [*(*(a1 + 40) + 16) center];
    [v2 setPosition:?];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    [*(*(a1 + 40) + 16) size];
    [v2 setBounds:{v4, v6, v7, v8}];
    [*(*(a1 + 40) + 16) alpha];
    *&v9 = v9;
    [v2 setOpacity:v9];
    v10 = *(*(a1 + 40) + 16);
    if (v10)
    {
      [v10 transform3D];
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
    }

    v25[4] = v30;
    v25[5] = v31;
    v25[6] = v32;
    v25[7] = v33;
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    v25[3] = v29;
    [v2 setTransform:v25];

    return;
  }

  [*(a1 + 32) alpha];
  v12 = v11;
  [*(*(a1 + 40) + 16) alpha];
  if (v12 != v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = *(a1 + 32);
      v15 = [v14 _disableRasterizeInAnimations];
      v16 = [v14 _disableGroupOpacityInAnimations];

      if (v15)
      {
        if (!v16)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v16) = 1;
    }

    v17 = [*(a1 + 32) layer];
    *(*(*(a1 + 56) + 8) + 24) = [v17 shouldRasterize] ^ 1;

    [*(a1 + 32) _currentScreenScale];
    v19 = v18;
    v20 = [*(a1 + 32) layer];
    [v20 setRasterizationScale:v19];

    v21 = [*(a1 + 32) layer];
    [v21 setShouldRasterize:1];

    if (v16)
    {
LABEL_13:
      v22 = [*(a1 + 32) layer];
      *(*(*(a1 + 64) + 8) + 24) = [v22 allowsGroupOpacity];

      v23 = [*(a1 + 32) layer];
      [v23 setAllowsGroupOpacity:0];
    }
  }

LABEL_14:
  [*(a1 + 48) _applyLayoutAttributes:*(*(a1 + 40) + 16) toView:*(a1 + 32)];
  if (dyld_program_sdk_at_least() && *(a1 + 72) == 1)
  {
    v24 = *(a1 + 32);

    [v24 layoutIfNeeded];
  }
}

uint64_t __47__UICollectionViewAnimation_startWithAnimator___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) layer];
    [v2 setShouldRasterize:0];
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v3 = [*(a1 + 32) layer];
    [v3 setAllowsGroupOpacity:1];
  }

  if (*(a1 + 72) == 1)
  {
    [*(a1 + 40) _reparentViewIntoCorrectContainer:*(a1 + 32)];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(*(a1 + 48) + 48);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [*(*(a1 + 48) + 48) removeAllObjects];
}

- (void)addCompletionHandler:(id)handler
{
  if (handler)
  {
    completionHandlers = self->_completionHandlers;
    v4 = [handler copy];
    [(NSMutableArray *)completionHandlers addObject:v4];
  }
}

- (void)addStartupHandler:(id)handler
{
  if (handler)
  {
    startupHandlers = self->_startupHandlers;
    v4 = [handler copy];
    [(NSMutableArray *)startupHandlers addObject:v4];
  }
}

@end