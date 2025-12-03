@interface _UIExpandingGlyphsView
- (CGSize)intrinsicContentSize;
- (CGSize)intrinsicSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UIExpandingGlyphsView)initWithFrame:(CGRect)frame;
- (void)animateCompletionBlock:(id)block;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)setAttributedString:(id)string;
@end

@implementation _UIExpandingGlyphsView

- (_UIExpandingGlyphsView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UIExpandingGlyphsView;
  result = [(UIView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_fadesOut = 1;
  }

  return result;
}

- (void)setAttributedString:(id)string
{
  v36 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  objc_storeStrong(&self->_attributedString, string);
  window = [(UIView *)self window];
  if (window)
  {
    window2 = [(UIView *)self window];
    screen = [window2 screen];
    [screen scale];
    v10 = v9;
  }

  else
  {
    window2 = [objc_opt_self() mainScreen];
    [window2 scale];
    v10 = v11;
  }

  memset(v33, 0, sizeof(v33));
  memset(&v32, 0, sizeof(v32));

  v12 = [stringCopy _ui_glyphImageViewsScale:v33 outImageRect:&v32 outLineRect:&self->_baselineOffset outBaselineOffset:v10];
  [(_UIExpandingGlyphsView *)self setImageViews:v12];

  self->_intrinsicSize.width = CGRectGetWidth(v32);
  self->_intrinsicSize.height = CGRectGetHeight(v32);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  subviews = [(UIView *)self subviews];
  v14 = [subviews countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v28 + 1) + 8 * i) removeFromSuperview];
      }

      v15 = [subviews countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v15);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  imageViews = [(_UIExpandingGlyphsView *)self imageViews];
  v19 = [imageViews countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(imageViews);
        }

        v23 = *(*(&v24 + 1) + 8 * j);
        [(UIView *)self addSubview:v23];
        [v23 setAlpha:0.0];
      }

      v20 = [imageViews countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v20);
  }

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)animateCompletionBlock:(id)block
{
  v51 = *MEMORY[0x1E69E9840];
  [(_UIExpandingGlyphsView *)self setCompletionBlock:block];
  v4 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v5) = 1046809695;
  LODWORD(v6) = 990250344;
  LODWORD(v7) = 1057860847;
  LODWORD(v8) = 1064564184;
  v9 = [v4 initWithControlPoints:v5 :v6 :v7 :v8];
  subviews = [(UIView *)self subviews];
  v11 = [subviews count];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  expandsFromLeftToRight = self->_expandsFromLeftToRight;
  subviews2 = [(UIView *)self subviews];
  v14 = subviews2;
  if (expandsFromLeftToRight)
  {
    [subviews2 objectEnumerator];
  }

  else
  {
    [subviews2 reverseObjectEnumerator];
  }
  v15 = ;

  v16 = v15;
  v44 = [v15 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v44)
  {
    v43 = *v47;
    v17 = 0.14 / v11;
    v18 = *MEMORY[0x1E69797E0];
    v33 = *MEMORY[0x1E69797E8];
    v19 = 0.0;
    v41 = *(MEMORY[0x1E69792E8] + 80);
    v42 = *(MEMORY[0x1E69792E8] + 64);
    v39 = *(MEMORY[0x1E69792E8] + 112);
    v40 = *(MEMORY[0x1E69792E8] + 96);
    v37 = *(MEMORY[0x1E69792E8] + 16);
    v38 = *MEMORY[0x1E69792E8];
    v35 = *(MEMORY[0x1E69792E8] + 48);
    v36 = *(MEMORY[0x1E69792E8] + 32);
    obj = v16;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v47 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v46 + 1) + 8 * i);
        layer = [v21 layer];
        [layer removeAllAnimations];

        v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
        v24 = objc_alloc_init(MEMORY[0x1E69794A8]);
        [v24 setMass:2.0];
        [v24 setStiffness:300.0];
        [v24 setDamping:400.0];
        [v24 setTimingFunction:v9];
        [v24 setDuration:0.91];
        [v24 setKeyPath:@"transform"];
        v25 = MEMORY[0x1E696B098];
        CATransform3DMakeScale(&v45, 0.5, 0.5, 1.0);
        v26 = [v25 valueWithCATransform3D:&v45];
        [v24 setFromValue:v26];

        *&v45.m31 = v42;
        *&v45.m33 = v41;
        *&v45.m41 = v40;
        *&v45.m43 = v39;
        *&v45.m11 = v38;
        *&v45.m13 = v37;
        *&v45.m21 = v36;
        *&v45.m23 = v35;
        v27 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v45];
        [v24 setToValue:v27];

        [v24 setBeginTime:v19];
        [v24 setFillMode:v18];
        [v24 setRemovedOnCompletion:self->_fadesOut];
        [v23 addObject:v24];
        v28 = objc_alloc_init(MEMORY[0x1E69794A8]);
        [v28 setMass:2.0];
        [v28 setStiffness:300.0];
        [v28 setDamping:400.0];
        [v28 setTimingFunction:v9];
        [v28 setDuration:0.91];
        [v28 setKeyPath:@"opacity"];
        [v28 setFromValue:&unk_1EFE2F098];
        [v28 setToValue:&unk_1EFE2F0A8];
        [v28 setBeginTime:v19];
        [v28 setFillMode:v18];
        [v28 setRemovedOnCompletion:self->_fadesOut];
        [v23 addObject:v28];
        if (self->_fadesOut)
        {
          v29 = objc_alloc_init(MEMORY[0x1E69794A8]);
          [v29 setMass:2.0];
          [v29 setStiffness:300.0];
          [v29 setDamping:400.0];
          [v29 setTimingFunction:v9];
          [v29 setDuration:0.91];
          [v29 setKeyPath:@"opacity"];
          [v29 setFromValue:&unk_1EFE2F0A8];
          [v29 setToValue:&unk_1EFE2F098];
          [v29 setBeginTime:1.49];
          [v29 setFillMode:v33];
          [v23 addObject:v29];
        }

        v30 = objc_alloc_init(MEMORY[0x1E6979308]);
        [v30 setAnimations:v23];
        [v30 setDuration:2.4];
        LODWORD(v31) = 1066192077;
        [v30 setSpeed:v31];
        [v30 setRemovedOnCompletion:self->_fadesOut];
        [v30 setFillMode:v18];
        v32 = [_UIViewWeakCAAnimationDelegate weakAnimationDelegate:self];
        [v30 setDelegate:v32];

        [v21 addAnimation:v30 forKey:@"animations"];
        [(_UIExpandingGlyphsView *)self setRemainingAnimationCount:[(_UIExpandingGlyphsView *)self remainingAnimationCount]+ 1];
        v19 = v17 + v19;
      }

      v16 = obj;
      v44 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v44);
  }
}

- (CGSize)intrinsicContentSize
{
  width = self->_intrinsicSize.width;
  height = self->_intrinsicSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = self->_intrinsicSize.width;
  height = self->_intrinsicSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  [(_UIExpandingGlyphsView *)self setRemainingAnimationCount:[(_UIExpandingGlyphsView *)self remainingAnimationCount:stop]- 1];
  if (![(_UIExpandingGlyphsView *)self remainingAnimationCount])
  {
    completionBlock = [(_UIExpandingGlyphsView *)self completionBlock];
    [(_UIExpandingGlyphsView *)self setCompletionBlock:0];
    v5 = completionBlock;
    if (completionBlock)
    {
      (*(completionBlock + 16))(completionBlock);
      v5 = completionBlock;
    }
  }
}

- (CGSize)intrinsicSize
{
  width = self->_intrinsicSize.width;
  height = self->_intrinsicSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end