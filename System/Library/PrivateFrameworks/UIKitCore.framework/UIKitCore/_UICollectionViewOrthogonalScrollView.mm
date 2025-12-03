@interface _UICollectionViewOrthogonalScrollView
- (CGPoint)_contentOffsetForScrollingToItemAtIndexPath:(id)path atScrollPosition:(unint64_t)position additionalInsets:(NSDirectionalEdgeInsets)insets itemFrame:(CGRect)frame;
- (CGPoint)_contentOffsetForScrollingToTop;
- (CGPoint)_panGestureLocationInView:(id)view;
- (CGPoint)_panGestureVelocityInView:(id)view;
- (CGPoint)_pointByApplyingBaseContentInsetsToPoint:(CGPoint)point;
- (CGPoint)_pointByRemovingBaseContentInsetsFromPoint:(CGPoint)point;
- (CGPoint)contentOffsetAdjustedForCurrentScrollingBehavior:(CGPoint)behavior itemFrame:(CGRect)frame;
- (UIEdgeInsets)_focusScrollableAreaInsets;
- (id)_existingFocusItemsInRect:(CGRect)rect;
- (id)_focusScrollBoundaryMetricsForItem:(id)item;
- (id)collectionView;
- (id)focusItemsInRect:(CGRect)rect;
- (unint64_t)_edgesPropagatingSafeAreaInsetsToSubviews;
- (unint64_t)_focusPrimaryScrollableAxis;
- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to;
- (void)_autoScrollAssistantUpdateContentOffset:(CGPoint)offset;
- (void)_notifyDidScroll;
- (void)_scrollViewWillEndDraggingWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)_willRemoveSubview:(id)subview;
- (void)bringSubviewToFront:(id)front;
- (void)configureForDescriptor:(uint64_t)descriptor;
- (void)dealloc;
- (void)exchangeSubviewAtIndex:(int64_t)index withSubviewAtIndex:(int64_t)atIndex;
- (void)initWithCollectionView:(uint64_t)view section:;
- (void)scrollToItemAtIndexPath:(uint64_t)path atScrollPosition:(uint64_t)position additionalInsets:(double)insets animated:(double)animated;
- (void)sendSubviewToBack:(id)back;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UICollectionViewOrthogonalScrollView

- (unint64_t)_edgesPropagatingSafeAreaInsetsToSubviews
{
  v5.receiver = self;
  v5.super_class = _UICollectionViewOrthogonalScrollView;
  _edgesPropagatingSafeAreaInsetsToSubviews = [(UIScrollView *)&v5 _edgesPropagatingSafeAreaInsetsToSubviews];
  if ([(UIScrollView *)self _contentScrollsAlongXAxis])
  {
    _edgesPropagatingSafeAreaInsetsToSubviews &= 0xFFFFFFFFFFFFFFF5;
  }

  if ([(UIScrollView *)self _contentScrollsAlongYAxis])
  {
    return _edgesPropagatingSafeAreaInsetsToSubviews & 0xFFFFFFFFFFFFFFFALL;
  }

  else
  {
    return _edgesPropagatingSafeAreaInsetsToSubviews;
  }
}

- (void)_notifyDidScroll
{
  collectionView = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  if (collectionView && !self->_orthogonalScrollViewFlags.isConfiguring)
  {
    [(UIScrollView *)self contentOffset];
    [(_UICollectionViewOrthogonalScrollView *)self _pointByRemovingBaseContentInsetsFromPoint:?];
    descriptor = self->_descriptor;
    if (descriptor)
    {
      descriptor->_contentOffset.x = v4;
      descriptor->_contentOffset.y = v5;
    }

    [collectionView _orthogonalScrollView:self didScrollToOffset:self->_section inSection:?];
  }

  v7.receiver = self;
  v7.super_class = _UICollectionViewOrthogonalScrollView;
  [(UIScrollView *)&v7 _notifyDidScroll];
}

