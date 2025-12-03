@interface _UIMorphingView
- (CGRect)initialBounds;
- (UIView)opacityPairSourceView;
- (id)_currentDestinationView;
- (void)_updateMorphProgress;
- (void)addContentView:(id)view;
- (void)setProgress:(double)progress;
@end

@implementation _UIMorphingView

- (void)addContentView:(id)view
{
  v41 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  contentViews = [(_UIMorphingView *)self contentViews];

  if (!contentViews)
  {
    v6 = objc_opt_new();
    [(_UIMorphingView *)self setContentViews:v6];
  }

  contentViews2 = [(_UIMorphingView *)self contentViews];
  v8 = [contentViews2 indexOfObject:viewCopy];

  contentViews3 = [(_UIMorphingView *)self contentViews];
  v10 = contentViews3;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [contentViews3 count];

    if (v11)
    {
      [viewCopy setAlpha:0.0];
    }

    else
    {
      [viewCopy bounds];
      [(UIView *)self setBounds:?];
    }

    contentViews4 = [(_UIMorphingView *)self contentViews];
    [contentViews4 addObject:viewCopy];

    [(UIView *)self addSubview:viewCopy];
  }

  else
  {
    v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:v8];
    contentViews5 = [(_UIMorphingView *)self contentViews];
    [v10 moveObjectsAtIndexes:v12 toIndex:{objc_msgSend(contentViews5, "count") - 1}];
  }

  [(UIView *)self bounds];
  [(_UIMorphingView *)self setInitialBounds:?];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  contentViews6 = [(_UIMorphingView *)self contentViews];
  v16 = [contentViews6 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
          objc_enumerationMutation(contentViews6);
        }

        v20 = *(*(&v35 + 1) + 8 * i);
        [v20 alpha];
        [v20 _uimorphingView_setInitialAlpha:?];
      }

      v17 = [contentViews6 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v17);
  }

  if ([(_UIMorphingView *)self useOpacityPairFilter])
  {
    contentViews7 = [(_UIMorphingView *)self contentViews];
    v22 = [contentViews7 count];

    if (v22 >= 2)
    {
      opacityPairSourceView = [(_UIMorphingView *)self opacityPairSourceView];
      layer = [opacityPairSourceView layer];
      [layer setFilters:0];

      opacityPairSourceView2 = [(_UIMorphingView *)self opacityPairSourceView];
      layer2 = [opacityPairSourceView2 layer];
      [layer2 removeAllAnimations];

      contentViews8 = [(_UIMorphingView *)self contentViews];
      contentViews9 = [(_UIMorphingView *)self contentViews];
      v29 = [contentViews8 objectAtIndexedSubscript:{objc_msgSend(contentViews9, "count") - 2}];
      [(_UIMorphingView *)self setOpacityPairSourceView:v29];

      v30 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CC8]];
      v39 = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
      opacityPairSourceView3 = [(_UIMorphingView *)self opacityPairSourceView];
      layer3 = [opacityPairSourceView3 layer];
      [layer3 setFilters:v31];
    }
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __34___UIMorphingView_addContentView___block_invoke;
  v34[3] = &unk_1E70F3590;
  v34[4] = self;
  [UIView performWithoutAnimation:v34];
}

- (void)setProgress:(double)progress
{
  if (self->_progress != progress)
  {
    self->_progress = progress;
    [(_UIMorphingView *)self _updateMorphProgress];
  }
}

- (id)_currentDestinationView
{
  contentViews = [(_UIMorphingView *)self contentViews];
  lastObject = [contentViews lastObject];

  return lastObject;
}

- (void)_updateMorphProgress
{
  v78 = *MEMORY[0x1E69E9840];
  _currentDestinationView = [(_UIMorphingView *)self _currentDestinationView];
  contentViews = [(_UIMorphingView *)self contentViews];
  v5 = [contentViews count];

  if (v5 < 2)
  {
    [_currentDestinationView setAlpha:1.0];
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
    [_currentDestinationView bounds];
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
    contentViews2 = [(_UIMorphingView *)self contentViews];
    v31 = [contentViews2 countByEnumeratingWithState:&v73 objects:v77 count:16];
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
            objc_enumerationMutation(contentViews2);
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
          opacityPairSourceView = [(_UIMorphingView *)self opacityPairSourceView];

          if (v35 == opacityPairSourceView)
          {
            [_currentDestinationView _uimorphingView_getInitialAlpha];
            v50 = v69 + v59 * v49;
            opacityPairSourceView2 = [(_UIMorphingView *)self opacityPairSourceView];
            layer = [opacityPairSourceView2 layer];
            v53 = [MEMORY[0x1E696AD98] numberWithDouble:v50];
            [layer setValue:v53 forKey:@"filters.opacityPair.inputAmount"];
          }

          else
          {
            if (v35 == _currentDestinationView)
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

        v32 = [contentViews2 countByEnumeratingWithState:&v73 objects:v77 count:16];
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