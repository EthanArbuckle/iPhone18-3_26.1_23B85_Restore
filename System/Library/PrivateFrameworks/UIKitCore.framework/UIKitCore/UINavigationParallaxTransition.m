@interface UINavigationParallaxTransition
@end

@implementation UINavigationParallaxTransition

uint64_t __73___UINavigationParallaxTransition_animatePreemptionSnapshotsWithContext___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 144) fromViewControllerHandoffData];
  [v2 targetFrame];
  [*(a1 + 32) setFrame:?];

  v3 = *(a1 + 32);

  return [v3 setAlpha:0.9];
}

void *__81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke(uint64_t a1)
{
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_2;
  v23[3] = &unk_1E7104AA0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *&v4 = v2;
  *(&v4 + 1) = v3;
  v19 = *(a1 + 48);
  v20 = v4;
  v21 = *(a1 + 112);
  v5 = *(&v19 + 1);
  v24 = v20;
  v25 = v19;
  *&v6 = v21;
  *(&v6 + 1) = *(a1 + 120);
  v22 = v6;
  v7 = *(a1 + 64);
  v30 = *(a1 + 128);
  v8 = *(a1 + 72);
  v31 = *(a1 + 136);
  v37 = *(a1 + 232);
  v32 = *(a1 + 152);
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v26 = v12;
  v27 = v11;
  v33 = *(a1 + 168);
  v34 = *(a1 + 184);
  v35 = *(a1 + 200);
  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  v28 = v15;
  v29 = v22;
  v38 = *(a1 + 233);
  v36 = *(a1 + 216);
  v39 = *(a1 + 234);
  [UIView performWithoutAnimation:v23];
  v16 = *(*(*(a1 + 200) + 8) + 40);
  v17 = v16;

  return v16;
}