- (id)collectionView
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 270);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)initWithCollectionView:(uint64_t)view section:
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = _UICollectionViewOrthogonalScrollView;
  v5 = objc_msgSendSuper2(&v10, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(v5 + 270, a2);
    v6[271] = view;
    v7 = [[_UICollectionViewSubviewRouter alloc] initWithContainer:v6];
    v8 = v6[272];
    v6[272] = v7;

    [v6 setDelaysContentTouches:0];
    [v6 setClipsToBounds:0];
    [v6 setContentInsetAdjustmentBehavior:2];
    [v6 setShowsHorizontalScrollIndicator:0];
    [v6 setShowsVerticalScrollIndicator:0];
  }

  return v6;
}

- (void)configureForDescriptor:(uint64_t)descriptor
{
  if (!descriptor)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((descriptor + 2160));
  if (a2 && WeakRetained)
  {
    v104 = WeakRetained;
    v5 = *(descriptor + 2152);
    *(descriptor + 2152) = 1;
    if (([(_UICollectionLayoutSectionDescriptor *)*(descriptor + 2184) isEqualToSectionDescriptor:a2 comparingContentOffset:0]& 1) != 0)
    {
      goto LABEL_52;
    }

    objc_storeStrong((descriptor + 2184), a2);
    v6 = *(a2 + 16);
    v7 = *(a2 + 208);
    v8 = *(a2 + 216);
    v102 = *(a2 + 232);
    v103 = *(a2 + 224);
    v10 = *(descriptor + 2192);
    v9 = *(descriptor + 2200);
    v11 = *(descriptor + 2208);
    v12 = *(descriptor + 2216);
    v13 = *MEMORY[0x1E695EFF8];
    v14 = *(MEMORY[0x1E695EFF8] + 8);
    v15 = _UIPointValueForAxis(v6, v7, v8);
    v100 = v14;
    v101 = v13;
    v16 = _UISetPointValueForAxis(v6, v13, v14, v15);
    v18 = -v8;
    v20 = v9 == -v7 && v10 == v18 && v12 == v16;
    v21 = v16;
    v22 = v20 && v11 == v17;
    v23 = v17;
    if (!v22)
    {
      *(descriptor + 2192) = v18;
      *(descriptor + 2200) = -v7;
      *(descriptor + 2208) = v17;
      *(descriptor + 2216) = v16;
      v24 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:descriptor];
      scrollManager = [v24 scrollManager];

      [scrollManager adjustTargetContentOffsetForScrollableContainer:descriptor byDelta:{v7 + v9, v8 + v10}];
    }

    v26 = *(a2 + 160);
    v27 = *(a2 + 168);
    _isAutomaticContentOffsetAdjustmentEnabled = [descriptor _isAutomaticContentOffsetAdjustmentEnabled];
    [descriptor _setAutomaticContentOffsetAdjustmentEnabled:0];
    [descriptor setFrame:{v7, v8, v103, v102}];
    [descriptor setContentSize:{v26, v27}];
    [descriptor _setAutomaticContentOffsetAdjustmentEnabled:_isAutomaticContentOffsetAdjustmentEnabled];
    v29 = *(a2 + 40);
    v30 = v29 == 1 && v6 == 1;
    v31 = v29 == 1 && v6 == 2;
    [descriptor setBounces:v29 != 2];
    [descriptor setAlwaysBounceHorizontal:v30];
    [descriptor setAlwaysBounceVertical:v31];
    v32 = *(a2 + 24);
    [descriptor setPagingEnabled:(v32 - 3) < 3];
    v33 = *(a2 + 32);
    if (v33 == *off_1E70ECC78)
    {
      v33 = *off_1E70ECC80;
    }

    [descriptor setDecelerationRate:v33];
    [descriptor _setShouldPreventFocusScrollPastContentSize:{objc_msgSend(descriptor, "_shouldPreventFocusScrollPastContentSize")}];
    v34 = *(a2 + 48);
    if (v34 <= 0.0)
    {
      maskView = [descriptor maskView];
    }

    else
    {
      v35 = *(a2 + 8);
      maskView2 = [descriptor maskView];
      maskView = maskView2;
      if ((v35 & 1) == 0)
      {
        if (!maskView2)
        {
          maskView = objc_alloc_init(UIView);
          v38 = +[UIColor whiteColor];
          [(UIView *)maskView setBackgroundColor:v38];

          v39 = *MEMORY[0x1E69796E8];
          layer = [(UIView *)maskView layer];
          [layer setCornerCurve:v39];

          [descriptor setMaskView:maskView];
        }

        layer2 = [(UIView *)maskView layer];
        [layer2 setCornerRadius:v34];

        [(UIView *)maskView setFrame:*(a2 + 144), *(a2 + 152), *(a2 + 160), *(a2 + 168)];
        goto LABEL_32;
      }
    }

    if (!maskView)
    {
      goto LABEL_33;
    }

    [descriptor setMaskView:0];
LABEL_32:

LABEL_33:
    v98 = v21;
    v99 = -v7;
    v97 = v23;
    if (v6)
    {
      v42 = 7;
    }

    else
    {
      v42 = 1;
    }

    [descriptor _setContentScrollsAlongXAxis:v6 & 1];
    if ((v6 & 2) != 0)
    {
      v42 |= 0x18uLL;
    }

    [descriptor _setContentScrollsAlongYAxis:(v6 & 2) >> 1];
    _autoScrollAssistant = [descriptor _autoScrollAssistant];
    [_autoScrollAssistant setAllowedDirections:v42];

    [v104 frame];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v106.origin.x = v7;
    v106.origin.y = v8;
    v106.size.width = v103;
    v106.size.height = v102;
    MinY = CGRectGetMinY(v106);
    v107.origin.x = v7;
    v107.origin.y = v8;
    v107.size.width = v103;
    v107.size.height = v102;
    MinX = CGRectGetMinX(v107);
    v108.origin.x = v45;
    v108.origin.y = v47;
    v108.size.width = v49;
    v108.size.height = v51;
    Height = CGRectGetHeight(v108);
    v109.origin.x = v7;
    v109.origin.y = v8;
    v109.size.width = v103;
    v109.size.height = v102;
    MaxY = CGRectGetMaxY(v109);
    v110.origin.x = v45;
    v110.origin.y = v47;
    v110.size.width = v49;
    v110.size.height = v51;
    Width = CGRectGetWidth(v110);
    v91 = v8;
    v92 = v7;
    v111.origin.x = v7;
    v111.origin.y = v8;
    v111.size.width = v103;
    v111.size.height = v102;
    MaxX = CGRectGetMaxX(v111);
    if (v6)
    {
      v54 = Width - MaxX;
      v56 = -v8;
      v55 = v97;
      if (v6 == 1)
      {
        v57 = 0.0;
        v59 = 0.0;
        v58 = MinX;
      }

      else
      {
        v57 = Height - MaxY;
        v58 = MinX;
        if (v6 == 2)
        {
          v54 = 0.0;
          v58 = 0.0;
        }

        v59 = MinY;
      }
    }

    else
    {
      v54 = 0.0;
      v57 = 0.0;
      v58 = 0.0;
      v59 = 0.0;
      v56 = -v8;
      v55 = v97;
    }

    [descriptor _setTouchInsets:{-v59, -v58, -v57, -v54}];
    v60 = *(a2 + 56);
    [descriptor _pointByApplyingBaseContentInsetsToPoint:{v101, v100}];
    v62 = v61;
    v64 = v63;
    v65 = *MEMORY[0x1E695F060];
    v66 = *(MEMORY[0x1E695F060] + 8);
    if (v60 > 0.0)
    {
      v67 = _UISizeValueForAxis(v6, v103, v102);
      v65 = _UISetSizeValueForAxis(v6, v65, v66, -(v67 - v60));
      v66 = v68;
      if (v32 == 5)
      {
        dyld_program_sdk_at_least();
        UIRoundToViewScale(descriptor);
        v70 = v69;
        v62 = v62 + _UISetPointValueForAxis(v6, v101, v100, -v69);
        v64 = v64 + v71;
        if (v6 == 1)
        {
          [descriptor setContentInset:{v56, v70 - v92, v55, v98 + v70}];
LABEL_51:
          [descriptor _setPagingOrigin:{v62, v64}];
          [descriptor _setInterpageSpacing:{v65, v66}];
LABEL_52:
          v72 = *(a2 + 96);
          v73 = *(a2 + 104);
          [descriptor _currentScreenScale];
          v75 = _UICollectionLayoutValidatedContentOffsetForProposedContentOffsetForOrthogonalSection(a2, v72, v73, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), v74);
          v77 = v76;
          if (([descriptor isTracking] & 1) != 0 || (objc_msgSend(descriptor, "isDecelerating") & 1) != 0 || objc_msgSend(descriptor, "isScrollAnimating"))
          {
            v78 = *(a2 + 16);
            v79 = _UIPointValueForAxis(v78, v72, v73);
            v75 = _UISetPointValueForAxis(v78, v75, v77, v79);
            v77 = v80;
          }

          [descriptor contentOffset];
          v82 = v81;
          v84 = v83;
          [descriptor _pointByApplyingBaseContentInsetsToPoint:{v75, v77}];
          v87 = vabdd_f64(v84, v86);
          if (vabdd_f64(v82, v85) >= 0.00000011920929 || v87 >= 0.00000011920929)
          {
            [descriptor setContentOffset:{v85, v86, 0.00000011920929, v87}];
          }

          v89 = vabdd_f64(v73, v77);
          if (vabdd_f64(v72, v75) >= 0.00000011920929 || v89 >= 0.00000011920929)
          {
            [v104 _orthogonalScrollView:descriptor didScrollToOffset:*(descriptor + 2168) inSection:{v75, v77}];
          }

          *(descriptor + 2152) = v5 != 0;
          WeakRetained = v104;
          goto LABEL_67;
        }

        v56 = v70 - v91;
        v55 = v55 + v70;
      }
    }

    [descriptor setContentInset:{v56, v99, v55, v98}];
    goto LABEL_51;
  }

