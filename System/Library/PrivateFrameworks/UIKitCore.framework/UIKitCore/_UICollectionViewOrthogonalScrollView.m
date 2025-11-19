@interface _UICollectionViewOrthogonalScrollView
- (CGPoint)_contentOffsetForScrollingToItemAtIndexPath:(id)a3 atScrollPosition:(unint64_t)a4 additionalInsets:(NSDirectionalEdgeInsets)a5 itemFrame:(CGRect)a6;
- (CGPoint)_contentOffsetForScrollingToTop;
- (CGPoint)_panGestureLocationInView:(id)a3;
- (CGPoint)_panGestureVelocityInView:(id)a3;
- (CGPoint)_pointByApplyingBaseContentInsetsToPoint:(CGPoint)a3;
- (CGPoint)_pointByRemovingBaseContentInsetsFromPoint:(CGPoint)a3;
- (CGPoint)contentOffsetAdjustedForCurrentScrollingBehavior:(CGPoint)a3 itemFrame:(CGRect)a4;
- (UIEdgeInsets)_focusScrollableAreaInsets;
- (id)_existingFocusItemsInRect:(CGRect)a3;
- (id)_focusScrollBoundaryMetricsForItem:(id)a3;
- (id)collectionView;
- (id)focusItemsInRect:(CGRect)a3;
- (unint64_t)_edgesPropagatingSafeAreaInsetsToSubviews;
- (unint64_t)_focusPrimaryScrollableAxis;
- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5;
- (void)_autoScrollAssistantUpdateContentOffset:(CGPoint)a3;
- (void)_notifyDidScroll;
- (void)_scrollViewWillEndDraggingWithVelocity:(CGPoint)a3 targetContentOffset:(CGPoint *)a4;
- (void)_willRemoveSubview:(id)a3;
- (void)bringSubviewToFront:(id)a3;
- (void)configureForDescriptor:(uint64_t)a1;
- (void)dealloc;
- (void)exchangeSubviewAtIndex:(int64_t)a3 withSubviewAtIndex:(int64_t)a4;
- (void)initWithCollectionView:(uint64_t)a3 section:;
- (void)scrollToItemAtIndexPath:(uint64_t)a3 atScrollPosition:(uint64_t)a4 additionalInsets:(double)a5 animated:(double)a6;
- (void)sendSubviewToBack:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UICollectionViewOrthogonalScrollView

- (unint64_t)_edgesPropagatingSafeAreaInsetsToSubviews
{
  v5.receiver = self;
  v5.super_class = _UICollectionViewOrthogonalScrollView;
  v3 = [(UIScrollView *)&v5 _edgesPropagatingSafeAreaInsetsToSubviews];
  if ([(UIScrollView *)self _contentScrollsAlongXAxis])
  {
    v3 &= 0xFFFFFFFFFFFFFFF5;
  }

  if ([(UIScrollView *)self _contentScrollsAlongYAxis])
  {
    return v3 & 0xFFFFFFFFFFFFFFFALL;
  }

  else
  {
    return v3;
  }
}

