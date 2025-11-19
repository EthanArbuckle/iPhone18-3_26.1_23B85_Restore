@interface _UIMorphingView
- (CGRect)initialBounds;
- (UIView)opacityPairSourceView;
- (id)_currentDestinationView;
- (void)_updateMorphProgress;
- (void)addContentView:(id)a3;
- (void)setProgress:(double)a3;
@end

@implementation _UIMorphingView

- (void)addContentView:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIMorphingView *)self contentViews];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(_UIMorphingView *)self setContentViews:v6];
  }

  v7 = [(_UIMorphingView *)self contentViews];
  v8 = [v7 indexOfObject:v4];

  v9 = [(_UIMorphingView *)self contentViews];
  v10 = v9;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v9 count];

    if (v11)
    {
      [v4 setAlpha:0.0];
    }

    else
    {
      [v4 bounds];
      [(UIView *)self setBounds:?];
    }

    v14 = [(_UIMorphingView *)self contentViews];
    [v14 addObject:v4];

    [(UIView *)self addSubview:v4];
  }

  else
  {
    v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:v8];
    v13 = [(_UIMorphingView *)self contentViews];
    [v10 moveObjectsAtIndexes:v12 toIndex:{objc_msgSend(v13, "count") - 1}];
  }

  [(UIView *)self bounds];
  [(_UIMorphingView *)self setInitialBounds:?];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = [(_UIMorphingView *)self contentViews];
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v36;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v35 + 1) + 8 * i);
        [v20 alpha];
        [v20 _uimorphingView_setInitialAlpha:?];
      }

      v17 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v17);
  }

  if ([(_UIMorphingView *)self useOpacityPairFilter])
  {
    v21 = [(_UIMorphingView *)self contentViews];
    v22 = [v21 count];

    if (v22 >= 2)
    {
      v23 = [(_UIMorphingView *)self opacityPairSourceView];
      v24 = [v23 layer];
      [v24 setFilters:0];

      v25 = [(_UIMorphingView *)self opacityPairSourceView];
      v26 = [v25 layer];
      [v26 removeAllAnimations];

      v27 = [(_UIMorphingView *)self contentViews];
      v28 = [(_UIMorphingView *)self contentViews];
      v29 = [v27 objectAtIndexedSubscript:{objc_msgSend(v28, "count") - 2}];
      [(_UIMorphingView *)self setOpacityPairSourceView:v29];

      v30 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CC8]];
      v39 = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
      v32 = [(_UIMorphingView *)self opacityPairSourceView];
      v33 = [v32 layer];
      [v33 setFilters:v31];
    }
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __34___UIMorphingView_addContentView___block_invoke;
  v34[3] = &unk_1E70F3590;
  v34[4] = self;
  [UIView performWithoutAnimation:v34];
}

- (void)setProgress:(double)a3
{
  if (self->_progress != a3)
  {
    self->_progress = a3;
    [(_UIMorphingView *)self _updateMorphProgress];
  }
}

- (id)_currentDestinationView
{
  v2 = [(_UIMorphingView *)self contentViews];
  v3 = [v2 lastObject];

  return v3;
}

