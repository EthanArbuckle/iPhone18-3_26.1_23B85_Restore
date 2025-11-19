@interface UIContextMenuStackedHierarchyLayout
@end

@implementation UIContextMenuStackedHierarchyLayout

void __56___UIContextMenuStackedHierarchyLayout_encompassingSize__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v8 = [a2 listView];
  [v8 frame];
  v10.origin.x = v4;
  v10.origin.y = v5;
  v10.size.width = v6;
  v10.size.height = v7;
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(v3[1], v10);
}

void __107___UIContextMenuStackedHierarchyLayout_performLayoutForComputingPreferredContentSize_withMaxContainerSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 listView];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *&v44.a = *MEMORY[0x1E695EFD0];
  *&v44.c = v5;
  *&v44.tx = *(MEMORY[0x1E695EFD0] + 32);
  [v4 nativeContentSize];
  if (*(a1 + 88))
  {
    [v4 preferredContentSizeWithinContainerSize:{*(a1 + 56), *(a1 + 64)}];
    v9 = v8;
    v11 = v10;
    [*(a1 + 32) maximumMenuHeight];
    v13 = v12;
    [*(a1 + 40) menuMaximumHeightLimitThreshold];
    if (v11 > v13 + v14)
    {
      [*(a1 + 32) maximumMenuHeight];
      v11 = v15;
    }

    [v4 setNativeContentSize:{v9, v11}];
  }

  else
  {
    v9 = v6;
    v11 = v7;
  }

  [*(a1 + 32) _rectOfNodeParentElement:v3];
  y = v45.origin.y;
  IsNull = CGRectIsNull(v45);
  v18 = [*(a1 + 32) attachmentEdge];
  v19 = 0.0;
  if (v18 == 4)
  {
    v19 = *(a1 + 80);
  }

  v20 = 1.0;
  if ([*(a1 + 40) applySubmenuScaling])
  {
    v20 = fmax(fmin(pow(0.97, *(*(*(a1 + 48) + 8) + 24)), 1.0), 0.5);
  }

  v21 = [*(a1 + 32) submenus];
  v22 = [v21 nodes];
  v23 = [v22 count];
  v24 = *(*(*(a1 + 48) + 8) + 24);

  if (IsNull)
  {
    if (*(a1 + 88))
    {
      goto LABEL_34;
    }

    if (v18 != 4)
    {
      v25 = *(a1 + 80);
LABEL_28:
      v33 = v19;
      v19 = v25 - v19;
      goto LABEL_29;
    }
  }

  else
  {
    v26 = v23 + ~v24;
    v27 = v26 * 12.0;
    v28 = y + -12.0;
    if (*(a1 + 88))
    {
      if (v18 == 4)
      {
        v29 = v11 + v28;
        v30 = *(a1 + 80) - v27;
        if (v29 >= v30)
        {
          v19 = v30;
        }

        else
        {
          v19 = v29;
        }
      }

      else if (v28 >= v27)
      {
        v19 = y + -12.0;
      }

      else
      {
        v19 = v26 * 12.0;
      }

      goto LABEL_34;
    }

    if (v18 != 4)
    {
      v25 = *(a1 + 80);
      v19 = fmax(v27, fmin(v28, v25 - v11));
      goto LABEL_28;
    }

    v31 = v11 + v28;
    v32 = *(a1 + 80) - v27;
    if (v31 >= v32)
    {
      v19 = v32;
    }

    else
    {
      v19 = v31;
    }
  }

  v33 = v19;
LABEL_29:
  if (v11 >= v19 / v20)
  {
    v11 = v19 / v20;
  }

  [v4 setVisibleContentSize:{v9, v11}];
  if (v11 >= *(a1 + 80) / v20)
  {
    v11 = *(a1 + 80) / v20;
  }

  v19 = v33;
LABEL_34:
  CGAffineTransformMakeScale(&v44, v20, v20);
  [*(a1 + 32) anchorPoint];
  UIRoundToScale(v34, 2.0);
  v36 = v35 * *(a1 + 72);
  [v4 setAnchorPoint:?];
  v43 = v44;
  [v4 setTransform:&v43];
  [v4 setBounds:{0.0, 0.0, v9, v11}];
  [v4 setCenter:{v36, v19}];
  [*(a1 + 40) stackedSubmenuOffset];
  v38 = v37;
  v39 = [*(a1 + 32) submenus];
  v40 = [v39 nodes];
  v41 = v38 * ([v40 count] - *(*(*(a1 + 48) + 8) + 24));
  v42 = [v4 layer];
  [v42 setZPosition:v41];

  --*(*(*(a1 + 48) + 8) + 24);
}

