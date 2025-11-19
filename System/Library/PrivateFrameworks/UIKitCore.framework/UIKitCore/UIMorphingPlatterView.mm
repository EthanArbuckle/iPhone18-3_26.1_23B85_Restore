@interface UIMorphingPlatterView
@end

@implementation UIMorphingPlatterView

void __54___UIMorphingPlatterView__prepareAnimatableProperties__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _modelUpdates];
}

void __54___UIMorphingPlatterView__prepareAnimatableProperties__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (![WeakRetained shouldMorphContents])
  {
    goto LABEL_13;
  }

  v1 = [WeakRetained platterWidth];
  [v1 presentationValue];
  v3 = v2;

  v4 = [WeakRetained platterHeight];
  [v4 presentationValue];
  v6 = v5;

  if (([WeakRetained allowsElasticMorph] & 1) == 0)
  {
    if ([WeakRetained preferredMorphingAxis] == 1)
    {
      v7 = [WeakRetained platterHeight];
      v8 = [WeakRetained platterWidth];
      v6 = __54___UIMorphingPlatterView__prepareAnimatableProperties__block_invoke_3(v7, v8);
LABEL_7:

      goto LABEL_8;
    }

    if ([WeakRetained preferredMorphingAxis] == 2)
    {
      v7 = [WeakRetained platterWidth];
      v8 = [WeakRetained platterHeight];
      v3 = __54___UIMorphingPlatterView__prepareAnimatableProperties__block_invoke_3(v7, v8);
      goto LABEL_7;
    }
  }

LABEL_8:
  v9 = [WeakRetained collapsedClippingView];
  v10 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v3, v6}];
  [v9 _setPresentationValue:v10 forKey:@"bounds"];

  v11 = [WeakRetained expandedClippingView];
  v12 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v3, v6}];
  [v11 _setPresentationValue:v12 forKey:@"bounds"];

  v13 = [WeakRetained platterWidth];
  [v13 presentationValue];
  v15 = v14 * 0.5;
  v16 = [WeakRetained platterHeight];
  [v16 presentationValue];
  v18 = v17 * 0.5;

  v19 = [WeakRetained collapsedClippingView];
  v20 = [MEMORY[0x1E696B098] valueWithCGPoint:{v15, v18}];
  [v19 _setPresentationValue:v20 forKey:@"position"];

  v21 = [WeakRetained expandedClippingView];
  v22 = [MEMORY[0x1E696B098] valueWithCGPoint:{v15, v18}];
  [v21 _setPresentationValue:v22 forKey:@"position"];

  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = v3;
  v38.size.height = v6;
  v23 = CGRectGetWidth(v38) * 0.5;
  v24 = [WeakRetained collapsedTransformView];
  v25 = [MEMORY[0x1E696B098] valueWithCGPoint:{v23, 0.0}];
  [v24 _setPresentationValue:v25 forKey:@"position"];

  v26 = [WeakRetained expandedTransformView];
  v27 = [MEMORY[0x1E696B098] valueWithCGPoint:{v23, 0.0}];
  [v26 _setPresentationValue:v27 forKey:@"position"];

  v28 = [WeakRetained expansionProgress];
  [v28 presentationValue];
  v30 = v29;

  if (([WeakRetained alwaysCompact] & 1) == 0)
  {
    v31 = fmax(fmin(v30 / 0.65, 1.0), 0.0);
    v32 = [WeakRetained collapsedClippingView];
    v33 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - v31];
    [v32 _setPresentationValue:v33 forKey:@"opacity"];

    if ([WeakRetained bothViewsAreLikelyOpaque])
    {
      v31 = 1.0;
    }

    v34 = [WeakRetained expandedClippingView];
    v35 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
    [v34 _setPresentationValue:v35 forKey:@"opacity"];
  }

  [WeakRetained _updateShadowsWithExpansionProgress:1 contentBounds:v30 center:0.0 forPresentation:{0.0, v3, v6, v15, v18}];
LABEL_13:
}

