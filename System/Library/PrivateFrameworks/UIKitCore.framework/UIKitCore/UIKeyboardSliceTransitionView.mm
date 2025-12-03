@interface UIKeyboardSliceTransitionView
- (BOOL)canDisplayTransition;
- (CGImage)getKeyboardImageAsSplit:(BOOL)split;
- (UIKeyboardSliceTransitionView)initWithFrame:(CGRect)frame;
- (double)adjustedLeftWidthAtMergePoint;
- (double)adjustedRightWidthAtMergePoint;
- (id)crossfadeOpacityAnimation;
- (id)meshTransformForProgress:(double)progress;
- (void)_delayedUpdateTransition;
- (void)dealloc;
- (void)initializeLayers;
- (void)rebuildBackgroundAndShadowTransitions;
- (void)rebuildBackgroundGradientTransitions;
- (void)rebuildFromKeyplane:(id)keyplane toKeyplane:(id)toKeyplane startToken:(id)token endToken:(id)endToken keyboardType:(int64_t)type orientation:(int64_t)orientation;
- (void)rebuildMoreIntlKeys;
- (void)rebuildReturnSlices;
- (void)rebuildShadows;
- (void)rebuildShiftSlices;
- (void)rebuildSliceTransitions;
- (void)rebuildTopEdgeHighlightTransition;
- (void)refreshKeyplaneImages;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
- (void)transformForProgress:(double)progress;
- (void)updateTransition;
- (void)updateTransitionForSlice:(id)slice withStart:(id)start startContents:(id)contents end:(id)end endContents:(id)endContents updateContents:(BOOL)updateContents;
- (void)updateWithProgress:(double)progress;
@end

@implementation UIKeyboardSliceTransitionView

- (UIKeyboardSliceTransitionView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UIKeyboardSliceTransitionView;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setAnchorPoint:0.5, 0.0];
    [(UIKeyboardSliceTransitionView *)v4 initializeLayers];
    [(UIKeyboardSliceTransitionView *)v4 setRebuildFlags];
    v5 = v4;
  }

  return v4;
}

- (void)initializeLayers
{
  v16.receiver = self;
  v16.super_class = UIKeyboardSliceTransitionView;
  [(UIKeyboardSplitTransitionView *)&v16 initializeLayers];
  layer = [MEMORY[0x1E6979398] layer];
  leftKeys = self->_leftKeys;
  self->_leftKeys = layer;

  layer2 = [MEMORY[0x1E6979398] layer];
  rightKeys = self->_rightKeys;
  self->_rightKeys = layer2;

  [(CALayer *)self->_leftKeys setName:@"Keys (left)"];
  [(CALayer *)self->_rightKeys setName:@"Keys (right)"];
  [(CALayer *)self->_leftKeys setAnchorPoint:0.0, 0.0];
  [(CALayer *)self->_rightKeys setAnchorPoint:1.0, 0.0];
  layer3 = [(UIView *)self layer];
  [layer3 addSublayer:self->_leftKeys];

  layer4 = [(UIView *)self layer];
  [layer4 addSublayer:self->_rightKeys];

  layer5 = [MEMORY[0x1E6979398] layer];
  spaceFill = self->_spaceFill;
  self->_spaceFill = layer5;

  [(CALayer *)self->_spaceFill setAnchorPoint:0.0, 0.0];
  layer6 = [(UIView *)self layer];
  [layer6 addSublayer:self->_spaceFill];

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  controlKeys = self->_controlKeys;
  self->_controlKeys = v12;

  shadowLayers = [(UIKeyboardSplitTransitionView *)self shadowLayers];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__UIKeyboardSliceTransitionView_initializeLayers__block_invoke;
  v15[3] = &unk_1E70F5BE0;
  v15[4] = self;
  [shadowLayers enumerateObjectsUsingBlock:v15];
}

void __49__UIKeyboardSliceTransitionView_initializeLayers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 layer];
  [v4 addSublayer:v3];
}

- (void)dealloc
{
  defaultKeyplaneImage = self->_defaultKeyplaneImage;
  if (defaultKeyplaneImage)
  {
    CGImageRelease(defaultKeyplaneImage);
  }

  splitKeyplaneImage = self->_splitKeyplaneImage;
  if (splitKeyplaneImage)
  {
    CGImageRelease(splitKeyplaneImage);
  }

  v5.receiver = self;
  v5.super_class = UIKeyboardSliceTransitionView;
  [(UIKeyboardSplitTransitionView *)&v5 dealloc];
}

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = UIKeyboardSliceTransitionView;
  [(UIKeyboardSplitTransitionView *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UIView *)self bounds];
  [(CALayer *)self->_leftKeys setBounds:?];
  [(UIView *)self bounds];
  [(CALayer *)self->_rightKeys setBounds:?];
  [(UIView *)self bounds];
  [(CALayer *)self->_rightKeys setPosition:v4, 0.0];
}

- (CGImage)getKeyboardImageAsSplit:(BOOL)split
{
  splitCopy = split;
  WeakRetained = objc_loadWeakRetained(&self->super._transitionDataSource);
  v6 = [WeakRetained renderedKeyplaneWithToken:self->_keyplaneToken split:splitCopy];

  return v6;
}