- (void)_notifyDidScroll
{
  v3 = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  if (v3 && !self->_orthogonalScrollViewFlags.isConfiguring)
  {
    [(UIScrollView *)self contentOffset];
    [(_UICollectionViewOrthogonalScrollView *)self _pointByRemovingBaseContentInsetsFromPoint:?];
    descriptor = self->_descriptor;
    if (descriptor)
    {
      descriptor->_contentOffset.x = v4;
      descriptor->_contentOffset.y = v5;
    }

    [v3 _orthogonalScrollView:self didScrollToOffset:self->_section inSection:?];
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

- (void)initWithCollectionView:(uint64_t)a3 section:
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = _UICollectionViewOrthogonalScrollView;
  v5 = objc_msgSendSuper2(&v10, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(v5 + 270, a2);
    v6[271] = a3;
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

- (void)configureForDescriptor:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 2160));
  if (a2 && WeakRetained)
  {
    v104 = WeakRetained;
    v5 = *(a1 + 2152);
    *(a1 + 2152) = 1;
    if (([(_UICollectionLayoutSectionDescriptor *)*(a1 + 2184) isEqualToSectionDescriptor:a2 comparingContentOffset:0]& 1) != 0)
    {
      goto LABEL_52;
    }

    objc_storeStrong((a1 + 2184), a2);
    v6 = *(a2 + 16);
    v7 = *(a2 + 208);
    v8 = *(a2 + 216);
    v102 = *(a2 + 232);
    v103 = *(a2 + 224);
    v10 = *(a1 + 2192);
    v9 = *(a1 + 2200);
    v11 = *(a1 + 2208);
    v12 = *(a1 + 2216);
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
      *(a1 + 2192) = v18;
      *(a1 + 2200) = -v7;
      *(a1 + 2208) = v17;
      *(a1 + 2216) = v16;
      v24 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:a1];
      v25 = [v24 scrollManager];

      [v25 adjustTargetContentOffsetForScrollableContainer:a1 byDelta:{v7 + v9, v8 + v10}];
    }

    v26 = *(a2 + 160);
    v27 = *(a2 + 168);
    v28 = [a1 _isAutomaticContentOffsetAdjustmentEnabled];
    [a1 _setAutomaticContentOffsetAdjustmentEnabled:0];
    [a1 setFrame:{v7, v8, v103, v102}];
    [a1 setContentSize:{v26, v27}];
    [a1 _setAutomaticContentOffsetAdjustmentEnabled:v28];
    v29 = *(a2 + 40);
    v30 = v29 == 1 && v6 == 1;
    v31 = v29 == 1 && v6 == 2;
    [a1 setBounces:v29 != 2];
    [a1 setAlwaysBounceHorizontal:v30];
    [a1 setAlwaysBounceVertical:v31];
    v32 = *(a2 + 24);
    [a1 setPagingEnabled:(v32 - 3) < 3];
    v33 = *(a2 + 32);
    if (v33 == *off_1E70ECC78)
    {
      v33 = *off_1E70ECC80;
    }

    [a1 setDecelerationRate:v33];
    [a1 _setShouldPreventFocusScrollPastContentSize:{objc_msgSend(a1, "_shouldPreventFocusScrollPastContentSize")}];
    v34 = *(a2 + 48);
    if (v34 <= 0.0)
    {
      v37 = [a1 maskView];
    }

    else
    {
      v35 = *(a2 + 8);
      v36 = [a1 maskView];
      v37 = v36;
      if ((v35 & 1) == 0)
      {
        if (!v36)
        {
          v37 = objc_alloc_init(UIView);
          v38 = +[UIColor whiteColor];
          [(UIView *)v37 setBackgroundColor:v38];

          v39 = *MEMORY[0x1E69796E8];
          v40 = [(UIView *)v37 layer];
          [v40 setCornerCurve:v39];

          [a1 setMaskView:v37];
        }

        v41 = [(UIView *)v37 layer];
        [v41 setCornerRadius:v34];

        [(UIView *)v37 setFrame:*(a2 + 144), *(a2 + 152), *(a2 + 160), *(a2 + 168)];
        goto LABEL_32;
      }
    }

    if (!v37)
    {
      goto LABEL_33;
    }

    [a1 setMaskView:0];
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

    [a1 _setContentScrollsAlongXAxis:v6 & 1];
    if ((v6 & 2) != 0)
    {
      v42 |= 0x18uLL;
    }

    [a1 _setContentScrollsAlongYAxis:(v6 & 2) >> 1];
    v43 = [a1 _autoScrollAssistant];
    [v43 setAllowedDirections:v42];

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

    [a1 _setTouchInsets:{-v59, -v58, -v57, -v54}];
    v60 = *(a2 + 56);
    [a1 _pointByApplyingBaseContentInsetsToPoint:{v101, v100}];
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
        UIRoundToViewScale(a1);
        v70 = v69;
        v62 = v62 + _UISetPointValueForAxis(v6, v101, v100, -v69);
        v64 = v64 + v71;
        if (v6 == 1)
        {
          [a1 setContentInset:{v56, v70 - v92, v55, v98 + v70}];
LABEL_51:
          [a1 _setPagingOrigin:{v62, v64}];
          [a1 _setInterpageSpacing:{v65, v66}];
LABEL_52:
          v72 = *(a2 + 96);
          v73 = *(a2 + 104);
          [a1 _currentScreenScale];
          v75 = _UICollectionLayoutValidatedContentOffsetForProposedContentOffsetForOrthogonalSection(a2, v72, v73, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), v74);
          v77 = v76;
          if (([a1 isTracking] & 1) != 0 || (objc_msgSend(a1, "isDecelerating") & 1) != 0 || objc_msgSend(a1, "isScrollAnimating"))
          {
            v78 = *(a2 + 16);
            v79 = _UIPointValueForAxis(v78, v72, v73);
            v75 = _UISetPointValueForAxis(v78, v75, v77, v79);
            v77 = v80;
          }

          [a1 contentOffset];
          v82 = v81;
          v84 = v83;
          [a1 _pointByApplyingBaseContentInsetsToPoint:{v75, v77}];
          v87 = vabdd_f64(v84, v86);
          if (vabdd_f64(v82, v85) >= 0.00000011920929 || v87 >= 0.00000011920929)
          {
            [a1 setContentOffset:{v85, v86, 0.00000011920929, v87}];
          }

          v89 = vabdd_f64(v73, v77);
          if (vabdd_f64(v72, v75) >= 0.00000011920929 || v89 >= 0.00000011920929)
          {
            [v104 _orthogonalScrollView:a1 didScrollToOffset:*(a1 + 2168) inSection:{v75, v77}];
          }

          *(a1 + 2152) = v5 != 0;
          WeakRetained = v104;
          goto LABEL_67;
        }

        v56 = v70 - v91;
        v55 = v55 + v70;
      }
    }

    [a1 setContentInset:{v56, v99, v55, v98}];
    goto LABEL_51;
  }

