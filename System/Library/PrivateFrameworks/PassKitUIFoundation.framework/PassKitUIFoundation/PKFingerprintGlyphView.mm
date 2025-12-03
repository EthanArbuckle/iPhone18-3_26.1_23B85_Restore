@interface PKFingerprintGlyphView
- (CGSize)boundsSizeToMatchPointScale:(double)scale;
- (PKFingerprintGlyphView)init;
- (PKFingerprintGlyphView)initWithCoder:(id)coder;
- (PKFingerprintGlyphViewDelegate)delegate;
- (double)_minimumAnimationDurationForStateTransition;
- (double)pointScaleToMatchBoundsSize:(CGSize)size;
- (id)pathStateForLayer:(id)layer;
- (void)_applyColor:(id)color toShapeLayers:(id)layers animated:(BOOL)animated;
- (void)_continueHoldingStateForPathAtIndex:(unint64_t)index withTransitionIndex:(unint64_t)transitionIndex;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_endRotationAnimation;
- (void)_executeAfterMinimumAnimationDurationForStateTransition:(id)transition;
- (void)_executeTransitionCompletionHandlers:(BOOL)handlers;
- (void)_finishTransitionForIndex:(unint64_t)index;
- (void)_restartRotationIfNecessary;
- (void)_setProgress:(double)progress withDuration:(double)duration forShapeLayerAtIndex:(unint64_t)index;
- (void)_setRingState:(unint64_t)state withTransitionIndex:(unint64_t)index animated:(BOOL)animated;
- (void)_showFingerprintWithTransitionIndex:(unint64_t)index animated:(BOOL)animated;
- (void)_startRecognitionHoldingStateWithTransitionIndex:(unint64_t)index;
- (void)_startRotationAnimation;
- (void)_updateRotationAnimationsIfNecessary;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setContentLayerOpacity:(double)opacity withDuration:(double)duration;
- (void)setPathState:(id)state forLayer:(id)layer;
- (void)setProgress:(double)progress withDuration:(double)duration;
- (void)setRecognizedIfNecessaryWithCompletion:(id)completion;
@end

@implementation PKFingerprintGlyphView

- (PKFingerprintGlyphView)initWithCoder:(id)coder
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This class is not NSCoding compliant"];

  return [(PKFingerprintGlyphView *)self init];
}