uint64_t __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSuppressGlassBackground:1];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 addSubview:v3];
}

uint64_t __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) setShadowAlpha:0.0];
  if (*(a1 + 40))
  {
    v3 = [*(a1 + 48) _metrics];
    [v3 largeItemContentShapeInsets];
    v60 = v4;
    v62 = v5;
    v7 = v6;
    v9 = v8;

    [*(a1 + 56) _rectOfNodeParentElement:*(a1 + 64)];
    v10 = *(*(a1 + 80) + 8);
    v10[4] = v11;
    v10[5] = v12;
    v10[6] = v13;
    v10[7] = v14;
    v15 = *(*(a1 + 80) + 8);
    v16.f64[0] = v62;
    v17 = v15[3].f64[0] - (v62 + v9);
    v18 = v15[3].f64[1] - (v60 + v7);
    v16.f64[1] = v60;
    v15[2] = vaddq_f64(v16, v15[2]);
    v15[3].f64[0] = v17;
    v15[3].f64[1] = v18;
    v19 = *(*(a1 + 80) + 8);
    [*(a1 + 72) frame];
    v71.origin.x = v20;
    v71.origin.y = v21;
    v71.size.width = v22;
    v71.size.height = v23;
    *(*(*(a1 + 88) + 8) + 32) = CGRectIntersection(v19[1], v71);
    [*(a1 + 48) _listSectionInsets];
    v25 = v60 + v24;
    v27 = v62 + v26;
    v29 = v7 + v28;
    v31 = v9 + v30;
    [*(a1 + 32) setClipsToBounds:1];
    [*(a1 + 32) setFrame:{*(*(*(a1 + 88) + 8) + 32), *(*(*(a1 + 88) + 8) + 40), *(*(*(a1 + 88) + 8) + 48), *(*(*(a1 + 88) + 8) + 56)}];
    [*(a1 + 32) setContentInsets:{-v25, -v27, -v29, -v31}];
    v32 = *(*(a1 + 88) + 8);
    [*(a1 + 72) frame];
    v34 = v33;
    v63 = v33;
    v36 = v35;
    v59 = v37;
    v61 = v35;
    v38 = v37;
    v40 = v39;
    v41 = v32[4];
    v42 = v32[5];
    v58 = v41;
    v43 = v32[6];
    v44 = v32[7];
    v45 = *(a1 + 56);
    v65.origin.x = v41;
    v65.origin.y = v42;
    v65.size.width = v43;
    v65.size.height = v44;
    MinX = CGRectGetMinX(v65);
    v66.origin.x = v34;
    v66.origin.y = v36;
    v66.size.width = v38;
    v66.size.height = v40;
    if (MinX <= CGRectGetMinX(v66))
    {
      v47 = 0;
    }

    else
    {
      v47 = 5;
    }

    v48 = [v45 _screen];

    [v48 scale];
    v50 = 0.5 / v49;
    v57 = 0.5 / v49;

    v67.origin.x = v58;
    v67.origin.y = v42;
    v67.size.width = v43;
    v67.size.height = v44;
    MinY = CGRectGetMinY(v67);
    v68.origin.x = v63;
    v68.origin.y = v61;
    v68.size.width = v59;
    v68.size.height = v40;
    v51 = CGRectGetMinY(v68);
    v69.size.height = v44;
    v52 = v47 | (vabdd_f64(MinY, v51) <= v50);
    v69.origin.x = v58;
    v69.origin.y = v42;
    v69.size.width = v43;
    MaxY = CGRectGetMaxY(v69);
    v70.origin.x = v63;
    v70.origin.y = v61;
    v70.size.width = v59;
    v70.size.height = v40;
    if (vabdd_f64(MaxY, CGRectGetMaxY(v70)) <= v57)
    {
      v54 = v52 | 4;
    }

    else
    {
      v54 = v52;
    }

    [*(a1 + 32) setRoundedEdges:v54];
    v55 = *(a1 + 32);

    return [v55 layoutIfNeeded];
  }

  return result;
}

void __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_3(uint64_t a1)
{
  v13 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  minimum = v13.minimum;
  maximum = v13.maximum;
  preferred = v13.preferred;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_4;
  v8[3] = &unk_1E70F5B18;
  v12 = *(a1 + 56);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v8 animations:v5, v6, v7];
}

