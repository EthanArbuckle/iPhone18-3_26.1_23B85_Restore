@interface UIFlocker
@end

@implementation UIFlocker

void __21___UIFlocker_install__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) containerView];
  v5 = v3;
  v6 = v4;
  [v5 size];
  v8 = v7;
  v10 = v9;
  v11 = [v5 target];
  [v11 center];
  v13 = v12;
  v15 = v14;
  v16 = [v5 target];
  v17 = [v16 container];
  v18 = v6;
  v19 = v17;
  v20 = v18;
  v21 = [v19 traitCollection];
  v22 = _UIContextMenuGetPlatformMetrics([v21 userInterfaceIdiom]);
  v23 = [v22 convertPoint3DBetweenViews];

  if (v23)
  {
    v24 = (v23)[2](v23, v19, v20, v13, v15, 0.0);
    v26 = v25;
    goto LABEL_28;
  }

  v27 = [v19 traitCollection];
  v28 = _UIContextMenuGetPlatformMetrics([v27 userInterfaceIdiom]);
  v29 = [v28 convertPointBetweenViews];

  if (!v29)
  {
    v80 = v11;
    v31 = v19;
    v32 = v20;
    v33 = [v31 layer];
    v85 = v32;
    v34 = [v32 layer];
    v84 = v33;
    v35 = [v33 presentationLayer];
    v81 = v34;
    v82 = v31;
    if (v35)
    {
      v36 = v35;
      v37 = [v34 presentationLayer];
      if (!v37 || (v38 = v34, (_UILayerAncestorsHaveAllBeenCommitted_0(v84) & 1) == 0))
      {

        goto LABEL_11;
      }

      HaveAllBeenCommitted_0 = _UILayerAncestorsHaveAllBeenCommitted_0(v34);

      if (HaveAllBeenCommitted_0)
      {
        v36 = v38;
        v40 = [v84 presentationLayer];

        v81 = [v38 presentationLayer];
        v84 = v40;
LABEL_11:
        v29 = 0;

        v31 = v82;
        goto LABEL_14;
      }

      v31 = v82;
    }

    v29 = 0;
LABEL_14:
    v41 = [v31 _window];
    v42 = [v85 _window];
    v83 = [v41 windowScene];
    v43 = [v42 windowScene];
    v78 = v41;
    v79 = v42;
    v77 = v43;
    if (v41 == v42)
    {
      v56 = v81;
      [v84 convertPoint:v81 toLayer:{v13, v15}];
      v24 = v57;
      v26 = v58;
    }

    else
    {
      if (v43 && v83 && v83 != v43)
      {
        v44 = v43;
        v45 = [v83 screen];
        v46 = [v45 fixedCoordinateSpace];
        [v46 convertPoint:v82 fromCoordinateSpace:{v13, v15}];
        v48 = v47;
        v50 = v49;

        v51 = [v44 screen];
        v52 = [v51 fixedCoordinateSpace];
        [v85 convertPoint:v52 fromCoordinateSpace:{v48, v50}];
        v24 = v53;
        v26 = v54;

        v31 = v82;
        v55 = v85;
        v56 = v81;
LABEL_26:

        v11 = v80;
        goto LABEL_27;
      }

      v59 = [v41 layer];
      v74 = [v42 layer];
      v75 = v59;
      v60 = [v59 presentationLayer];
      if (v60 && (v61 = v60, [v74 presentationLayer], v62 = objc_claimAutoreleasedReturnValue(), v62, v61, v62))
      {
        v73 = [v75 presentationLayer];

        v63 = [v74 presentationLayer];

        v74 = v63;
        v64 = v73;
        v31 = v82;
      }

      else
      {
        v31 = v82;
        v64 = v75;
      }

      v76 = v64;
      [v84 convertPoint:v13 toLayer:{v15, v73}];
      v56 = v81;
      [v81 convertPoint:v74 fromLayer:?];
      v24 = v65;
      v26 = v66;
    }

    v55 = v85;
    goto LABEL_26;
  }

  v24 = (v29)[2](v29, v19, v20, v13, v15);
  v26 = v30;
LABEL_27:

LABEL_28:
  v67 = [v5 target];
  v68 = v67;
  if (v67)
  {
    [v67 transform];
  }

  else
  {
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
  }

  v86 = v89;
  v87 = v90;
  v88 = v91;

  v69 = [v5 view];
  [v69 setCollapsedShadowStyle:0];
  [v69 setExpandedShadowStyle:1];
  [v69 setBounds:{0.0, 0.0, v8, v10}];
  [(UIView *)v69 _setCenter3D:v24, v26, 0.0];
  v89 = v86;
  v90 = v87;
  v91 = v88;
  [v69 setTransform:&v89];
  v70 = [*(a1 + 32) containerView];
  [v70 insertSubview:v69 belowSubview:*(a1 + 40)];

  [v69 setNeedsLayout];
  [v69 layoutIfNeeded];
  v71 = *(a1 + 32);
  v72 = [v69 collapsedPreview];
  [v71 _installGhostPortalForPreview:v72];
}