double __54___UIMorphingPlatterView__prepareAnimatableProperties__block_invoke_3(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 lastModelValueChangeWasPositive];
  [v4 presentationValue];
  v7 = v6;
  [v4 presentationValue];
  v9 = v8;
  [v4 value];
  v11 = v10;

  if (v5 != v9 < v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  v13 = v7 / v12;
  [v3 value];
  v15 = v14 * v13;
  [v3 presentationValue];
  v16 = [v3 lastModelValueChangeWasPositive];
  [v3 presentationValue];
  if (v16 == v17 < v15)
  {
    v15 = v17;
  }

  return v15;
}

void __43___UIMorphingPlatterView__updatePathShadow__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pathShadowView];

  if (v2)
  {
    v3 = [*(a1 + 32) pathShadowView];
    [v3 removeFromSuperview];

    [*(a1 + 32) setPathShadowView:0];
  }

  v4 = [*(a1 + 32) collapsedPreview];
  v5 = [v4 parameters];

  if ([v5 appliesShadow])
  {
    v6 = [*(a1 + 32) collapsedPreview];
    v7 = [v6 view];

    [v7 bounds];
    x = v8;
    y = v10;
    width = v12;
    height = v14;
    v16 = [v5 effectiveShadowPath];
    v17 = [v16 copy];

    if (v17)
    {
      v18 = v5;
      v19 = [v18 effectiveShadowPath];
      v20 = [v18 visiblePath];

      if (v19 == v20 && ([v19 _isRoundedRect] & 1) != 0)
      {
        [v19 _cornerRadius];
        v22 = v21;

        if (v22 <= 20.0)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

LABEL_13:
      v31 = [v5 effectiveShadowPath];
      v32 = [v5 visiblePath];

      if (v31 == v32)
      {
        [v17 bounds];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;
        CGAffineTransformMakeTranslation(&v89, -v33, -v35);
        [v17 applyTransform:&v89];
        v91.origin.x = v34;
        v91.origin.y = v36;
        v91.size.width = v38;
        v91.size.height = v40;
        v92 = CGRectOffset(v91, v34, v36);
        x = v92.origin.x;
        y = v92.origin.y;
        width = v92.size.width;
        height = v92.size.height;
      }

      [v17 bounds];
      if (!CGRectIsEmpty(v93))
      {
        v41 = [*(a1 + 32) shadowSettings];

        if (v41)
        {
          v42 = [v17 CGPath];
          v43 = [*(a1 + 32) layer];
          [v43 setShadowPath:v42];

          v44 = [*(a1 + 32) shadowSettings];
          v45 = [v44 color];
          v46 = [v45 CGColor];
          v47 = [*(a1 + 32) layer];
          [v47 setShadowColor:v46];

          v48 = [*(a1 + 32) shadowSettings];
          [v48 offset];
          v50 = v49;
          v52 = v51;
          v53 = [*(a1 + 32) layer];
          [v53 setShadowOffset:{v50, v52}];

          v54 = [*(a1 + 32) shadowSettings];
          [(_UIPlatterSoftShadowView *)v54 radius];
          v56 = v55;
          v57 = [*(a1 + 32) layer];
          [v57 setShadowRadius:v56];
        }

        else
        {
          v54 = [[_UIPlatterSoftShadowView alloc] initWithFrame:v17 shadowPath:x, y, width, height];
          v58 = [*(a1 + 32) collapsedPreview];
          [v58 size];
          v60 = v59 * 0.5;
          v61 = [*(a1 + 32) collapsedPreview];
          [v61 size];
          v63 = v62 * 0.5;

          v94.origin.x = x;
          v94.origin.y = y;
          v94.size.width = width;
          v94.size.height = height;
          v64 = v60 / CGRectGetWidth(v94);
          v95.origin.x = x;
          v95.origin.y = y;
          v95.size.width = width;
          v95.size.height = height;
          [(UIView *)v54 setAnchorPoint:v64, v63 / CGRectGetHeight(v95)];
          [(UIView *)v54 bounds];
          v66 = v65;
          recta.origin.x = v65;
          recta.origin.y = v67;
          v69 = v68;
          v71 = v70;
          [*(a1 + 32) bounds];
          v72 = v96.origin.x;
          v73 = v96.origin.y;
          v74 = v96.size.width;
          v75 = v96.size.height;
          v76 = CGRectGetWidth(v96);
          v97.origin.x = v66;
          v97.origin.y = v69;
          v97.size.width = v71;
          v97.size.height = recta.origin.y;
          v77 = v76 / CGRectGetWidth(v97);
          v98.origin.x = v72;
          v98.origin.y = v73;
          v98.size.width = v74;
          v98.size.height = v75;
          v78 = CGRectGetHeight(v98);
          v99.origin.x = recta.origin.x;
          v99.origin.y = v69;
          v99.size.width = v71;
          v99.size.height = recta.origin.y;
          v79 = CGRectGetHeight(v99);
          CGAffineTransformMakeScale(&recta.size, v77, v78 / v79);
          *&v89.a = recta.size;
          *&v89.c = v87;
          *&v89.tx = v88;
          [(UIView *)v54 setTransform:&v89];
          [*(a1 + 32) bounds];
          [(UIView *)v54 setCenter:v81 + v80 * 0.5, v83 + v82 * 0.5];
          if ([v5 _previewMode] == 5)
          {
            [(_UIPlatterSoftShadowView *)v54 setNeedsPunchOut:0];
          }

          else
          {
            v84 = [v5 backgroundColor];
            -[_UIPlatterSoftShadowView setNeedsPunchOut:](v54, "setNeedsPunchOut:", [v84 _isOpaque] ^ 1);
          }

          [*(a1 + 32) insertSubview:v54 atIndex:0];
          [*(a1 + 32) setPathShadowView:v54];
          if (*(a1 + 40))
          {
            v85 = 0.0;
          }

          else
          {
            v85 = 1.0;
          }

          v57 = [*(a1 + 32) pathShadowView];
          [v57 setAlpha:v85];
        }
      }

      goto LABEL_27;
    }

LABEL_8:
    v90 = 0;
    v89.a = 0.0;
    v23 = [*(a1 + 32) alwaysCompact];
    v24 = *(a1 + 32);
    if (v23)
    {
      [v24 _expandedCornerRadius:&v90 maskedCorners:&v89 ignoreLiftScale:1];
    }

    else
    {
      [v24 _collapsedCornerRadius:&v90 maskedCorners:&v89];
    }

    v26 = v25;
    v27 = [*(a1 + 32) collapsedPreview];
    [v27 size];
    v30 = [UIBezierPath _roundedRectBezierPath:*&v89.a withRoundedCorners:16 cornerRadius:v90 segments:0.0 legacyCorners:0.0, v28, v29, v26];

    v17 = v30;
    goto LABEL_13;
  }

LABEL_27:
}

