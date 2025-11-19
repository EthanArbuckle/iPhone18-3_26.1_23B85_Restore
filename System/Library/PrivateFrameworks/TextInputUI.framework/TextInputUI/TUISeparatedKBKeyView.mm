@interface TUISeparatedKBKeyView
- (TUISeparatedKBKeyView)initWithKey:(id)a3;
- (id)_pressRingLayer;
- (void)_addGlassEffect;
- (void)_addShadowEffect;
- (void)_startStateTransitionAnimationsFrom:(int)a3 to:(int)a4;
- (void)updateStateFrom:(int)a3 to:(int)a4;
@end

@implementation TUISeparatedKBKeyView

- (void)_startStateTransitionAnimationsFrom:(int)a3 to:(int)a4
{
  if (a3 != a4)
  {
    v56 = v11;
    v57 = v10;
    v58 = v9;
    v59 = v8;
    v60 = v7;
    v61 = v6;
    v62 = v4;
    v63 = v5;
    v12 = a4;
    v13 = a3;
    v15 = [(TUISeparatedKBKeyView *)self layer];
    [(TUISeparatedKBKeyView *)self bounds];
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    v20 = CGRectGetHeight(v64);
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = height;
    v21 = CGRectGetWidth(v65);
    v22 = vabdd_f64(v21, v20);
    if ((v12 & 4) != 0)
    {
      v36 = v21;
      CATransform3DMakeTranslation(&v55, 0.0, 0.0, 0.0);
      v54 = v55;
      [(TUISeparatedKBKeyView *)self setTransform3D:&v54];
      [v15 setValue:&unk_1F03D8CD8 forKeyPath:@"separatedOptions.separatedThickness"];
      [v15 removeAllAnimations];
      v37 = (v20 + 4.0) / v20;
      v23 = [(TUISeparatedKBKeyView *)self _pressRingLayer];
      [v23 removeAllAnimations];
      if (v22 >= 2.22044605e-16)
      {
        v38 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale.x"];
        [v38 setFromValue:&unk_1F03D92E8];
        v42 = [MEMORY[0x1E696AD98] numberWithDouble:(v36 + 4.0) / v36];
        [v38 setToValue:v42];

        [v38 setDuration:0.100000001];
        v40 = *MEMORY[0x1E69797E8];
        [v38 setFillMode:*MEMORY[0x1E69797E8]];
        [v38 setRemovedOnCompletion:0];
        v43 = *MEMORY[0x1E6979ED0];
        v44 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
        [v38 setTimingFunction:v44];

        v45 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale.y"];
        [v45 setFromValue:&unk_1F03D92E8];
        v46 = [MEMORY[0x1E696AD98] numberWithDouble:v37];
        [v45 setToValue:v46];

        [v45 setDuration:0.100000001];
        [v45 setFillMode:v40];
        [v45 setRemovedOnCompletion:0];
        v47 = [MEMORY[0x1E69793D0] functionWithName:v43];
        [v45 setTimingFunction:v47];

        [v23 addAnimation:v38 forKey:@"touch down scale X"];
        [v23 addAnimation:v45 forKey:@"touch down scale Y"];
      }

      else
      {
        v38 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale"];
        [v38 setFromValue:&unk_1F03D92E8];
        v39 = [MEMORY[0x1E696AD98] numberWithDouble:v37];
        [v38 setToValue:v39];

        [v38 setDuration:0.100000001];
        v40 = *MEMORY[0x1E69797E8];
        [v38 setFillMode:*MEMORY[0x1E69797E8]];
        [v38 setRemovedOnCompletion:0];
        v41 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
        [v38 setTimingFunction:v41];

        [v23 addAnimation:v38 forKey:@"touch down scale"];
      }

      LODWORD(v48) = 1032805417;
      [v23 setOpacity:v48];
      v49 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.z"];
      [v49 setFromValue:&unk_1F03D92F8];
      [v49 setToValue:&unk_1F03D9308];
      [v49 setDuration:0.00749999983];
      [v49 setFillMode:v40];
      [v49 setRemovedOnCompletion:0];
      v50 = *MEMORY[0x1E6979ED8];
      v51 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
      [v49 setTimingFunction:v51];

      [v15 addAnimation:v49 forKey:@"touch down z translation"];
      v52 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.z"];
      [v52 setFromValue:&unk_1F03D9308];
      [v52 setToValue:&unk_1F03D9318];
      [v52 setDuration:0.00749999983];
      [v52 setFillMode:v40];
      [v52 setRemovedOnCompletion:0];
      v53 = [MEMORY[0x1E69793D0] functionWithName:v50];
      [v52 setTimingFunction:v53];

      [v23 addAnimation:v52 forKey:@"touch down z translation reverse"];
    }

    else
    {
      if ((v13 & 0x14) == 0)
      {
LABEL_10:

        return;
      }

      v23 = [(TUISeparatedKBKeyView *)self _pressRingLayer];
      [v23 removeAllAnimations];
      [v15 removeAllAnimations];
      v24 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale"];
      LODWORD(v25) = dword_1900C0CD0[v22 < 2.22044605e-16];
      v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
      [v24 setFromValue:v26];

      [v24 setToValue:&unk_1F03D92E8];
      [v24 setDuration:0.100000001];
      v27 = *MEMORY[0x1E69797E8];
      [v24 setFillMode:*MEMORY[0x1E69797E8]];
      [v24 setRemovedOnCompletion:0];
      v28 = *MEMORY[0x1E6979ED0];
      v29 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
      [v24 setTimingFunction:v29];

      [v23 addAnimation:v24 forKey:@"touch up scale"];
      v30 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
      [v30 setFromValue:&unk_1F03D9328];
      [v30 setToValue:&unk_1F03D92F8];
      [v30 setDuration:0.100000001];
      [v30 setFillMode:v27];
      [v30 setRemovedOnCompletion:0];
      v31 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
      [v30 setTimingFunction:v31];

      [v23 addAnimation:v30 forKey:@"touch up opacity"];
      v32 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.z"];
      [v32 setFromValue:&unk_1F03D9308];
      [v32 setToValue:&unk_1F03D92F8];
      [v32 setDuration:0.150000006];
      [v32 setFillMode:v27];
      [v32 setRemovedOnCompletion:0];
      v33 = [MEMORY[0x1E69793D0] functionWithName:v28];
      [v32 setTimingFunction:v33];

      [v15 addAnimation:v32 forKey:@"touch up z translation"];
      v34 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.z"];
      [v34 setFromValue:&unk_1F03D9318];
      [v34 setToValue:&unk_1F03D9308];
      [v34 setDuration:0.150000006];
      [v34 setFillMode:v27];
      [v34 setRemovedOnCompletion:0];
      v35 = [MEMORY[0x1E69793D0] functionWithName:v28];
      [v34 setTimingFunction:v35];

      [v23 addAnimation:v34 forKey:@"touch up z translation reverse"];
    }

    goto LABEL_10;
  }
}