- (PKFingerprintGlyphView)init
{
  v186 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD9F28];
  v4 = PKPassKitUIFoundationBundle();
  v5 = [v4 URLForResource:@"Payment_glyph" withExtension:@"caar"];
  v6 = *MEMORY[0x277CDA7E8];
  v176 = 0;
  v7 = [v3 packageWithContentsOfURL:v5 type:v6 options:0 error:&v176];
  v8 = v176;

  memset(&v175, 0, sizeof(v175));
  CATransform3DMakeScale(&v175, 0.5, 0.5, 1.0);
  rootLayer = [v7 rootLayer];
  v157 = v7;
  [rootLayer setGeometryFlipped:{objc_msgSend(v7, "isGeometryFlipped")}];
  v185 = v175;
  [rootLayer setTransform:&v185];
  [rootLayer bounds];
  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  v174.receiver = self;
  v174.super_class = PKFingerprintGlyphView;
  v149 = v11;
  v150 = v10;
  v147 = v13 * 0.5;
  v148 = v12 * 0.5;
  v14 = [(PKFingerprintGlyphView *)&v174 initWithFrame:?];
  v15 = v14;
  if (v14)
  {
    v146 = v8;
    v14->_state = 0;
    v16 = 0x277CBE000uLL;
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    transitionCompletionHandlers = v15->_transitionCompletionHandlers;
    v15->_transitionCompletionHandlers = v17;

    v145 = rootLayer;
    objc_storeStrong(&v15->_backgroundLayer, rootLayer);
    backgroundLayer = v15->_backgroundLayer;
    v20 = PKLayerNullActions();
    [(CALayer *)backgroundLayer setActions:v20];

    [(CALayer *)v15->_backgroundLayer setAnchorPoint:0.5, 0.5];
    v21 = v15->_backgroundLayer;
    if (v21)
    {
      sublayers = [(CALayer *)v21 sublayers];
      v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(sublayers, "count")}];
      v24 = PKLayerNullActions();
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v180 = 0u;
      v25 = sublayers;
      v26 = [v25 countByEnumeratingWithState:&v177 objects:&v185 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v178;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v178 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v177 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v30 setActions:v24];
              [v23 addObject:v30];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v177 objects:&v185 count:16];
        }

        while (v27);
      }

      v16 = 0x277CBE000;
    }

    else
    {
      v23 = 0;
    }

    v31 = [v23 copy];

    backgroundShapeLayers = v15->_backgroundShapeLayers;
    v15->_backgroundShapeLayers = v31;

    v33 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    foregroundLayer = v15->_foregroundLayer;
    v15->_foregroundLayer = v33;

    v35 = v15->_foregroundLayer;
    v36 = PKLayerNullActions();
    [(CALayer *)v35 setActions:v36];

    v37 = v15->_foregroundLayer;
    [(CALayer *)v15->_backgroundLayer anchorPoint];
    [(CALayer *)v37 setAnchorPoint:?];
    v38 = v15->_foregroundLayer;
    [(CALayer *)v15->_backgroundLayer bounds];
    [(CALayer *)v38 setBounds:?];
    v39 = v15->_foregroundLayer;
    [(CALayer *)v15->_backgroundLayer position];
    [(CALayer *)v39 setPosition:?];
    v40 = v15->_foregroundLayer;
    v41 = v15->_backgroundLayer;
    if (v41)
    {
      [(CALayer *)v41 transform];
    }

    else
    {
      memset(&v185, 0, sizeof(v185));
    }

    [(CALayer *)v40 setTransform:&v185];
    [(CALayer *)v15->_foregroundLayer setGeometryFlipped:[(CALayer *)v15->_backgroundLayer isGeometryFlipped]];
    v42 = v15->_backgroundShapeLayers;
    v43 = v15->_foregroundLayer;
    v44 = v42;
    v45 = v44;
    v46 = 0;
    if (v43 && v44)
    {
      v47 = v16;
      v46 = [objc_alloc(*(v16 + 2840)) initWithCapacity:{-[NSArray count](v44, "count")}];
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v180 = 0u;
      v48 = v45;
      v49 = [(NSArray *)v48 countByEnumeratingWithState:&v177 objects:&v185 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v178;
        do
        {
          for (j = 0; j != v50; ++j)
          {
            if (*v178 != v51)
            {
              objc_enumerationMutation(v48);
            }

            v53 = CloneShapeLayer(*(*(&v177 + 1) + 8 * j));
            [v46 addObject:v53];
            [(CALayer *)v43 addSublayer:v53];
          }

          v50 = [(NSArray *)v48 countByEnumeratingWithState:&v177 objects:&v185 count:16];
        }

        while (v50);
      }

      v16 = v47;
    }

    v54 = [v46 copy];

    foregroundShapeLayers = v15->_foregroundShapeLayers;
    v15->_foregroundShapeLayers = v54;

    v56 = objc_alloc_init(*(v16 + 2840));
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    publishedObjectNames = [v157 publishedObjectNames];
    v58 = [publishedObjectNames countByEnumeratingWithState:&v170 objects:v184 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v171;
      do
      {
        for (k = 0; k != v59; ++k)
        {
          if (*v171 != v60)
          {
            objc_enumerationMutation(publishedObjectNames);
          }

          v62 = *(*(&v170 + 1) + 8 * k);
          if (![v62 hasPrefix:@"ring_"])
          {
            goto LABEL_39;
          }

          v63 = [v157 publishedObjectWithName:v62];
          if (v63)
          {
            v64 = [(NSArray *)v15->_backgroundShapeLayers indexOfObjectIdenticalTo:v63];
            if (v64 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v65 = [(NSArray *)v15->_foregroundShapeLayers objectAtIndexedSubscript:v64];
              if (v65)
              {
                v66 = v65;
                PathBoundingBox = CGPathGetPathBoundingBox([v65 path]);
                x = PathBoundingBox.origin.x;
                y = PathBoundingBox.origin.y;
                width = PathBoundingBox.size.width;
                height = PathBoundingBox.size.height;
                if (!CGRectIsNull(PathBoundingBox))
                {
                  [v66 anchorPoint];
                  v153 = v72;
                  v155 = v71;
                  [v66 position];
                  v74 = v73;
                  v76 = v75;
                  [v66 bounds];
                  v151 = v77;
                  v152 = v78;
                  v80 = v79;
                  v82 = v81;
                  v154 = v76 - v153 * v81;
                  v156 = v74 - v155 * v79;
                  v188.origin.x = x;
                  v188.origin.y = y;
                  v188.size.width = width;
                  v188.size.height = height;
                  v83 = (CGRectGetMidX(v188) - v151) / v80;
                  v189.origin.x = x;
                  v189.origin.y = y;
                  v189.size.width = width;
                  v189.size.height = height;
                  v84 = (CGRectGetMidY(v189) - v152) / v82;
                  [v66 setAnchorPoint:{v83, v84}];
                  [v66 setPosition:{v156 + v83 * v80, v154 + v84 * v82}];
                }

                [v56 addObject:v66];

LABEL_39:
                [v56 sortUsingComparator:&__block_literal_global_2];
                continue;
              }
            }
          }
        }

        v59 = [publishedObjectNames countByEnumeratingWithState:&v170 objects:v184 count:16];
      }

      while (v59);
    }

    v85 = [v56 count];
    if (v85)
    {
      v86 = [v56 copy];
    }

    else
    {
      v86 = 0;
    }

    objc_storeStrong(&v15->_foregroundRingShapeLayers, v86);
    if (v85)
    {
    }

    if (v15->_foregroundRingShapeLayers)
    {
      [(CALayer *)v15->_foregroundLayer bounds];
      v88 = v87;
      v90 = v89;
      v92 = v91;
      v94 = v93;
      v95 = objc_alloc_init(MEMORY[0x277CD9ED0]);
      foregroundRingContainerLayer = v15->_foregroundRingContainerLayer;
      v15->_foregroundRingContainerLayer = v95;

      v97 = v15->_foregroundRingContainerLayer;
      v98 = PKLayerNullActions();
      [(CALayer *)v97 setActions:v98];

      [(CALayer *)v15->_foregroundRingContainerLayer setBounds:v88, v90, v92, v94];
      v99 = objc_alloc_init(MEMORY[0x277CD9ED0]);
      maskForegroundLayer = v15->_maskForegroundLayer;
      v15->_maskForegroundLayer = v99;

      v101 = v15->_maskForegroundLayer;
      v102 = PKLayerNullActions();
      [(CALayer *)v101 setActions:v102];

      MatchLayerGeometry(v15->_maskForegroundLayer, v15->_foregroundLayer);
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      v103 = v15->_foregroundRingShapeLayers;
      v104 = [(NSArray *)v103 countByEnumeratingWithState:&v166 objects:v183 count:16];
      if (v104)
      {
        v105 = v104;
        v106 = *v167;
        do
        {
          for (m = 0; m != v105; ++m)
          {
            if (*v167 != v106)
            {
              objc_enumerationMutation(v103);
            }

            v108 = *(*(&v166 + 1) + 8 * m);
            [(CALayer *)v15->_foregroundRingContainerLayer addSublayer:v108];
            [v108 position];
          }

          v111 = v109;
          v112 = v110;
          v105 = [(NSArray *)v103 countByEnumeratingWithState:&v166 objects:v183 count:16];
        }

        while (v105);
      }

      else
      {
        v112 = v149;
        v111 = v150;
      }

      firstObject = [(NSArray *)v15->_foregroundRingShapeLayers firstObject];
      if (firstObject)
      {
        v114 = firstObject;
        v115 = CloneShapeLayer(firstObject);

        blackColor = [MEMORY[0x277D75348] blackColor];
        [v115 setFillColor:{objc_msgSend(blackColor, "CGColor")}];

        blackColor2 = [MEMORY[0x277D75348] blackColor];
        [v115 setStrokeColor:{objc_msgSend(blackColor2, "CGColor")}];

        [v115 setFillRule:*MEMORY[0x277CDA250]];
        [v115 setStrokeStart:0.0];
        [v115 setStrokeEnd:1.0];
        [v115 setLineWidth:1.0];
        [(CALayer *)v15->_maskForegroundLayer addSublayer:v115];
      }

      [(CALayer *)v15->_foregroundRingContainerLayer setAnchorPoint:(v111 - v88) / v92, (v112 - v90) / v94];
      [(CALayer *)v15->_foregroundRingContainerLayer setPosition:v92 * ((v111 - v88) / v92), v94 * ((v112 - v90) / v94)];
      v118 = objc_alloc_init(MEMORY[0x277CD9ED0]);
      maskLayer = v15->_maskLayer;
      v15->_maskLayer = v118;

      v120 = v15->_maskLayer;
      v121 = PKLayerNullActions();
      [(CALayer *)v120 setActions:v121];

      [(CALayer *)v15->_maskLayer addSublayer:v15->_maskForegroundLayer];
      [(CALayer *)v15->_foregroundLayer addSublayer:v15->_foregroundRingContainerLayer];
    }

    cGColor = [(UIColor *)v15->_secondaryColor CGColor];
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v123 = v15->_backgroundShapeLayers;
    v124 = [(NSArray *)v123 countByEnumeratingWithState:&v162 objects:v182 count:16];
    if (v124)
    {
      v125 = v124;
      v126 = *v163;
      do
      {
        for (n = 0; n != v125; ++n)
        {
          if (*v163 != v126)
          {
            objc_enumerationMutation(v123);
          }

          v128 = *(*(&v162 + 1) + 8 * n);
          v129 = [objc_alloc(MEMORY[0x277D38280]) initWithShapeLayer:v128 reverse:1];
          [(PKFingerprintGlyphView *)v15 setPathState:v129 forLayer:v128];
          [v128 setStrokeColor:cGColor];
        }

        v125 = [(NSArray *)v123 countByEnumeratingWithState:&v162 objects:v182 count:16];
      }

      while (v125);
    }

    cGColor2 = [(UIColor *)v15->_primaryColor CGColor];
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v131 = v15->_foregroundShapeLayers;
    v132 = [(NSArray *)v131 countByEnumeratingWithState:&v158 objects:v181 count:16];
    if (v132)
    {
      v133 = v132;
      v134 = *v159;
      do
      {
        for (ii = 0; ii != v133; ++ii)
        {
          if (*v159 != v134)
          {
            objc_enumerationMutation(v131);
          }

          v136 = *(*(&v158 + 1) + 8 * ii);
          v137 = [objc_alloc(MEMORY[0x277D38280]) initWithShapeLayer:v136];
          [(PKFingerprintGlyphView *)v15 setPathState:v137 forLayer:v136];
          [v136 setStrokeColor:cGColor2];
        }

        v133 = [(NSArray *)v131 countByEnumeratingWithState:&v158 objects:v181 count:16];
      }

      while (v133);
    }

    v138 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    contentLayer = v15->_contentLayer;
    v15->_contentLayer = v138;

    v140 = v15->_contentLayer;
    v141 = PKLayerNullActions();
    [(CALayer *)v140 setActions:v141];

    [(CALayer *)v15->_contentLayer setFrame:v150, v149, v148, v147];
    [(CALayer *)v15->_contentLayer setMask:v15->_maskLayer];
    layer = [(PKFingerprintGlyphView *)v15 layer];
    [layer addSublayer:v15->_backgroundLayer];
    [layer addSublayer:v15->_contentLayer];
    [layer addSublayer:v15->_foregroundLayer];
    [(PKFingerprintGlyphView *)v15 setProgress:0.0 withDuration:0.0];
    v15->_priorState = 0;
    v15->_state = 0;
    [(PKFingerprintGlyphView *)v15 setContentLayerOpacity:0.0 withDuration:0.0];
    [(PKFingerprintGlyphView *)v15 setNeedsLayout];

    rootLayer = v145;
    v8 = v146;
  }

  v143 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __30__PKFingerprintGlyphView_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 strokeStart];
  v6 = v5;
  [v4 strokeStart];
  v8 = v7;

  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