void __99___UIMorphingPlatterView__updateShadowsWithExpansionProgress_contentBounds_center_forPresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = a3;
  v5 = a2;
  [v22 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v5 integerValue];

  if (v14 == 3)
  {
    v7 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(a1 + 56);
    v13 = *(a1 + 64);
  }

  else if (v14 == 2)
  {
    [v22 frameWithContentWithFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    v11 = v15;
    v13 = v16;
    v9 = 0.0;
    v7 = 0.0;
  }

  if (v14 == [*(a1 + 32) expandedShadowStyle])
  {
    v17 = 72;
  }

  else
  {
    if (v14 != [*(a1 + 32) collapsedShadowStyle])
    {
      if ([*(a1 + 32) expanded])
      {
        v18 = 1.0 - *(a1 + 88);
      }

      else
      {
        v18 = *(a1 + 88);
      }

      goto LABEL_13;
    }

    v17 = 80;
  }

  v18 = *(a1 + v17);
LABEL_13:
  if (*(a1 + 112) == 1)
  {
    v19 = [MEMORY[0x1E696B098] valueWithCGRect:{v7, v9, v11, v13}];
    [v22 _setPresentationValue:v19 forKey:@"bounds"];

    v20 = [MEMORY[0x1E696B098] valueWithCGPoint:{*(a1 + 96), *(a1 + 104)}];
    [v22 _setPresentationValue:v20 forKey:@"position"];

    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    [v22 _setPresentationValue:v21 forKey:@"opacity"];
  }

  else
  {
    [v22 setBounds:{v7, v9, v11, v13}];
    [v22 setCenter:{*(a1 + 96), *(a1 + 104)}];
    [v22 setAlpha:v18];
  }
}

@end