- (double)adjustedLeftWidthAtMergePoint
{
  [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
  v4 = v3;
  [(UIKeyboardSliceSet *)self->super._sliceSet mergePoint];
  return v4 * (v5 + 0.065);
}

- (double)adjustedRightWidthAtMergePoint
{
  [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
  v4 = v3;
  [(UIKeyboardSliceSet *)self->super._sliceSet mergePoint];
  return v4 * (1.0 - v5 + 0.065);
}

- (id)crossfadeOpacityAnimation
{
  v2 = self->_orientation - 1;
  v3 = [MEMORY[0x1E6979390] normalizedKeyframeAnimationWithKeyPath:@"opacity"];
  v4 = MEMORY[0x1E695DEC8];
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  if (v2 >= 2)
  {
    v7 = 0.25;
  }

  else
  {
    v7 = 0.36;
  }

  LODWORD(v6) = dword_18A6805F8[v2 < 2];
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  *&v9 = v7;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  LODWORD(v11) = 1.0;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v13 = [v4 arrayWithObjects:{v5, v8, v10, v12, 0}];

  [v3 setKeyTimes:v13];
  v14 = MEMORY[0x1E695DEC8];
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  v16 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  LODWORD(v17) = 1.0;
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  LODWORD(v19) = 1.0;
  v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  v21 = [v14 arrayWithObjects:{v15, v16, v18, v20, 0}];
  [v3 setValues:v21];

  return v3;
}

- (void)rebuildTopEdgeHighlightTransition
{
  [(CALayer *)self->_topEdgeHighlight removeAllAnimations];
  sublayers = [(CALayer *)self->_topEdgeHighlight sublayers];

  if (sublayers)
  {
    sublayers2 = [(CALayer *)self->_topEdgeHighlight sublayers];
    layer = [sublayers2 objectAtIndex:0];

    sublayers3 = [(CALayer *)self->_topEdgeHighlight sublayers];
    layer2 = [sublayers3 objectAtIndex:1];
  }

  else
  {
    layer = [MEMORY[0x1E6979398] layer];
    [layer setAnchorPoint:{0.0, 0.0}];
    v7 = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
    [layer setBackgroundColor:{objc_msgSend(v7, "CGColor")}];

    [(CALayer *)self->_topEdgeHighlight addSublayer:layer];
    layer2 = [MEMORY[0x1E6979398] layer];
    [layer2 setAnchorPoint:{0.0, 0.0}];
    v8 = [UIColor colorWithRed:0.75 green:0.75 blue:0.75 alpha:1.0];
    [layer2 setBackgroundColor:{objc_msgSend(v8, "CGColor")}];

    [(CALayer *)self->_topEdgeHighlight addSublayer:layer2];
  }

  [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
  v10 = v9;
  [layer setBounds:{0.0, 0.0}];
  [layer2 setBounds:{0.0, 0.0, v10, 1.0}];
  [layer2 setPosition:{0.0, 1.0}];
  [(CALayer *)self->_topEdgeHighlight setBounds:0.0, 0.0, v10, 2.0];
  if (!self->super._centerFilled)
  {
    crossfadeOpacityAnimation = [(UIKeyboardSliceTransitionView *)self crossfadeOpacityAnimation];
    v12 = MEMORY[0x1E695DEC8];
    LODWORD(v13) = 1.0;
    v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
    v15 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    v16 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    v17 = [v12 arrayWithObjects:{v14, v15, v16, 0}];
    [crossfadeOpacityAnimation setValues:v17];

    [(CALayer *)self->_topEdgeHighlight addAnimation:crossfadeOpacityAnimation forKey:@"top edge opacity animation"];
  }

  *&self->_rebuildFlags &= ~0x10u;
}

- (void)rebuildShadows
{
  [(UIKeyboardSplitTransitionView *)self sizeForShadowLayer:1];
  v4 = v3;
  [(UIKeyboardSplitTransitionView *)self sizeForShadowLayer:2];
  v139 = v5;
  [(UIKeyboardSplitTransitionView *)self sizeForShadowLayer:3];
  v7 = v6;
  [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
  v134 = v17;
  v135 = v16;
  v133 = v18;
  [(UIKeyboardSliceSet *)self->super._sliceSet leftWidth];
  v20 = v19;
  [(UIKeyboardSliceSet *)self->super._sliceSet endRect];
  v22 = v21;
  [(UIKeyboardSliceSet *)self->super._sliceSet rightWidth];
  v137 = v23;
  [(UIKeyboardSliceSet *)self->super._sliceSet endRect];
  v136 = v24;
  v126 = v11;
  v128 = v9;
  v143.origin.x = v9;
  v143.origin.y = v11;
  v143.size.width = v13;
  v143.size.height = v15;
  v25 = v7 + v4 + CGRectGetHeight(v143) + -2.0 + -2.0;
  v144.origin.x = 0.0;
  v144.origin.y = 0.0;
  v124 = v20;
  v144.size.width = v20;
  v123 = v22;
  v144.size.height = v22;
  v26 = v7 + v4 + CGRectGetHeight(v144) + -2.0 + -2.0;
  shadowLayers = [(UIKeyboardSplitTransitionView *)self shadowLayers];
  [shadowLayers enumerateObjectsUsingBlock:&__block_literal_global_421];
  [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
  v28 = v27;
  [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
  v30 = v29;
  [(UIKeyboardSliceSet *)self->super._sliceSet endRect];
  v32 = v31 - v30 + -2.0;
  v33 = [shadowLayers objectAtIndex:0];
  [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
  [v33 setFrame:{0.0, v28, v34 + -16.0, v7}];
  [v33 setPosition:{8.0, 0.0}];
  [v33 setHidden:0];
  v35 = MEMORY[0x1E6979318];
  v36 = [MEMORY[0x1E696AD98] numberWithDouble:v28 + -2.0];
  v37 = [MEMORY[0x1E696AD98] numberWithDouble:v28 + v32];
  v38 = [v35 normalizedAnimationWithKeyPath:@"position.y" fromValue:v36 toValue:v37];

  [v33 addAnimation:v38 forKey:@"position animation"];
  v39 = [shadowLayers objectAtIndex:7];
  v40 = [shadowLayers objectAtIndex:8];
  [v39 setAnchorPoint:{0.0, 0.0}];
  [v40 setAnchorPoint:{0.0, 0.0}];
  [v39 setPosition:{8.0, 2.0 - v4}];
  [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
  [v40 setPosition:{v41 + -8.0, 2.0 - v4}];
  v42 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"bounds" fromValue:0 toValue:0];
  v131 = v25;
  v43 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v139, v25}];
  [v42 setFromValue:v43];

  v132 = v26;
  v44 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v139, v26}];
  [v42 setToValue:v44];

  [v39 addAnimation:v42 forKey:@"left outer shadow bounds"];
  [v40 addAnimation:v42 forKey:@"right outer shadow bounds"];
  if (!self->super._centerFilled)
  {
    v45 = [MEMORY[0x1E6979390] normalizedKeyframeAnimationWithKeyPath:@"opacity"];
    v121 = v40;
    v122 = v39;
    v46 = self->_orientation - 1;
    v47 = MEMORY[0x1E695DEC8];
    v48 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    if (v46 >= 2)
    {
      v50 = 0.25;
    }

    else
    {
      v50 = 0.36;
    }

    LODWORD(v49) = dword_18A680600[v46 < 2];
    v51 = [MEMORY[0x1E696AD98] numberWithFloat:v49];
    *&v52 = v50;
    [MEMORY[0x1E696AD98] numberWithFloat:v52];
    v53 = v138 = v38;
    [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    v54 = v120 = v42;
    v55 = [v47 arrayWithObjects:{v48, v51, v53, v54, 0}];
    [v45 setKeyTimes:v55];

    v56 = MEMORY[0x1E695DEC8];
    LODWORD(v57) = 1.0;
    v58 = [MEMORY[0x1E696AD98] numberWithFloat:v57];
    LODWORD(v59) = 1.0;
    v60 = [MEMORY[0x1E696AD98] numberWithFloat:v59];
    v61 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    v62 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    v63 = [v56 arrayWithObjects:{v58, v60, v61, v62, 0}];
    v119 = v45;
    [v45 setValues:v63];

    [v33 addAnimation:v45 forKey:@"full-width opacity"];
    [(UIKeyboardSliceTransitionView *)self adjustedLeftWidthAtMergePoint];
    v65 = v64;
    [(UIKeyboardSliceTransitionView *)self adjustedRightWidthAtMergePoint];
    v67 = v66;
    v116 = v66;
    v68 = [shadowLayers objectAtIndex:1];
    v69 = [shadowLayers objectAtIndex:4];
    [v68 setAnchorPoint:{0.0, 1.0}];
    [v69 setAnchorPoint:{1.0, 1.0}];
    v70 = v68;
    [v68 setPosition:{0.0, 2.0}];
    [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
    [v69 setPosition:{v71, 2.0}];
    v145.origin.y = v126;
    v145.origin.x = v128;
    v145.size.width = v65;
    v145.size.height = v15;
    v72 = CGRectGetWidth(v145) + -16.0 + -8.0;
    v146.origin.x = 0.0;
    v146.origin.y = 0.0;
    v146.size.height = v123;
    v146.size.width = v124;
    v73 = CGRectGetWidth(v146) + -16.0 + -1.0;
    v147.origin.y = v134;
    v147.origin.x = v135;
    v147.size.width = v67;
    v147.size.height = v133;
    v125 = CGRectGetWidth(v147) + -16.0 + -8.0 + -1.0;
    v148.origin.x = 0.0;
    v148.origin.y = 0.0;
    v148.size.height = v136;
    v148.size.width = v137;
    v74 = CGRectGetWidth(v148) + -16.0 + -1.0;
    [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"bounds" fromValue:0 toValue:0];
    v75 = rect = v33;
    v76 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v72, v4}];
    [v75 setFromValue:v76];

    v77 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v73, v4}];
    [v75 setToValue:v77];

    v117 = v70;
    [v70 addAnimation:v75 forKey:@"top left bounds"];
    v78 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v125, v4}];
    v129 = v75;
    [v75 setFromValue:v78];

    v79 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v74, v4}];
    [v75 setToValue:v79];

    v118 = v69;
    [v69 addAnimation:v75 forKey:@"top right bounds"];
    [v70 setHidden:0];
    [v69 setHidden:0];
    v80 = [shadowLayers objectAtIndex:2];
    v81 = [shadowLayers objectAtIndex:5];
    [v80 setAnchorPoint:{0.0, 0.0}];
    [v81 setAnchorPoint:{1.0, 0.0}];
    [v80 setPosition:{0.0, 2.0 - v4}];
    [v81 setPosition:{0.0, 2.0 - v4}];
    v82 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"bounds" fromValue:0 toValue:0];
    v83 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v139, v131}];
    v127 = v82;
    [v82 setFromValue:v83];

    v84 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v139, v132}];
    [v82 setToValue:v84];

    v85 = v80;
    [v80 addAnimation:v82 forKey:@"left center bounds"];
    [v81 addAnimation:v82 forKey:@"right center bounds"];
    v86 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"position.x" fromValue:0 toValue:0];
    v87 = MEMORY[0x1E696AD98];
    v149.origin.x = 0.0;
    v149.origin.y = 0.0;
    v149.size.width = v72;
    v149.size.height = v4;
    Width = CGRectGetWidth(v149);
    *&Width = Width;
    v89 = [v87 numberWithFloat:Width];
    [v86 setFromValue:v89];

    v90 = MEMORY[0x1E696AD98];
    v150.origin.x = 0.0;
    v150.origin.y = 0.0;
    v150.size.width = v73;
    v150.size.height = v4;
    v91 = CGRectGetWidth(v150);
    *&v91 = v91;
    v92 = [v90 numberWithFloat:v91];
    [v86 setToValue:v92];

    [v80 addAnimation:v86 forKey:@"left center position"];
    v93 = MEMORY[0x1E696AD98];
    [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
    v94 = CGRectGetWidth(v151);
    v152.origin.y = v134;
    v152.origin.x = v135;
    v152.size.width = v116;
    v152.size.height = v133;
    v95 = v94 - CGRectGetWidth(v152) + -3.0;
    *&v95 = v95;
    v96 = [v93 numberWithFloat:v95];
    v140 = v86;
    [v86 setFromValue:v96];

    v97 = MEMORY[0x1E696AD98];
    [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
    v98 = CGRectGetWidth(v153);
    v154.origin.x = 0.0;
    v154.origin.y = 0.0;
    v154.size.height = v136;
    v154.size.width = v137;
    v99 = v98 - CGRectGetWidth(v154) + -8.0 + -3.0;
    *&v99 = v99;
    v100 = [v97 numberWithFloat:v99];
    [v86 setToValue:v100];

    [v81 addAnimation:v86 forKey:@"right center position"];
    [v80 setHidden:0];
    v101 = v81;
    [v81 setHidden:0];
    v102 = [shadowLayers objectAtIndex:3];
    v103 = [shadowLayers objectAtIndex:6];
    [v102 setAnchorPoint:{0.0, 0.0}];
    [v103 setAnchorPoint:{1.0, 0.0}];
    [v102 setPosition:{8.0, -1.0}];
    [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
    [v103 setPosition:{v104 + -8.0, -1.0}];
    v155.origin.x = 0.0;
    v155.origin.y = 0.0;
    v155.size.width = v72;
    v155.size.height = v4;
    v105 = CGRectGetWidth(v155) + -8.0;
    v156.origin.x = 0.0;
    v156.origin.y = 0.0;
    v156.size.width = v73;
    v156.size.height = v4;
    v106 = CGRectGetWidth(v156) + -8.0;
    v157.origin.x = 0.0;
    v157.origin.y = 0.0;
    v157.size.width = v125;
    v157.size.height = v4;
    v107 = CGRectGetWidth(v157) + -8.0;
    v158.origin.x = 0.0;
    v158.origin.y = 0.0;
    v158.size.width = v74;
    v158.size.height = v4;
    v108 = CGRectGetWidth(v158) + -8.0;
    v109 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"bounds" fromValue:0 toValue:0];
    v110 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v105, v7}];
    [v109 setFromValue:v110];

    v111 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v106, v7}];
    [v109 setToValue:v111];

    [v102 addAnimation:v109 forKey:@"bottom left bounds"];
    v112 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"bounds" fromValue:0 toValue:0];
    v113 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v107, v7}];
    [v112 setFromValue:v113];

    v114 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v108, v7}];
    [v112 setToValue:v114];

    [v103 addAnimation:v112 forKey:@"bottom right bounds"];
    [v102 addAnimation:v138 forKey:@"position animation"];
    [v103 addAnimation:v138 forKey:@"position animation"];
    [v102 setHidden:0];
    [v103 setHidden:0];
    crossfadeOpacityAnimation = [(UIKeyboardSliceTransitionView *)self crossfadeOpacityAnimation];
    [v117 addAnimation:crossfadeOpacityAnimation forKey:@"top left opacity"];
    [v118 addAnimation:crossfadeOpacityAnimation forKey:@"top right opacity"];
    [v85 addAnimation:crossfadeOpacityAnimation forKey:@"center left opacity"];
    [v101 addAnimation:crossfadeOpacityAnimation forKey:@"center right opacity"];
    [v102 addAnimation:crossfadeOpacityAnimation forKey:@"bottom left opacity"];
    [v103 addAnimation:crossfadeOpacityAnimation forKey:@"bottom right opacity"];
    [(UIKeyboardSliceTransitionView *)self rebuildTopEdgeHighlightTransition];

    v38 = v138;
    v40 = v121;

    v39 = v122;
    v42 = v120;

    v33 = rect;
  }
}

