@interface UIRefreshControlModernContentView
@end

@implementation UIRefreshControlModernContentView

void __60___UIRefreshControlModernContentView__resetToRevealingState__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 448) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 448);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v23 = *MEMORY[0x1E695EFD0];
  *&v24.m11 = *MEMORY[0x1E695EFD0];
  v21 = *(MEMORY[0x1E695EFD0] + 32);
  v22 = v3;
  *&v24.m13 = v3;
  *&v24.m21 = v21;
  [v2 setTransform:&v24];
  v4 = [*(*(a1 + 32) + 448) layer];
  [v4 removeAllAnimations];

  v5 = [*(*(a1 + 32) + 448) layer];
  CATransform3DMakeRotation(&v24, 0.785398163, 0.0, 0.0, 1.0);
  [v5 setInstanceTransform:&v24];

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v7 = *(a1 + 32);
  if (has_internal_diagnostics)
  {
    if (!v7)
    {
      v19 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v24.m11) = 0;
        _os_log_fault_impl(&dword_188A29000, v19, OS_LOG_TYPE_FAULT, "Attempted to begin using the effective theme of a nil view.", &v24, 2u);
      }
    }
  }

  else if (!v7)
  {
    v20 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_5) + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24.m11) = 0;
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Attempted to begin using the effective theme of a nil view.", &v24, 2u);
    }
  }

  v8 = +[UITraitCollection _currentTraitCollectionIfExists];
  v9 = [*(a1 + 32) traitCollection];
  [UITraitCollection setCurrentTraitCollection:v9];

  v10 = _UISetCurrentFallbackEnvironment(*(a1 + 32));
  v11 = [*(*(a1 + 32) + 448) layer];
  v12 = [*(a1 + 32) _effectiveTintColorWithAlpha:1.0];
  [v11 setInstanceColor:{objc_msgSend(v12, "CGColor")}];

  _UIRestorePreviousFallbackEnvironment(v10);
  [UITraitCollection setCurrentTraitCollection:v8];
  v13 = [*(*(a1 + 32) + 448) layer];
  LODWORD(v14) = -1.0;
  [v13 setInstanceAlphaOffset:v14];

  [*(a1 + 32) _setUnbloomedAppearance];
  v15 = *(*(a1 + 32) + 440);
  *&v24.m11 = v23;
  *&v24.m13 = v22;
  *&v24.m21 = v21;
  [v15 setTransform:&v24];
  v16 = *(a1 + 32);
  v17 = v16[57];
  v18 = [v16 _effectiveTintColor];
  [v17 setBackgroundColor:v18];
}

uint64_t __45___UIRefreshControlModernContentView__reveal__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 448) layer];
  [v2 setInstanceAlphaOffset:0.0];

  v3 = *(*(a1 + 32) + 448);

  return [v3 setAlpha:1.0];
}