void __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_4(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    [*(a1 + 32) highlightItemAtIndexPath:0];
  }

  [*(a1 + 40) setShadowAlpha:1.0];
  [*(a1 + 40) setRoundedEdges:5];
  [*(a1 + 40) setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v4 = [*(a1 + 48) contentView];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) backgroundMaterialGroupName];
  [v2 setSubmenuTitleViewExpanded:1 withMaterialGroupName:v3 associatedCellContentView:v4 highlighted:*(a1 + 56)];
}

uint64_t __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 flashScrollIndicators];

  v3 = *(a1 + 32);

  return [v3 setClipsToBounds:0];
}

void __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_6(uint64_t a1)
{
  v15 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  minimum = v15.minimum;
  maximum = v15.maximum;
  preferred = v15.preferred;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_7;
  v11[3] = &unk_1E7116DA0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v6;
  *&v9 = v5;
  *(&v9 + 1) = v7;
  v12 = v9;
  v13 = v8;
  v14 = *(a1 + 64);
  *&v9 = maximum;
  *&v10 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v11 animations:COERCE_DOUBLE(__PAIR64__(DWORD1(v14), LODWORD(minimum))), *&v9, v10];
}

void __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) setEmphasized:0];
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }

  [*(a1 + 40) setNeedsLayout];
  [*(a1 + 40) layoutIfNeeded];
  [*(a1 + 48) setSuppressGlassBackground:0];
  if (!CGRectIsEmpty(*(*(*(a1 + 64) + 8) + 32)))
  {
    MinY = CGRectGetMinY(*(*(*(a1 + 64) + 8) + 32));
    v4 = CGRectGetMinY(*(*(*(a1 + 72) + 8) + 32));
    if (vabdd_f64(MinY, v4) >= 2.22044605e-16)
    {
      v5 = MinY - v4;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_8;
      v9[3] = &unk_1E70F32F0;
      v10 = *(a1 + 48);
      v11 = v5;
      [UIView _performWithoutRetargetingAnimations:v9];
      v6 = [*(a1 + 48) collectionView];
      v7 = *(MEMORY[0x1E695EFD0] + 16);
      v8[0] = *MEMORY[0x1E695EFD0];
      v8[1] = v7;
      v8[2] = *(MEMORY[0x1E695EFD0] + 32);
      [v6 setTransform:v8];
    }
  }
}

void __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_8(uint64_t a1)
{
  CGAffineTransformMakeTranslation(&v4, 0.0, *(a1 + 40));
  v2 = [*(a1 + 32) collectionView];
  v3 = v4;
  [v2 setTransform:&v3];
}

uint64_t __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_9(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __97___UIContextMenuStackedHierarchyLayout_navigateUpFromNode_toNode_alongsideAnimations_completion___block_invoke(uint64_t a1)
{
  v12 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  minimum = v12.minimum;
  maximum = v12.maximum;
  preferred = v12.preferred;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __97___UIContextMenuStackedHierarchyLayout_navigateUpFromNode_toNode_alongsideAnimations_completion___block_invoke_2;
  v8[3] = &unk_1E70F5AF0;
  v9 = *(a1 + 32);
  v11 = *(a1 + 48);
  v10 = *(a1 + 40);
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v8 animations:v5, v6, v7];
}

void __97___UIContextMenuStackedHierarchyLayout_navigateUpFromNode_toNode_alongsideAnimations_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setShadowAlpha:0.0];
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) highlightItemAtIndexPath:0];
  }

  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) displayedMenu];
  v7 = [v2 cellForElement:v3];

  v4 = [v7 contentView];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) backgroundMaterialGroupName];
  [v5 setSubmenuTitleViewExpanded:0 withMaterialGroupName:v6 associatedCellContentView:v4 highlighted:*(a1 + 48)];
}

void __97___UIContextMenuStackedHierarchyLayout_navigateUpFromNode_toNode_alongsideAnimations_completion___block_invoke_3(uint64_t a1)
{
  v17 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  minimum = v17.minimum;
  maximum = v17.maximum;
  preferred = v17.preferred;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __97___UIContextMenuStackedHierarchyLayout_navigateUpFromNode_toNode_alongsideAnimations_completion___block_invoke_4;
  v12[3] = &unk_1E7116DC8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v16 = *(a1 + 72);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v13 = v10;
  v14 = v9;
  v15 = *(a1 + 64);
  *&v9 = minimum;
  *&v10 = maximum;
  *&v11 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v12 animations:*&v9, *&v10, v11];
}