- (void)dealloc
{
  if (self->_transitioning)
  {
    [(PKFingerprintGlyphView *)self _executeTransitionCompletionHandlers:1];
  }

  v3.receiver = self;
  v3.super_class = PKFingerprintGlyphView;
  [(PKFingerprintGlyphView *)&v3 dealloc];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = PKFingerprintGlyphView;
  [(PKFingerprintGlyphView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(PKFingerprintGlyphView *)self _applyPrimaryColorAnimated:1];
  [(PKFingerprintGlyphView *)self _applySecondaryColorAnimated:1];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PKFingerprintGlyphView;
  [(PKFingerprintGlyphView *)&v4 didMoveToWindow];
  window = [(PKFingerprintGlyphView *)self window];

  if (window)
  {
    [(PKFingerprintGlyphView *)self _restartRotationIfNecessary];
  }
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = PKFingerprintGlyphView;
  [(PKFingerprintGlyphView *)&v29 layoutSubviews];
  [(PKFingerprintGlyphView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CALayer *)self->_contentLayer setFrame:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fingerprintGlyphView:self didLayoutContentLayer:self->_contentLayer];

  [(PKFingerprintGlyphView *)self pointScaleToMatchBoundsSize:v8, v10];
  memset(&v28, 0, sizeof(v28));
  CATransform3DMakeScale(&v28, v12 * 0.5, v12 * 0.5, 1.0);
  backgroundLayer = self->_backgroundLayer;
  v27 = v28;
  [(CALayer *)backgroundLayer setTransform:&v27];
  foregroundLayer = self->_foregroundLayer;
  v27 = v28;
  [(CALayer *)foregroundLayer setTransform:&v27];
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  MidX = CGRectGetMidX(v30);
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  MidY = CGRectGetMidY(v31);
  [(CALayer *)self->_backgroundLayer setPosition:MidX, MidY];
  [(CALayer *)self->_foregroundLayer setPosition:MidX, MidY];
  [(CALayer *)self->_contentLayer bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [(CALayer *)self->_maskLayer anchorPoint];
  [(CALayer *)self->_maskLayer setPosition:v18 + v25 * v22, v20 + v26 * v24];
  [(CALayer *)self->_maskLayer setBounds:v18, v20, v22, v24];
  MatchLayerGeometry(self->_maskForegroundLayer, self->_foregroundLayer);
}

- (double)pointScaleToMatchBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(CALayer *)self->_backgroundLayer bounds];
  v7 = width / v6;
  v8 = 0.0;
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  if (v5 != 0.0)
  {
    v8 = height / v5;
  }

  v9 = fmin(v7, v8);
  return v9 + v9;
}

