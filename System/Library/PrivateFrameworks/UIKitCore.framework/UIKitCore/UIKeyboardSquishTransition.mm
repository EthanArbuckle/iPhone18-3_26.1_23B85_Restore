@interface UIKeyboardSquishTransition
- (BOOL)_allowFacesToAdjoinToAdjacentFaces;
- (id)_animationsForEnd;
- (id)_animationsForStart;
- (id)geometriesForKeyplane:(id)a3;
- (id)meshTransformForKeyplane:(id)a3 toKeyplane:(id)a4;
- (id)sortedCommonVisibleKeys;
- (id)symmetricMeshTransformForKeyplane:(id)a3;
- (void)_updateTransition;
- (void)commitTransitionRebuild;
- (void)dealloc;
- (void)rebuildWithStartKeyplane:(id)a3 startView:(id)a4 endKeyplane:(id)a5 endView:(id)a6;
- (void)removeAllAnimations;
- (void)updateOpacityAnimation:(id)a3;
- (void)updateWithProgress:(double)a3;
@end

@implementation UIKeyboardSquishTransition

- (void)dealloc
{
  [(CADisplayLink *)self->_opacityAnimationDisplayLink invalidate];
  v3.receiver = self;
  v3.super_class = UIKeyboardSquishTransition;
  [(UIKeyboardKeyplaneTransition *)&v3 dealloc];
}

- (void)rebuildWithStartKeyplane:(id)a3 startView:(id)a4 endKeyplane:(id)a5 endView:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v38.receiver = self;
  v38.super_class = UIKeyboardSquishTransition;
  [(UIKeyboardKeyplaneTransition *)&v38 rebuildWithStartKeyplane:v10 startView:a4 endKeyplane:v11 endView:a6];
  if (v10)
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = [v10 keys];
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          v19 = [v18 shape];

          if (v19)
          {
            v20 = [v18 shape];
            [v12 addObject:v20];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v15);
    }

    [(UIKeyboardSquishTransition *)self setStartGeometries:v12];
  }

  if (v11)
  {
    v21 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = [v11 keys];
    v23 = [v22 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v30 + 1) + 8 * j);
          v28 = [v27 shape];

          if (v28)
          {
            v29 = [v27 shape];
            [v21 addObject:v29];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v24);
    }

    [(UIKeyboardSquishTransition *)self setEndGeometries:v21];
  }
}

- (void)commitTransitionRebuild
{
  [(UIKBTree *)self->super._end primaryKeylayoutWidthRatio];
  self->_widthRatio = v3;
  [(UIKBTree *)self->super._end primaryKeylayoutOffset];
  self->_offsetX = v4;
  v5 = [(UIKeyboardSquishTransition *)self sortedCommonVisibleKeys];
  [(UIKeyboardSquishTransition *)self setCommonVisibleKeys:v5];

  v6 = [(UIKeyboardKeyplaneTransition *)self initiallyAtEnd];
  v7 = 0.0;
  if (v6)
  {
    v7 = 1.0;
  }

  [(UIKeyboardSquishTransition *)self setPreviousProgress:v7];

  [(UIKeyboardSquishTransition *)self _updateTransition];
}

- (id)_animationsForStart
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(UIKeyboardSquishTransition *)self useInteractiveOpacity])
  {
    v4 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"opacity" fromValue:&unk_1EFE32050 toValue:&unk_1EFE32068];
    v5 = [MEMORY[0x1E69793D0] _kbTimingFunction];
    [v4 setTimingFunction:v5];

    [v3 setObject:v4 forKey:@"start opacity interpolation"];
  }

  if ([(UIKeyboardSquishTransition *)self animationType]== 1)
  {
    v6 = [(UIView *)self->super._startView layer];
    [v6 position];
    v8 = v7;
    v10 = v9;
    [v6 bounds];
    v12 = v11;
    v13 = 1.0 - self->_widthRatio;
    v14 = v11 * v13;
    v15 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"position" fromValue:0 toValue:0];
    v16 = [MEMORY[0x1E696B098] valueWithCGPoint:{v8, v10}];
    [v15 setFromValue:v16];

    if (self->_offsetX <= 7.0)
    {
      v17 = -(v12 * v13);
    }

    else
    {
      v17 = v14;
    }

    v18 = [MEMORY[0x1E696B098] valueWithCGPoint:{v8 + v17, v10}];
    [v15 setToValue:v18];

    [v3 setObject:v15 forKey:@"start position interpolation"];
    v19 = 0uLL;
    memset(&v27, 0, sizeof(v27));
    if (v6)
    {
      [v6 transform];
      v19 = 0uLL;
    }

    *&v26.m41 = v19;
    *&v26.m43 = v19;
    *&v26.m31 = v19;
    *&v26.m33 = v19;
    *&v26.m21 = v19;
    *&v26.m23 = v19;
    *&v26.m11 = v19;
    *&v26.m13 = v19;
    widthRatio = self->_widthRatio;
    v25 = v27;
    CATransform3DScale(&v26, &v25, widthRatio, 1.0, 1.0);
    v21 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"transform" fromValue:0 toValue:0];
    v25 = v27;
    v22 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v25];
    [v21 setFromValue:v22];

    v25 = v26;
    v23 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v25];
    [v21 setToValue:v23];
  }

  else
  {
    if ([(UIKeyboardSquishTransition *)self animationType]!= 2)
    {
      goto LABEL_13;
    }

    v6 = [(UIKeyboardSquishTransition *)self meshTransformForKeyplane:self->super._start toKeyplane:self->super._start];
    v15 = [(UIKeyboardSquishTransition *)self meshTransformForKeyplane:self->super._start toKeyplane:self->super._end];
    v21 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"meshTransform" fromValue:v6 toValue:v15];
  }

  [v3 setObject:v21 forKey:@"start transform interpolation"];

LABEL_13:

  return v3;
}

- (id)_animationsForEnd
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(UIKeyboardSquishTransition *)self useInteractiveOpacity])
  {
    v4 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"opacity" fromValue:&unk_1EFE32068 toValue:&unk_1EFE32050];
    v5 = [MEMORY[0x1E69793D0] _kbTimingFunction];
    [v4 setTimingFunction:v5];

    [v3 setObject:v4 forKey:@"end opacity interpolation"];
  }

  if ([(UIKeyboardSquishTransition *)self animationType]== 1)
  {
    v6 = [(UIView *)self->super._endView layer];
    [v6 position];
    v8 = v7;
    v10 = v9;
    [v6 bounds];
    v12 = v11;
    v13 = 1.0 - self->_widthRatio;
    v14 = v11 * v13;
    v15 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"position" fromValue:0 toValue:0];
    if (self->_offsetX <= 7.0)
    {
      v16 = v14;
    }

    else
    {
      v16 = -(v12 * v13);
    }

    v17 = [MEMORY[0x1E696B098] valueWithCGPoint:{v8 + v16, v10}];
    [v15 setFromValue:v17];

    v18 = [MEMORY[0x1E696B098] valueWithCGPoint:{v8, v10}];
    [v15 setToValue:v18];

    [v6 addAnimation:v15 forKey:@"end position interpolation"];
    v19 = 0uLL;
    memset(&v27, 0, sizeof(v27));
    if (v6)
    {
      [v6 transform];
      v19 = 0uLL;
    }

    *&v26.m41 = v19;
    *&v26.m43 = v19;
    *&v26.m31 = v19;
    *&v26.m33 = v19;
    *&v26.m21 = v19;
    *&v26.m23 = v19;
    widthRatio = self->_widthRatio;
    *&v26.m11 = v19;
    *&v26.m13 = v19;
    v25 = v27;
    CATransform3DScale(&v26, &v25, 1.0 / widthRatio, 1.0, 1.0);
    v21 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"transform" fromValue:0 toValue:0];
    v25 = v26;
    v22 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v25];
    [v21 setFromValue:v22];

    v25 = v27;
    v23 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v25];
    [v21 setToValue:v23];
  }

  else
  {
    if ([(UIKeyboardSquishTransition *)self animationType]!= 2)
    {
      goto LABEL_13;
    }

    v6 = [(UIKeyboardSquishTransition *)self meshTransformForKeyplane:self->super._end toKeyplane:self->super._start];
    v15 = [(UIKeyboardSquishTransition *)self meshTransformForKeyplane:self->super._end toKeyplane:self->super._end];
    v21 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"meshTransform" fromValue:v6 toValue:v15];
  }

  [v3 setObject:v21 forKey:@"end transform interpolation"];

LABEL_13:

  return v3;
}