LABEL_67:
}

- (void)_scrollViewWillEndDraggingWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  [(_UICollectionViewOrthogonalScrollView *)self contentOffsetAdjustedForCurrentScrollingBehavior:offset->x itemFrame:offset->y, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  offset->x = v5;
  offset->y = v6;
}

- (void)scrollToItemAtIndexPath:(uint64_t)path atScrollPosition:(uint64_t)position additionalInsets:(double)insets animated:(double)animated
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 270);
    collectionViewLayout = [WeakRetained collectionViewLayout];
    v17 = [collectionViewLayout layoutAttributesForItemAtIndexPath:a2];

    if (v17)
    {
      [v17 frame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [self _contentOffsetForScrollingToItemAtIndexPath:a2 atScrollPosition:path additionalInsets:insets itemFrame:{animated, a7, a8, v18, v20, v22, v24}];
      v36 = v27;
      v37 = v26;
      if (dyld_program_sdk_at_least())
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
          v19 = *MEMORY[0x1E695F050];
          v21 = *(MEMORY[0x1E695F050] + 8);
          v23 = *(MEMORY[0x1E695F050] + 16);
          v25 = *(MEMORY[0x1E695F050] + 24);
        }

        [self contentOffsetAdjustedForCurrentScrollingBehavior:v37 itemFrame:{v36, v19, v21, v23, v25}];
      }

      else
      {
        [WeakRetained _contentOffsetForScrollingToItemAtIndexPath:a2 atScrollPosition:path additionalInsets:self itemFrame:1 containingScrollView:insets clampToScrollableArea:{animated, a7, a8, v19, v21, v23, v25}];
      }

      [self setContentOffset:position animated:?];
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        [self frame];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        [WeakRetained bounds];
        v40.x = v29;
        v40.y = v31;
        if (!CGRectContainsPoint(v41, v40))
        {
          [WeakRetained scrollRectToVisible:position animated:{v29, v31, v33, v35}];
        }
      }
    }
  }
}