- (CGSize)boundsSizeToMatchPointScale:(double)scale
{
  v3 = scale * 0.5;
  [(CALayer *)self->_backgroundLayer bounds];
  v5 = v3 * v4;
  v7 = v3 * v6;
  result.height = v7;
  result.width = v5;
  return result;
}

- (void)setRecognizedIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  state = self->_state;
  v6 = state == 4 || state == 1;
  if (v6 && !self->_fadeOnRecognized)
  {
    [(PKFingerprintGlyphView *)self setState:4 animated:1 completionHandler:?];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  MEMORY[0x2821F97D0]();
}

- (void)_executeTransitionCompletionHandlers:(BOOL)handlers
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(NSMutableArray *)self->_transitionCompletionHandlers copy];
  [(NSMutableArray *)self->_transitionCompletionHandlers removeAllObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9) + 16))(*(*(&v11 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_finishTransitionForIndex:(unint64_t)index
{
  if (self->_transitioning && self->_transitionIndex == index)
  {
    self->_transitioning = 0;
    [(PKFingerprintGlyphView *)self _executeTransitionCompletionHandlers:0];
  }
}

- (double)_minimumAnimationDurationForStateTransition
{
  Current = CFAbsoluteTimeGetCurrent();
  lastAnimationWillFinish = self->_lastAnimationWillFinish;
  v5 = lastAnimationWillFinish - Current;
  v6 = lastAnimationWillFinish <= Current;
  result = 0.0;
  if (!v6)
  {
    return v5;
  }

  return result;
}

- (void)_executeAfterMinimumAnimationDurationForStateTransition:(id)transition
{
  transitionCopy = transition;
  if (transitionCopy)
  {
    block = transitionCopy;
    [(PKFingerprintGlyphView *)self _minimumAnimationDurationForStateTransition];
    if (v5 <= 0.0)
    {
      block[2]();
    }

    else
    {
      v6 = dispatch_time(0, (v5 * 1000000000.0));
      dispatch_after(v6, MEMORY[0x277D85CD0], block);
    }

    transitionCopy = block;
  }
}

void __73__PKFingerprintGlyphView__performTransitionWithTransitionIndex_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _showFingerprintWithTransitionIndex:*(a1 + 40) animated:*(a1 + 48)];
    WeakRetained = v3;
  }
}

void __73__PKFingerprintGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _finishTransitionForIndex:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __73__PKFingerprintGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _startRecognitionHoldingStateWithTransitionIndex:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __73__PKFingerprintGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _startRecognitionHoldingStateWithTransitionIndex:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __73__PKFingerprintGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[59] == *(a1 + 48))
  {
    v4 = *(a1 + 56);
    [WeakRetained _setRingState:*(*(a1 + 32) + 552) != 2 withTransitionIndex:? animated:?];
    v5 = 0.0;
    if (*(a1 + 56) == 1)
    {
      [v3 _minimumAnimationDurationForStateTransition];
      v5 = v6;
    }

    [v3 setContentLayerOpacity:0.0 withDuration:v5];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73__PKFingerprintGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_6;
    v7[3] = &unk_279A003F0;
    objc_copyWeak(v8, (a1 + 40));
    v8[1] = *(a1 + 48);
    [v3 _executeAfterMinimumAnimationDurationForStateTransition:v7];
    objc_destroyWeak(v8);
  }
}

void __73__PKFingerprintGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[59] == *(a1 + 40))
  {
    v3 = WeakRetained;
    [WeakRetained _updateRotationAnimationsIfNecessary];
    [v3 _finishTransitionForIndex:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_showFingerprintWithTransitionIndex:(unint64_t)index animated:(BOOL)animated
{
  if (self->_transitionIndex == index)
  {
    animatedCopy = animated;
    [(PKFingerprintGlyphView *)self _minimumAnimationDurationForStateTransition];
    v8 = 0.0;
    if (animatedCopy)
    {
      v8 = 0.3;
      if (!self->_fadeOnRecognized)
      {
        v8 = 0.4;
      }
    }

    state = self->_state;
    v10 = state == 4;
    v11 = 1.0;
    if (state == 4)
    {
      if (self->_fadeOnRecognized)
      {
        [(PKFingerprintGlyphView *)self setContentLayerOpacity:1.0 withDuration:0.25, 1.0, v8];
LABEL_10:
        objc_initWeak(&location, self);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __71__PKFingerprintGlyphView__showFingerprintWithTransitionIndex_animated___block_invoke;
        v12[3] = &unk_279A003C8;
        objc_copyWeak(v13, &location);
        v13[1] = index;
        v14 = v10;
        [(PKFingerprintGlyphView *)self _executeAfterMinimumAnimationDurationForStateTransition:v12];
        objc_destroyWeak(v13);
        objc_destroyWeak(&location);
        return;
      }
    }

    else
    {
      v11 = 0.0;
    }

    [(PKFingerprintGlyphView *)self setProgress:v11 withDuration:fmax(v8, v7)];
    goto LABEL_10;
  }
}

void __71__PKFingerprintGlyphView__showFingerprintWithTransitionIndex_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[59] == *(a1 + 40))
  {
    if (*(a1 + 48) == 1)
    {
      v4 = MEMORY[0x277D85DD0];
      v5 = 3221225472;
      v6 = __71__PKFingerprintGlyphView__showFingerprintWithTransitionIndex_animated___block_invoke_2;
      v7 = &unk_279A003F0;
      objc_copyWeak(v8, (a1 + 32));
      v8[1] = *(a1 + 40);
      [v3 _executeAfterMinimumAnimationDurationForStateTransition:&v4];
      [v3 setContentLayerOpacity:1.0 withDuration:{0.25, v4, v5, v6, v7}];
      objc_destroyWeak(v8);
    }

    else
    {
      [WeakRetained _finishTransitionForIndex:?];
    }
  }
}