- (void)_updateTransition
{
  v3 = [(UIView *)self->super._startView layer];
  v4 = [(UIView *)self->super._endView layer];
  [(UIView *)self->super._startView contentScaleFactor];
  [v3 setRasterizationScale:?];
  [(UIView *)self->super._endView contentScaleFactor];
  [v4 setRasterizationScale:?];
  v5 = [(UIKeyboardSquishTransition *)self _animationsForStart];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__UIKeyboardSquishTransition__updateTransition__block_invoke;
  v11[3] = &unk_1E7118E48;
  v12 = v3;
  v6 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:v11];

  v7 = [(UIKeyboardSquishTransition *)self _animationsForEnd];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__UIKeyboardSquishTransition__updateTransition__block_invoke_2;
  v9[3] = &unk_1E7118E48;
  v10 = v4;
  v8 = v4;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

- (void)removeAllAnimations
{
  v3 = [(UIKeyboardSquishTransition *)self opacityAnimationDisplayLink];
  [v3 invalidate];

  [(UIKeyboardSquishTransition *)self setOpacityAnimationDisplayLink:0];
  v4 = [(UIView *)self->super._startView layer];
  v5 = [(UIView *)self->super._endView layer];
  [v4 removeAnimationForKey:@"start opacity interpolation"];
  [v5 removeAnimationForKey:@"end opacity interpolation"];
  [v4 removeAnimationForKey:@"start position interpolation"];
  [v5 removeAnimationForKey:@"end position interpolation"];
  [v4 removeAnimationForKey:@"start transform interpolation"];
  [v5 removeAnimationForKey:@"end transform interpolation"];
  v6.receiver = self;
  v6.super_class = UIKeyboardSquishTransition;
  [(UIKeyboardKeyplaneTransition *)&v6 removeAllAnimations];
}

- (void)updateWithProgress:(double)a3
{
  [(UIView *)self->super._startView setHidden:0];
  [(UIView *)self->super._endView setHidden:0];
  v13.receiver = self;
  v13.super_class = UIKeyboardSquishTransition;
  [(UIKeyboardKeyplaneTransition *)&v13 updateWithProgress:a3];
  [(UIKeyboardSquishTransition *)self previousProgress];
  v6 = v5;
  if (![(UIKeyboardSquishTransition *)self useInteractiveOpacity]&& a3 >= 0.5 == v6 < 0.5)
  {
    [(UIKeyboardSquishTransition *)self setOpacityAnimationDirectionForward:a3 >= 0.5];
    v7 = [(UIKeyboardSquishTransition *)self opacityAnimationDisplayLink];

    if (!v7)
    {
      [(UIKeyboardSquishTransition *)self setOpacityAnimationBeginTime:CACurrentMediaTime()];
      v8 = [(UIView *)self->super._startView window];
      v9 = [v8 screen];
      v10 = [v9 displayLinkWithTarget:self selector:sel_updateOpacityAnimation_];
      [(UIKeyboardSquishTransition *)self setOpacityAnimationDisplayLink:v10];

      v11 = [(UIKeyboardSquishTransition *)self opacityAnimationDisplayLink];
      v12 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v11 addToRunLoop:v12 forMode:*MEMORY[0x1E695DA28]];
    }
  }

  [(UIKeyboardSquishTransition *)self setPreviousProgress:a3];
}

- (void)updateOpacityAnimation:(id)a3
{
  [a3 timestamp];
  v5 = v4;
  [(UIKeyboardSquishTransition *)self opacityAnimationBeginTime];
  v7 = v5 - v6;
  v8 = (v5 - v6) * 4.0;
  if ([(UIKeyboardSquishTransition *)self opacityAnimationDirectionForward])
  {
    v9 = 1.0 - v8;
    v11 = [(UIView *)self->super._startView layer];
    v10 = 1.0 - v8;
    *&v12 = v10;
    [v11 setOpacity:v12];
  }

  else
  {
    v14 = [(UIView *)self->super._startView layer];
    v13 = v8;
    *&v15 = v13;
    [v14 setOpacity:v15];

    v8 = 1.0 - v8;
    v9 = v8;
  }

  v17 = [(UIView *)self->super._endView layer];
  v16 = v8;
  *&v18 = v16;
  [v17 setOpacity:v18];

  if (fabs(v9) < 0.01 || v7 >= 1.0)
  {
    v20 = [(UIKeyboardSquishTransition *)self opacityAnimationDisplayLink];
    [v20 invalidate];

    [(UIKeyboardSquishTransition *)self setOpacityAnimationDisplayLink:0];
  }
}

- (id)sortedCommonVisibleKeys
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(UIKBTree *)self->super._end keys];
  v5 = [(UIKBTree *)self->super._start keysOrderedByPosition];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__UIKeyboardSquishTransition_sortedCommonVisibleKeys__block_invoke;
  v11[3] = &unk_1E7114750;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [v5 enumerateObjectsUsingBlock:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

void __53__UIKeyboardSquishTransition_sortedCommonVisibleKeys__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 visible] && objc_msgSend(*(a1 + 32), "containsObject:", v3))
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (id)geometriesForKeyplane:(id)a3
{
  if (self->super._start == a3)
  {
    [(UIKeyboardSquishTransition *)self startGeometries];
  }

  else
  {
    [(UIKeyboardSquishTransition *)self endGeometries];
  }
  v3 = ;

  return v3;
}

- (BOOL)_allowFacesToAdjoinToAdjacentFaces
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = fabs(v3 + -3.0) < 0.00000011920929;

  return v4;
}