void __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setInCustomTransition:1];
  [*(a1 + 40) _setInCustomTransition:1];
  [*(*(a1 + 48) + 104) setBackgroundColor:0];
  [*(*(a1 + 48) + 96) setBackgroundColor:0];
  [*(*(a1 + 48) + 64) initialFrameForViewController:*(a1 + 32)];
  v2 = *(*(a1 + 112) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  if (CGRectEqualToRect(*(*(*(a1 + 112) + 8) + 32), *MEMORY[0x1E695F058]))
  {
    [*(a1 + 56) frame];
    v7 = *(*(a1 + 112) + 8);
    v7[4] = v8;
    v7[5] = v9;
    v7[6] = v10;
    v7[7] = v11;
  }

  [*(*(a1 + 48) + 64) finalFrameForViewController:*(a1 + 40)];
  v12 = *(*(a1 + 120) + 8);
  v12[4] = v13;
  v12[5] = v14;
  v12[6] = v15;
  v12[7] = v16;
  [*(a1 + 64) setFrame:{*(*(*(a1 + 120) + 8) + 32), *(*(*(a1 + 120) + 8) + 40), *(*(*(a1 + 120) + 8) + 48), *(*(*(a1 + 120) + 8) + 56)}];
  [*(a1 + 72) bounds];
  v17 = *(*(a1 + 128) + 8);
  v17[4] = v18;
  v17[5] = v19;
  v17[6] = v20;
  v17[7] = v21;
  v22 = *(*(a1 + 136) + 8);
  v23 = *(*(a1 + 128) + 8);
  v24 = *(v23 + 48);
  *(v22 + 32) = *(v23 + 32);
  *(v22 + 48) = v24;
  [*(a1 + 48) gapBetweenViews];
  *(*(*(a1 + 144) + 8) + 24) = v25;
  [*(a1 + 48) parallaxOffset];
  v27 = *(*(a1 + 48) + 56);
  v28 = *(a1 + 232);
  v29 = *(*(a1 + 152) + 8);
  v30 = *(*(a1 + 128) + 8);
  v31 = *(v30 + 48);
  *(v29 + 32) = *(v30 + 32);
  *(v29 + 48) = v31;
  v32 = *(*(a1 + 152) + 8);
  v33 = *(v32 + 48);
  if (v27 != 2)
  {
    v41 = v33 - v26 + *(*(*(a1 + 144) + 8) + 24);
    v42 = *(v32 + 32);
    if ((v28 & 1) == 0)
    {
      *(v32 + 32) = v42 - v41;
      v51 = *(*(a1 + 160) + 8);
      v52 = *(*(a1 + 136) + 8);
      v53 = *(v52 + 48);
      *(v51 + 32) = *(v52 + 32);
      *(v51 + 48) = v53;
      v39 = *(*(a1 + 160) + 8);
      v40 = *(v39 + 48);
      goto LABEL_11;
    }

    *(v32 + 32) = v42 + v41;
    v43 = *(*(a1 + 160) + 8);
    v44 = *(*(a1 + 136) + 8);
    v45 = *(v44 + 48);
    *(v43 + 32) = *(v44 + 32);
    *(v43 + 48) = v45;
    v39 = *(*(a1 + 160) + 8);
    v46 = *(v39 + 48);
LABEL_9:
    v50 = *(v39 + 32) - (v46 + *(*(*(a1 + 144) + 8) + 24));
    goto LABEL_12;
  }

  v34 = v33 + *(*(*(a1 + 144) + 8) + 24);
  v35 = *(v32 + 32);
  if ((v28 & 1) == 0)
  {
    *(v32 + 32) = v35 + v34;
    v47 = *(*(a1 + 160) + 8);
    v48 = *(*(a1 + 136) + 8);
    v49 = *(v48 + 48);
    *(v47 + 32) = *(v48 + 32);
    *(v47 + 48) = v49;
    v39 = *(*(a1 + 160) + 8);
    v46 = *(v39 + 48) - v26;
    goto LABEL_9;
  }

  *(v32 + 32) = v35 - v34;
  v36 = *(*(a1 + 160) + 8);
  v37 = *(*(a1 + 136) + 8);
  v38 = *(v37 + 48);
  *(v36 + 32) = *(v37 + 32);
  *(v36 + 48) = v38;
  v39 = *(*(a1 + 160) + 8);
  v40 = *(v39 + 48) - v26;
LABEL_11:
  v50 = *(v39 + 32) + v40 + *(*(*(a1 + 144) + 8) + 24);
LABEL_12:
  *(v39 + 32) = v50;
  v54 = *(a1 + 80);
  if (v54)
  {
    [v54 frame];
  }

  else
  {
    v59 = *(*(a1 + 128) + 8);
    v55 = v59[4];
    v56 = v59[5];
    v57 = v59[6];
    v58 = v59[7];
  }

  [*(*(a1 + 48) + 96) setFrame:{v55, v56, v57, v58}];
  v60 = *(a1 + 88);
  if (v60)
  {
    [v60 frame];
  }

  else
  {
    v65 = *(*(a1 + 160) + 8);
    v61 = v65[4];
    v62 = v65[5];
    v63 = v65[6];
    v64 = v65[7];
  }

  [*(*(a1 + 48) + 104) setFrame:{v61, v62, v63, v64}];
  v66 = *(a1 + 48);
  if (*(v66 + 120))
  {
    goto LABEL_29;
  }

  v67 = [_UIParallaxDimmingView alloc];
  v68 = *(*(a1 + 136) + 8);
  v69 = [*(a1 + 48) overrideDimmingColor];
  v70 = [(_UIParallaxDimmingView *)v67 initWithFrame:v69 overrideDimmingColor:v68[4], v68[5], v68[6], v68[7]];
  v71 = *(a1 + 48);
  v72 = *(v71 + 88);
  *(v71 + 88) = v70;

  if (*(*(a1 + 48) + 56) == 2)
  {
    v73 = *(a1 + 88);
    if (!v73)
    {
      v74 = 1.0;
      goto LABEL_24;
    }

LABEL_23:
    [v73 dimmingAmount];
LABEL_24:
    *(*(*(a1 + 168) + 8) + 24) = v74;
    v75 = 1.0;
    if (*(*(a1 + 48) + 56) == 2)
    {
      v75 = 0.0;
    }

    goto LABEL_26;
  }

  v73 = *(a1 + 80);
  if (v73)
  {
    goto LABEL_23;
  }

  v75 = 1.0;
LABEL_26:
  *(*(*(a1 + 176) + 8) + 24) = v75;
  v76 = *(*(*(a1 + 168) + 8) + 24);
  v77 = [*(a1 + 48) contentDimmingView];
  [v77 setBackgroundDimmingAmount:v76];

  v78 = [_UIParallaxDimmingView alloc];
  v79 = 64;
  if (*(*(a1 + 48) + 56) == 2)
  {
    v79 = 56;
  }

  v80 = [(_UIParallaxDimmingView *)v78 initViewWrappingView:*(a1 + v79) withLeftBorder:*(a1 + 232) shouldReverseLayoutDirection:9.0];
  v81 = *(a1 + 48);
  v82 = *(v81 + 80);
  *(v81 + 80) = v80;

  *(*(*(a1 + 184) + 8) + 24) = 0x3FF0000000000000;
  *(*(*(a1 + 192) + 8) + 24) = 0;
  v66 = *(a1 + 48);
LABEL_29:
  [*(v66 + 80) _updateLeftEdgeFade:*(a1 + 232)];
  v83 = *(a1 + 48);
  if (*(v83 + 56) == 2)
  {
    objc_storeStrong((*(*(a1 + 200) + 8) + 40), *(a1 + 64));
    v84 = *(a1 + 48);
    v85 = *(v84 + 120);
    v86 = (v84 + 80);
    if (v85)
    {
      v86 = (a1 + 56);
    }

    objc_storeStrong((*(*(a1 + 208) + 8) + 40), *v86);
    [*(a1 + 96) insertSubview:*(*(*(a1 + 200) + 8) + 40) atIndex:0];
    [*(a1 + 104) insertSubview:*(*(*(a1 + 208) + 8) + 40) atIndex:0];
    [*(a1 + 72) addSubview:*(*(a1 + 48) + 104)];
    v87 = *(a1 + 48);
    if (!v87[15])
    {
      [*(a1 + 72) addSubview:v87[11]];
      v87 = *(a1 + 48);
    }

    v88 = v87 + 12;
  }

  else
  {
    v89 = *(v83 + 120);
    v90 = (v83 + 80);
    if (v89)
    {
      v90 = (a1 + 64);
    }

    objc_storeStrong((*(*(a1 + 200) + 8) + 40), *v90);
    objc_storeStrong((*(*(a1 + 208) + 8) + 40), *(a1 + 56));
    [*(a1 + 96) insertSubview:*(*(*(a1 + 200) + 8) + 40) atIndex:0];
    [*(a1 + 104) insertSubview:*(*(*(a1 + 208) + 8) + 40) atIndex:0];
    [*(a1 + 72) addSubview:*(*(a1 + 48) + 96)];
    v91 = *(a1 + 48);
    if (!v91[15])
    {
      [*(a1 + 72) addSubview:v91[11]];
      v91 = *(a1 + 48);
    }

    v88 = v91 + 13;
  }

  [*(a1 + 72) addSubview:*v88];
  v92 = *(a1 + 48);
  if (((*(a1 + 233) & 1) != 0 || *(v92 + 48) == 1) && !*(v92 + 120))
  {
    v93 = *(v92 + 56);
    [*(a1 + 72) bounds];
    v94 = *(*(a1 + 216) + 8);
    v94[4] = v95;
    v94[5] = v96;
    v94[6] = v97;
    v94[7] = v98;
    if (v93 == 2)
    {
      *(*(*(a1 + 216) + 8) + 48) = CGRectGetMinX(*(*(*(a1 + 128) + 8) + 32));
      if (*(a1 + 232) == 1)
      {
        *(*(*(a1 + 216) + 8) + 32) = *(*(*(a1 + 136) + 8) + 48);
      }

      [*(a1 + 72) bounds];
      v99 = *(*(a1 + 224) + 8);
      v99[4] = v100;
      v99[5] = v101;
      v99[6] = v102;
      v99[7] = v103;
      v104 = [[UIView alloc] initWithFrame:*(*(*(a1 + 216) + 8) + 32), *(*(*(a1 + 216) + 8) + 40), *(*(*(a1 + 216) + 8) + 48), *(*(*(a1 + 216) + 8) + 56)];
      v105 = *(a1 + 48);
      v106 = *(v105 + 112);
      *(v105 + 112) = v104;

      [*(a1 + 72) insertSubview:*(*(a1 + 48) + 112) belowSubview:*(*(a1 + 48) + 104)];
      [*(*(a1 + 48) + 112) addSubview:*(*(a1 + 48) + 104)];
      if (*(a1 + 232) == 1)
      {
        [*(*(a1 + 48) + 104) frame];
        [*(*(a1 + 48) + 104) setFrame:v107 - v108];
      }
    }

    else
    {
      *(*(*(a1 + 216) + 8) + 48) = CGRectGetMinX(*(*(*(a1 + 160) + 8) + 32));
      [*(a1 + 72) bounds];
      v109 = *(*(a1 + 224) + 8);
      v109[4] = v110;
      v109[5] = v111;
      v109[6] = v112;
      v109[7] = v113;
      *(*(*(a1 + 224) + 8) + 48) = 0;
      if (*(a1 + 232) == 1)
      {
        *(*(*(a1 + 224) + 8) + 32) = *(*(*(a1 + 128) + 8) + 48);
      }

      v114 = [[UIView alloc] initWithFrame:*(*(*(a1 + 216) + 8) + 32), *(*(*(a1 + 216) + 8) + 40), *(*(*(a1 + 216) + 8) + 48), *(*(*(a1 + 216) + 8) + 56)];
      v115 = *(a1 + 48);
      v116 = *(v115 + 112);
      *(v115 + 112) = v114;

      [*(a1 + 72) insertSubview:*(*(a1 + 48) + 112) belowSubview:*(*(a1 + 48) + 96)];
      [*(*(a1 + 48) + 112) addSubview:*(*(a1 + 48) + 96)];
      if (*(a1 + 232) == 1)
      {
        *(*(*(a1 + 152) + 8) + 32) = *(*(*(a1 + 152) + 8) + 32) - *(*(*(a1 + 152) + 8) + 48);
      }
    }

    [*(*(a1 + 48) + 112) addSubview:*(*(a1 + 48) + 88)];
    [*(*(a1 + 48) + 112) setClipsToBounds:1];
    v92 = *(a1 + 48);
  }

  v117 = *(v92 + 56) == 2;
  v118 = 40;
  if (v117)
  {
    v118 = 32;
  }

  v134 = *(a1 + v118);
  if (*(a1 + 234) == 1)
  {
    v119 = *(a1 + 48);
    if (!*(v119 + 120) && (*(v119 + 48) & 1) == 0)
    {
      v120 = [v134 view];
      v121 = [v120 _isBackgroundSolidColor];

      if ((v121 & 1) == 0)
      {
        v122 = [*(*(a1 + 48) + 144) captureBackdropView];
        v123 = v122;
        if (v122 || (v123 = *(*(a1 + 48) + 40)) != 0)
        {
          v124 = v123;
        }

        else
        {
          v124 = objc_alloc_init(_UIVisualEffectBackdropView);
        }

        v125 = v124;

        v126 = *(a1 + 48);
        v127 = *(v126 + 40);
        *(v126 + 40) = v125;
        v128 = v125;

        [(_UIVisualEffectBackdropView *)v128 setRenderMode:1];
        [*(a1 + 72) bounds];
        [(UIView *)v128 setFrame:?];
        v129 = [(_UIVisualEffectBackdropView *)v128 captureGroup];
        v130 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_UINavigationParallaxTransition-%p", *(a1 + 48)];
        [v129 setGroupName:v130];

        [*(a1 + 72) insertSubview:v128 atIndex:0];
        v131 = *(a1 + 48);
        v132 = 104;
        if (*(v131 + 56) == 2)
        {
          v132 = 96;
        }

        [*(v131 + v132) setBackdropCaptureGroup:v129];
      }
    }
  }

  v133 = [(UIViewController *)*(a1 + 40) _parentViewController];

  if (v133)
  {
    [*(*(a1 + 48) + 64) finalFrameForViewController:*(a1 + 40)];
    [*(a1 + 40) _updateContentOverlayInsetsFromParentForNavigationTransitionWithFinalRectInParent:?];
  }

  [*(a1 + 104) bounds];
  [*(*(a1 + 48) + 152) setFrame:?];
  [*(a1 + 104) addSubview:*(*(a1 + 48) + 152)];
  [*(a1 + 96) bounds];
  [*(*(a1 + 48) + 160) setFrame:?];
  [*(a1 + 96) addSubview:*(*(a1 + 48) + 160)];
  if (_UISolariumEnabled() && *(a1 + 235) == 1)
  {
    [*(a1 + 96) layoutIfNeeded];
  }
}