void __97___UIContextMenuStackedHierarchyLayout_navigateUpFromNode_toNode_alongsideAnimations_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  *&v71.a = *MEMORY[0x1E695EFD0];
  *&v71.c = v3;
  *&v71.tx = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:&v71];
  [*(a1 + 32) setEmphasized:1];
  [*(a1 + 40) setSuppressGlassBackground:1];
  v4 = *(a1 + 72);
  if (v4)
  {
    (*(v4 + 16))(v4, 2);
  }

  [*(a1 + 48) setNeedsLayout];
  [*(a1 + 48) layoutIfNeeded];
  if (*(a1 + 56))
  {
    v5 = [*(a1 + 64) _metrics];
    [v5 largeItemContentShapeInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [*(a1 + 56) superview];
    [*(a1 + 56) frame];
    [v14 convertRect:*(a1 + 48) toView:?];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v66 = v7 + v18;
    v67 = v9 + v16;
    v64 = v22 - (v7 + v11);
    v65 = v20 - (v9 + v13);
    [*(a1 + 32) frame];
    v82.origin.x = v23;
    v82.origin.y = v24;
    v82.size.width = v25;
    v82.size.height = v26;
    v72.origin.x = v9 + v16;
    v72.origin.y = v7 + v18;
    v72.size.width = v65;
    v72.size.height = v64;
    v73 = CGRectIntersection(v72, v82);
    x = v73.origin.x;
    y = v73.origin.y;
    width = v73.size.width;
    height = v73.size.height;
    [*(a1 + 64) _listSectionInsets];
    v32 = v7 + v31;
    v34 = v9 + v33;
    v36 = v11 + v35;
    v38 = v13 + v37;
    [*(a1 + 40) setClipsToBounds:1];
    v68 = x;
    [*(a1 + 40) setFrame:{x, y, width, height}];
    [*(a1 + 40) setContentInsets:{-v32, -v34, -v36, -v38}];
    [*(a1 + 32) frame];
    v40 = v39;
    v42 = v41;
    v63 = v41;
    v44 = v43;
    rect_16 = v43;
    v46 = v45;
    v47 = *(a1 + 48);
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    MinX = CGRectGetMinX(v74);
    v75.origin.x = v40;
    v75.origin.y = v42;
    v75.size.width = v44;
    v75.size.height = v46;
    if (MinX <= CGRectGetMinX(v75))
    {
      v49 = 0;
    }

    else
    {
      v49 = 5;
    }

    v50 = [v47 _screen];

    [v50 scale];
    v52 = 0.5 / v51;
    rect_8 = 0.5 / v51;

    v76.origin.x = v68;
    v76.origin.y = y;
    v76.size.width = width;
    v76.size.height = height;
    MinY = CGRectGetMinY(v76);
    v77.origin.x = v40;
    v77.origin.y = v63;
    v77.size.width = rect_16;
    v77.size.height = v46;
    v53 = v49 | (vabdd_f64(MinY, CGRectGetMinY(v77)) <= v52);
    v78.origin.x = v68;
    v78.origin.y = y;
    v78.size.width = width;
    v78.size.height = height;
    MaxY = CGRectGetMaxY(v78);
    v79.origin.x = v40;
    v79.origin.y = v63;
    v79.size.width = rect_16;
    v79.size.height = v46;
    if (vabdd_f64(MaxY, CGRectGetMaxY(v79)) <= rect_8)
    {
      v55 = v53 | 4;
    }

    else
    {
      v55 = v53;
    }

    [*(a1 + 40) setRoundedEdges:v55];
    [*(a1 + 40) layoutIfNeeded];
    v80.origin.y = v66;
    v80.origin.x = v67;
    v80.size.height = v64;
    v80.size.width = v65;
    v56 = CGRectGetMinY(v80);
    v81.origin.x = v68;
    v81.origin.y = y;
    v81.size.width = width;
    v81.size.height = height;
    v57 = CGRectGetMinY(v81);
    if (vabdd_f64(v56, v57) >= 2.22044605e-16)
    {
      CGAffineTransformMakeTranslation(&v70, 0.0, v56 - v57);
      v58 = [*(a1 + 40) collectionView];
      v71 = v70;
      [v58 setTransform:&v71];
    }
  }

  else
  {
    [*(a1 + 40) setAlpha:0.0];
    CGAffineTransformMakeScale(&v69, 0.2, 0.2);
    v59 = *(a1 + 40);
    v71 = v69;
    [v59 setTransform:&v71];
  }
}

uint64_t __97___UIContextMenuStackedHierarchyLayout_navigateUpFromNode_toNode_alongsideAnimations_completion___block_invoke_5(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end