void __71__PKFingerprintGlyphView__showFingerprintWithTransitionIndex_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _finishTransitionForIndex:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_startRecognitionHoldingStateWithTransitionIndex:(unint64_t)index
{
  if (self->_transitionIndex == index)
  {
    v6 = [(NSArray *)self->_backgroundShapeLayers count];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [(PKFingerprintGlyphView *)self _continueHoldingStateForPathAtIndex:i withTransitionIndex:index];
      }
    }

    [(PKFingerprintGlyphView *)self _finishTransitionForIndex:index];
  }
}

- (void)_continueHoldingStateForPathAtIndex:(unint64_t)index withTransitionIndex:(unint64_t)transitionIndex
{
  if (self->_transitionIndex == transitionIndex)
  {
    v7 = [(NSArray *)self->_foregroundShapeLayers objectAtIndexedSubscript:?];
    v8 = [(PKFingerprintGlyphView *)self pathStateForLayer:v7];
    v9 = [(NSArray *)self->_foregroundShapeLayers objectAtIndexedSubscript:index];
    [v8 progressForShapeLayer:v9];
    v11 = v10;

    LODWORD(v7) = arc4random_uniform(2u);
    v12 = arc4random_uniform(0x65u) / 1000.0;
    v13 = 0.8;
    if (!v7)
    {
      v13 = 0.5;
    }

    v14 = v13 + v12;
    v15 = vabdd_f64(v13 + v12, v11);
    v16 = 1.5;
    if (v14 > v11)
    {
      v16 = 2.25;
    }

    v17 = v16 * v15;
    [(PKFingerprintGlyphView *)self _updateLastAnimationTimeWithAnimationOfDuration:v16 * v15];
    [(PKFingerprintGlyphView *)self _setProgress:index withDuration:v14 forShapeLayerAtIndex:v17];
    objc_initWeak(&location, self);
    v18 = arc4random_uniform(0xFBu);
    v19 = dispatch_time(0, ((v17 + v18 / 1000.0 + 0.5) * 1000000000.0));
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __82__PKFingerprintGlyphView__continueHoldingStateForPathAtIndex_withTransitionIndex___block_invoke;
    v20[3] = &unk_279A00440;
    objc_copyWeak(v21, &location);
    v21[1] = index;
    v21[2] = transitionIndex;
    dispatch_after(v19, MEMORY[0x277D85CD0], v20);
    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }
}