void __47__UIKeyboardSliceTransitionView_rebuildShadows__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if ((a3 - 9) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    [v4 setHidden:1];
    [v5 removeAllAnimations];
    v4 = v5;
  }
}

- (void)rebuildBackgroundAndShadowTransitions
{
  backgroundLayers = [(UIKeyboardSplitTransitionView *)self backgroundLayers];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__UIKeyboardSliceTransitionView_rebuildBackgroundAndShadowTransitions__block_invoke;
  v4[3] = &unk_1E70F5BE0;
  v4[4] = self;
  [backgroundLayers enumerateObjectsUsingBlock:v4];

  [(UIKeyboardSliceTransitionView *)self rebuildShadows];
  *&self->_rebuildFlags &= ~4u;
}

void __70__UIKeyboardSliceTransitionView_rebuildBackgroundAndShadowTransitions__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v61 = a2;
  [v61 removeAnimationForKey:@"bounds animation"];
  switch(a3)
  {
    case 2:
      [*(*(a1 + 32) + 552) startRect];
      v8 = v46;
      v31 = v47;
      v16 = v48;
      [*(a1 + 32) adjustedRightWidthAtMergePoint];
      v14 = v49;
      [*(*(a1 + 32) + 552) rightWidth];
      v51 = v50;
      v52 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v53 = [v52 preferencesActions];
      [v53 rivenSizeFactor:9.0];
      v26 = v51 + v54;
      [*(*(a1 + 32) + 552) endRect];
      v28 = v55;

      v56 = [*(a1 + 32) layer];
      [v56 insertSublayer:v61 atIndex:0];

      v30 = *(*(a1 + 32) + 544);
      v20 = 0.0;
      goto LABEL_7;
    case 1:
      [*(*(a1 + 32) + 552) startRect];
      v8 = v32;
      v31 = v33;
      v16 = v34;
      [*(a1 + 32) adjustedLeftWidthAtMergePoint];
      v14 = v35;
      v36 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v37 = [v36 preferencesActions];
      [v37 rivenSizeFactor:9.0];
      v20 = -v38;
      [*(*(a1 + 32) + 552) leftWidth];
      v40 = v39;
      v41 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v42 = [v41 preferencesActions];
      [v42 rivenSizeFactor:9.0];
      v26 = v40 + v43;
      [*(*(a1 + 32) + 552) endRect];
      v28 = v44;

      v45 = [*(a1 + 32) layer];
      [v45 insertSublayer:v61 atIndex:0];

      v30 = *(*(a1 + 32) + 544);
      goto LABEL_7;
    case 0:
      v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v6 = [v5 preferencesActions];
      [v6 rivenSizeFactor:9.0];
      v8 = -v7;
      [*(*(a1 + 32) + 552) startRect];
      v10 = v9;
      v11 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v12 = [v11 preferencesActions];
      [v12 rivenSizeFactor:9.0];
      v14 = v10 + v13 + v13;
      [*(*(a1 + 32) + 552) startRect];
      v16 = v15;

      v17 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v18 = [v17 preferencesActions];
      [v18 rivenSizeFactor:9.0];
      v20 = -v19;
      [*(*(a1 + 32) + 552) endRect];
      v22 = v21;
      v23 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v24 = [v23 preferencesActions];
      [v24 rivenSizeFactor:9.0];
      v26 = v22 + v25 + v25;
      [*(*(a1 + 32) + 552) endRect];
      v28 = v27;

      v29 = [*(a1 + 32) layer];
      [v29 insertSublayer:v61 atIndex:0];

      v30 = *(*(a1 + 32) + 544) ^ 1;
      v31 = 0.0;
LABEL_7:
      [v61 setHidden:v30 & 1];
      v57 = 0.0;
      goto LABEL_9;
  }

  v20 = *MEMORY[0x1E695F058];
  v57 = *(MEMORY[0x1E695F058] + 8);
  v26 = *(MEMORY[0x1E695F058] + 16);
  v28 = *(MEMORY[0x1E695F058] + 24);
  v16 = v28;
  v14 = v26;
  v31 = v57;
  v8 = *MEMORY[0x1E695F058];