- (CGPoint)contentOffsetAdjustedForCurrentScrollingBehavior:(CGPoint)behavior itemFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = behavior.y;
  v9 = behavior.x;
  if (!CGRectIsNull(frame))
  {
    [(_UICollectionViewOrthogonalScrollView *)self _pointByRemovingBaseContentInsetsFromPoint:x, y];
    x = v11;
    y = v12;
  }

  [(_UICollectionViewOrthogonalScrollView *)self _pointByRemovingBaseContentInsetsFromPoint:v9, v8];
  v14 = v13;
  v16 = v15;
  if (self)
  {
    descriptor = self->_descriptor;
  }

  else
  {
    descriptor = 0;
  }

  v18 = descriptor;
  [(UIView *)self _currentScreenScale];
  v20 = _UICollectionLayoutValidatedContentOffsetForProposedContentOffsetForOrthogonalSection(v18, v14, v16, x, y, width, height, v19);
  v22 = v21;

  [(_UICollectionViewOrthogonalScrollView *)self _pointByApplyingBaseContentInsetsToPoint:v20, v22];
  result.y = v24;
  result.x = v23;
  return result;
}

- (CGPoint)_contentOffsetForScrollingToItemAtIndexPath:(id)path atScrollPosition:(unint64_t)position additionalInsets:(NSDirectionalEdgeInsets)insets itemFrame:(CGRect)frame
{
  x = frame.origin.x;
  y = frame.origin.y;
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  [(UIView *)self bounds];
  v14 = v13;
  v16 = v15;
  v52 = v18;
  v53 = v17;
  collectionView = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout _supplementaryViewInsetsForScrollingToItemAtIndexPath:path];
  v22 = top + v21;
  v24 = leading + v23;
  v26 = bottom + v25;
  v28 = trailing + v27;
  _contentScrollableAxes = [(UIScrollView *)self _contentScrollableAxes];
  if (_contentScrollableAxes == 2)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v28;
  }

  if (_contentScrollableAxes == 2)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v24;
  }

  if (_contentScrollableAxes == 1)
  {
    v30 = v28;
    v32 = 0.0;
  }

  else
  {
    v32 = v26;
  }

  if (_contentScrollableAxes == 1)
  {
    v31 = v24;
    v33 = 0.0;
  }

  else
  {
    v33 = v22;
  }

  if (_contentScrollableAxes)
  {
    v34 = v30;
  }

  else
  {
    v34 = 0.0;
  }

  if (_contentScrollableAxes)
  {
    v35 = v32;
  }

  else
  {
    v35 = 0.0;
  }

  if (_contentScrollableAxes)
  {
    v36 = v31;
  }

  else
  {
    v36 = 0.0;
  }

  if (_contentScrollableAxes)
  {
    v37 = v33;
  }

  else
  {
    v37 = 0.0;
  }

  v38 = dyld_program_sdk_at_least();
  if (v38)
  {
    v39 = v16;
  }

  else
  {
    v39 = y;
  }

  if (v38)
  {
    v40 = v14;
  }

  else
  {
    v40 = x;
  }

  [collectionView _contentOffsetFromProposedOffset:position forScrollingToItemWithFrame:v40 atScrollPosition:v39 additionalInsets:x containingScrollViewBounds:{*&v37, *&v36, *&v35, *&v34, *&v14, *&v16, v53, v52}];
  v42 = v41;
  v44 = v43;
  _orthogonalScrollingAxis = [collectionViewLayout _orthogonalScrollingAxis];
  v46 = _UIPointValueForAxis(_orthogonalScrollingAxis, v42, v44);
  v47 = _UISetPointValueForAxis(_orthogonalScrollingAxis, v40, v39, v46);
  v49 = v48;

  v50 = v47;
  v51 = v49;
  result.y = v51;
  result.x = v50;
  return result;
}