LABEL_67:
}

- (void)_scrollViewWillEndDraggingWithVelocity:(CGPoint)a3 targetContentOffset:(CGPoint *)a4
{
  [(_UICollectionViewOrthogonalScrollView *)self contentOffsetAdjustedForCurrentScrollingBehavior:a4->x itemFrame:a4->y, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  a4->x = v5;
  a4->y = v6;
}

- (void)scrollToItemAtIndexPath:(uint64_t)a3 atScrollPosition:(uint64_t)a4 additionalInsets:(double)a5 animated:(double)a6
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 270);
    v16 = [WeakRetained collectionViewLayout];
    v17 = [v16 layoutAttributesForItemAtIndexPath:a2];

    if (v17)
    {
      [v17 frame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [a1 _contentOffsetForScrollingToItemAtIndexPath:a2 atScrollPosition:a3 additionalInsets:a5 itemFrame:{a6, a7, a8, v18, v20, v22, v24}];
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

        [a1 contentOffsetAdjustedForCurrentScrollingBehavior:v37 itemFrame:{v36, v19, v21, v23, v25}];
      }

      else
      {
        [WeakRetained _contentOffsetForScrollingToItemAtIndexPath:a2 atScrollPosition:a3 additionalInsets:a1 itemFrame:1 containingScrollView:a5 clampToScrollableArea:{a6, a7, a8, v19, v21, v23, v25}];
      }

      [a1 setContentOffset:a4 animated:?];
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        [a1 frame];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        [WeakRetained bounds];
        v40.x = v29;
        v40.y = v31;
        if (!CGRectContainsPoint(v41, v40))
        {
          [WeakRetained scrollRectToVisible:a4 animated:{v29, v31, v33, v35}];
        }
      }
    }
  }
}

- (CGPoint)contentOffsetAdjustedForCurrentScrollingBehavior:(CGPoint)a3 itemFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.y;
  v9 = a3.x;
  if (!CGRectIsNull(a4))
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