LABEL_9:
  v58 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"bounds" fromValue:0 toValue:0];
  v59 = [MEMORY[0x1E696B098] valueWithCGRect:{v8, v31, v14, v16}];
  [v58 setFromValue:v59];

  v60 = [MEMORY[0x1E696B098] valueWithCGRect:{v20, v57, v26, v28}];
  [v58 setToValue:v60];

  [v61 addAnimation:v58 forKey:@"bounds animation"];
}

- (void)rebuildBackgroundGradientTransitions
{
  v3 = [(UIKeyboardSplitTransitionView *)self colorsForBackgroundLayer:0];
  v4 = [(UIKeyboardSplitTransitionView *)self colorsForBackgroundLayer:1];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v6 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"colors" fromValue:v3 toValue:v4];
    v7 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
    [v6 setTimingFunction:v7];
  }

  backgroundLayers = [(UIKeyboardSplitTransitionView *)self backgroundLayers];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__UIKeyboardSliceTransitionView_rebuildBackgroundGradientTransitions__block_invoke;
  v10[3] = &unk_1E70F5BE0;
  v11 = v6;
  v9 = v6;
  [backgroundLayers enumerateObjectsUsingBlock:v10];

  *&self->_rebuildFlags &= ~8u;
}

void __69__UIKeyboardSliceTransitionView_rebuildBackgroundGradientTransitions__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 removeAnimationForKey:@"gradient interpolation"];
  v3 = *(a1 + 32);
  if (v3)
  {
    [v4 addAnimation:v3 forKey:@"gradient interpolation"];
  }

  else
  {
    [v4 setColors:?];
  }
}

- (void)updateTransitionForSlice:(id)slice withStart:(id)start startContents:(id)contents end:(id)end endContents:(id)endContents updateContents:(BOOL)updateContents
{
  updateContentsCopy = updateContents;
  sliceCopy = slice;
  startCopy = start;
  contentsCopy = contents;
  endCopy = end;
  endContentsCopy = endContents;
  v17 = endContentsCopy;
  if (contentsCopy | endContentsCopy)
  {
    if (contentsCopy)
    {
      v18 = endContentsCopy == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = !v18;
    if (updateContentsCopy)
    {
      [startCopy setContents:contentsCopy];
      [endCopy setContents:v17];
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen scale];
      [startCopy setContentsScale:?];

      [startCopy contentsScale];
      [endCopy setContentsScale:?];
    }

    [startCopy removeAnimationForKey:@"start opacity interpolation"];
    [endCopy removeAnimationForKey:@"end opacity interpolation"];
    if (v19)
    {
      v21 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"opacity" fromValue:&unk_1EFE32080 toValue:&unk_1EFE32098];
      _kbTimingFunction = [MEMORY[0x1E69793D0] _kbTimingFunction];
      [v21 setTimingFunction:_kbTimingFunction];

      [startCopy addAnimation:v21 forKey:@"start opacity interpolation"];
      v23 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"opacity" fromValue:&unk_1EFE32098 toValue:&unk_1EFE32080];
      _kbTimingFunction2 = [MEMORY[0x1E69793D0] _kbTimingFunction];
      [v23 setTimingFunction:_kbTimingFunction2];

      [endCopy addAnimation:v23 forKey:@"end opacity interpolation"];
    }
  }
}