uint64_t __52___UIRefreshControlModernContentView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(a1 + 32) safeAreaInsets];
  v11 = v10 + 0.0;
  v13 = v3 + v11;
  v14 = v5 + 0.0;
  v15 = v7 - (v11 + v12 + 0.0);
  [*(*(a1 + 32) + 440) frame];
  v124 = **&MEMORY[0x1E695F058];
  y = v124.origin.y;
  v110 = *MEMORY[0x1E695F058];
  height = v124.size.height;
  width = v124.size.width;
  v16 = CGRectEqualToRect(v118, *MEMORY[0x1E695F058]);
  v17 = *(a1 + 32);
  if (v16 || (*(v17 + 481) & 1) != 0)
  {
    [v17 _currentScreenScale];
    UIRectCenteredXInRectScale(0.0, -20.0, 100.0, 100.0, v13, v5 + 0.0, v15, v9, v18);
    [*(*(a1 + 32) + 440) setFrame:?];
    v17 = *(a1 + 32);
  }

  v19 = *(v17 + 440);
  v119.origin.x = v13;
  v119.origin.y = v5 + 0.0;
  v119.size.width = v15;
  v119.size.height = v9;
  MidX = CGRectGetMidX(v119);
  v120.origin.x = v13;
  v120.origin.y = v5 + 0.0;
  v120.size.width = v15;
  v120.size.height = v9;
  [v19 setCenter:{MidX, CGRectGetMidY(v120)}];
  [*(*(a1 + 32) + 440) frame];
  v103 = v21;
  [*(*(a1 + 32) + 448) frame];
  v125.origin.y = y;
  v125.origin.x = v110;
  v125.size.height = height;
  v125.size.width = width;
  if (CGRectEqualToRect(v121, v125))
  {
    [*(*(a1 + 32) + 440) bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [*(a1 + 32) _currentScreenScale];
    UIRectCenteredXInRectScale(0.0, 0.0, 100.0, 100.0, v23, v25, v27, v29, v30);
    v101 = v32;
    v102 = v31;
    v99 = v34;
    v100 = v33;
    [*(*(a1 + 32) + 440) bounds];
    v35 = v9;
    v37 = v36;
    v38 = v15;
    v40 = v39;
    v41 = v13;
    v43 = v42;
    v44 = v14;
    v46 = v45;
    [*(a1 + 32) _currentScreenScale];
    v47 = v37;
    v9 = v35;
    v48 = v40;
    v15 = v38;
    v49 = v43;
    v13 = v41;
    v50 = v46;
    v14 = v44;
    [*(*(a1 + 32) + 448) setFrame:{UIRectCenteredYInRectScale(v102, v101, v100, v99, v47, v48, v49, v50, v51)}];
  }

  v116 = 0u;
  v117 = 0u;
  v115 = 0u;
  v52 = *(*(a1 + 32) + 456);
  if (v52)
  {
    [v52 transform];
    v52 = *(*(a1 + 32) + 456);
  }

  v53 = *(MEMORY[0x1E695EFD0] + 16);
  v112 = *MEMORY[0x1E695EFD0];
  v113 = v53;
  v114 = *(MEMORY[0x1E695EFD0] + 32);
  [v52 setTransform:&v112];
  [*(*(a1 + 32) + 456) frame];
  x = v122.origin.x;
  v55 = v122.origin.y;
  v56 = v122.size.width;
  v57 = v122.size.height;
  v126.origin.y = y;
  v126.origin.x = v110;
  v126.size.height = height;
  v126.size.width = width;
  if (CGRectEqualToRect(v122, v126))
  {
    UIRoundToViewScale(*(a1 + 32));
    v59 = v58;
    [*(*(a1 + 32) + 448) bounds];
    v61 = v60;
    v109 = v15;
    v111 = v9;
    v63 = v62;
    v65 = v64;
    v107 = v13;
    v67 = v66;
    [*(a1 + 32) _currentScreenScale];
    UIRectCenteredXInRectScale(x, v55, v59, 10.0, v61, v63, v65, v67, v68);
    v105 = v69;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    [*(*(a1 + 32) + 448) bounds];
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v82 = v14;
    v84 = v83;
    [*(a1 + 32) _currentScreenScale];
    v85 = v77;
    v86 = v79;
    v15 = v109;
    v9 = v111;
    v87 = v81;
    v13 = v107;
    v88 = v84;
    v14 = v82;
    x = UIRectCenteredYInRectScale(v105, v71, v73, v75, v85, v86, v87, v88, v89);
    v56 = v90;
    v57 = v91;
    v55 = v92 + -10.0;
  }

  [*(*(a1 + 32) + 456) setFrame:{x, v55, v56, v57}];
  v93 = *(*(a1 + 32) + 456);
  v112 = v115;
  v113 = v116;
  v114 = v117;
  [v93 setTransform:&v112];
  [*(*(a1 + 32) + 472) frame];
  v95 = v94;
  UICeilToViewScale(*(a1 + 32));
  v97 = v103 + v96 + 27.0 + 5.0;
  v123.origin.x = v13;
  v123.origin.y = v14;
  v123.size.width = v15;
  v123.size.height = v9;
  [*(*(a1 + 32) + 472) setFrame:{CGRectGetMinX(v123) + 10.0, v97, v15 + -20.0, v95}];
  result = [*(a1 + 32) _updateTimeOffsetOfRelevantLayers];
  *(*(a1 + 32) + 481) = 0;
  return result;
}

void __52___UIRefreshControlModernContentView_initWithFrame___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 456) layer];
  UIRoundToViewScale(*(a1 + 32));
  [v3 setCornerRadius:v2 * 0.5];
}

uint64_t __43___UIRefreshControlModernContentView__tick__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69E9820];
  v3 = 0.0;
  v4 = 8;
  do
  {
    v6[0] = v2;
    v6[1] = 3221225472;
    v6[2] = __43___UIRefreshControlModernContentView__tick__block_invoke_2;
    v6[3] = &unk_1E70F3590;
    v6[4] = *(a1 + 32);
    result = [UIView addKeyframeWithRelativeStartTime:v6 relativeDuration:v3 animations:0.125];
    v3 = v3 + 0.125;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t __43___UIRefreshControlModernContentView__tick__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 448);
  if (v1)
  {
    [*(*(a1 + 32) + 448) transform];
  }

  else
  {
    memset(&v3, 0, sizeof(v3));
  }

  CGAffineTransformRotate(&v4, &v3, 0.785398163);
  return [v1 setTransform:&v4];
}

uint64_t __45___UIRefreshControlModernContentView__goAway__block_invoke(uint64_t a1)
{
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeScale(&v10, 0.001, 0.001);
  memset(&v9, 0, sizeof(v9));
  v2 = *(a1 + 32);
  v3 = *(v2 + 448);
  if (v3)
  {
    [v3 transform];
    v2 = *(a1 + 32);
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  CGAffineTransformRotate(&v9, &v8, 3.13159265);
  t1 = v10;
  memset(&v8, 0, sizeof(v8));
  v6 = v9;
  CGAffineTransformConcat(&v8, &t1, &v6);
  v4 = *(v2 + 448);
  t1 = v8;
  [v4 setTransform:&t1];
  return [*(*(a1 + 32) + 472) setAlpha:0.0];
}

@end