- (void)_updateMorphProgress
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = [(_UIMorphingView *)self _currentDestinationView];
  v4 = [(_UIMorphingView *)self contentViews];
  v5 = [v4 count];

  if (v5 < 2)
  {
    [v3 setAlpha:1.0];
  }

  else
  {
    [(_UIMorphingView *)self progress];
    v69 = v6;
    [(_UIMorphingView *)self initialBounds];
    v8 = v7;
    v57 = v9;
    v58 = v7;
    v11 = v10;
    recta = v10;
    v12 = v9;
    v14 = v13;
    v55 = v13;
    [v3 bounds];
    v16 = v15;
    v70 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v56 = v21;
    v79.origin.x = v8;
    v79.origin.y = v11;
    v79.size.width = v12;
    v79.size.height = v14;
    MinX = CGRectGetMinX(v79);
    v80.origin.x = v16;
    v80.origin.y = v18;
    v54 = v20;
    v80.size.width = v20;
    v80.size.height = v22;
    v65 = (1.0 - v69) * MinX + v69 * CGRectGetMinX(v80);
    v81.origin.x = v58;
    v81.origin.y = recta;
    v81.size.width = v57;
    v81.size.height = v55;
    MinY = CGRectGetMinY(v81);
    v82.origin.x = v70;
    v82.origin.y = v18;
    v82.size.width = v20;
    v82.size.height = v56;
    v63 = (1.0 - v69) * MinY + v69 * CGRectGetMinY(v82);
    v83.origin.x = v58;
    v83.origin.y = recta;
    v83.size.width = v57;
    v83.size.height = v55;
    Width = CGRectGetWidth(v83);
    v84.origin.x = v70;
    v84.origin.y = v18;
    v84.size.width = v20;
    v84.size.height = v56;
    v60 = (1.0 - v69) * Width + v69 * CGRectGetWidth(v84);
    v85.origin.x = v58;
    v85.origin.y = recta;
    v85.size.width = v57;
    v85.size.height = v55;
    Height = CGRectGetHeight(v85);
    v86.origin.x = v70;
    v86.origin.y = v18;
    v86.size.width = v20;
    v86.size.height = v56;
    v59 = 1.0 - v69;
    [(UIView *)self setBounds:v65, v63, v60, (1.0 - v69) * Height + v69 * CGRectGetHeight(v86)];
    [(UIView *)self bounds];
    v66 = v27;
    rect = v26;
    v61 = v29;
    v64 = v28;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v30 = [(_UIMorphingView *)self contentViews];
    v31 = [v30 countByEnumeratingWithState:&v73 objects:v77 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v74;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v74 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v73 + 1) + 8 * i);
          [v35 bounds];
          v37 = v36;
          v39 = v38;
          v41 = v40;
          v43 = v42;
          v87.origin.x = rect;
          v87.origin.y = v66;
          v87.size.width = v64;
          v87.size.height = v61;
          v70 = CGRectGetWidth(v87);
          v88.origin.x = v37;
          v88.origin.y = v39;
          v88.size.width = v41;
          v88.size.height = v43;
          v70 = v70 / CGRectGetWidth(v88);
          v89.origin.x = rect;
          v89.origin.y = v66;
          v89.size.width = v64;
          v89.size.height = v61;
          v44 = CGRectGetHeight(v89);
          v90.origin.x = v37;
          v90.origin.y = v39;
          v90.size.width = v41;
          v90.size.height = v43;
          v45 = CGRectGetHeight(v90);
          CGAffineTransformMakeScale(&v72, v70, v44 / v45);
          v71 = v72;
          [v35 setTransform:&v71];
          [v35 setCenter:{rect + v64 * 0.5, v66 + v61 * 0.5}];
          v46 = [(_UIMorphingView *)self opacityPairSourceView];

          if (v35 == v46)
          {
            [v3 _uimorphingView_getInitialAlpha];
            v50 = v69 + v59 * v49;
            v51 = [(_UIMorphingView *)self opacityPairSourceView];
            v52 = [v51 layer];
            v53 = [MEMORY[0x1E696AD98] numberWithDouble:v50];
            [v52 setValue:v53 forKey:@"filters.opacityPair.inputAmount"];
          }

          else
          {
            if (v35 == v3)
            {
              v47 = 1.0;
            }

            else
            {
              v47 = 0.0;
            }

            [v35 _uimorphingView_getInitialAlpha];
            [v35 setAlpha:v69 * v47 + v59 * v48];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v73 objects:v77 count:16];
      }

      while (v32);
    }
  }
}

- (CGRect)initialBounds
{
  x = self->_initialBounds.origin.x;
  y = self->_initialBounds.origin.y;
  width = self->_initialBounds.size.width;
  height = self->_initialBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)opacityPairSourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_opacityPairSourceView);

  return WeakRetained;
}

@end