- (void)refreshKeyplaneImages
{
  defaultKeyplaneImage = self->_defaultKeyplaneImage;
  if (defaultKeyplaneImage)
  {
    CGImageRelease(defaultKeyplaneImage);
    self->_defaultKeyplaneImage = 0;
  }

  splitKeyplaneImage = self->_splitKeyplaneImage;
  if (splitKeyplaneImage)
  {
    CGImageRelease(splitKeyplaneImage);
    self->_splitKeyplaneImage = 0;
  }

  self->_defaultKeyplaneImage = [(UIKeyboardSliceTransitionView *)self getKeyboardImageAsSplit:0];
  v5 = [(UIKeyboardSliceTransitionView *)self getKeyboardImageAsSplit:1];
  self->_splitKeyplaneImage = v5;
  if (self->_defaultKeyplaneImage)
  {
    CGImageRetain(self->_defaultKeyplaneImage);
    v5 = self->_splitKeyplaneImage;
  }

  if (v5)
  {

    CGImageRetain(v5);
  }
}

- (void)rebuildSliceTransitions
{
  selfCopy = self;
  v121 = *MEMORY[0x1E69E9840];
  p_leftKeys = &self->_leftKeys;
  sublayers = [(CALayer *)self->_leftKeys sublayers];
  [sublayers makeObjectsPerformSelector:sel_removeFromSuperlayer];

  sublayers2 = [(CALayer *)selfCopy->_rightKeys sublayers];
  [sublayers2 makeObjectsPerformSelector:sel_removeFromSuperlayer];

  v101 = p_leftKeys;
  [(CALayer *)*p_leftKeys removeAllAnimations];
  p_rightKeys = &selfCopy->_rightKeys;
  [(CALayer *)selfCopy->_rightKeys removeAllAnimations];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v114 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  [(UIKeyboardSliceSet *)selfCopy->super._sliceSet startRect];
  v10 = v9;
  [(UIKeyboardSliceSet *)selfCopy->super._sliceSet leftWidth];
  v12 = v11;
  [(UIKeyboardSliceSet *)selfCopy->super._sliceSet rightWidth];
  v14 = v13;
  [(UIKeyboardSliceSet *)selfCopy->super._sliceSet leftWidth];
  v16 = v15;
  [(UIKeyboardSliceSet *)selfCopy->super._sliceSet rightWidth];
  v18 = v17;
  [(UIKeyboardSliceSet *)selfCopy->super._sliceSet endRect];
  v94 = v19;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = [(UIKeyboardSliceSet *)selfCopy->super._sliceSet slices];
  v102 = [obj countByEnumeratingWithState:&v116 objects:v120 count:16];
  if (v102)
  {
    v20 = 0;
    v104 = 0;
    v105 = 0;
    v96 = 0;
    v97 = 0;
    v99 = v10 - v12 - v14 + -3.0;
    v93 = v16 + v18 + 3.0;
    v98 = *v117;
    v103 = v7;
    width = v8;
    y = v6;
    x = v114;
    do
    {
      for (i = 0; i != v102; ++i)
      {
        v107 = v20;
        if (*v117 != v98)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v116 + 1) + 8 * i);
        [v25 startRect];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        r2 = v32;
        [v25 endRect];
        v34 = v33;
        v113 = v36;
        v115 = v35;
        v112 = v37;
        [(UIKeyboardSliceSet *)selfCopy->super._sliceSet endRect];
        if (v34 <= v38 * 0.5)
        {
          v39 = v34;
        }

        else
        {
          v39 = v34 - v99;
        }

        v108 = v39;
        layer = [MEMORY[0x1E6979398] layer];
        layer2 = [MEMORY[0x1E6979398] layer];
        startToken = [v25 startToken];
        if (startToken)
        {
          startToken2 = [v25 startToken];
          v44 = [(UIKeyboardSplitTransitionView *)selfCopy keyImageWithToken:startToken2];
        }

        else
        {
          v44 = selfCopy->_defaultKeyplaneImage;
        }

        endToken = [v25 endToken];
        if (endToken)
        {
          endToken2 = [v25 endToken];
          v47 = [(UIKeyboardSplitTransitionView *)selfCopy keyImageWithToken:endToken2];
        }

        else
        {
          v47 = selfCopy->_splitKeyplaneImage;
        }

        [(UIKeyboardSliceTransitionView *)selfCopy updateTransitionForSlice:v25 withStart:layer startContents:v44 end:layer2 endContents:v47 updateContents:1];
        startToken3 = [v25 startToken];

        if (startToken3)
        {
          if ([v25 normalization] == 1)
          {
            [layer setContentsRect:{0.0, 0.0, 0.5, 1.0}];
            v49 = layer;

            v97 = v49;
          }

          if ([v25 normalization] == 2)
          {
            [layer setContentsRect:{0.5, 0.0, 0.5, 1.0}];
            v50 = layer;

            v96 = v50;
          }

          height = r2;
        }

        else
        {
          [(UIKeyboardSliceSet *)selfCopy->super._sliceSet startRect];
          height = r2;
          [layer setContentsRect:{v27 / v52, v29 / v53, v31 / v52, r2 / v53}];
        }

        [layer setAnchorPoint:{0.0, 0.0}];
        [layer setFrame:{v27, v29, v31, height}];
        v110 = v44;
        if ([v25 normalization])
        {
          [layer setContentsRect:{0.0, 0.0, 1.0, 1.0}];
          [layer setContentsCenter:{0.1, 0.0, 0.8, 1.0}];
          v122.origin.x = x;
          v122.origin.y = y;
          v122.size.width = width;
          v122.size.height = v103;
          IsEmpty = CGRectIsEmpty(v122);
          v55 = v103;
          v56 = width;
          width = v31;
          v57 = y;
          y = v29;
          v58 = x;
          x = v27;
          if (!IsEmpty)
          {
            v125.origin.x = v27;
            v125.origin.y = v29;
            v125.size.width = v31;
            v125.size.height = r2;
            v123 = CGRectUnion(*&v58, v125);
            x = v123.origin.x;
            y = v123.origin.y;
            width = v123.size.width;
            height = v123.size.height;
          }

          v59 = v44;

          v60 = v47;
          v104 = v60;
          v105 = v59;
          v103 = height;
        }

        endToken3 = [v25 endToken];

        if (!endToken3)
        {
          [layer2 setContentsRect:{v108 / v93, v115 / v94, v113 / v93, v112 / v94}];
        }

        v109 = v47;
        [layer2 setAnchorPoint:{0.0, 0.0}];
        [layer2 setFrame:{v34, v115, v113, v112}];
        endToken4 = [v25 endToken];
        if (endToken4)
        {
          v63 = endToken4;
          normalization = [v25 normalization];

          if (normalization != 2)
          {
            controlKeys = selfCopy->_controlKeys;
            v66 = MEMORY[0x1E695DF90];
            startToken4 = [v25 startToken];
            endToken5 = [v25 endToken];
            v69 = [v66 dictionaryWithObjectsAndKeys:{layer, startToken4, layer2, endToken5, 0}];
            endToken6 = [v25 endToken];
            [endToken6 name];
            v72 = v71 = selfCopy;
            [(NSMutableDictionary *)controlKeys setObject:v69 forKey:v72];

            selfCopy = v71;
          }
        }

        v73 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"bounds" fromValue:0 toValue:0];
        v74 = [MEMORY[0x1E696B098] valueWithCGRect:{v27, v29, v31, r2}];
        [v73 setFromValue:v74];

        v75 = [MEMORY[0x1E696B098] valueWithCGRect:{v34, v115, v113, v112}];
        [v73 setToValue:v75];

        [layer addAnimation:v73 forKey:@"start bounds interpolation"];
        [layer2 addAnimation:v73 forKey:@"end bounds interpolation"];
        v76 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"position" fromValue:0 toValue:0];
        v77 = [MEMORY[0x1E696B098] valueWithCGPoint:{v27, v29}];
        [v76 setFromValue:v77];

        v78 = [MEMORY[0x1E696B098] valueWithCGPoint:{v34, v115}];
        [v76 setToValue:v78];

        [layer addAnimation:v76 forKey:@"start position interpolation"];
        [layer2 addAnimation:v76 forKey:@"end position interpolation"];
        if (selfCopy->_defaultKeyplaneImage)
        {
          v20 = 1;
          v79 = v109;
          if (selfCopy->_splitKeyplaneImage && v109)
          {
            v80 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"opacity" fromValue:&unk_1EFE32080 toValue:&unk_1EFE32098];
            _kbTimingFunction = [MEMORY[0x1E69793D0] _kbTimingFunction];
            [v80 setTimingFunction:_kbTimingFunction];

            [layer addAnimation:v80 forKey:@"start opacity interpolation"];
            v20 = v107;
          }
        }

        else
        {
          v20 = 1;
          v79 = v109;
        }

        [(UIView *)selfCopy bounds];
        v83 = v101;
        if (v34 >= v82 * 0.5)
        {
          v83 = p_rightKeys;
        }

        v84 = *v83;
        [v84 addSublayer:layer2];
        [v84 addSublayer:layer];
      }

      v102 = [obj countByEnumeratingWithState:&v116 objects:v120 count:16];
    }

    while (v102);
    if (v20)
    {
      v85 = 2;
    }

    else
    {
      v85 = 0;
    }

    v87 = v96;
    v86 = v97;
    v89 = v104;
    v88 = v105;
    v7 = v103;
  }

  else
  {
    v85 = 0;
    v89 = 0;
    v88 = 0;
    v87 = 0;
    v86 = 0;
    width = v8;
    y = v6;
    x = v114;
  }

  [(CALayer *)selfCopy->_spaceFill setContents:v88];
  [(CALayer *)selfCopy->_spaceFill removeAllAnimations];
  v124.origin.x = x;
  v124.origin.y = y;
  v124.size.width = width;
  v124.size.height = v7;
  if (!CGRectIsEmpty(v124))
  {
    v106 = v88;
    [(CALayer *)selfCopy->_spaceFill setFrame:x, y, width, v7];
    v90 = [MEMORY[0x1E6979390] normalizedKeyframeAnimationWithKeyPath:@"opacity"];
    [v90 setKeyTimes:&unk_1EFE2CEB0];
    [v90 setValues:&unk_1EFE2CEC8];
    [(CALayer *)selfCopy->_spaceFill addAnimation:v90 forKey:@"space fill opacity interpolation"];
    if (v86 && v87 && v89)
    {
      [v86 removeAnimationForKey:@"start opacity interpolation"];
      v91 = [MEMORY[0x1E6979390] normalizedKeyframeAnimationWithKeyPath:@"opacity"];
      [v91 setKeyTimes:&unk_1EFE2CEE0];
      [v91 setValues:&unk_1EFE2CEF8];
      [v86 addAnimation:v91 forKey:@"start opacity interpolation"];
      [v87 removeAnimationForKey:@"start opacity interpolation"];
      v92 = [MEMORY[0x1E6979390] normalizedKeyframeAnimationWithKeyPath:@"opacity"];

      [v92 setKeyTimes:&unk_1EFE2CF10];
      [v92 setValues:&unk_1EFE2CF28];
      [v87 addAnimation:v92 forKey:@"start opacity interpolation"];
    }

    v88 = v106;
  }

  *&selfCopy->_rebuildFlags = *&selfCopy->_rebuildFlags & 0xFD | v85;
}