uint64_t __19___UIFlocker_flock__block_invoke(void *a1)
{
  v4 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __19___UIFlocker_flock__block_invoke_2;
  v3[3] = &unk_1E70F6848;
  v3[4] = a1[4];
  v3[5] = a1[5];
  v3[6] = a1[6];
  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v3 animations:*&v4.minimum, *&v4.maximum, *&v4.preferred];
}

void __19___UIFlocker_flock__block_invoke_2(uint64_t a1)
{
  v110 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _primaryPlatterView];
  [v2 setExpandedShadowIntensity:*(a1 + 40)];
  [v2 setExpanded:1];
  [v2 layoutIfNeeded];
  v3 = [*(a1 + 32) containerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v92 = v8;
  v94 = v9;
  v10 = [*(a1 + 32) containerView];
  [v10 safeAreaInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v10 traitCollection];
  v20 = [v19 verticalSizeClass];

  if (v20 == 1)
  {
    v21 = v12;
  }

  else
  {
    v18 = v18 + 0.0;
    v16 = v16 + 20.0;
    v14 = v14 + 0.0;
    v21 = v12 + 20.0;
  }

  v22 = v10;
  v23 = [v22 traitCollection];
  v24 = [v23 userInterfaceIdiom];

  v25 = _UIContextMenuGetPlatformMetrics(v24);
  [UIViewController _horizontalContentMarginForView:v22];
  v27 = v26;
  v28 = [v25 contentSpacingForContainer];
  v29 = v28;
  if (v28)
  {
    v27 = (*(v28 + 16))(v28, v22);
  }

  v30 = fmax(v16, 20.0);
  v31 = [v22 traitCollection];
  v32 = [v31 userInterfaceIdiom];

  v33 = _UIContextMenuGetPlatformMetrics(v32);
  [v33 preferredDefaultContentInsets];
  v35 = fmax(fmax(v21, 20.0), v34);
  v37 = fmax(fmax(v14, v27), v36);
  v39 = fmax(v30, v38);
  v41 = fmax(fmax(v18, v27), v40);

  v42 = v92 - (v37 + v41);
  v43 = v94 - (v35 + v39);

  v44 = [v2 traitCollection];
  v45 = [v44 userInterfaceIdiom];

  LOBYTE(v44) = [*(a1 + 32) settings];
  [v2 bounds];
  v95 = v5 + v37;
  v46 = v7 + v35;
  v47 = v7 + v35;
  v48 = v42;
  v49 = v43;
  _randomPlatterTransform(&v106, 0, v44 & 1, v45, v50, v51, v52, v53, v95, v47, v42, v43);
  [v2 setTransform:&v106];
  v54 = [v2 layer];
  [v54 zPosition];
  v56 = v55;

  v57 = [*(a1 + 32) itemCount];
  v58 = 5;
  if (v57 < 5)
  {
    v58 = v57;
  }

  v59 = (3 * (v58 >> 1));
  if (v56 > 0.0)
  {
    v60 = [v2 layer];
    [v60 setZPosition:v56 + v59];
  }

  v61 = [*(a1 + 32) secondaryPlatterViews];
  v62 = [v61 count];

  if (v62)
  {
    v63 = 0;
    v64 = 0;
    v93 = v56 - v59;
    do
    {
      v65 = [*(a1 + 32) secondaryPlatterViews];
      v66 = [v65 objectAtIndexedSubscript:v63];
      v67 = [v66 view];

      [v67 setExpandedShadowIntensity:*(a1 + 40)];
      [v67 setExpanded:1];
      [v2 center];
      [v67 setCenter:?];
      [v67 bounds];
      v69 = v68;
      v71 = v70;
      v73 = v72;
      v75 = v74;
      v76 = [v67 traitCollection];
      _randomPlatterTransform(v105, 1, 1, [v76 userInterfaceIdiom], v69, v71, v73, v75, v95, v46, v48, v49);
      v106 = v105[0];
      v107 = v105[1];
      v108 = v105[2];
      [v67 setTransform:&v106];

      v77 = *(a1 + 48);
      if (v77 < 6 || v63 < 3 || v77 - 2 <= v63)
      {
        [v67 layoutIfNeeded];
        if (v56 > 0.0)
        {
          v79 = [v67 layer];
          [v79 setZPosition:v93 + v64 * 3.0];
        }

        ++v64;
      }

      else
      {
        [v67 setAlpha:0.0];
        if (v56 > 0.0)
        {
          v78 = [v67 layer];
          [v78 setZPosition:v56];
        }
      }

      ++v63;
      v80 = [*(a1 + 32) secondaryPlatterViews];
      v81 = [v80 count];
    }

    while (v81 > v63);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v82 = [*(a1 + 32) ghostPortals];
  v83 = [v82 countByEnumeratingWithState:&v101 objects:v109 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = *v102;
    do
    {
      for (i = 0; i != v84; ++i)
      {
        if (*v102 != v85)
        {
          objc_enumerationMutation(v82);
        }

        [*(*(&v101 + 1) + 8 * i) setAlpha:0.5];
      }

      v84 = [v82 countByEnumeratingWithState:&v101 objects:v109 count:16];
    }

    while (v84);
  }

  v87 = [*(a1 + 32) badge];
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __19___UIFlocker_flock__block_invoke_3;
  v96[3] = &unk_1E70F5B18;
  v88 = *(a1 + 32);
  v97 = v87;
  v98 = v88;
  v100 = v56 > 0.0;
  v99 = v2;
  v89 = v2;
  v90 = v87;
  [UIView performWithoutAnimation:v96];
  v91 = *(MEMORY[0x1E695EFD0] + 16);
  v106 = *MEMORY[0x1E695EFD0];
  v107 = v91;
  v108 = *(MEMORY[0x1E695EFD0] + 32);
  [v90 setTransform:&v106];
  [v90 setAlpha:1.0];
}

void __19___UIFlocker_flock__block_invoke_3(uint64_t a1)
{
  [*(a1 + 40) _badgeCenter];
  [*(a1 + 32) setCenter:?];
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 48) layer];
    [v2 zPosition];
    v4 = v3 + 3.0;
    v5 = [*(a1 + 32) layer];
    [v5 setZPosition:v4];
  }

  v6 = [*(a1 + 48) shadowSettings];

  if (v6)
  {
    v7 = [*(a1 + 48) layer];
    v8 = [v7 shadowColor];
    v9 = [*(a1 + 32) layer];
    [v9 setShadowColor:v8];

    v10 = [*(a1 + 48) layer];
    [v10 shadowOffset];
    v12 = v11;
    v14 = v13;
    v15 = [*(a1 + 32) layer];
    [v15 setShadowOffset:{v12, v14}];

    v16 = [*(a1 + 48) layer];
    [v16 shadowRadius];
    v18 = v17;
    v19 = [*(a1 + 32) layer];
    [v19 setShadowRadius:v18];

    v27 = [*(a1 + 48) layer];
    [v27 shadowOpacity];
    LODWORD(v18) = v20;
    v21 = [*(a1 + 32) layer];
    LODWORD(v22) = LODWORD(v18);
    [v21 setShadowOpacity:v22];
  }

  else
  {
    v23 = [*(a1 + 32) layer];
    [v23 setShadowOffset:{0.0, 1.0}];

    v24 = [*(a1 + 32) layer];
    [v24 setShadowRadius:2.0];

    v25 = [*(a1 + 32) layer];
    LODWORD(v26) = 1050253722;
    v27 = v25;
    [v25 setShadowOpacity:v26];
  }
}