void __82__PKFingerprintGlyphView__continueHoldingStateForPathAtIndex_withTransitionIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _continueHoldingStateForPathAtIndex:*(a1 + 40) withTransitionIndex:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)_setRingState:(unint64_t)state withTransitionIndex:(unint64_t)index animated:(BOOL)animated
{
  v65 = *MEMORY[0x277D85DE8];
  if (self->_transitionIndex == index)
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    fadeOnRecognized = self->_fadeOnRecognized;
    if (animated)
    {
      v8 = 0.4;
    }

    else
    {
      v8 = 0.0;
    }

    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __69__PKFingerprintGlyphView__setRingState_withTransitionIndex_animated___block_invoke;
    v57[3] = &unk_279A00468;
    *&v57[5] = v8;
    v57[4] = &v59;
    v58 = fadeOnRecognized;
    v9 = MEMORY[0x25F8AAFE0](v57, a2);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v10 = self->_backgroundShapeLayers;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v53 objects:v64 count:16];
    if (v11)
    {
      v12 = *v54;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v54 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v53 + 1) + 8 * i);
          if (state)
          {
            [*(*(&v53 + 1) + 8 * i) strokeEnd];
          }

          else
          {
            [*(*(&v53 + 1) + 8 * i) strokeStart];
          }

          v9[2](v9, v14, v15, v15.n128_f64[0]);
        }

        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v53 objects:v64 count:16];
      }

      while (v11);
    }

    v16 = [(NSArray *)self->_foregroundRingShapeLayers count];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = self->_foregroundShapeLayers;
    v17 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v63 count:16];
    if (v17)
    {
      v45 = v16 - 1;
      v47 = *v50;
      do
      {
        v48 = v17;
        for (j = 0; j != v48; ++j)
        {
          if (*v50 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v49 + 1) + 8 * j);
          foregroundRingShapeLayers = self->_foregroundRingShapeLayers;
          if (foregroundRingShapeLayers && (v21 = [(NSArray *)foregroundRingShapeLayers indexOfObjectIdenticalTo:*(*(&v49 + 1) + 8 * j)], v21 != 0x7FFFFFFFFFFFFFFFLL))
          {
            v23 = [(PKFingerprintGlyphView *)self pathStateForLayer:v19];
            [v23 strokeStartAtProgress:1.0];
            v25 = v24;
            [v23 strokeEndAtProgress:1.0];
            v27 = v26;
            if (v21)
            {
              v28 = [(NSArray *)self->_foregroundRingShapeLayers objectAtIndexedSubscript:v21 - 1];
              v29 = [(PKFingerprintGlyphView *)self pathStateForLayer:v28];

              [v29 strokeEndAtProgress:1.0];
              v31 = v30;

              v32 = (v25 + v31) * 0.5;
            }

            else
            {
              v32 = 0.0;
            }

            v33 = 1.0;
            if (v21 < v45)
            {
              v34 = [(NSArray *)self->_foregroundRingShapeLayers objectAtIndexedSubscript:v21 + 1, 1.0];
              v35 = [(PKFingerprintGlyphView *)self pathStateForLayer:v34];

              [v35 strokeStartAtProgress:1.0];
              v37 = v36;

              v33 = (v27 + v37) * 0.5;
            }

            if (state)
            {
              v38 = v33;
            }

            else
            {
              v38 = v32;
            }

            if (state == 1)
            {
              v39 = v32 + 0.025;
              if (v21)
              {
                v39 = v32;
              }

              if (v21 == v45)
              {
                v33 = v33 + -0.025;
              }

              v32 = fmin(v39, v33);
              v38 = fmax(v32, v33);
            }

            [v19 strokeStart];
            v41 = v40;
            [v19 strokeEnd];
            if (v41 == v42 && ([v19 pkui_hasAdditiveAnimationForKeyPath:@"strokeStart"] & 1) == 0 && (objc_msgSend(v19, "pkui_hasAdditiveAnimationForKeyPath:", @"strokeEnd") & 1) == 0)
            {
              if (v32 == v38)
              {
                [v19 setStrokeStart:v32];
                v43 = v38;
              }

              else
              {
                v43 = 0.5;
                [v19 setStrokeStart:0.5];
              }

              [v19 setStrokeEnd:v43];
            }

            (v9[2])(v9, v19, v32, v38);
          }

          else
          {
            if (state)
            {
              [v19 strokeEnd];
            }

            else
            {
              [v19 strokeStart];
            }

            (v9)[2](v9, v19, v22, v22.n128_f64[0]);
          }
        }

        v17 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v63 count:16];
      }

      while (v17);
    }

    if (*(v60 + 24) == 1)
    {
      [(PKFingerprintGlyphView *)self _updateLastAnimationTimeWithAnimationOfDuration:v8];
    }

    _Block_object_dispose(&v59, 8);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __69__PKFingerprintGlyphView__setRingState_withTransitionIndex_animated___block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v26 = v7;
  if (*(a1 + 40) > 0.0)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v26 strokeStart];
    if (v9 == a3)
    {
      v14 = v26;
LABEL_9:
      [v14 strokeEnd];
      if (v15 != a4)
      {
        if (v8)
        {
          v16 = v15;
          v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
          [v17 setAdditive:1];
          [v17 setDuration:*(a1 + 40)];
          v18 = PKMagicCurve();
          [v17 setTimingFunction:v18];

          [v17 pkui_updateForAdditiveAnimationFromScalar:v16 toScalar:a4];
          [v8 addObject:v17];
        }

        goto LABEL_13;
      }

      goto LABEL_14;
    }

    if (v8)
    {
      v10 = v9;
      v11 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeStart"];
      [v11 setAdditive:1];
      [v11 setDuration:*(a1 + 40)];
      v12 = PKMagicCurve();
      [v11 setTimingFunction:v12];

      [v11 pkui_updateForAdditiveAnimationFromScalar:v10 toScalar:a3];
      [v8 addObject:v11];
    }

LABEL_7:
    [v26 setStrokeStart:a3];
    v14 = v26;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    goto LABEL_9;
  }

  [v7 strokeStart];
  if (v13 != a3)
  {
    v8 = 0;
    goto LABEL_7;
  }

  [v26 strokeEnd];
  v8 = 0;
  if (v19 != a4)
  {
LABEL_13:
    [v26 setStrokeEnd:a4];
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

LABEL_14:
  if (a3 == a4 && (*(a1 + 48) & 1) != 0 && [v8 count])
  {
    [v26 opacity];
    v21 = v20;
    v22 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v22 setAdditive:1];
    [v22 setDuration:*(a1 + 40)];
    v23 = PKMagicCurve();
    [v22 setTimingFunction:v23];

    [v22 setFillMode:*MEMORY[0x277CDA238]];
    [v22 pkui_updateForAdditiveAnimationFromScalar:v21 toScalar:0.0 withLayerScalar:v21];
    [v8 addObject:v22];
  }

  if ([v8 count])
  {
    v24 = [MEMORY[0x277CD9E00] animation];
    [v24 setDuration:*(a1 + 40)];
    [v24 setAnimations:v8];
    v25 = [v26 pkui_addAdditiveAnimation:v24];
  }
}

- (void)_updateRotationAnimationsIfNecessary
{
  rotatingRing = self->_rotatingRing;
  v3 = self->_state == 3;
  if (self->_state == 3)
  {
    if (!self->_rotatingRing)
    {
      self->_rotatingRing = v3;
      [(PKFingerprintGlyphView *)self _startRotationAnimation];
    }
  }

  else if (self->_rotatingRing)
  {
    self->_rotatingRing = v3;
    [(PKFingerprintGlyphView *)self _endRotationAnimation];
  }
}

- (void)_restartRotationIfNecessary
{
  if (self->_rotationAnimationKey)
  {
    v3 = [(CALayer *)self->_foregroundRingContainerLayer animationForKey:?];

    if (!v3)
    {
      rotationAnimationKey = self->_rotationAnimationKey;
      self->_rotationAnimationKey = 0;

      [(PKFingerprintGlyphView *)self _startRotationAnimation];
    }
  }
}