- (void)rebuildShiftSlices
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
  v2 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v25;
    v5 = 2;
LABEL_3:
    v6 = 0;
    v20 = v3;
    while (1)
    {
      if (*v25 != v4)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v24 + 1) + 8 * v6);
      if ([v7 hasSuffix:@"Shift-Key"])
      {
        controlKeys = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
        v9 = [controlKeys objectForKey:v7];

        v10 = [(NSMutableDictionary *)self->_controlKeys objectForKey:v7];
        startToken = [v9 startToken];
        v12 = [v10 objectForKey:startToken];

        endToken = [v9 endToken];
        v14 = [v10 objectForKey:endToken];

        startToken2 = [v9 startToken];
        v16 = [(UIKeyboardSplitTransitionView *)self keyImageWithToken:startToken2];

        endToken2 = [v9 endToken];
        [(UIKeyboardSplitTransitionView *)self keyImageWithToken:endToken2];
        v23 = v5;
        v19 = v18 = v4;

        v3 = v20;
        [(UIKeyboardSliceTransitionView *)self updateTransitionForSlice:v9 withStart:v12 startContents:v16 end:v14 endContents:v19 updateContents:1];

        v4 = v18;
        v5 = 1;
        if (v23 == 1)
        {
          break;
        }
      }

      if (v3 == ++v6)
      {
        v3 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  *&self->_rebuildFlags &= ~0x20u;
}

- (void)rebuildReturnSlices
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  controlKeys = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
  v4 = [controlKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(controlKeys);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        if ([v8 hasSuffix:@"Return-Key"])
        {
          controlKeys2 = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
          v10 = [controlKeys2 objectForKey:v8];

          v11 = [(NSMutableDictionary *)self->_controlKeys objectForKey:v8];
          startToken = [v10 startToken];
          v13 = [v11 objectForKey:startToken];

          endToken = [v10 endToken];
          v15 = [v11 objectForKey:endToken];

          startToken2 = [v10 startToken];
          v17 = [(UIKeyboardSplitTransitionView *)self keyImageWithToken:startToken2];

          endToken2 = [v10 endToken];
          v19 = [(UIKeyboardSplitTransitionView *)self keyImageWithToken:endToken2];

          [(UIKeyboardSliceTransitionView *)self updateTransitionForSlice:v10 withStart:v13 startContents:v17 end:v15 endContents:v19 updateContents:1];
          goto LABEL_11;
        }
      }

      v5 = [controlKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  *&self->_rebuildFlags &= ~0x40u;
}