- (CGPoint)_contentOffsetForScrollingToItemAtIndexPath:(id)a3 atScrollPosition:(unint64_t)a4 additionalInsets:(NSDirectionalEdgeInsets)a5 itemFrame:(CGRect)a6
{
  x = a6.origin.x;
  y = a6.origin.y;
  trailing = a5.trailing;
  bottom = a5.bottom;
  leading = a5.leading;
  top = a5.top;
  [(UIView *)self bounds];
  v14 = v13;
  v16 = v15;
  v52 = v18;
  v53 = v17;
  v19 = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  v20 = [v19 collectionViewLayout];
  [v20 _supplementaryViewInsetsForScrollingToItemAtIndexPath:a3];
  v22 = top + v21;
  v24 = leading + v23;
  v26 = bottom + v25;
  v28 = trailing + v27;
  v29 = [(UIScrollView *)self _contentScrollableAxes];
  if (v29 == 2)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v28;
  }

  if (v29 == 2)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v24;
  }

  if (v29 == 1)
  {
    v30 = v28;
    v32 = 0.0;
  }

  else
  {
    v32 = v26;
  }

  if (v29 == 1)
  {
    v31 = v24;
    v33 = 0.0;
  }

  else
  {
    v33 = v22;
  }

  if (v29)
  {
    v34 = v30;
  }

  else
  {
    v34 = 0.0;
  }

  if (v29)
  {
    v35 = v32;
  }

  else
  {
    v35 = 0.0;
  }

  if (v29)
  {
    v36 = v31;
  }

  else
  {
    v36 = 0.0;
  }

  if (v29)
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

  [v19 _contentOffsetFromProposedOffset:a4 forScrollingToItemWithFrame:v40 atScrollPosition:v39 additionalInsets:x containingScrollViewBounds:{*&v37, *&v36, *&v35, *&v34, *&v14, *&v16, v53, v52}];
  v42 = v41;
  v44 = v43;
  v45 = [v20 _orthogonalScrollingAxis];
  v46 = _UIPointValueForAxis(v45, v42, v44);
  v47 = _UISetPointValueForAxis(v45, v40, v39, v46);
  v49 = v48;

  v50 = v47;
  v51 = v49;
  result.y = v51;
  result.x = v50;
  return result;
}

- (void)_autoScrollAssistantUpdateContentOffset:(CGPoint)a3
{
  [(_UICollectionViewOrthogonalScrollView *)self contentOffsetAdjustedForCurrentScrollingBehavior:a3.x itemFrame:a3.y, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
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

- (CGPoint)_pointByApplyingBaseContentInsetsToPoint:(CGPoint)a3
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

  v5 = a3.x - left;
  v6 = a3.y - top;
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)_pointByRemovingBaseContentInsetsFromPoint:(CGPoint)a3
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

  v5 = a3.x + left;
  v6 = a3.y + top;
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UICollectionViewOrthogonalScrollView;
  [UIScrollView touchesBegan:sel_touchesBegan_withEvent_ withEvent:?];
  v7 = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  [v7 touchesBegan:a3 withEvent:a4];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UICollectionViewOrthogonalScrollView;
  [UIScrollView touchesMoved:sel_touchesMoved_withEvent_ withEvent:?];
  v7 = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  [v7 touchesMoved:a3 withEvent:a4];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UICollectionViewOrthogonalScrollView;
  [UIScrollView touchesCancelled:sel_touchesCancelled_withEvent_ withEvent:?];
  v7 = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  [v7 touchesCancelled:a3 withEvent:a4];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UICollectionViewOrthogonalScrollView;
  [UIScrollView touchesEnded:sel_touchesEnded_withEvent_ withEvent:?];
  v7 = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  [v7 touchesEnded:a3 withEvent:a4];
}

- (CGPoint)_panGestureLocationInView:(id)a3
{
  v4 = [(UIScrollView *)self panGestureRecognizer];
  [v4 locationInView:a3];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)_panGestureVelocityInView:(id)a3
{
  v4 = [(UIScrollView *)self panGestureRecognizer];
  [v4 velocityInView:a3];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (id)_existingFocusItemsInRect:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UICollectionViewOrthogonalScrollView;
  v3 = [(UIView *)&v6 focusItemsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [v3 bs_filter:&__block_literal_global_636];

  return v4;
}

- (id)focusItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UICollectionViewOrthogonalScrollView *)self _existingFocusItemsInRect:?];
  v9 = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  v10 = [(UIView *)self coordinateSpace];
  if (self)
  {
    section = self->_section;
  }

  else
  {
    section = 0;
  }

  v12 = [v9 _focusPromiseItemsInRect:v10 inCoordinateSpace:section inSection:{x, y, width, height}];

  v13 = [v8 arrayByAddingObjectsFromArray:v12];

  return v13;
}