- (void)_startRotationAnimation
{
  v43 = *MEMORY[0x277D85DE8];
  if (self->_foregroundRingContainerLayer && !self->_rotationAnimationKey)
  {
    v3 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform"];
    [v3 setAdditive:1];
    v4 = *MEMORY[0x277CDA080];
    [v3 setBeginTimeMode:*MEMORY[0x277CDA080]];
    [v3 setDuration:0.55];
    v36 = *MEMORY[0x277CDA230];
    [v3 setFillMode:?];
    v5 = MEMORY[0x277CCAE60];
    CATransform3DMakeRotation(&v37, -3.14159265, 0.0, 0.0, -1.0);
    v6 = [v5 valueWithCATransform3D:&v37];
    v38 = v6;
    v7 = MEMORY[0x277CCAE60];
    CATransform3DMakeRotation(&v37, -1.57079633, 0.0, 0.0, -1.0);
    v8 = [v7 valueWithCATransform3D:&v37];
    v39 = v8;
    v9 = MEMORY[0x277CCAE60];
    CATransform3DMakeRotation(&v37, 0.0, 0.0, 0.0, -1.0);
    v10 = [v9 valueWithCATransform3D:&v37];
    v40 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:3];
    [v3 setValues:v11];

    [v3 setKeyTimes:&unk_286FD1328];
    v12 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
    *&v37.m11 = v12;
    v13 = *MEMORY[0x277CDA7C8];
    v14 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    *&v37.m12 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:2];
    [v3 setTimingFunctions:v15];

    v16 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform"];
    [v16 setAdditive:1];
    [v16 setBeginTimeMode:v4];
    [v16 setDuration:1.0];
    v17 = [MEMORY[0x277CD9EF8] functionWithName:v13];
    [v16 setTimingFunction:v17];

    [v16 setFillMode:v36];
    v18 = MEMORY[0x277CCAE60];
    CATransform3DMakeRotation(&v37, 0.0, 0.0, 0.0, -1.0);
    v19 = [v18 valueWithCATransform3D:&v37];
    v38 = v19;
    v20 = MEMORY[0x277CCAE60];
    CATransform3DMakeRotation(&v37, 1.57079633, 0.0, 0.0, -1.0);
    v21 = [v20 valueWithCATransform3D:&v37];
    v39 = v21;
    v22 = MEMORY[0x277CCAE60];
    CATransform3DMakeRotation(&v37, 3.14159265, 0.0, 0.0, -1.0);
    v23 = [v22 valueWithCATransform3D:&v37];
    v40 = v23;
    v24 = MEMORY[0x277CCAE60];
    CATransform3DMakeRotation(&v37, 4.71238898, 0.0, 0.0, -1.0);
    v25 = [v24 valueWithCATransform3D:&v37];
    v41 = v25;
    v26 = MEMORY[0x277CCAE60];
    CATransform3DMakeRotation(&v37, 0.0, 0.0, 0.0, -1.0);
    v27 = [v26 valueWithCATransform3D:&v37];
    v42 = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:5];
    [v16 setValues:v28];

    [v16 setKeyTimes:&unk_286FD1340];
    LODWORD(v29) = 2139095040;
    [v16 setRepeatCount:v29];
    [v16 setBeginTime:0.55];
    v30 = [(CALayer *)self->_foregroundRingContainerLayer pkui_addAdditiveAnimation:v3];
    v31 = [(CALayer *)self->_foregroundRingContainerLayer pkui_addAdditiveAnimation:v16];
    v32 = [v31 copy];
    rotationAnimationKey = self->_rotationAnimationKey;
    self->_rotationAnimationKey = v32;

    foregroundRingContainerLayer = self->_foregroundRingContainerLayer;
    CATransform3DMakeRotation(&v37, 3.14159265, 0.0, 0.0, -1.0);
    [(CALayer *)foregroundRingContainerLayer setTransform:&v37];
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_endRotationAnimation
{
  v35[3] = *MEMORY[0x277D85DE8];
  if (self->_foregroundRingContainerLayer && self->_rotationAnimationKey)
  {
    v3 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform"];
    [v3 setAdditive:1];
    [v3 setBeginTimeMode:*MEMORY[0x277CDA080]];
    [v3 setDuration:0.55];
    [v3 setFillMode:*MEMORY[0x277CDA230]];
    v4 = MEMORY[0x277CCAE60];
    CATransform3DMakeRotation(&v34, -3.14159265, 0.0, 0.0, -1.0);
    v5 = [v4 valueWithCATransform3D:&v34];
    v35[0] = v5;
    v6 = MEMORY[0x277CCAE60];
    CATransform3DMakeRotation(&v34, -1.57079633, 0.0, 0.0, -1.0);
    v7 = [v6 valueWithCATransform3D:&v34];
    v35[1] = v7;
    v8 = MEMORY[0x277CCAE60];
    CATransform3DMakeRotation(&v34, 0.0, 0.0, 0.0, -1.0);
    v9 = [v8 valueWithCATransform3D:&v34];
    v35[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
    [v3 setValues:v10];

    [v3 setKeyTimes:&unk_286FD1358];
    v11 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    *&v34.m11 = v11;
    v12 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
    *&v34.m12 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:2];
    [v3 setTimingFunctions:v13];

    v14 = self->_rotationAnimationKey;
    rotationAnimationKey = self->_rotationAnimationKey;
    self->_rotationAnimationKey = 0;

    [(CALayer *)self->_foregroundRingContainerLayer pkui_elapsedDurationForAnimationWithKey:v14];
    v27 = v16;
    v17 = v16;
    if (*v16.i64 <= 0.0)
    {
      [(CALayer *)self->_foregroundRingContainerLayer removeAnimationForKey:v14];

      v14 = 0;
      v19 = fabs(*v27.i64);
    }

    else
    {
      *v16.i64 = *v16.i64 - trunc(*v16.i64);
      v18.f64[0] = NAN;
      v18.f64[1] = NAN;
      v19 = 1.0 - *vbslq_s8(vnegq_f64(v18), v16, v17).i64;
    }

    [v3 setBeginTime:v19 + CACurrentMediaTime()];
    [v3 setBeginTimeMode:*MEMORY[0x277CDA048]];
    if (v14)
    {
      objc_initWeak(&v34, self);
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __47__PKFingerprintGlyphView__endRotationAnimation__block_invoke;
      v31 = &unk_2799FFAF8;
      objc_copyWeak(&v33, &v34);
      v32 = v14;
      [v3 pkui_setDidStartHandler:&v28];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&v34);
    }

    v20 = [(CALayer *)self->_foregroundRingContainerLayer pkui_addAdditiveAnimation:v3, *&v27, v28, v29, v30, v31];
    foregroundRingContainerLayer = self->_foregroundRingContainerLayer;
    v22 = *(MEMORY[0x277CD9DE8] + 80);
    *&v34.m31 = *(MEMORY[0x277CD9DE8] + 64);
    *&v34.m33 = v22;
    v23 = *(MEMORY[0x277CD9DE8] + 112);
    *&v34.m41 = *(MEMORY[0x277CD9DE8] + 96);
    *&v34.m43 = v23;
    v24 = *(MEMORY[0x277CD9DE8] + 16);
    *&v34.m11 = *MEMORY[0x277CD9DE8];
    *&v34.m13 = v24;
    v25 = *(MEMORY[0x277CD9DE8] + 48);
    *&v34.m21 = *(MEMORY[0x277CD9DE8] + 32);
    *&v34.m23 = v25;
    [(CALayer *)foregroundRingContainerLayer setTransform:&v34];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __47__PKFingerprintGlyphView__endRotationAnimation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[53] removeAnimationForKey:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)setContentLayerOpacity:(double)opacity withDuration:(double)duration
{
  [(CALayer *)self->_contentLayer opacity];
  v8 = *&v7;
  if (*&v7 != opacity)
  {
    if (duration > 0.0)
    {
      v9 = [MEMORY[0x277D382C8] springAnimationWithKeyPath:@"opacity"];
      [v9 pkui_updateForAdditiveAnimationFromScalar:v8 toScalar:opacity];
      v10 = [(CALayer *)self->_contentLayer pkui_addAdditiveAnimation:v9];
    }

    contentLayer = self->_contentLayer;

    *&v7 = opacity;
    [(CALayer *)contentLayer setOpacity:v7];
  }
}