- (void)rebuildMoreIntlKeys
{
  v78 = *MEMORY[0x1E69E9840];
  sliceSet = self->super._sliceSet;
  if (sliceSet)
  {
    controlKeys = [(UIKeyboardSliceSet *)sliceSet controlKeys];
    if (controlKeys)
    {
      v5 = controlKeys;
      v6 = [(NSMutableDictionary *)self->_controlKeys count];

      if (v6)
      {
        controlKeys2 = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
        v8 = [controlKeys2 objectForKey:@"MoreIntlNames"];

        if ([v8 count])
        {
          showIntlKey = [(UIKeyboardSplitTransitionView *)self showIntlKey];
          showDictationKey = [(UIKeyboardSplitTransitionView *)self showDictationKey];
          showIntlKey2 = [(UIKeyboardSplitTransitionView *)self showIntlKey];
          if ([(UIKeyboardSplitTransitionView *)self showDictationKey])
          {
            v10 = 2;
          }

          else
          {
            v10 = 0;
          }

          selfCopy = self;
          v11 = v10 | showIntlKey2;
          controlKeys3 = [(UIKeyboardSliceSet *)selfCopy->super._sliceSet controlKeys];
          v13 = [controlKeys3 objectForKey:@"MoreIntlStarts"];
          v66 = [UIKBTree shapesForControlKeyShapes:v13 options:v11 | 4u];

          controlKeys4 = [(UIKeyboardSliceSet *)selfCopy->super._sliceSet controlKeys];
          v15 = [controlKeys4 objectForKey:@"MoreIntlEnds"];
          v16 = v11 | 0xCu;
          v17 = selfCopy;
          v68 = [UIKBTree shapesForControlKeyShapes:v15 options:v16];

          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v63 = v8;
          obj = v8;
          v70 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
          if (v70)
          {
            v67 = *v74;
            do
            {
              for (i = 0; i != v70; ++i)
              {
                if (*v74 != v67)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v73 + 1) + 8 * i);
                v20 = [obj objectForKey:{v19, v63}];
                v21 = [v20 hasSuffix:@"Space-Key"];
                controlKeys5 = [(UIKeyboardSliceSet *)v17->super._sliceSet controlKeys];
                v23 = [controlKeys5 objectForKey:v20];

                v24 = [(NSMutableDictionary *)v17->_controlKeys objectForKey:v20];
                startToken = [v23 startToken];
                v26 = [v24 objectForKey:startToken];

                endToken = [v23 endToken];
                v72 = v24;
                v28 = [v24 objectForKey:endToken];

                if (v21)
                {
                  [v23 startRect];
                  v30 = v29;
                  v32 = v31;
                  v34 = v33;
                  v36 = v35;
                }

                else
                {
                  v37 = [v66 objectForKey:v19];
                  [v37 paddedFrame];
                  v30 = v38;
                  v32 = v39;
                  v34 = v40;
                  v36 = v41;
                }

                v42 = [v68 objectForKey:v19];
                [v42 paddedFrame];
                v44 = v43;
                v46 = v45;
                v48 = v47;
                v50 = v49;

                if ((v21 & 1) == 0)
                {
                  startToken2 = [v23 startToken];
                  [startToken2 setSize:{v34, v36}];
                }

                endToken2 = [v23 endToken];
                [endToken2 setSize:{v48, v50}];

                [v26 setFrame:{v30, v32, v34, v36}];
                [v28 setFrame:{v44, v46, v48, v50}];
                [v23 setStartRect:{v30, v32, v34, v36}];
                [v23 setEndRect:{v44, v46, v48, v50}];
                startToken3 = [v23 startToken];
                v54 = [(UIKeyboardSplitTransitionView *)v17 keyImageWithToken:startToken3];

                endToken3 = [v23 endToken];
                v56 = [(UIKeyboardSplitTransitionView *)v17 keyImageWithToken:endToken3];

                if (v56)
                {
                  [v28 setContents:v56];
                }

                if ((v21 & 1) == 0)
                {
                  if (v54)
                  {
                    [v26 setContents:v54];
                  }

                  [(UIKeyboardSliceTransitionView *)v17 updateTransitionForSlice:v23 withStart:v26 startContents:v54 end:v28 endContents:v56 updateContents:0];
                }

                v57 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"bounds" fromValue:0 toValue:0];
                v58 = [MEMORY[0x1E696B098] valueWithCGRect:{v30, v32, v34, v36}];
                [v57 setFromValue:v58];

                v59 = [MEMORY[0x1E696B098] valueWithCGRect:{v44, v46, v48, v50}];
                [v57 setToValue:v59];

                [v26 addAnimation:v57 forKey:@"start bounds interpolation"];
                [v28 addAnimation:v57 forKey:@"end bounds interpolation"];
                v60 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"position" fromValue:0 toValue:0];
                v61 = [MEMORY[0x1E696B098] valueWithCGPoint:{v30, v32}];
                [v60 setFromValue:v61];

                v62 = [MEMORY[0x1E696B098] valueWithCGPoint:{v44, v46}];
                [v60 setToValue:v62];

                [v26 addAnimation:v60 forKey:@"start position interpolation"];
                [v28 addAnimation:v60 forKey:@"end position interpolation"];
                if ([v20 hasSuffix:@"International-Key"])
                {
                  [v26 setHidden:!showIntlKey];
                  [v28 setHidden:!showIntlKey];
                }

                if ([v20 hasSuffix:@"Dictation-Key"])
                {
                  [v26 setHidden:!showDictationKey];
                  [v28 setHidden:!showDictationKey];
                }

                v17 = selfCopy;
              }

              v70 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
            }

            while (v70);
          }

          *&v17->_rebuildFlags &= ~0x80u;
          v8 = v63;
        }
      }
    }
  }
}