- (id)symmetricMeshTransformForKeyplane:(id)a3
{
  v242 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIKeyboardSquishTransition *)self commonVisibleKeys];
  if ([(UIKeyboardSquishTransition *)self disableMeshOptimization])
  {
    v6 = 35;
  }

  else
  {
    v6 = 20;
  }

  v7 = 5 * [v5 count] + v6;
  v8 = [v5 count];
  v208[1] = v208;
  MEMORY[0x1EEE9AC00](v8);
  v9 = &v208[-4 * v7];
  v11 = MEMORY[0x1EEE9AC00](v10);
  v219 = &v208[-v12];
  v13 = *MEMORY[0x1E695F050];
  v14 = *(MEMORY[0x1E695F050] + 8);
  v16 = *(MEMORY[0x1E695F050] + 16);
  v15 = *(MEMORY[0x1E695F050] + 24);
  [v4 frame];
  v18 = v17;
  v233 = 1.0 / v19;
  [v4 primaryKeylayoutOffset];
  v21 = v20;
  [v4 primaryKeylayoutWidthRatio];
  v23 = v22;
  v215 = self;
  v217 = v4;
  v216 = [(UIKeyboardSquishTransition *)self geometriesForKeyplane:v4];
  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  v213 = v5;
  v218 = [v213 countByEnumeratingWithState:&v237 objects:v241 count:16];
  v24 = 0;
  v25 = 0;
  if (!v218)
  {
    LODWORD(v27) = -1;
    v226 = 0xFFFFFFFFLL;
    goto LABEL_29;
  }

  v214 = *v238;
  v211 = v21 + v23 * v18;
  v209 = 1.0 / v18 * v211;
  v212 = v21;
  v220 = 1.0 / v18;
  v210 = v21 * (1.0 / v18);
  v226 = -1;
  v26.i64[0] = 0x80000000800000;
  v26.i64[1] = 0x80000000800000;
  v231 = vnegq_f32(v26);
  *&v27 = NAN;
  v230 = &v208[-4 * v7];
  do
  {
    v232 = v13;
    v28 = 0;
    do
    {
      v29 = v232;
      v235 = v14;
      v236 = v16;
      v30 = v15;
      if (*v238 != v214)
      {
        objc_enumerationMutation(v213);
      }

      v229 = v28;
      v31 = *(*(&v237 + 1) + 8 * v28);
      v32 = [v217 keys];
      v33 = [v32 indexOfObject:v31];
      v34 = [v216 objectAtIndex:v33];

      [v34 frame];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v228 = v34;
      [v34 paddedFrame];
      v44 = v43;
      v46 = v45;
      v227 = v47;
      v234 = v48;
      v222 = v29;
      v244.origin.x = v29;
      v49 = v235;
      v244.origin.y = v235;
      v244.size.width = v236;
      v223 = v30;
      v244.size.height = v30;
      IsNull = CGRectIsNull(v244);
      v51 = v25 + 1;
      v52 = v219;
      v232 = v36;
      if (IsNull || v49 != v38)
      {
        v224 = v44;
        v225 = v46;
        v73 = &v219[5 * v25];
        v253.origin.x = v36;
        v253.origin.y = v38;
        v253.size.width = v40;
        v253.size.height = v42;
        MinX = CGRectGetMinX(v253);
        v75 = v220;
        v76 = v220 * MinX;
        v254.origin.x = v36;
        v254.origin.y = v38;
        v254.size.width = v40;
        v254.size.height = v42;
        v77 = v233 * CGRectGetMinY(v254);
        v255.origin.x = v36;
        v255.origin.y = v38;
        v255.size.width = v40;
        v255.size.height = v42;
        v78 = v75 * CGRectGetMinX(v255);
        v256.origin.x = v36;
        v256.origin.y = v38;
        v256.size.width = v40;
        v256.size.height = v42;
        v79 = v233 * CGRectGetMinY(v256);
        *v73 = v76;
        *(v73 + 1) = v77;
        *(v73 + 2) = v78;
        *(v73 + 3) = v79;
        v73[4] = 0x3FE0000000000000;
        v80 = &v52[5 * v51];
        v257.origin.x = v36;
        v257.origin.y = v38;
        v257.size.width = v40;
        v257.size.height = v42;
        v81 = v75 * CGRectGetMinX(v257);
        v258.origin.x = v36;
        v258.origin.y = v38;
        v258.size.width = v40;
        v258.size.height = v42;
        v82 = v233 * CGRectGetMaxY(v258);
        v259.origin.x = v36;
        v259.origin.y = v38;
        v259.size.width = v40;
        v259.size.height = v42;
        v83 = v75 * CGRectGetMinX(v259);
        v260.origin.x = v36;
        v260.origin.y = v38;
        v260.size.width = v40;
        v260.size.height = v42;
        v84 = v233 * CGRectGetMaxY(v260);
        *v80 = v81;
        v80[1] = v82;
        v80[2] = v83;
        v80[3] = v84;
        v80[4] = 0.5;
        if ((IsNull | ![(UIKeyboardSquishTransition *)v215 _allowFacesToAdjoinToAdjacentFaces]))
        {
          v85 = v232;
          v46 = v225;
        }

        else
        {
          v86 = v222;
          v261.origin.x = v222;
          v87 = v235;
          v261.origin.y = v235;
          v88 = v236;
          v261.size.width = v236;
          v89 = v223;
          v261.size.height = v223;
          if (CGRectGetMaxX(v261) >= v211)
          {
            v106 = v27;
            v105 = v226;
          }

          else
          {
            v90 = *(v73 + 1);
            v91 = &v52[5 * v25 + 10];
            *v91 = *v73;
            *(v91 + 1) = v90;
            v91[4] = v73[4];
            v92 = *(v80 + 1);
            *(v73 + 15) = *v80;
            *(v73 + 17) = v92;
            v73[19] = *(v80 + 4);
            v93 = v86;
            *&v92 = v87;
            v94 = v88;
            v95 = v89;
            MinY = CGRectGetMinY(*(&v92 - 8));
            v97 = v233;
            v221 = v233 * MinY;
            v262.origin.x = v86;
            v262.origin.y = v87;
            v262.size.width = v88;
            v262.size.height = v89;
            v98 = v97 * CGRectGetMinY(v262);
            v99 = v209;
            v100 = v221;
            *v73 = v209;
            *(v73 + 1) = v100;
            *(v73 + 2) = v99;
            *(v73 + 3) = v98;
            v73[4] = 0x3FE0000000000000;
            v263.origin.x = v86;
            v263.origin.y = v87;
            v263.size.width = v88;
            v263.size.height = v89;
            v221 = v233 * CGRectGetMaxY(v263);
            v264.origin.x = v86;
            v264.origin.y = v87;
            v264.size.width = v88;
            v264.size.height = v89;
            v101 = v233 * CGRectGetMaxY(v264);
            v102 = v221;
            *v80 = v99;
            v80[1] = v102;
            v80[2] = v99;
            v80[3] = v101;
            v80[4] = 0.5;
            v103 = &v9[4 * v24];
            v104 = v226;
            v103->i32[0] = v27;
            v103->i32[1] = v104;
            v103->i32[2] = v51;
            v103->i32[3] = v25;
            v103[1] = v231;
            ++v24;
            v105 = v25 + 1;
            v51 = v25 + 3;
            v106 = v25;
            v25 += 2;
          }

          v107 = &v52[5 * v25];
          v108 = *(v107 + 1);
          *(v107 + 5) = *v107;
          *(v107 + 6) = v108;
          v107[14] = v107[4];
          v109 = &v52[5 * v51];
          v110 = *(v109 + 1);
          *(v109 + 5) = *v109;
          *(v109 + 6) = v110;
          v109[14] = v109[4];
          v111 = v86;
          v112 = v87;
          v113 = v88;
          v114 = v223;
          *&v110 = v223;
          v115 = CGRectGetMinY(*(&v110 - 24));
          v116 = v233;
          v236 = v233 * v115;
          v265.origin.x = v86;
          v265.origin.y = v87;
          v265.size.width = v88;
          v265.size.height = v114;
          v117 = CGRectGetMinY(v265);
          *v107 = 0x3FF0000000000000;
          *(v107 + 1) = v236;
          v107[2] = 0x3FF0000000000000;
          *(v107 + 3) = v116 * v117;
          v107[4] = 0x3FE0000000000000;
          v266.origin.x = v86;
          v266.origin.y = v87;
          v266.size.width = v88;
          v266.size.height = v114;
          v236 = v116 * CGRectGetMaxY(v266);
          v267.origin.x = v86;
          v267.origin.y = v87;
          v267.size.width = v88;
          v267.size.height = v114;
          MaxY = CGRectGetMaxY(v267);
          *v109 = 0x3FF0000000000000;
          *(v109 + 1) = v236;
          v109[2] = 0x3FF0000000000000;
          *(v109 + 3) = v116 * MaxY;
          v109[4] = 0x3FE0000000000000;
          v119 = &v230[4 * v24];
          v119->i32[0] = v106;
          v119->i32[1] = v105;
          v119->i32[2] = v51;
          v119->i32[3] = v25;
          v119[1] = v231;
          ++v24;
          v51 = v25 + 3;
          v25 += 2;
          v46 = v225;
          v85 = v232;
        }

        v27 = v25 + 2;
        v120 = &v52[5 * v25];
        v121 = *(v120 + 1);
        *(v120 + 5) = *v120;
        *(v120 + 6) = v121;
        v120[14] = v120[4];
        v122 = &v52[5 * v51];
        v123 = *(v122 + 1);
        *(v122 + 5) = *v122;
        *(v122 + 6) = v123;
        v122[14] = v122[4];
        v124 = v85;
        *&v123 = v38;
        v125 = v40;
        v126 = v42;
        v127 = CGRectGetMinY(*(&v123 - 8));
        v128 = v233;
        v129 = v233 * v127;
        v268.origin.x = v85;
        v268.origin.y = v38;
        v268.size.width = v40;
        v268.size.height = v42;
        v130 = CGRectGetMinY(v268);
        *v120 = 0;
        *(v120 + 1) = v129;
        v120[2] = 0;
        *(v120 + 3) = v128 * v130;
        v120[4] = 0x3FE0000000000000;
        v269.origin.x = v85;
        v269.origin.y = v38;
        v269.size.width = v40;
        v269.size.height = v42;
        v131 = v128 * CGRectGetMaxY(v269);
        v270.origin.x = v85;
        v270.origin.y = v38;
        v270.size.width = v40;
        v270.size.height = v42;
        v132 = CGRectGetMaxY(v270);
        *v122 = 0;
        *(v122 + 1) = v131;
        v122[2] = 0;
        *(v122 + 3) = v128 * v132;
        v122[4] = 0x3FE0000000000000;
        v133 = &v230[4 * v24];
        v133->i32[0] = v25;
        v133->i32[1] = v51;
        v133->i32[2] = v51 + 2;
        v133->i32[3] = v25 + 2;
        v133[1] = v231;
        v72 = v25 + 3;
        v271.origin.x = v85;
        v271.origin.y = v38;
        v271.size.width = v40;
        v271.size.height = v42;
        if (CGRectGetMinX(v271) <= v212)
        {
          v71 = 0;
          ++v24;
          v25 += 2;
        }

        else
        {
          v134 = &v52[5 * v25];
          v135 = *(v120 + 6);
          *(v134 + 10) = *(v120 + 5);
          *(v134 + 11) = v135;
          v136 = &v219[5 * v72];
          v137 = *(v136 + 1);
          *(v134 + 25) = *v136;
          v134[24] = v120[14];
          *(v134 + 27) = v137;
          v134[29] = v136[4];
          v138 = v85;
          *&v137 = v38;
          v139 = v40;
          v140 = v42;
          v141 = CGRectGetMinY(*(&v137 - 8));
          v142 = v233;
          v143 = v233 * v141;
          v272.origin.x = v85;
          v272.origin.y = v38;
          v272.size.width = v40;
          v272.size.height = v42;
          v144 = v142 * CGRectGetMinY(v272);
          v145 = v210;
          *(v120 + 10) = v210;
          *(v120 + 11) = v143;
          *(v120 + 12) = v145;
          *(v120 + 13) = v144;
          v120[14] = 0x3FE0000000000000;
          v273.origin.x = v85;
          v273.origin.y = v38;
          v273.size.width = v40;
          v273.size.height = v42;
          v146 = v233 * CGRectGetMaxY(v273);
          v274.origin.x = v85;
          v274.origin.y = v38;
          v274.size.width = v40;
          v274.size.height = v42;
          v147 = CGRectGetMaxY(v274);
          v71 = 0;
          v148 = v233;
          *v136 = v145;
          *(v136 + 1) = v146;
          *(v136 + 2) = v145;
          *(v136 + 3) = v148 * v147;
          v136[4] = 0x3FE0000000000000;
          v52 = v219;
          v149 = &v230[4 * v24 + 4];
          v149->i32[0] = v27;
          v149->i32[1] = v72;
          v149->i32[2] = v25 + 5;
          v149->i32[3] = v25 + 4;
          v149[1] = v231;
          v24 += 2;
          v72 = v25 + 5;
          v27 = v25 + 4;
          v25 += 4;
        }

        v44 = v224;
      }

      else
      {
        if ([(UIKeyboardSquishTransition *)v215 disableMeshOptimization])
        {
          v53 = &v52[5 * v25];
          v245.origin.x = v36;
          v245.origin.y = v38;
          v245.size.width = v40;
          v245.size.height = v42;
          v54 = CGRectGetMinX(v245);
          v55 = v220;
          v224 = v44;
          v236 = v220 * v54;
          v246.origin.x = v36;
          v246.origin.y = v38;
          v246.size.width = v40;
          v246.size.height = v42;
          v56 = CGRectGetMinY(v246);
          v57 = v42;
          v58 = v36;
          v59 = v233;
          v60 = v233 * v56;
          v247.origin.x = v58;
          v247.origin.y = v38;
          v247.size.width = v40;
          v247.size.height = v57;
          v61 = CGRectGetMinX(v247);
          v225 = v46;
          v62 = v55 * v61;
          v248.origin.x = v58;
          v248.origin.y = v38;
          v248.size.width = v40;
          v248.size.height = v57;
          v63 = CGRectGetMinY(v248);
          *v53 = v236;
          v53[1] = v60;
          v53[2] = v62;
          v53[3] = v59 * v63;
          v53[4] = 0.5;
          v64 = &v52[5 * v51];
          v249.origin.x = v58;
          v249.origin.y = v38;
          v249.size.width = v40;
          v249.size.height = v57;
          v65 = v55 * CGRectGetMinX(v249);
          v250.origin.x = v58;
          v250.origin.y = v38;
          v250.size.width = v40;
          v250.size.height = v57;
          v66 = v59 * CGRectGetMaxY(v250);
          v251.origin.x = v58;
          v251.origin.y = v38;
          v251.size.width = v40;
          v251.size.height = v57;
          v67 = v55 * CGRectGetMinX(v251);
          v252.origin.x = v58;
          v252.origin.y = v38;
          v252.size.width = v40;
          v252.size.height = v57;
          v68 = CGRectGetMaxY(v252);
          v69 = v40;
          v70 = v57;
          v71 = 0;
          *v64 = v65;
          v64[1] = v66;
          v44 = v224;
          v64[2] = v67;
          v64[3] = v59 * v68;
          v46 = v225;
          v64[4] = 0.5;
          v72 = v25 + 1;
          v27 = v25;
          goto LABEL_25;
        }

        v71 = 2;
        v72 = v226;
      }

      v69 = v40;
      v70 = v42;
LABEL_25:
      v225 = *&v27;
      v226 = v72;
      v150 = v44 + 4.0;
      v151 = v227 + -8.0;
      v152 = v46 + 4.0;
      v153 = v25 - v71;
      v154 = v234 + -8.0;
      v155 = v25 - v71 + 2;
      v156 = v25 + (v71 ^ 3);
      LODWORD(v224) = v25 - v71 + 4;
      LODWORD(v223) = v25 - v71 + 5;
      LODWORD(v227) = v25 - v71 + 6;
      v157 = v25 + (v71 ^ 7);
      v158 = v232;
      v275.origin.x = v232;
      v275.origin.y = v38;
      v275.size.width = v69;
      v159 = v69;
      v275.size.height = v70;
      MaxX = CGRectGetMaxX(v275);
      v236 = v38;
      v161 = v220;
      v222 = v220 * MaxX;
      v276.origin.x = v158;
      v276.origin.y = v236;
      v276.size.width = v159;
      v276.size.height = v70;
      v162 = CGRectGetMinY(v276);
      v235 = v70;
      v221 = v233 * v162;
      v277.origin.x = v158;
      v277.origin.y = v236;
      v277.size.width = v159;
      v277.size.height = v70;
      v163 = CGRectGetMaxX(v277);
      v234 = v159;
      v164 = v161 * v163;
      v278.origin.x = v158;
      v278.origin.y = v236;
      v278.size.width = v159;
      v278.size.height = v235;
      v165 = CGRectGetMinY(v278);
      v166 = v233;
      v167 = v52;
      v168 = &v52[5 * v153];
      v169 = v221;
      v168[10] = v222;
      v168[11] = v169;
      v168[12] = v164;
      v168[13] = v166 * v165;
      v168[14] = 0.5;
      v170 = &v167[5 * v156];
      v279.origin.x = v158;
      v279.origin.y = v236;
      v279.size.width = v234;
      v279.size.height = v235;
      v222 = v161 * CGRectGetMaxX(v279);
      v280.origin.x = v158;
      v280.origin.y = v236;
      v280.size.width = v234;
      v280.size.height = v235;
      v221 = v166 * CGRectGetMaxY(v280);
      v281.origin.x = v158;
      v281.origin.y = v236;
      v281.size.width = v234;
      v281.size.height = v235;
      v171 = v161 * CGRectGetMaxX(v281);
      v282.origin.x = v158;
      v282.origin.y = v236;
      v282.size.width = v234;
      v282.size.height = v235;
      v172 = CGRectGetMaxY(v282);
      v173 = v221;
      *v170 = v222;
      v170[1] = v173;
      v170[2] = v171;
      v170[3] = v166 * v172;
      v170[4] = 0.5;
      v283.origin.x = v150;
      v283.origin.y = v152;
      v283.size.width = v151;
      v283.size.height = v154;
      v222 = v161 * CGRectGetMinX(v283);
      v284.origin.x = v150;
      v284.origin.y = v152;
      v284.size.width = v151;
      v284.size.height = v154;
      v174 = v166 * CGRectGetMinY(v284);
      v285.origin.x = v150;
      v285.origin.y = v152;
      v285.size.width = v151;
      v285.size.height = v154;
      v175 = v161 * CGRectGetMinX(v285);
      v286.origin.x = v150;
      v286.origin.y = v152;
      v286.size.width = v151;
      v286.size.height = v154;
      v176 = CGRectGetMinY(v286);
      v168[20] = v222;
      v168[21] = v174;
      v168[22] = v175;
      v168[23] = v166 * v176;
      v168[24] = 0.5;
      v287.origin.x = v150;
      v287.origin.y = v152;
      v287.size.width = v151;
      v287.size.height = v154;
      v222 = v161 * CGRectGetMinX(v287);
      v288.origin.x = v150;
      v288.origin.y = v152;
      v288.size.width = v151;
      v288.size.height = v154;
      v177 = v166 * CGRectGetMaxY(v288);
      v289.origin.x = v150;
      v289.origin.y = v152;
      v289.size.width = v151;
      v289.size.height = v154;
      v178 = v161 * CGRectGetMinX(v289);
      v290.origin.x = v150;
      v290.origin.y = v152;
      v290.size.width = v151;
      v290.size.height = v154;
      v179 = CGRectGetMaxY(v290);
      v168[25] = v222;
      v168[26] = v177;
      v168[27] = v178;
      v168[28] = v166 * v179;
      v168[29] = 0.5;
      v291.origin.x = v150;
      v291.origin.y = v152;
      v291.size.width = v151;
      v291.size.height = v154;
      v222 = v161 * CGRectGetMaxX(v291);
      v292.origin.x = v150;
      v292.origin.y = v152;
      v292.size.width = v151;
      v292.size.height = v154;
      v180 = v166 * CGRectGetMinY(v292);
      v293.origin.x = v150;
      v293.origin.y = v152;
      v293.size.width = v151;
      v293.size.height = v154;
      v181 = v161 * CGRectGetMaxX(v293);
      v294.origin.x = v150;
      v294.origin.y = v152;
      v294.size.width = v151;
      v294.size.height = v154;
      v182 = CGRectGetMinY(v294);
      v168[30] = v222;
      v168[31] = v180;
      v168[32] = v181;
      v168[33] = v166 * v182;
      v168[34] = 0.5;
      v183 = &v167[5 * v157];
      v295.origin.x = v150;
      v295.origin.y = v152;
      v295.size.width = v151;
      v295.size.height = v154;
      v222 = v161 * CGRectGetMaxX(v295);
      v296.origin.x = v150;
      v296.origin.y = v152;
      v296.size.width = v151;
      v296.size.height = v154;
      v184 = v166 * CGRectGetMaxY(v296);
      v297.origin.x = v150;
      v297.origin.y = v152;
      v297.size.width = v151;
      v297.size.height = v154;
      v185 = v161 * CGRectGetMaxX(v297);
      v298.origin.x = v150;
      v298.origin.y = v152;
      v298.size.width = v151;
      v298.size.height = v154;
      v186 = CGRectGetMaxY(v298);
      *v183 = v222;
      v183[1] = v184;
      v14 = v236;
      v15 = v235;
      v183[2] = v185;
      v183[3] = v166 * v186;
      v16 = v234;
      v183[4] = 0.5;
      v9 = v230;
      v187 = &v230[4 * v24];
      v188 = LODWORD(v225);
      v189 = v226;
      v187->i32[0] = LODWORD(v225);
      v187->i32[1] = v189;
      v190 = LODWORD(v223);
      v191 = LODWORD(v224);
      v187->i32[2] = LODWORD(v223);
      v187->i32[3] = v191;
      v192 = v231;
      v187[1] = v231;
      v187[2].i32[0] = v188;
      v187[2].i32[1] = v155;
      v193 = LODWORD(v227);
      v187[2].i32[2] = LODWORD(v227);
      v187[2].i32[3] = v191;
      v187[3] = v192;
      v27 = v155;
      v187[4].i32[0] = v155;
      v187[4].i32[1] = v156;
      v187[4].i32[2] = v157;
      v187[4].i32[3] = v193;
      v187[5] = v192;
      v187[6].i32[0] = v189;
      v187[6].i32[1] = v190;
      v187[6].i32[2] = v157;
      v187[6].i32[3] = v156;
      v226 = v156;
      v187[7] = v192;
      v187[8].i32[0] = v191;
      v187[8].i32[1] = v193;
      v187[8].i32[2] = v157;
      v187[8].i32[3] = v190;
      v24 += 5;
      v25 = v153 + 8;
      v187[9] = v192;

      v28 = v229 + 1;
    }

    while (v218 != v229 + 1);
    v13 = v232;
    v218 = [v213 countByEnumeratingWithState:&v237 objects:v241 count:16];
  }

  while (v218);
