@interface VKCTextHighlightDot
- (CALayer)textHighlightLayer;
- (CGRect)_rectForViewSpace:(CGRect)space;
- (CGRect)rectForIndicatorDot;
- (VKCTextHighlightDot)initWithColor:(id)color;
- (VKQuadSideLength)quadSideLength;
- (double)opacityForCurrentQuadSize;
- (void)_updateLayout;
- (void)configureForPulsing:(BOOL)pulsing;
- (void)layoutSubviews;
- (void)setPulsing:(BOOL)pulsing;
- (void)updateIndicatorDotForState;
@end

@implementation VKCTextHighlightDot

- (VKCTextHighlightDot)initWithColor:(id)color
{
  v17[2] = *MEMORY[0x1E69E9840];
  colorCopy = color;
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

    objc_storeStrong(&v6->_highlightColor, color);
    layer = [(VKCTextHighlightDot *)v6 layer];
    [layer addSublayer:v6->_pulsingLayer];

    layer2 = [(VKCTextHighlightDot *)v6 layer];
    [layer2 addSublayer:v6->_circleLayer];
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
  textHighlightLayer = [(VKCTextHighlightDot *)self textHighlightLayer];
  v5 = 1.0 - v4;
  *&v7 = v5;
  [textHighlightLayer setOpacity:v7];

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
  circleLayer = [(VKCTextHighlightDot *)self circleLayer];
  [(VKCTextHighlightDot *)self rectForIndicatorDot];
  v4 = v3;
  [circleLayer setFrame:?];
  [circleLayer setCornerRadius:v4 * 0.5];
  [circleLayer setBorderWidth:0.0];
  [circleLayer setContents:0];
  highlightColor = [(VKCTextHighlightDot *)self highlightColor];
  [circleLayer setBackgroundColor:{objc_msgSend(highlightColor, "CGColor")}];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [circleLayer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

  LODWORD(v7) = 1045220557;
  [circleLayer setShadowOpacity:v7];
  [circleLayer setShadowRadius:8.0];
  [circleLayer setMasksToBounds:0];
  [(VKCTextHighlightDot *)self setPulsing:1];
}

- (CGRect)_rectForViewSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  window = [(VKCTextHighlightDot *)self window];
  screen = [window screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];
  coordinateSpace = [(VKCTextHighlightDot *)self coordinateSpace];
  [fixedCoordinateSpace convertRect:coordinateSpace toCoordinateSpace:{x, y, width, height}];
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

- (void)setPulsing:(BOOL)pulsing
{
  if (self->_pulsing != pulsing)
  {
    self->_pulsing = pulsing;
    [(VKCTextHighlightDot *)self configureForPulsing:?];
  }
}

- (void)configureForPulsing:(BOOL)pulsing
{
  v60[3] = *MEMORY[0x1E69E9840];
  if (pulsing)
  {
    pulsingLayer = [(VKCTextHighlightDot *)self pulsingLayer];
    v5 = VKMRectWithSize();
    v52 = v6;
    v53 = v5;
    v8 = v7;
    v10 = v9;
    [(VKCTextHighlightDot *)self _rectForViewSpace:?];
    v12 = v11;
    v54 = v11;
    v55 = v11 * 0.0625;
    layer = [(VKCTextHighlightDot *)self layer];
    [layer bounds];
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
    [pulsingLayer setFrame:{v53, v8, v52, v10}];
    [pulsingLayer setFrame:{v21, v23, v25, v27}];
    v35 = [MEMORY[0x1E69DC888] colorWithRed:0.91796875 green:0.91796875 blue:0.91796875 alpha:0.5];
    [pulsingLayer setBackgroundColor:{objc_msgSend(v35, "CGColor")}];

    [pulsingLayer setCornerRadius:v54 * 0.5];
    [pulsingLayer setBorderWidth:v55];
    v36 = [MEMORY[0x1E69DC888] colorWithRed:0.78125 green:0.78125 blue:0.78125 alpha:0.5];
    [pulsingLayer setBorderColor:{objc_msgSend(v36, "CGColor")}];

    animation = [MEMORY[0x1E6979318] animation];
    [animation setKeyPath:@"bounds"];
    [animation setDuration:1.5];
    v38 = [MEMORY[0x1E696B098] vk_valueWithRect:{v21, v23, v25, v27}];
    [animation setFromValue:v38];

    v39 = [MEMORY[0x1E696B098] vk_valueWithRect:{v59, v58, v57, v56}];
    [animation setToValue:v39];

    v40 = *MEMORY[0x1E6979EB8];
    v41 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [animation setTimingFunction:v41];

    v42 = *MEMORY[0x1E69797E8];
    [animation setFillMode:*MEMORY[0x1E69797E8]];
    [animation setRemovedOnCompletion:0];
    animation2 = [MEMORY[0x1E6979318] animation];
    [animation2 setKeyPath:@"cornerRadius"];
    [animation2 setDuration:1.5];
    v44 = [MEMORY[0x1E696AD98] numberWithDouble:v54 * 0.5];
    [animation2 setFromValue:v44];

    v45 = [MEMORY[0x1E696AD98] numberWithDouble:v30 * 0.5];
    [animation2 setToValue:v45];

    v46 = [MEMORY[0x1E69793D0] functionWithName:v40];
    [animation2 setTimingFunction:v46];

    [animation2 setFillMode:v42];
    [animation2 setRemovedOnCompletion:0];
    animation3 = [MEMORY[0x1E6979318] animation];
    [animation3 setDuration:1.5];
    [animation3 setKeyPath:@"opacity"];
    [animation3 setFromValue:&unk_1F2C39138];
    [animation3 setToValue:&unk_1F2C39148];
    [animation3 setFillMode:*MEMORY[0x1E69797E0]];
    [animation3 setRemovedOnCompletion:0];
    animation4 = [MEMORY[0x1E6979308] animation];
    [animation4 setDuration:1.8];
    LODWORD(v49) = 2139095040;
    [animation4 setRepeatCount:v49];
    [animation4 setAutoreverses:1];
    v60[0] = animation;
    v60[1] = animation2;
    v60[2] = animation3;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:3];
    [animation4 setAnimations:v50];

    [(CALayer *)self->_pulsingLayer addAnimation:animation4 forKey:@"basic"];
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