- (id)meshTransformForProgress:(double)progress
{
  shouldAllowRubberiness = [(UIKeyboardSplitTransitionView *)self shouldAllowRubberiness];
  if (shouldAllowRubberiness)
  {
    MEMORY[0x1EEE9AC00](shouldAllowRubberiness);
    MEMORY[0x1EEE9AC00](v5);
    v8.i64[0] = 0x80000000800000;
    v8.i64[1] = 0x80000000800000;
    v21 = vnegq_f32(v8);
    v9 = (progress + -1.0) * 0.025;
    v10 = 0.0;
    if (progress <= 1.0)
    {
      v9 = 0.0;
    }

    if (progress < 0.0)
    {
      v10 = progress * -0.025;
    }

    *v6 = xmmword_18A680630;
    *(v6 + 16) = v10 + -0.05;
    *(v6 + 24) = xmmword_18A680640;
    *(v6 + 40) = xmmword_18A680650;
    *(v6 + 56) = 0.5 - v9;
    *(v6 + 64) = xmmword_18A680640;
    *(v6 + 80) = xmmword_18A680660;
    *(v6 + 96) = 0.5 - v9;
    *(v6 + 104) = xmmword_18A680670;
    *(v6 + 120) = xmmword_18A680680;
    *(v6 + 136) = v10 + -0.05;
    v11 = v9 + 0.5;
    *(v6 + 144) = xmmword_18A680670;
    *(v6 + 160) = xmmword_18A680650;
    *(v6 + 176) = v11;
    *(v6 + 184) = xmmword_18A680640;
    v12 = 1.05 - v10;
    *(v6 + 200) = xmmword_18A680690;
    *(v6 + 216) = v12;
    *(v7 - 256) = xmmword_18A680640;
    *(v7 - 240) = xmmword_18A6806A0;
    *(v7 - 224) = v12;
    *(v7 - 216) = 0x3FF4000000000000;
    *(v7 - 208) = xmmword_18A67BA20;
    *(v7 - 192) = 0x3FF4000000000000;
    *(v7 - 184) = v11;
    *(v7 - 128) = *(v6 + 72);
    v13 = *(v6 + 56);
    v14 = *(v6 + 40);
    *(v7 - 176) = xmmword_18A680670;
    *(v7 - 160) = v14;
    *(v7 - 144) = v13;
    v15 = *(v6 + 160);
    v16 = *(v6 + 176);
    *(v7 - 88) = *(v6 + 192);
    *(v7 - 104) = v16;
    *(v7 - 120) = v15;
    v17 = *(v7 - 184);
    *(v7 - 80) = *(v7 - 200);
    *(v7 - 64) = v17;
    *(v7 - 48) = *(v7 - 168);
    *(v7 - 8) = *(v6 + 112);
    v18 = *(v6 + 80);
    *(v7 - 24) = *(v6 + 96);
    *(v7 - 40) = v18;
    v19 = [MEMORY[0x1E69793F8] meshTransformWithVertexCount:12 vertices:0x100000000 faceCount:0x300000002 faces:*&v21 depthNormalization:{0x500000004, 0x700000006, *&v21, 0x900000008, 0xB0000000ALL, *&v21}];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)transformForProgress:(double)progress
{
  v5 = [(UIKeyboardSliceTransitionView *)self meshTransformForProgress:progress];
  layer = [(UIView *)self layer];
  [layer setMeshTransform:v5];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v6.receiver = self;
  v6.super_class = UIKeyboardSliceTransitionView;
  [(UIView *)&v6 setHidden:?];
  if (hiddenCopy)
  {
    window = [(UIView *)self window];

    if (window)
    {
      [(UIKeyboardSliceTransitionView *)self updateTransition];
    }
  }
}

- (void)_delayedUpdateTransition
{
  if ([(UIView *)self isHidden])
  {
    window = [(UIView *)self window];
    if (window)
    {
      sliceSet = self->super._sliceSet;

      if (sliceSet)
      {
        if (+[UIKeyboardImpl isFloating])
        {
LABEL_12:
          self->super._isRebuilding = 0;
          return;
        }

        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
        [(UIKeyboardSliceTransitionView *)self setFrame:?];
        v5 = +[UIKeyboardImpl activeInstance];
        self->super._centerFilled = [v5 centerFilled];

        rebuildFlags = self->_rebuildFlags;
        if ((rebuildFlags & 2) != 0)
        {
          [(UIKeyboardSliceTransitionView *)self refreshKeyplaneImages];
          [(UIKeyboardSliceTransitionView *)self rebuildSliceTransitions];
          rebuildFlags = self->_rebuildFlags;
          if ((rebuildFlags & 0x20) == 0)
          {
LABEL_7:
            if ((rebuildFlags & 0x40) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_16;
          }
        }

        else if ((*&self->_rebuildFlags & 0x20) == 0)
        {
          goto LABEL_7;
        }

        [(UIKeyboardSliceTransitionView *)self rebuildShiftSlices];
        rebuildFlags = self->_rebuildFlags;
        if ((rebuildFlags & 0x40) == 0)
        {
LABEL_8:
          if ((rebuildFlags & 0x80) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_17;
        }

LABEL_16:
        [(UIKeyboardSliceTransitionView *)self rebuildReturnSlices];
        rebuildFlags = self->_rebuildFlags;
        if ((rebuildFlags & 0x80) == 0)
        {
LABEL_9:
          if ((rebuildFlags & 0x10) == 0)
          {
LABEL_11:
            [MEMORY[0x1E6979518] commit];
            goto LABEL_12;
          }

LABEL_10:
          [(UIKeyboardSliceTransitionView *)self rebuildTopEdgeHighlightTransition];
          goto LABEL_11;
        }

LABEL_17:
        [(UIKeyboardSliceTransitionView *)self rebuildMoreIntlKeys];
        if ((*&self->_rebuildFlags & 0x10) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }
  }
}

- (void)updateTransition
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];

  [(UIKeyboardSliceTransitionView *)self performSelector:sel__delayedUpdateTransition withObject:0 afterDelay:0.25];
}

- (void)rebuildFromKeyplane:(id)keyplane toKeyplane:(id)toKeyplane startToken:(id)token endToken:(id)endToken keyboardType:(int64_t)type orientation:(int64_t)orientation
{
  tokenCopy = token;
  if (type == 1)
  {
    type = 0;
  }

  name = [keyplane name];
  v14 = [UIKeyboardSliceStore sliceSetIDForKeyplaneName:name type:type orientation:orientation];

  if (self->super._isRebuilding)
  {
    goto LABEL_4;
  }

  sliceSetID = [(UIKeyboardSliceSet *)self->super._sliceSet sliceSetID];
  if ([v14 isEqualToString:sliceSetID] && self->_defaultKeyplaneImage)
  {
    splitKeyplaneImage = self->_splitKeyplaneImage;

    if (splitKeyplaneImage)
    {
LABEL_4:
      *&self->_rebuildFlags |= 0xEAu;
LABEL_14:
      [(UIKeyboardSliceTransitionView *)self _delayedUpdateTransition];
      goto LABEL_15;
    }
  }

  else
  {
  }

  self->super._isRebuilding = 1;
  objc_storeStrong(&self->_keyplaneToken, token);
  self->_orientation = orientation;
  sliceSet = self->super._sliceSet;
  if (sliceSet)
  {
    self->super._sliceSet = 0;
  }

  v18 = [UIKeyboardSliceStore sliceSetForID:v14];
  v19 = self->super._sliceSet;
  self->super._sliceSet = v18;

  if (v18)
  {
    [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
    self->super._startFrame.origin.x = v20;
    self->super._startFrame.origin.y = v21;
    self->super._startFrame.size.width = v22;
    self->super._startFrame.size.height = v23;
    [(UIKeyboardSliceSet *)self->super._sliceSet endRect];
    self->super._endFrame.origin.x = v24;
    self->super._endFrame.origin.y = v25;
    self->super._endFrame.size.width = v26;
    self->super._endFrame.size.height = v27;
    [(UIKeyboardSliceTransitionView *)self setRebuildFlags];
    goto LABEL_14;
  }

LABEL_15:
}

- (void)updateWithProgress:(double)progress
{
  layer = [(UIView *)self layer];
  [layer setMeshTransform:0];

  layer2 = [(UIView *)self layer];
  [layer2 setSpeed:0.0];

  v7.receiver = self;
  v7.super_class = UIKeyboardSliceTransitionView;
  [(UIKeyboardSplitTransitionView *)&v7 updateWithProgress:progress];
}

- (BOOL)canDisplayTransition
{
  if (!self->super._sliceSet)
  {
    return 0;
  }

  if (!self->_defaultKeyplaneImage && !self->_splitKeyplaneImage)
  {
    [(UIKeyboardSliceTransitionView *)self refreshKeyplaneImages];
  }

  v4.receiver = self;
  v4.super_class = UIKeyboardSliceTransitionView;
  return [(UIKeyboardSplitTransitionView *)&v4 canDisplayTransition];
}

@end