- (void)updateStateFrom:(int)a3 to:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  [(TUISeparatedKBKeyView *)self _setContinuousCornerRadius:30.0];
  [(TUISeparatedKBKeyView *)self _updateHoverToEnabled:(v4 & 0x6E) != 0];
  v7.receiver = self;
  v7.super_class = TUISeparatedKBKeyView;
  [(TUIKBKeyView *)&v7 updateStateFrom:v5 to:v4];
}

- (id)_pressRingLayer
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5869;
  v30 = __Block_byref_object_dispose__5870;
  v31 = 0;
  v3 = [(TUISeparatedKBKeyView *)self layer];
  v4 = [v3 sublayers];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __40__TUISeparatedKBKeyView__pressRingLayer__block_invoke;
  v25[3] = &unk_1E72D79A0;
  v25[4] = &v26;
  [v4 enumerateObjectsUsingBlock:v25];

  v5 = v27[5];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    [(TUISeparatedKBKeyView *)self bounds];
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
    v11 = v33.origin.x + -2.0;
    v12 = v33.origin.y + -2.0;
    v13 = CGRectGetWidth(v33) + 4.0;
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v14 = CGRectGetHeight(v34) + 4.0;
    v6 = [MEMORY[0x1E6979380] layer];
    [v6 setFrame:{v11, v12, v13, v14}];
    v15 = MEMORY[0x1E695DEC8];
    v16 = [MEMORY[0x1E69DC888] colorWithRed:0.666666667 green:0.666666667 blue:0.666666667 alpha:1.0];
    v17 = [v16 CGColor];
    v18 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.7];
    v19 = [v15 arrayWithObjects:{v17, objc_msgSend(v18, "CGColor"), 0}];
    [v6 setColors:v19];

    [v6 setType:*MEMORY[0x1E6979DB0]];
    [v6 setStartPoint:{0.5, 0.5}];
    [v6 setEndPoint:{0.95, 0.95}];
    v20 = [MEMORY[0x1E69DC888] colorWithWhite:0.05 alpha:0.1];
    [v6 setBorderColor:{objc_msgSend(v20, "CGColor")}];

    [v6 setBorderWidth:3.0];
    [v6 setCornerRadius:32.0];
    [v6 setCornerCurve:*MEMORY[0x1E69796E0]];
    [v6 setOpacity:0.0];
    CATransform3DMakeTranslation(&v24, 0.0, 0.0, -4.0);
    v23 = v24;
    [v6 setTransform:&v23];
    [v6 setValue:&unk_1F03D8CD8 forKeyPath:@"separatedOptions.separatedThickness"];
    [v6 setName:@"KeyPressEffectHighlightLayerName"];
    v21 = [(TUISeparatedKBKeyView *)self layer];
    [v21 addSublayer:v6];
  }

  _Block_object_dispose(&v26, 8);

  return v6;
}