void __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_3(uint64_t a1)
{
  v12 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v12.minimum;
  maximum = v12.maximum;
  preferred = v12.preferred;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_4;
  v9[3] = &unk_1E7104AF0;
  v9[4] = *(a1 + 32);
  v11 = *(a1 + 56);
  v8 = *(a1 + 40);
  v5 = v8;
  v10 = v8;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048616 updateReason:v9 animations:COERCE_DOUBLE(__PAIR64__(DWORD1(v8), LODWORD(minimum))), v6, v7];
}

void __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 104) setFrame:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56)}];
  [*(*(a1 + 32) + 96) setFrame:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56)}];
  v2 = *(a1 + 32);
  if (v2[14])
  {
    [v2[14] setFrame:{*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 64) + 8) + 48), *(*(*(a1 + 64) + 8) + 56)}];
    v2 = *(a1 + 32);
  }

  v3 = [v2 contentDimmingView];
  [v3 crossFade];

  v4 = [*(a1 + 32) borderDimmingView];
  [v4 crossFade];

  v5 = [*(a1 + 40) _hostingNavigationBar];

  if (v5)
  {
    v6 = [*(a1 + 40) _hostingNavigationBar];
    [v6 setNeedsLayout];
  }
}

void __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_5(id *a1)
{
  v2 = [a1[4] transitionWasCancelled];
  v3 = v2;
  v4 = 12;
  if (v2)
  {
    v4 = 11;
  }

  v5 = 6;
  if (v2)
  {
    v5 = 5;
  }

  [a1[v5] setFrame:{*(*(a1[v4] + 1) + 32), *(*(a1[v4] + 1) + 40), *(*(a1[v4] + 1) + 48), *(*(a1[v4] + 1) + 56)}];
  v6 = [a1[5] layer];
  LODWORD(v7) = 1.0;
  [v6 setSpeed:v7];

  v8 = [a1[6] layer];
  LODWORD(v9) = 1.0;
  [v8 setSpeed:v9];

  [a1[7] _setInCustomTransition:0];
  [a1[8] _setInCustomTransition:0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_6;
  v22[3] = &unk_1E70F6228;
  v23 = a1[9];
  v10 = a1[5];
  v11 = a1[9];
  v12 = a1[10];
  v24 = v10;
  v25 = v12;
  v13 = [v11 _window];
  v14 = [v13 windowScene];
  [UIView _performBlockWithoutAutomaticallyUpdatingFirstResponder:v22 forScene:v14];

  v15 = [a1[6] _safeAreaInsetsFrozen];
  if (v3 && _UIViewDirtiesDelegateContentInsetsForGeometryChange())
  {
    [a1[6] _setSafeAreaInsetsFrozen:1];
  }

  [a1[9] insertSubview:a1[6] belowSubview:*(a1[10] + 13)];
  [*(a1[10] + 13) removeFromSuperview];
  [*(a1[10] + 12) removeFromSuperview];
  v16 = a1[10];
  if (!v16[15])
  {
    v17 = [v16 contentDimmingView];
    [v17 removeFromSuperview];

    v18 = [a1[10] borderDimmingView];
    [v18 removeFromSuperview];

    v19 = a1[10];
    if (v19[14])
    {
      [v19[14] removeFromSuperview];
      v19 = a1[10];
    }

    [v19 setClipUnderView:0];
    [a1[10] setBorderDimmingView:0];
    [a1[10] setContentDimmingView:0];
    v16 = a1[10];
  }

  [v16[5] removeFromSuperview];
  v20 = a1[10];
  v21 = v20[5];
  v20[5] = 0;

  [a1[4] completeTransition:v3 ^ 1u];
  [a1[10] setTransitionContext:0];
  [a1[6] _setSafeAreaInsetsFrozen:v15 updateForUnfreeze:0];
}

uint64_t __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_7(uint64_t a1, double a2)
{
  v15 = CAFrameRateRangeMake(80.0, 120.0, 0.0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_8;
  v7[3] = &unk_1E7104B40;
  v14 = a2;
  v4 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = v4;
  v5 = *(a1 + 80);
  v10 = *(a1 + 64);
  v11 = v5;
  v12 = *(a1 + 96);
  v13 = *(a1 + 112);
  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048616 updateReason:v7 animations:*&v15.minimum, *&v15.maximum, *&v15.preferred];
}

void __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_8(uint64_t a1)
{
  v46 = *(a1 + 120);
  v2 = *(*(a1 + 40) + 8);
  v3 = *(*(a1 + 48) + 8);
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v67.size.height = v2[7];
  v7 = v3[4];
  v8 = v3[5];
  rect = v67.size.height;
  v9 = v3[6];
  v10 = v3[7];
  v59 = v7;
  v62 = v10;
  v67.origin.x = v4;
  v67.origin.y = v5;
  v67.size.width = v6;
  MinX = CGRectGetMinX(v67);
  v68.origin.x = v7;
  v68.origin.y = v8;
  v68.size.width = v9;
  v68.size.height = v10;
  v51 = (1.0 - v46) * MinX + v46 * CGRectGetMinX(v68);
  v69.origin.x = v4;
  v69.origin.y = v5;
  v69.size.width = v6;
  v69.size.height = rect;
  MinY = CGRectGetMinY(v69);
  v70.origin.x = v7;
  v70.origin.y = v8;
  v70.size.width = v9;
  v70.size.height = v10;
  v50 = (1.0 - v46) * MinY + v46 * CGRectGetMinY(v70);
  v71.origin.x = v4;
  v71.origin.y = v5;
  v71.size.width = v6;
  v71.size.height = rect;
  Width = CGRectGetWidth(v71);
  v72.origin.x = v7;
  v72.origin.y = v8;
  v72.size.width = v9;
  v72.size.height = v10;
  v13 = (1.0 - v46) * Width + v46 * CGRectGetWidth(v72);
  v73.origin.x = v4;
  v73.origin.y = v5;
  v73.size.width = v6;
  v73.size.height = rect;
  Height = CGRectGetHeight(v73);
  v74.origin.y = v8;
  v74.origin.x = v59;
  v74.size.width = v9;
  v74.size.height = v62;
  [*(*(a1 + 32) + 104) setFrame:{v51, v50, v13, (1.0 - v46) * Height + v46 * CGRectGetHeight(v74)}];
  v15 = *(*(a1 + 56) + 8);
  v16 = *(*(a1 + 64) + 8);
  v18 = v15[4];
  v17 = v15[5];
  v75.size.width = v15[6];
  v19 = v15[7];
  v60 = v75.size.width;
  v20 = v16[4];
  v21 = v16[5];
  v23 = v16[6];
  v22 = v16[7];
  v63 = *(a1 + 120);
  v75.origin.x = v18;
  v75.origin.y = v17;
  v75.size.height = v19;
  v47 = v19;
  v24 = CGRectGetMinX(v75);
  v76.origin.x = v20;
  v45 = v21;
  v76.origin.y = v21;
  v76.size.width = v23;
  v76.size.height = v22;
  v57 = (1.0 - v63) * v24 + v63 * CGRectGetMinX(v76);
  v77.origin.x = v18;
  v77.origin.y = v17;
  v77.size.width = v60;
  v77.size.height = v19;
  v25 = CGRectGetMinY(v77);
  v78.origin.x = v20;
  v78.origin.y = v21;
  v78.size.width = v23;
  v78.size.height = v22;
  recta = (1.0 - v63) * v25 + v63 * CGRectGetMinY(v78);
  v79.origin.x = v18;
  v79.origin.y = v17;
  v79.size.width = v60;
  v79.size.height = v47;
  v26 = CGRectGetWidth(v79);
  v80.origin.x = v20;
  v80.origin.y = v21;
  v80.size.width = v23;
  v80.size.height = v22;
  v52 = (1.0 - v63) * v26 + v63 * CGRectGetWidth(v80);
  v81.origin.x = v18;
  v81.origin.y = v17;
  v81.size.width = v60;
  v81.size.height = v47;
  v27 = CGRectGetHeight(v81);
  v82.origin.x = v20;
  v82.origin.y = v21;
  v82.size.width = v23;
  v82.size.height = v22;
  [*(*(a1 + 32) + 96) setFrame:{v57, recta, v52, (1.0 - v63) * v27 + v63 * CGRectGetHeight(v82)}];
  v28 = *(a1 + 32);
  if (v28[14])
  {
    v29 = *(*(a1 + 72) + 8);
    v30 = *(*(a1 + 80) + 8);
    v32 = v29[4];
    v31 = v29[5];
    v83.size.width = v29[6];
    v33 = v29[7];
    v61 = v83.size.width;
    v34 = v30[4];
    v35 = v30[5];
    v37 = v30[6];
    v36 = v30[7];
    v64 = *(a1 + 120);
    v83.origin.x = v32;
    v83.origin.y = v31;
    v83.size.height = v33;
    v48 = v33;
    v38 = CGRectGetMinX(v83);
    v84.origin.x = v34;
    v45 = v35;
    v84.origin.y = v35;
    v84.size.width = v37;
    v84.size.height = v36;
    v58 = (1.0 - v64) * v38 + v64 * CGRectGetMinX(v84);
    v85.origin.x = v32;
    v85.origin.y = v31;
    v85.size.width = v61;
    v85.size.height = v33;
    v39 = CGRectGetMinY(v85);
    v86.origin.x = v34;
    v86.origin.y = v35;
    v86.size.width = v37;
    v86.size.height = v36;
    rectb = (1.0 - v64) * v39 + v64 * CGRectGetMinY(v86);
    v87.origin.x = v32;
    v87.origin.y = v31;
    v87.size.width = v61;
    v87.size.height = v48;
    v40 = CGRectGetWidth(v87);
    v88.origin.x = v34;
    v88.origin.y = v35;
    v88.size.width = v37;
    v88.size.height = v36;
    v53 = (1.0 - v64) * v40 + v64 * CGRectGetWidth(v88);
    v89.origin.x = v32;
    v89.origin.y = v31;
    v89.size.width = v61;
    v89.size.height = v48;
    v41 = CGRectGetHeight(v89);
    v90.origin.x = v34;
    v90.origin.y = v35;
    v90.size.width = v37;
    v90.size.height = v36;
    [*(*(a1 + 32) + 112) setFrame:{v58, rectb, v53, (1.0 - v64) * v41 + v64 * CGRectGetHeight(v90)}];
    v28 = *(a1 + 32);
  }

  v42 = (1.0 - *(a1 + 120)) * *(*(*(a1 + 88) + 8) + 24) + *(a1 + 120) * *(*(*(a1 + 96) + 8) + 24);
  v43 = [v28 contentDimmingView];
  [v43 setBackgroundDimmingAmount:v42];

  v44 = (1.0 - *(a1 + 120)) * *(*(*(a1 + 104) + 8) + 24) + *(a1 + 120) * *(*(*(a1 + 112) + 8) + 24);
  v65 = [*(a1 + 32) borderDimmingView];
  [v65 setBackgroundDimmingAmount:v44];
}

void __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_9(uint64_t a1)
{
  v10 = CAFrameRateRangeMake(80.0, 120.0, 0.0);
  minimum = v10.minimum;
  maximum = v10.maximum;
  preferred = v10.preferred;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_10;
  v8[3] = &unk_1E70F3590;
  v9 = *(a1 + 32);
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048616 updateReason:v8 animations:v5, v6, v7];
}

uint64_t __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_11(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_self();
  if (fluidPresentationTransitionsEnabled == 1)
  {
    [*(a1 + 32) transitionDuration:*(a1 + 40)];
    v8 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:v7];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_14;
    v9[3] = &unk_1E7103030;
    v10 = v5;
    [UIView _animateUsingSpringBehavior:v8 tracking:0 animations:v6 completion:v9];

    v6 = v10;
  }

  else
  {
    [*(a1 + 32) transitionDuration:*(a1 + 40)];
    [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:*(a1 + 48) options:v6 animations:v5 completion:?];
  }
}

uint64_t __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_15(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

@end