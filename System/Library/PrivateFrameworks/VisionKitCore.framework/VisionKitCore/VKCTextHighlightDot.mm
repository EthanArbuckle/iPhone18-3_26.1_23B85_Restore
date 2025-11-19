@interface VKCTextHighlightDot
- (CALayer)textHighlightLayer;
- (CGRect)_rectForViewSpace:(CGRect)a3;
- (CGRect)rectForIndicatorDot;
- (VKCTextHighlightDot)initWithColor:(id)a3;
- (VKQuadSideLength)quadSideLength;
- (double)opacityForCurrentQuadSize;
- (void)_updateLayout;
- (void)configureForPulsing:(BOOL)a3;
- (void)layoutSubviews;
- (void)setPulsing:(BOOL)a3;
- (void)updateIndicatorDotForState;
@end

@implementation VKCTextHighlightDot

- (VKCTextHighlightDot)initWithColor:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v16.receiver = self;
  v16.super_class = VKCTextHighlightDot;
  v6 = [(VKCTextHighlightDot *)&v16 init];
  if (v6)
  {
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v8 = [(VKCTextHighlightDot *)v6 registerForTraitChanges:v7 withAction:sel__updateLayout];

    v9 = objc_alloc_init(MEMORY[0x1E6979398]);
    pulsingLayer = v6->_pulsingLayer;
    v6->_pulsingLayer = v9;

    v11 = objc_alloc_init(MEMORY[0x1E6979398]);
    circleLayer = v6->_circleLayer;
    v6->_circleLayer = v11;

    objc_storeStrong(&v6->_highlightColor, a3);
    v13 = [(VKCTextHighlightDot *)v6 layer];
    [v13 addSublayer:v6->_pulsingLayer];

    v14 = [(VKCTextHighlightDot *)v6 layer];
    [v14 addSublayer:v6->_circleLayer];
  }

  return v6;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VKCTextHighlightDot;
  [(VKCTextHighlightDot *)&v3 layoutSubviews];
  [(VKCTextHighlightDot *)self _updateLayout];
}

- (void)_updateLayout
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(VKCTextHighlightDot *)self updateIndicatorDotForState];
  [(VKCTextHighlightDot *)self opacityForCurrentQuadSize];
  v4 = v3;
  [(UIView *)self setVk_alpha:?];
  v6 = [(VKCTextHighlightDot *)self textHighlightLayer];
  v5 = 1.0 - v4;
  *&v7 = v5;
  [v6 setOpacity:v7];

  [(VKCTextHighlightDot *)self setHidden:v4 <= 0.0];
  [(VKCTextHighlightDot *)self setPulsing:0];
  [(VKCTextHighlightDot *)self setPulsing:1];
  v8 = MEMORY[0x1E6979518];

  [v8 commit];
}

- (double)opacityForCurrentQuadSize
{
  [(UIView *)self vk_windowLengthFromViewLength:1.0];
  v4 = v3;
  [(VKCTextHighlightDot *)self quadSideLength];
  v9 = VKMMultiplyQuadSideLengthScaler(v5, v6, v7, v8, v4);
  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v9 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v9;
  }

  if (v13 >= v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = VKMMininumQuadSideLength(v9, v10, v11, v12);
  v17 = 0.0;
  if (v15 <= 20.0)
  {
    v18 = v15 > 18.0 && v15 < 20.0;
    v17 = 1.0;
    if (v18)
    {
      v17 = (20.0 - v15) * 0.5;
    }
  }

  v19 = (6.0 - v16) * 0.5;
  if (v19 < v17)
  {
    v19 = v17;
  }

  if (v17 < 1.0 && v16 < 6.0)
  {
    return v19;
  }

  else
  {
    return v17;
  }
}

- (CGRect)rectForIndicatorDot
{
  [(VKCTextHighlightDot *)self _rectForViewSpace:0.0, 0.0, 16.0, 16.0];
  v4 = v3;
  [(VKCTextHighlightDot *)self bounds];
  v9 = VKMCenterOfRect(v5, v6, v7, v8);

  v11 = VKMRectWithCenterAndSize(v9, v10, v4);
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)updateIndicatorDotForState
{
  v8 = [(VKCTextHighlightDot *)self circleLayer];
  [(VKCTextHighlightDot *)self rectForIndicatorDot];
  v4 = v3;
  [v8 setFrame:?];
  [v8 setCornerRadius:v4 * 0.5];
  [v8 setBorderWidth:0.0];
  [v8 setContents:0];
  v5 = [(VKCTextHighlightDot *)self highlightColor];
  [v8 setBackgroundColor:{objc_msgSend(v5, "CGColor")}];

  v6 = [MEMORY[0x1E69DC888] blackColor];
  [v8 setShadowColor:{objc_msgSend(v6, "CGColor")}];

  LODWORD(v7) = 1045220557;
  [v8 setShadowOpacity:v7];
  [v8 setShadowRadius:8.0];
  [v8 setMasksToBounds:0];
  [(VKCTextHighlightDot *)self setPulsing:1];
}