- (void)setProgress:(double)progress withDuration:(double)duration
{
  [(PKFingerprintGlyphView *)self _updateLastAnimationTimeWithAnimationOfDuration:duration];
  v7 = [(NSArray *)self->_backgroundShapeLayers count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = fmax(fmin(progress, 1.0), 0.0);
    do
    {
      [(PKFingerprintGlyphView *)self _setProgress:v9++ withDuration:v10 forShapeLayerAtIndex:duration];
    }

    while (v8 != v9);
  }
}

- (void)_setProgress:(double)progress withDuration:(double)duration forShapeLayerAtIndex:(unint64_t)index
{
  v8 = MEMORY[0x25F8AAFE0]();
  v9 = [(NSArray *)self->_backgroundShapeLayers objectAtIndexedSubscript:index];
  v10 = [(PKFingerprintGlyphView *)self pathStateForLayer:v9];
  [v10 setProgress:v9 onShapeLayer:v8 withAnimationHandler:1.0 - progress];

  v11 = [(NSArray *)self->_foregroundShapeLayers objectAtIndexedSubscript:index];

  v12 = [(PKFingerprintGlyphView *)self pathStateForLayer:v11];
  [v12 setProgress:v11 onShapeLayer:v8 withAnimationHandler:progress];
}

void __73__PKFingerprintGlyphView__setProgress_withDuration_forShapeLayerAtIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v12 = a2;
  v9 = [MEMORY[0x277CD9E10] animationWithKeyPath:a3];
  [v9 setAdditive:1];
  [v9 setDuration:*(a1 + 32)];
  v10 = PKMagicCurve();
  [v9 setTimingFunction:v10];

  [v9 pkui_updateForAdditiveAnimationFromScalar:a4 toScalar:a5];
  v11 = [v12 pkui_addAdditiveAnimation:v9];
}

- (void)_applyColor:(id)color toShapeLayers:(id)layers animated:(BOOL)animated
{
  animatedCopy = animated;
  v39 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  layersCopy = layers;
  if (layersCopy)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v30 = __61__PKFingerprintGlyphView__applyColor_toShapeLayers_animated___block_invoke;
    v31 = &unk_279A004B0;
    v33 = &v34;
    v32 = colorCopy;
    v8 = MEMORY[0x277D75C80];
    v9 = v29;
    selfCopy = self;
    currentTraitCollection = [v8 currentTraitCollection];
    v12 = MEMORY[0x277D75C80];
    traitCollection = [(PKFingerprintGlyphView *)selfCopy traitCollection];

    [v12 setCurrentTraitCollection:traitCollection];
    v30(v9);

    [MEMORY[0x277D75C80] setCurrentTraitCollection:currentTraitCollection];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = layersCopy;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v38 count:16];
    if (v15)
    {
      v16 = *v26;
      do
      {
        v17 = 0;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v25 + 1) + 8 * v17);
          if (animatedCopy)
          {
            [*(*(&v25 + 1) + 8 * v17) removeAnimationForKey:@"color"];
            presentationLayer = [v18 presentationLayer];
            strokeColor = [presentationLayer strokeColor];

            v21 = [MEMORY[0x277D382C8] springAnimationWithKeyPath:@"strokeColor"];
            [v21 setAdditive:0];
            [v21 setFromValue:strokeColor];
            [v21 setToValue:v35[3]];
            [v18 addAnimation:v21 forKey:@"color"];
          }

          [v18 setStrokeColor:{v35[3], layersCopy}];
          ++v17;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v25 objects:v38 count:16];
      }

      while (v15);
    }

    CGColorRelease(v35[3]);
    _Block_object_dispose(&v34, 8);
  }

  v22 = *MEMORY[0x277D85DE8];
}

CGColorRef __61__PKFingerprintGlyphView__applyColor_toShapeLayers_animated___block_invoke(uint64_t a1)
{
  result = CGColorRetain([*(a1 + 32) CGColor]);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setPathState:(id)state forLayer:(id)layer
{
  if (layer)
  {
    objc_setAssociatedObject(layer, &PathStateKey, state, 0x301);
  }
}

- (id)pathStateForLayer:(id)layer
{
  if (layer)
  {
    v4 = objc_getAssociatedObject(layer, &PathStateKey);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKFingerprintGlyphViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end