LABEL_29:

  v194 = v13;
  v299.origin.x = v13;
  v299.origin.y = v14;
  v299.size.width = v16;
  v299.size.height = v15;
  if (CGRectIsNull(v299))
  {
    v195 = v219;
  }

  else
  {
    v195 = v219;
    v196 = &v219[5 * v25];
    v300.origin.x = v13;
    v300.origin.y = v14;
    v300.size.width = v16;
    v300.size.height = v15;
    v197 = CGRectGetMinY(v300);
    v198 = v233;
    v199 = v233 * v197;
    v301.origin.x = v194;
    v301.origin.y = v14;
    v301.size.width = v16;
    v301.size.height = v15;
    v200 = CGRectGetMinY(v301);
    *v196 = 1.0;
    v196[1] = v199;
    v196[2] = 1.0;
    v196[3] = v198 * v200;
    v196[4] = 0.5;
    v302.origin.x = v194;
    v302.origin.y = v14;
    v302.size.width = v16;
    v302.size.height = v15;
    v201 = v198 * CGRectGetMaxY(v302);
    v303.origin.x = v194;
    v303.origin.y = v14;
    v303.size.width = v16;
    v303.size.height = v15;
    v202 = CGRectGetMaxY(v303);
    v196[5] = 1.0;
    v196[6] = v201;
    v196[7] = 1.0;
    v196[8] = v198 * v202;
    v196[9] = 0.5;
    v203 = &v9[4 * v24];
    v204 = v226;
    v203->i32[0] = v27;
    v203->i32[1] = v204;
    v203->i32[2] = v25 + 1;
    v203->i32[3] = v25;
    v205.i64[0] = 0x80000000800000;
    v205.i64[1] = 0x80000000800000;
    v203[1] = vnegq_f32(v205);
    ++v24;
    v25 += 2;
  }

  v206 = [MEMORY[0x1E69793D8] meshTransformWithVertexCount:v25 vertices:v195 faceCount:v24 faces:v9 depthNormalization:*MEMORY[0x1E6979700]];

  return v206;
}