- (CGRect)_rectForViewSpace:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(VKCTextHighlightDot *)self window];
  v9 = [v8 screen];
  v10 = [v9 fixedCoordinateSpace];
  v11 = [(VKCTextHighlightDot *)self coordinateSpace];
  [v10 convertRect:v11 toCoordinateSpace:{x, y, width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)setPulsing:(BOOL)a3
{
  if (self->_pulsing != a3)
  {
    self->_pulsing = a3;
    [(VKCTextHighlightDot *)self configureForPulsing:?];
  }
}

- (void)configureForPulsing:(BOOL)a3
{
  v60[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [(VKCTextHighlightDot *)self pulsingLayer];
    v5 = VKMRectWithSize();
    v52 = v6;
    v53 = v5;
    v8 = v7;
    v10 = v9;
    [(VKCTextHighlightDot *)self _rectForViewSpace:?];
    v12 = v11;
    v54 = v11;
    v55 = v11 * 0.0625;
    v13 = [(VKCTextHighlightDot *)self layer];
    [v13 bounds];
    v18 = VKMCenterOfRect(v14, v15, v16, v17);
    v20 = v19;

    v21 = VKMRectWithCenterAndSize(v18, v20, v12);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [(VKCTextHighlightDot *)self _rectForViewSpace:VKMRectWithSize()];
    v28 = v18;
    v30 = v29;
    v31 = VKMRectWithCenterAndSize(v28, v20, v29);
    v58 = v32;
    v59 = v31;
    v56 = v34;
    v57 = v33;
    [v4 setFrame:{v53, v8, v52, v10}];
    [v4 setFrame:{v21, v23, v25, v27}];
    v35 = [MEMORY[0x1E69DC888] colorWithRed:0.91796875 green:0.91796875 blue:0.91796875 alpha:0.5];
    [v4 setBackgroundColor:{objc_msgSend(v35, "CGColor")}];

    [v4 setCornerRadius:v54 * 0.5];
    [v4 setBorderWidth:v55];
    v36 = [MEMORY[0x1E69DC888] colorWithRed:0.78125 green:0.78125 blue:0.78125 alpha:0.5];
    [v4 setBorderColor:{objc_msgSend(v36, "CGColor")}];

    v37 = [MEMORY[0x1E6979318] animation];
    [v37 setKeyPath:@"bounds"];
    [v37 setDuration:1.5];
    v38 = [MEMORY[0x1E696B098] vk_valueWithRect:{v21, v23, v25, v27}];
    [v37 setFromValue:v38];

    v39 = [MEMORY[0x1E696B098] vk_valueWithRect:{v59, v58, v57, v56}];
    [v37 setToValue:v39];

    v40 = *MEMORY[0x1E6979EB8];
    v41 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v37 setTimingFunction:v41];

    v42 = *MEMORY[0x1E69797E8];
    [v37 setFillMode:*MEMORY[0x1E69797E8]];
    [v37 setRemovedOnCompletion:0];
    v43 = [MEMORY[0x1E6979318] animation];
    [v43 setKeyPath:@"cornerRadius"];
    [v43 setDuration:1.5];
    v44 = [MEMORY[0x1E696AD98] numberWithDouble:v54 * 0.5];
    [v43 setFromValue:v44];

    v45 = [MEMORY[0x1E696AD98] numberWithDouble:v30 * 0.5];
    [v43 setToValue:v45];

    v46 = [MEMORY[0x1E69793D0] functionWithName:v40];
    [v43 setTimingFunction:v46];

    [v43 setFillMode:v42];
    [v43 setRemovedOnCompletion:0];
    v47 = [MEMORY[0x1E6979318] animation];
    [v47 setDuration:1.5];
    [v47 setKeyPath:@"opacity"];
    [v47 setFromValue:&unk_1F2C39138];
    [v47 setToValue:&unk_1F2C39148];
    [v47 setFillMode:*MEMORY[0x1E69797E0]];
    [v47 setRemovedOnCompletion:0];
    v48 = [MEMORY[0x1E6979308] animation];
    [v48 setDuration:1.8];
    LODWORD(v49) = 2139095040;
    [v48 setRepeatCount:v49];
    [v48 setAutoreverses:1];
    v60[0] = v37;
    v60[1] = v43;
    v60[2] = v47;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:3];
    [v48 setAnimations:v50];

    [(CALayer *)self->_pulsingLayer addAnimation:v48 forKey:@"basic"];
  }

  else
  {
    [(CALayer *)self->_pulsingLayer setOpacity:0.0];
    pulsingLayer = self->_pulsingLayer;

    [(CALayer *)pulsingLayer removeAllAnimations];
  }
}

- (VKQuadSideLength)quadSideLength
{
  left = self->_quadSideLength.left;
  right = self->_quadSideLength.right;
  top = self->_quadSideLength.top;
  bottom = self->_quadSideLength.bottom;
  result.bottom = bottom;
  result.top = top;
  result.right = right;
  result.left = left;
  return result;
}

- (CALayer)textHighlightLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_textHighlightLayer);

  return WeakRetained;
}

@end