void __40__TUISeparatedKBKeyView__pressRingLayer__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v9 name];
    v8 = [v7 isEqualToString:@"KeyPressEffectHighlightLayerName"];

    if (v8)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

- (void)_addShadowEffect
{
  v4 = [(TUISeparatedKBKeyView *)self layer];
  LODWORD(v2) = 1017370378;
  [v4 setShadowOpacity:v2];
  [v4 setShadowRadius:1.0];
  v3 = [MEMORY[0x1E69DC888] systemWhiteColor];
  [v4 setShadowColor:{objc_msgSend(v3, "CGColor")}];

  [v4 setShadowOffset:{0.5, 2.0}];
  [v4 setShadowPathIsBounds:1];
  [v4 setValue:&unk_1F03D92B8 forKeyPath:@"separatedOptions.shadows.expansionOpacity"];
  [v4 setValue:&unk_1F03D92C8 forKeyPath:@"separatedOptions.shadows.expansionRadius"];
  [v4 setValue:&unk_1F03D92C8 forKeyPath:@"separatedOptions.shadows.expansionSize"];
  [v4 setValue:&unk_1F03D92C8 forKeyPath:@"separatedOptions.shadows.maxDynamicOffset"];
  [v4 setValue:&unk_1F03D92D8 forKeyPath:@"separatedOptions.shadows.expansionTargetZ"];
}

- (void)_addGlassEffect
{
  v3 = [(TUISeparatedKBKeyView *)self layer];
  [v3 setValue:MEMORY[0x1E695E118] forKeyPath:@"separatedOptions.acceptsUpstreamHitTesting"];
  v2 = [v3 valueForKeyPath:@"separatedOptions.platter.enabled"];

  if (!v2)
  {
    [v3 setValue:MEMORY[0x1E695E118] forKeyPath:@"separatedOptions.platter.enabled"];
    [v3 setValue:&unk_1F03D9258 forKeyPath:@"separatedOptions.platter.frontDepthForNormals"];
    [v3 setValue:&unk_1F03D9268 forKeyPath:@"separatedOptions.geometry.frontBevel"];
    [v3 setValue:&unk_1F03D8CC0 forKeyPath:@"separatedOptions.geometry.flatDepth"];
    [v3 setValue:&unk_1F03D8CC0 forKeyPath:@"separatedOptions.geometry.backBevel"];
    [v3 setValue:&unk_1F03D9278 forKeyPath:@"separatedOptions.platter.mainSpecularStrength"];
    [v3 setValue:&unk_1F03D9268 forKeyPath:@"separatedOptions.platter.fillSpecularStrength"];
    [v3 setValue:&unk_1F03D9288 forKeyPath:@"separatedOptions.platter.mainSpecularExponent"];
    [v3 setValue:&unk_1F03D9298 forKeyPath:@"separatedOptions.platter.fillSpecularExponent"];
    [v3 setValue:&unk_1F03D92A8 forKeyPath:@"separatedOptions.platter.fakeFresnelMaxDist"];
    [v3 setValue:&unk_1F03D9268 forKeyPath:@"separatedOptions.platter.fakeFresnelStrength"];
    [v3 setValue:&unk_1F03D9258 forKeyPath:@"separatedOptions.platter.fakeFresnelFalloff"];
  }
}

- (TUISeparatedKBKeyView)initWithKey:(id)a3
{
  v6.receiver = self;
  v6.super_class = TUISeparatedKBKeyView;
  v3 = [(TUIKBKeyView *)&v6 initWithKey:a3];
  v4 = v3;
  if (v3)
  {
    [(TUISeparatedKBKeyView *)v3 _setContinuousCornerRadius:30.0];
    [(TUISeparatedKBKeyView *)v4 _addGlassEffect];
    [(TUISeparatedKBKeyView *)v4 _addShadowEffect];
    [(TUISeparatedKBKeyView *)v4 _addHoverEffect];
  }

  return v4;
}

@end