- (id)meshTransformForKeyplane:(id)a3 toKeyplane:(id)a4
{
  v358 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 == v7)
  {
    v284 = [(UIKeyboardSquishTransition *)self symmetricMeshTransformForKeyplane:v6];
  }

  else
  {
    v8 = [(UIKeyboardSquishTransition *)self commonVisibleKeys];
    if ([(UIKeyboardSquishTransition *)self disableMeshOptimization])
    {
      v9 = 35;
    }

    else
    {
      v9 = 20;
    }

    v10 = 5 * [v8 count] + v9;
    v11 = [v8 count];
    v300[1] = v300;
    MEMORY[0x1EEE9AC00](v11);
    MEMORY[0x1EEE9AC00](v12);
    v316 = &v300[-v13];
    v14 = *MEMORY[0x1E695F050];
    v341 = *(MEMORY[0x1E695F050] + 8);
    v15 = *(MEMORY[0x1E695F050] + 24);
    v347 = *(MEMORY[0x1E695F050] + 16);
    v345 = v15;
    [v6 frame];
    v17 = v16;
    v350 = 1.0 / v18;
    [v7 frame];
    v20 = v19;
    v352 = 1.0 / v21;
    [v6 primaryKeylayoutOffset];
    v23 = v22;
    [v6 primaryKeylayoutWidthRatio];
    v25 = v24;
    [v7 primaryKeylayoutOffset];
    v27 = v26;
    [v7 primaryKeylayoutWidthRatio];
    v29 = v28;
    v315 = [(UIKeyboardSquishTransition *)self geometriesForKeyplane:v6];
    v314 = [(UIKeyboardSquishTransition *)self geometriesForKeyplane:v7];
    v353 = 0u;
    v354 = 0u;
    v355 = 0u;
    v356 = 0u;
    v307 = v8;
    v317 = [v307 countByEnumeratingWithState:&v353 objects:v357 count:16];
    v332 = &v300[-4 * v10];
    v30 = 0;
    v31 = 0.0;
    if (v317)
    {
      v310 = *v354;
      v305 = v23 + v17 * v25;
      v302 = 1.0 / v17 * v305;
      v301 = 1.0 / v20 * (v27 + v20 * v29);
      v306 = v23;
      v349 = 1.0 / v17;
      v304 = v23 * (1.0 / v17);
      v351 = 1.0 / v20;
      v303 = v27 * (1.0 / v20);
      v325 = -1;
      v32.i64[0] = 0x80000000800000;
      v32.i64[1] = 0x80000000800000;
      v33 = v345;
      v34 = v345;
      v333 = vnegq_f32(v32);
      v35 = v347;
      v36 = v347;
      v37 = v341;
      v38 = v341;
      v39 = v14;
      v40 = NAN;
      v313 = v6;
      v312 = v7;
      v311 = self;
      do
      {
        v41 = 0;
        do
        {
          v337 = v39;
          v339 = v38;
          v346 = v36;
          v338 = v34;
          v318 = v14;
          v324 = v37;
          v319 = v35;
          v320 = v33;
          if (*v354 != v310)
          {
            objc_enumerationMutation(v307);
          }

          v331 = v41;
          v42 = *(*(&v353 + 1) + 8 * v41);
          v43 = [v6 keys];
          v44 = [v43 indexOfObject:v42];
          v45 = [v315 objectAtIndex:v44];

          v46 = [v7 keys];
          v47 = [v46 indexOfObject:v42];
          v48 = [v314 objectAtIndex:v47];

          [v45 frame];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;
          v330 = v45;
          [v45 paddedFrame];
          v58 = v57;
          v60 = v59;
          v336 = v61;
          v335 = v62;
          [v48 frame];
          v64 = v63;
          v341 = v65;
          v347 = v66;
          v345 = v67;
          v329 = v48;
          [v48 paddedFrame];
          v327 = v68;
          v334 = v69;
          v326 = v70;
          v328 = v71;
          v360.origin.x = v337;
          v72 = v339;
          v360.origin.y = v339;
          v360.size.width = v346;
          v360.size.height = v338;
          IsNull = CGRectIsNull(v360);
          v74 = *&v31 + 1;
          v344 = v54;
          v342 = v52;
          v343 = v50;
          v348 = v64;
          v340 = v56;
          if (IsNull || v72 != v52)
          {
            v322 = v58;
            v323 = v60;
            v76 = v316;
            v97 = &v316[5 * *&v31];
            v369.origin.x = v50;
            v369.origin.y = v52;
            v369.size.width = v54;
            v369.size.height = v56;
            v321 = v349 * CGRectGetMinX(v369);
            v370.origin.x = v50;
            v370.origin.y = v52;
            v370.size.width = v54;
            v370.size.height = v56;
            v309 = v350 * CGRectGetMinY(v370);
            v371.origin.x = v64;
            v98 = v341;
            v371.origin.y = v341;
            v99 = v347;
            v371.size.width = v347;
            v100 = v345;
            v371.size.height = v345;
            v308 = v351 * CGRectGetMinX(v371);
            v372.origin.x = v64;
            v372.origin.y = v98;
            v372.size.width = v99;
            v372.size.height = v100;
            v101 = v352 * CGRectGetMinY(v372);
            v102 = v309;
            *v97 = v321;
            *(v97 + 1) = v102;
            *(v97 + 2) = v308;
            *(v97 + 3) = v101;
            v97[4] = 0x3FE0000000000000;
            v103 = &v76[5 * v74];
            v373.origin.x = v50;
            v373.origin.y = v52;
            v373.size.width = v54;
            v373.size.height = v56;
            v321 = v349 * CGRectGetMinX(v373);
            v374.origin.x = v50;
            v374.origin.y = v52;
            v374.size.width = v54;
            v374.size.height = v56;
            v104 = v350 * CGRectGetMaxY(v374);
            v375.origin.x = v64;
            v375.origin.y = v98;
            v375.size.width = v99;
            v375.size.height = v100;
            v105 = v351 * CGRectGetMinX(v375);
            v376.origin.x = v64;
            v376.origin.y = v98;
            v376.size.width = v99;
            v376.size.height = v100;
            v106 = v352 * CGRectGetMaxY(v376);
            *v103 = v321;
            v103[1] = v104;
            v103[2] = v105;
            v103[3] = v106;
            v103[4] = 0.5;
            if ((IsNull | ![(UIKeyboardSquishTransition *)self _allowFacesToAdjoinToAdjacentFaces]))
            {
              v107 = v30;
              v108 = v341;
              v109 = v340;
              v110 = v344;
              v111 = v342;
              v112 = v347;
            }

            else
            {
              v113 = v337;
              v377.origin.x = v337;
              v114 = v339;
              v377.origin.y = v339;
              v115 = v346;
              v377.size.width = v346;
              v116 = v338;
              v377.size.height = v338;
              if (CGRectGetMaxX(v377) >= v305)
              {
                v321 = v40;
                v137 = v332;
                v135 = v324;
              }

              else
              {
                v117 = *(v97 + 1);
                v118 = &v76[5 * *&v31 + 10];
                *v118 = *v97;
                *(v118 + 1) = v117;
                v118[4] = v97[4];
                v119 = *(v103 + 1);
                *(v97 + 15) = *v103;
                *(v97 + 17) = v119;
                v97[19] = *(v103 + 4);
                v120 = v113;
                *&v119 = v114;
                v121 = v115;
                v122 = v116;
                MinY = CGRectGetMinY(*(&v119 - 8));
                v124 = v350;
                v125 = v350 * MinY;
                v126 = v318;
                v378.origin.x = v318;
                v127 = v324;
                v378.origin.y = v324;
                v128 = v319;
                v378.size.width = v319;
                v129 = v320;
                v378.size.height = v320;
                v130 = CGRectGetMinY(v378);
                v131 = v352;
                v132 = v302;
                *v97 = v302;
                *(v97 + 1) = v125;
                v133 = v301;
                *(v97 + 2) = v301;
                *(v97 + 3) = v131 * v130;
                v97[4] = 0x3FE0000000000000;
                v379.origin.x = v337;
                v379.origin.y = v339;
                v379.size.width = v346;
                v379.size.height = v338;
                v321 = v124 * CGRectGetMaxY(v379);
                v115 = v346;
                v380.origin.x = v126;
                v380.origin.y = v127;
                v380.size.width = v128;
                v380.size.height = v129;
                v134 = v131 * CGRectGetMaxY(v380);
                v116 = v338;
                v135 = v127;
                v114 = v339;
                v136 = v321;
                *v103 = v132;
                v103[1] = v136;
                v113 = v337;
                v103[2] = v133;
                v103[3] = v134;
                v103[4] = 0.5;
                v137 = v332;
                v138 = &v332[4 * v30];
                v139 = v325;
                v138->i32[0] = LODWORD(v40);
                v138->i32[1] = v139;
                v138->i32[2] = v74;
                v138->i32[3] = LODWORD(v31);
                v138[1] = v333;
                ++v30;
                v325 = *&v31 + 1;
                v74 = *&v31 + 3;
                v321 = v31;
                *&v31 += 2;
              }

              v324 = v135;
              v140 = &v76[5 * *&v31];
              v141 = *(v140 + 1);
              *(v140 + 5) = *v140;
              *(v140 + 6) = v141;
              v140[14] = v140[4];
              v142 = &v76[5 * v74];
              v143 = *(v142 + 1);
              *(v142 + 5) = *v142;
              *(v142 + 6) = v143;
              v142[14] = v142[4];
              v144 = v113;
              *&v143 = v114;
              v145 = v115;
              v146 = v116;
              v147 = CGRectGetMinY(*(&v143 - 8));
              v148 = v350;
              v149 = v350 * v147;
              v150 = v318;
              v381.origin.x = v318;
              v381.origin.y = v135;
              v151 = v116;
              v152 = v319;
              v381.size.width = v319;
              v153 = v320;
              v381.size.height = v320;
              v154 = CGRectGetMinY(v381);
              *v140 = 0x3FF0000000000000;
              v155 = v352;
              *(v140 + 1) = v149;
              v140[2] = 0x3FF0000000000000;
              *(v140 + 3) = v155 * v154;
              v140[4] = 0x3FE0000000000000;
              v382.origin.x = v113;
              v382.origin.y = v339;
              v382.size.width = v346;
              v382.size.height = v151;
              v156 = v148 * CGRectGetMaxY(v382);
              v383.origin.x = v150;
              v383.origin.y = v324;
              v383.size.width = v152;
              v383.size.height = v153;
              MaxY = CGRectGetMaxY(v383);
              *v142 = 0x3FF0000000000000;
              *(v142 + 1) = v156;
              v142[2] = 0x3FF0000000000000;
              *(v142 + 3) = v155 * MaxY;
              v142[4] = 0x3FE0000000000000;
              v158 = &v137[4 * v30];
              v159 = v325;
              v158->i32[0] = LODWORD(v321);
              v158->i32[1] = v159;
              v158->i32[2] = v74;
              v158->i32[3] = LODWORD(v31);
              v158[1] = v333;
              v107 = v30 + 1;
              v74 = *&v31 + 3;
              *&v31 += 2;
              v111 = v342;
              v108 = v341;
              v109 = v340;
              v112 = v347;
              v110 = v344;
            }

            v160 = &v76[5 * *&v31];
            v161 = *(v160 + 1);
            *(v160 + 5) = *v160;
            *(v160 + 6) = v161;
            v160[14] = v160[4];
            v162 = &v76[5 * v74];
            v163 = *(v162 + 1);
            *(v162 + 5) = *v162;
            *(v162 + 6) = v163;
            v162[14] = v162[4];
            v164 = v343;
            v165 = v343;
            *&v163 = v111;
            v166 = CGRectGetMinY(*(&v110 - 2));
            v167 = v350;
            v168 = v350 * v166;
            v169 = v348;
            v384.origin.x = v348;
            v384.origin.y = v108;
            v384.size.width = v112;
            v170 = v345;
            v384.size.height = v345;
            v171 = CGRectGetMinY(v384);
            *v160 = 0;
            v172 = v352;
            *(v160 + 1) = v168;
            v173 = v169;
            v174 = v111;
            v160[2] = 0;
            *(v160 + 3) = v172 * v171;
            v160[4] = 0x3FE0000000000000;
            v385.origin.x = v164;
            v385.origin.y = v111;
            v385.size.width = v344;
            v385.size.height = v340;
            v175 = v167 * CGRectGetMaxY(v385);
            v386.origin.x = v173;
            v176 = v108;
            v386.origin.y = v108;
            v177 = v347;
            v386.size.width = v347;
            v386.size.height = v170;
            v178 = CGRectGetMaxY(v386);
            *v162 = 0;
            *(v162 + 1) = v175;
            v179 = v340;
            v180 = v344;
            v162[2] = 0;
            *(v162 + 3) = v172 * v178;
            v162[4] = 0x3FE0000000000000;
            v181 = &v332[4 * v107];
            v181->i32[0] = LODWORD(v31);
            v181->i32[1] = v74;
            v181->i32[2] = v74 + 2;
            v181->i32[3] = LODWORD(v31) + 2;
            *&v321 = *&v31 + 2;
            v181[1] = v333;
            v30 = v107 + 1;
            v74 = *&v31 + 3;
            v387.origin.x = v164;
            v387.origin.y = v174;
            v387.size.width = v180;
            v387.size.height = v179;
            if (CGRectGetMinX(v387) <= v306)
            {
              v94 = 0;
              v40 = v321;
              v31 = v321;
              v96 = v350;
            }

            else
            {
              v182 = &v76[5 * *&v31];
              v183 = *(v160 + 6);
              *(v182 + 10) = *(v160 + 5);
              *(v182 + 11) = v183;
              v184 = &v76[5 * v74];
              v185 = *(v184 + 1);
              *(v182 + 25) = *v184;
              *&v186 = *&v31 + 4;
              v182[24] = v160[14];
              v187 = *&v31 + 5;
              *(v182 + 27) = v185;
              v182[29] = v184[4];
              v188 = v164;
              *&v185 = v174;
              v189 = v180;
              v190 = v179;
              v191 = CGRectGetMinY(*(&v185 - 8));
              v388.size.width = v177;
              v388.size.height = v170;
              v192 = v350;
              v193 = v164;
              v194 = v350 * v191;
              v388.origin.x = v348;
              v388.origin.y = v176;
              v195 = CGRectGetMinY(v388);
              v196 = v352;
              v389.size.width = v180;
              v197 = v304;
              *(v160 + 10) = v304;
              *(v160 + 11) = v194;
              v198 = v303;
              *(v160 + 12) = v303;
              *(v160 + 13) = v196 * v195;
              v160[14] = 0x3FE0000000000000;
              v389.origin.x = v193;
              v389.origin.y = v174;
              v179 = v340;
              v389.size.height = v340;
              v199 = v192 * CGRectGetMaxY(v389);
              v390.origin.x = v348;
              v390.origin.y = v176;
              v390.size.width = v347;
              v390.size.height = v345;
              v200 = CGRectGetMaxY(v390);
              v94 = 0;
              *v184 = v197;
              *(v184 + 1) = v199;
              *(v184 + 2) = v198;
              *(v184 + 3) = v196 * v200;
              v184[4] = 0x3FE0000000000000;
              v201 = &v332[4 * v30];
              v201->i32[0] = LODWORD(v321);
              v201->i32[1] = v74;
              v201->i32[2] = v187;
              v201->i32[3] = LODWORD(v186);
              v201[1] = v333;
              v30 = v107 + 2;
              v74 = v187;
              v40 = v186;
              v31 = v186;
              v96 = v192;
            }

            v56 = v179;
            v60 = v323;
            v58 = v322;
          }

          else
          {
            v75 = [(UIKeyboardSquishTransition *)self disableMeshOptimization];
            v76 = v316;
            if (v75)
            {
              v77 = &v316[5 * *&v31];
              v361.origin.x = v50;
              v361.origin.y = v52;
              v361.size.width = v54;
              v361.size.height = v56;
              MinX = CGRectGetMinX(v361);
              v323 = v60;
              v346 = v349 * MinX;
              v362.origin.x = v50;
              v362.origin.y = v52;
              v362.size.width = v54;
              v362.size.height = v56;
              v79 = CGRectGetMinY(v362);
              v322 = v58;
              v339 = v350 * v79;
              v363.origin.x = v64;
              v80 = v341;
              v363.origin.y = v341;
              v81 = v347;
              v363.size.width = v347;
              v82 = v345;
              v363.size.height = v345;
              v83 = v351 * CGRectGetMinX(v363);
              v364.origin.x = v64;
              v364.origin.y = v80;
              v364.size.width = v81;
              v364.size.height = v82;
              v84 = CGRectGetMinY(v364);
              v85 = v352;
              v86 = v339;
              *v77 = v346;
              v77[1] = v86;
              v77[2] = v83;
              v77[3] = v85 * v84;
              v77[4] = 0.5;
              v87 = &v76[5 * v74];
              v365.origin.x = v50;
              v365.origin.y = v52;
              v365.size.width = v54;
              v88 = v340;
              v365.size.height = v340;
              v346 = v349 * CGRectGetMinX(v365);
              v366.origin.x = v50;
              v366.origin.y = v52;
              v366.size.width = v54;
              v89 = v348;
              v366.size.height = v88;
              v90 = CGRectGetMaxY(v366);
              v91 = v350;
              v339 = v350 * v90;
              v367.origin.x = v89;
              v367.origin.y = v80;
              v367.size.width = v81;
              v367.size.height = v82;
              v92 = v351 * CGRectGetMinX(v367);
              v368.origin.x = v89;
              v368.origin.y = v80;
              v368.size.width = v81;
              v368.size.height = v82;
              v93 = CGRectGetMaxY(v368);
              v56 = v88;
              v94 = 0;
              v60 = v323;
              v95 = v339;
              *v87 = v346;
              v87[1] = v95;
              v58 = v322;
              v87[2] = v92;
              v87[3] = v85 * v93;
              v87[4] = 0.5;
              v40 = v31;
              v96 = v91;
            }

            else
            {
              v94 = 2;
              v96 = v350;
              v74 = v325;
            }
          }

          v324 = v40;
          v325 = v74;
          v202 = v96;
          v337 = v58 + 4.0;
          v338 = v336 + -8.0;
          v336 = v60 + 4.0;
          v346 = v335 + -8.0;
          v323 = v327 + 4.0;
          v335 = v326 + -8.0;
          v203 = *&v31 - v94;
          v204 = *&v31 - v94 + 2;
          v205 = *&v31 + (v94 ^ 3);
          v334 = v334 + 4.0;
          LODWORD(v327) = LODWORD(v31) - v94 + 4;
          v339 = v328 + -8.0;
          LODWORD(v328) = LODWORD(v31) - v94 + 5;
          LODWORD(v326) = LODWORD(v31) - v94 + 6;
          v206 = *&v31 + (v94 ^ 7);
          v207 = v343;
          v391.origin.x = v343;
          v208 = v342;
          v391.origin.y = v342;
          v209 = v344;
          v391.size.width = v344;
          v210 = v56;
          v391.size.height = v56;
          MaxX = CGRectGetMaxX(v391);
          v212 = v349;
          v322 = v349 * MaxX;
          v392.origin.x = v207;
          v392.origin.y = v208;
          v392.size.width = v209;
          v392.size.height = v56;
          v213 = v202 * CGRectGetMinY(v392);
          v214 = v348;
          v393.origin.x = v348;
          v215 = v341;
          v393.origin.y = v341;
          v216 = v347;
          v393.size.width = v347;
          v217 = v345;
          v393.size.height = v345;
          v218 = CGRectGetMaxX(v393);
          v219 = v214;
          v220 = v351 * v218;
          v394.origin.x = v219;
          v394.origin.y = v215;
          v394.size.width = v216;
          v394.size.height = v217;
          v221 = v352 * CGRectGetMinY(v394);
          v222 = &v76[5 * v203];
          v222[10] = v322;
          v222[11] = v213;
          v222[12] = v220;
          v222[13] = v221;
          v222[14] = 0.5;
          v223 = v76;
          v224 = &v76[5 * v205];
          v225 = v343;
          v395.origin.x = v343;
          v226 = v342;
          v395.origin.y = v342;
          v395.size.width = v209;
          v395.size.height = v210;
          v227 = v212 * CGRectGetMaxX(v395);
          v396.origin.x = v225;
          v396.origin.y = v226;
          v396.size.width = v209;
          v396.size.height = v210;
          v228 = CGRectGetMaxY(v396);
          v229 = v350;
          v230 = v350 * v228;
          v231 = v348;
          v397.origin.x = v348;
          v397.origin.y = v215;
          v397.size.width = v216;
          v397.size.height = v217;
          v232 = v351 * CGRectGetMaxX(v397);
          v398.origin.x = v231;
          v398.origin.y = v215;
          v398.size.width = v216;
          v398.size.height = v217;
          v233 = CGRectGetMaxY(v398);
          v234 = v352;
          *v224 = v227;
          v224[1] = v230;
          v224[2] = v232;
          v224[3] = v234 * v233;
          v224[4] = 0.5;
          v235 = v337;
          v399.origin.x = v337;
          v236 = v336;
          v399.origin.y = v336;
          v237 = v338;
          v399.size.width = v338;
          v238 = v346;
          v399.size.height = v346;
          v239 = v349 * CGRectGetMinX(v399);
          v400.origin.x = v235;
          v400.origin.y = v236;
          v400.size.width = v237;
          v400.size.height = v238;
          v240 = v229;
          v322 = v229 * CGRectGetMinY(v400);
          v241 = v323;
          v401.origin.x = v323;
          v242 = v334;
          v401.origin.y = v334;
          v243 = v335;
          v401.size.width = v335;
          v244 = v339;
          v401.size.height = v339;
          v245 = v351 * CGRectGetMinX(v401);
          v402.origin.x = v241;
          v402.origin.y = v242;
          v402.size.width = v243;
          v402.size.height = v244;
          v246 = CGRectGetMinY(v402);
          v247 = v322;
          v222[20] = v239;
          v222[21] = v247;
          v222[22] = v245;
          v222[23] = v234 * v246;
          v222[24] = 0.5;
          v248 = v337;
          v403.origin.x = v337;
          v249 = v336;
          v403.origin.y = v336;
          v250 = v338;
          v403.size.width = v338;
          v251 = v346;
          v403.size.height = v346;
          v252 = CGRectGetMinX(v403);
          v253 = v349;
          v322 = v349 * v252;
          v404.origin.x = v248;
          v404.origin.y = v249;
          v254 = v250;
          v404.size.width = v250;
          v404.size.height = v251;
          v321 = v240 * CGRectGetMaxY(v404);
          v405.origin.x = v241;
          v405.origin.y = v242;
          v255 = v335;
          v405.size.width = v335;
          v256 = v339;
          v405.size.height = v339;
          v257 = CGRectGetMinX(v405);
          v258 = v351;
          v259 = v351 * v257;
          v406.origin.x = v241;
          v406.origin.y = v242;
          v406.size.width = v255;
          v406.size.height = v256;
          v260 = v352 * CGRectGetMaxY(v406);
          v261 = v321;
          v222[25] = v322;
          v222[26] = v261;
          v222[27] = v259;
          v222[28] = v260;
          v222[29] = 0.5;
          v262 = v337;
          v407.origin.x = v337;
          v263 = v336;
          v407.origin.y = v336;
          v407.size.width = v254;
          v264 = v346;
          v407.size.height = v346;
          v322 = v253 * CGRectGetMaxX(v407);
          v408.origin.x = v262;
          v265 = v262;
          v408.origin.y = v263;
          v408.size.width = v254;
          v408.size.height = v264;
          v321 = v350 * CGRectGetMinY(v408);
          v409.origin.x = v241;
          v266 = v334;
          v409.origin.y = v334;
          v409.size.width = v255;
          v267 = v339;
          v409.size.height = v339;
          v268 = v258 * CGRectGetMaxX(v409);
          v410.origin.x = v241;
          v410.origin.y = v266;
          v410.size.width = v255;
          v410.size.height = v267;
          v269 = v352 * CGRectGetMinY(v410);
          v270 = v321;
          v222[30] = v322;
          v222[31] = v270;
          v222[32] = v268;
          v222[33] = v269;
          v222[34] = 0.5;
          v271 = &v223[5 * v206];
          v411.origin.x = v265;
          v411.origin.y = v263;
          v272 = v338;
          v411.size.width = v338;
          v273 = v346;
          v411.size.height = v346;
          v322 = v349 * CGRectGetMaxX(v411);
          v412.origin.x = v265;
          v412.origin.y = v263;
          v412.size.width = v272;
          v412.size.height = v273;
          v274 = v350 * CGRectGetMaxY(v412);
          v413.origin.x = v241;
          v413.origin.y = v266;
          v413.size.width = v255;
          v413.size.height = v267;
          v275 = v351 * CGRectGetMaxX(v413);
          v414.origin.x = v241;
          v414.origin.y = v266;
          v414.size.width = v255;
          v414.size.height = v267;
          v276 = v352 * CGRectGetMaxY(v414);
          *v271 = v322;
          v271[1] = v274;
          v271[2] = v275;
          v271[3] = v276;
          v271[4] = 0.5;
          v277 = &v332[4 * v30];
          v278 = LODWORD(v324);
          v279 = v325;
          v277->i32[0] = LODWORD(v324);
          v277->i32[1] = v279;
          v280 = LODWORD(v328);
          v281 = LODWORD(v327);
          v277->i32[2] = LODWORD(v328);
          v277->i32[3] = v281;
          v282 = v333;
          v277[1] = v333;
          v277[2].i32[0] = v278;
          v277[2].i32[1] = v204;
          v283 = LODWORD(v326);
          v277[2].i32[2] = LODWORD(v326);
          v277[2].i32[3] = v281;
          v277[3] = v282;
          v40 = *&v204;
          v277[4].i32[0] = v204;
          v277[4].i32[1] = v205;
          v277[4].i32[2] = v206;
          v277[4].i32[3] = v283;
          v277[5] = v282;
          v277[6].i32[0] = v279;
          v277[6].i32[1] = v280;
          v277[6].i32[2] = v206;
          v277[6].i32[3] = v205;
          v325 = v205;
          v277[7] = v282;
          v277[8].i32[0] = v281;
          v277[8].i32[1] = v283;
          v277[8].i32[2] = v206;
          v277[8].i32[3] = v280;
          v30 += 5;
          *&v31 = v203 + 8;
          v277[9] = v282;

          v41 = v331 + 1;
          v6 = v313;
          v7 = v312;
          self = v311;
          v33 = v345;
          v35 = v347;
          v37 = v341;
          v14 = v348;
          v34 = v340;
          v36 = v344;
          v38 = v342;
          v39 = v343;
        }

        while (v317 != v331 + 1);
        v317 = [v307 countByEnumeratingWithState:&v353 objects:v357 count:16];
      }

      while (v317);
    }

    else
    {
      LODWORD(v40) = -1;
      v39 = v14;
      v37 = v341;
      v38 = v341;
      v35 = v347;
      v36 = v347;
      v33 = v345;
      v34 = v345;
      v325 = 0xFFFFFFFFLL;
    }

    v415.origin.x = v39;
    v415.origin.y = v38;
    v415.size.width = v36;
    v415.size.height = v34;
    if (CGRectIsNull(v415))
    {
      v285 = v316;
      v286 = v30;
      v287 = v332;
    }

    else
    {
      v285 = v316;
      v288 = &v316[5 * *&v31];
      v416.origin.x = v39;
      v416.origin.y = v38;
      v416.size.width = v36;
      v416.size.height = v34;
      v289 = CGRectGetMinY(v416);
      v344 = v36;
      v343 = v39;
      v290 = v350;
      v291 = v350 * v289;
      v417.origin.x = v14;
      v417.origin.y = v37;
      v417.size.width = v35;
      v417.size.height = v33;
      v292 = CGRectGetMinY(v417);
      *v288 = 1.0;
      v418.origin.y = v38;
      v293 = v352;
      v288[1] = v291;
      v288[2] = 1.0;
      v288[3] = v293 * v292;
      v288[4] = 0.5;
      v418.origin.x = v343;
      v418.size.width = v344;
      v418.size.height = v34;
      v294 = v290 * CGRectGetMaxY(v418);
      v419.origin.x = v14;
      v419.origin.y = v37;
      v419.size.width = v35;
      v419.size.height = v33;
      v295 = CGRectGetMaxY(v419);
      v288[5] = 1.0;
      v288[6] = v294;
      v288[7] = 1.0;
      v288[8] = v293 * v295;
      v288[9] = 0.5;
      v287 = v332;
      v296 = &v332[4 * v30];
      v297 = v325;
      v296->i32[0] = LODWORD(v40);
      v296->i32[1] = v297;
      v296->i32[2] = LODWORD(v31) + 1;
      v296->i32[3] = LODWORD(v31);
      v298.i64[0] = 0x80000000800000;
      v298.i64[1] = 0x80000000800000;
      v296[1] = vnegq_f32(v298);
      v286 = v30 + 1;
      *&v31 += 2;
    }

    v284 = [MEMORY[0x1E69793D8] meshTransformWithVertexCount:*&v31 vertices:v285 faceCount:v286 faces:v287 depthNormalization:*MEMORY[0x1E6979700]];
  }

  return v284;
}

@end