- (void)_autoScrollAssistantUpdateContentOffset:(CGPoint)offset
{
  [(_UICollectionViewOrthogonalScrollView *)self contentOffsetAdjustedForCurrentScrollingBehavior:offset.x itemFrame:offset.y, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  v4.receiver = self;
  v4.super_class = _UICollectionViewOrthogonalScrollView;
  [(UIScrollView *)&v4 _autoScrollAssistantUpdateContentOffset:?];
}

- (CGPoint)_contentOffsetForScrollingToTop
{
  [(_UICollectionViewOrthogonalScrollView *)self contentOffsetAdjustedForCurrentScrollingBehavior:*MEMORY[0x1E695EFF8] itemFrame:*(MEMORY[0x1E695EFF8] + 8), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)_pointByApplyingBaseContentInsetsToPoint:(CGPoint)point
{
  if (self)
  {
    top = self->_baseContentInsets.top;
    left = self->_baseContentInsets.left;
  }

  else
  {
    left = 0.0;
    top = 0.0;
  }

  v5 = point.x - left;
  v6 = point.y - top;
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)_pointByRemovingBaseContentInsetsFromPoint:(CGPoint)point
{
  if (self)
  {
    top = self->_baseContentInsets.top;
    left = self->_baseContentInsets.left;
  }

  else
  {
    left = 0.0;
    top = 0.0;
  }

  v5 = point.x + left;
  v6 = point.y + top;
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = _UICollectionViewOrthogonalScrollView;
  [UIScrollView touchesBegan:sel_touchesBegan_withEvent_ withEvent:?];
  collectionView = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  [collectionView touchesBegan:began withEvent:event];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = _UICollectionViewOrthogonalScrollView;
  [UIScrollView touchesMoved:sel_touchesMoved_withEvent_ withEvent:?];
  collectionView = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  [collectionView touchesMoved:moved withEvent:event];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = _UICollectionViewOrthogonalScrollView;
  [UIScrollView touchesCancelled:sel_touchesCancelled_withEvent_ withEvent:?];
  collectionView = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  [collectionView touchesCancelled:cancelled withEvent:event];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = _UICollectionViewOrthogonalScrollView;
  [UIScrollView touchesEnded:sel_touchesEnded_withEvent_ withEvent:?];
  collectionView = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  [collectionView touchesEnded:ended withEvent:event];
}

- (CGPoint)_panGestureLocationInView:(id)view
{
  panGestureRecognizer = [(UIScrollView *)self panGestureRecognizer];
  [panGestureRecognizer locationInView:view];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)_panGestureVelocityInView:(id)view
{
  panGestureRecognizer = [(UIScrollView *)self panGestureRecognizer];
  [panGestureRecognizer velocityInView:view];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (id)_existingFocusItemsInRect:(CGRect)rect
{
  v6.receiver = self;
  v6.super_class = _UICollectionViewOrthogonalScrollView;
  v3 = [(UIView *)&v6 focusItemsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v4 = [v3 bs_filter:&__block_literal_global_636];

  return v4;
}

- (id)focusItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [(_UICollectionViewOrthogonalScrollView *)self _existingFocusItemsInRect:?];
  collectionView = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  coordinateSpace = [(UIView *)self coordinateSpace];
  if (self)
  {
    section = self->_section;
  }

  else
  {
    section = 0;
  }

  v12 = [collectionView _focusPromiseItemsInRect:coordinateSpace inCoordinateSpace:section inSection:{x, y, width, height}];

  v13 = [v8 arrayByAddingObjectsFromArray:v12];

  return v13;
}

- (id)_focusScrollBoundaryMetricsForItem:(id)item
{
  [(UIScrollView *)self _canScrollX];
  [(UIScrollView *)self _canScrollY];
  v5 = [[_UIFocusScrollBoundaryMetrics alloc] initWithFocusItem:item scrollView:self];
  collectionView = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  v7 = collectionView;
  if (self)
  {
    section = self->_section;
  }

  else
  {
    section = 0;
  }

  [collectionView _updateFocusScrollBoundaryMetrics:v5 forItem:item inSection:section];

  if (![(_UIFocusScrollBoundaryMetrics *)v5 hasDisprovedAllRelevantAssumptions])
  {
    v11.receiver = self;
    v11.super_class = _UICollectionViewOrthogonalScrollView;
    v9 = [(UIScrollView *)&v11 _focusScrollBoundaryMetricsForItem:item];
    [(_UIFocusScrollBoundaryMetrics *)v5 consumeOtherMetrics:v9];
  }

  return v5;
}

- (unint64_t)_focusPrimaryScrollableAxis
{
  if ([(UIScrollView *)self _contentScrollsAlongXAxis])
  {
    return 1;
  }

  if ([(UIScrollView *)self _contentScrollsAlongYAxis])
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = _UICollectionViewOrthogonalScrollView;
  return [(UIScrollView *)&v4 _focusPrimaryScrollableAxis];
}

- (UIEdgeInsets)_focusScrollableAreaInsets
{
  leading = 0.0;
  if (!self)
  {
    bottom = 0.0;
    trailing = 0.0;
    top = 0.0;
    goto LABEL_6;
  }

  descriptor = self->_descriptor;
  bottom = 0.0;
  trailing = 0.0;
  top = 0.0;
  if (!descriptor)
  {
LABEL_6:
    v9 = -top;
    v10 = -leading;
    v11 = -bottom;
    v12 = -trailing;
    goto LABEL_8;
  }

  if (!descriptor->_clipsContentToBounds)
  {
    top = descriptor->_contentInsets.top;
    leading = descriptor->_contentInsets.leading;
    bottom = descriptor->_contentInsets.bottom;
    trailing = descriptor->_contentInsets.trailing;
    goto LABEL_6;
  }

  v14 = v2;
  v15 = v3;
  v13.receiver = self;
  v13.super_class = _UICollectionViewOrthogonalScrollView;
  [(UIScrollView *)&v13 _focusScrollableAreaInsets:0.0];
LABEL_8:
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to
{
  positionedCopy = positioned;
  if (self)
  {
    subviewRouter = self->_subviewRouter;
    if (subviewRouter)
    {
      if ([(_UICollectionViewSubviewRouter *)subviewRouter shouldAddSubview:subview atPosition:&positionedCopy relativeTo:to creatingBookmarkIfNecessary:1])
      {
        v9.receiver = self;
        v9.super_class = _UICollectionViewOrthogonalScrollView;
        [(UIView *)&v9 _addSubview:subview positioned:positionedCopy relativeTo:to];
      }
    }
  }
}

- (void)bringSubviewToFront:(id)front
{
  selfCopy = self;
  if (self)
  {
    self = self->_subviewRouter;
  }

  if ([(_UICollectionViewSubviewRouter *)self shouldBringSubviewToFront:front])
  {
    v5.receiver = selfCopy;
    v5.super_class = _UICollectionViewOrthogonalScrollView;
    [(UIView *)&v5 bringSubviewToFront:front];
  }
}

- (void)sendSubviewToBack:(id)back
{
  if (self)
  {
    subviewRouter = self->_subviewRouter;
    if (subviewRouter)
    {
      v7 = 0;
      if ([(_UICollectionViewSubviewRouter *)subviewRouter shouldAddSubview:back atPosition:&v7 relativeTo:0 creatingBookmarkIfNecessary:0])
      {
        v6.receiver = self;
        v6.super_class = _UICollectionViewOrthogonalScrollView;
        [(UIView *)&v6 sendSubviewToBack:back];
      }
    }
  }
}

- (void)exchangeSubviewAtIndex:(int64_t)index withSubviewAtIndex:(int64_t)atIndex
{
  selfCopy = self;
  if (self)
  {
    self = self->_subviewRouter;
  }

  if ([(_UICollectionViewSubviewRouter *)self shouldExchangeSubviewAtIndex:index withSubviewAtIndex:atIndex])
  {
    v7.receiver = selfCopy;
    v7.super_class = _UICollectionViewOrthogonalScrollView;
    [(UIView *)&v7 exchangeSubviewAtIndex:index withSubviewAtIndex:atIndex];
  }
}

- (void)_willRemoveSubview:(id)subview
{
  v6.receiver = self;
  v6.super_class = _UICollectionViewOrthogonalScrollView;
  [(UIView *)&v6 _willRemoveSubview:?];
  if (self)
  {
    subviewRouter = self->_subviewRouter;
  }

  else
  {
    subviewRouter = 0;
  }

  [(_UICollectionViewSubviewRouter *)subviewRouter willRemoveSubview:subview];
}

- (void)dealloc
{
  [(_UICollectionViewSubviewRouter *)self->_subviewRouter setContainer:?];
  v3.receiver = self;
  v3.super_class = _UICollectionViewOrthogonalScrollView;
  [(UIScrollView *)&v3 dealloc];
}

@end