- (id)_focusScrollBoundaryMetricsForItem:(id)a3
{
  [(UIScrollView *)self _canScrollX];
  [(UIScrollView *)self _canScrollY];
  v5 = [[_UIFocusScrollBoundaryMetrics alloc] initWithFocusItem:a3 scrollView:self];
  v6 = [(_UICollectionViewOrthogonalScrollView *)&self->super.super.super.super.isa collectionView];
  v7 = v6;
  if (self)
  {
    section = self->_section;
  }

  else
  {
    section = 0;
  }

  [v6 _updateFocusScrollBoundaryMetrics:v5 forItem:a3 inSection:section];

  if (![(_UIFocusScrollBoundaryMetrics *)v5 hasDisprovedAllRelevantAssumptions])
  {
    v11.receiver = self;
    v11.super_class = _UICollectionViewOrthogonalScrollView;
    v9 = [(UIScrollView *)&v11 _focusScrollBoundaryMetricsForItem:a3];
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

- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5
{
  v10 = a4;
  if (self)
  {
    subviewRouter = self->_subviewRouter;
    if (subviewRouter)
    {
      if ([(_UICollectionViewSubviewRouter *)subviewRouter shouldAddSubview:a3 atPosition:&v10 relativeTo:a5 creatingBookmarkIfNecessary:1])
      {
        v9.receiver = self;
        v9.super_class = _UICollectionViewOrthogonalScrollView;
        [(UIView *)&v9 _addSubview:a3 positioned:v10 relativeTo:a5];
      }
    }
  }
}

- (void)bringSubviewToFront:(id)a3
{
  v4 = self;
  if (self)
  {
    self = self->_subviewRouter;
  }

  if ([(_UICollectionViewSubviewRouter *)self shouldBringSubviewToFront:a3])
  {
    v5.receiver = v4;
    v5.super_class = _UICollectionViewOrthogonalScrollView;
    [(UIView *)&v5 bringSubviewToFront:a3];
  }
}

- (void)sendSubviewToBack:(id)a3
{
  if (self)
  {
    subviewRouter = self->_subviewRouter;
    if (subviewRouter)
    {
      v7 = 0;
      if ([(_UICollectionViewSubviewRouter *)subviewRouter shouldAddSubview:a3 atPosition:&v7 relativeTo:0 creatingBookmarkIfNecessary:0])
      {
        v6.receiver = self;
        v6.super_class = _UICollectionViewOrthogonalScrollView;
        [(UIView *)&v6 sendSubviewToBack:a3];
      }
    }
  }
}

- (void)exchangeSubviewAtIndex:(int64_t)a3 withSubviewAtIndex:(int64_t)a4
{
  v6 = self;
  if (self)
  {
    self = self->_subviewRouter;
  }

  if ([(_UICollectionViewSubviewRouter *)self shouldExchangeSubviewAtIndex:a3 withSubviewAtIndex:a4])
  {
    v7.receiver = v6;
    v7.super_class = _UICollectionViewOrthogonalScrollView;
    [(UIView *)&v7 exchangeSubviewAtIndex:a3 withSubviewAtIndex:a4];
  }
}

- (void)_willRemoveSubview:(id)a3
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

  [(_UICollectionViewSubviewRouter *)subviewRouter willRemoveSubview:a3];
}

- (void)dealloc
{
  [(_UICollectionViewSubviewRouter *)self->_subviewRouter setContainer:?];
  v3.receiver = self;
  v3.super_class = _UICollectionViewOrthogonalScrollView;
  [(UIScrollView *)&v3 dealloc];
}

@end