void __37___UIFlocker_unflockToDrag_animated___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v5 = [v13 view];
  v6 = [*(a1 + 32) unflockPreviewProvider];
  v7 = (v6)[2](v6, v13, a3);

  if (v7)
  {
    if (*(a1 + 48))
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = v13;
    v8 = 1;
  }

  v9 = [v5 collapsedPreview];
  v10 = [v9 view];
  v11 = [v10 _getGhostPortal];
  v12 = [_UIUnflockItemAnimation animationWithPlatterView:v5 destination:v7 positionReferenceView:v11 type:v8];

  [*(a1 + 40) addObject:v12];
}

void __37___UIFlocker_unflockToDrag_animated___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _primaryPlatterView];
  [v2 didTearOffForDrag];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(a1 + 32) secondaryPlatterViews];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) view];
        [v8 didTearOffForDrag];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 32) badge];
  [v9 setHidden:1];
}

void __37___UIFlocker_unflockToDrag_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) makeObjectsPerformSelector:sel_play];
  CGAffineTransformMakeScale(&v5, 0.0, 0.0);
  v2 = [*(a1 + 40) badge];
  v4 = v5;
  [v2 setTransform:&v4];

  v3 = [*(a1 + 40) badge];
  [v3 setAlpha:0.0];
}

uint64_t __37___UIFlocker_unflockToDrag_animated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) makeObjectsPerformSelector:sel_removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 makeObjectsPerformSelector:sel_complete];
}

uint64_t __37___UIFlocker_unflockToDrag_animated___block_invoke_5(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

@end