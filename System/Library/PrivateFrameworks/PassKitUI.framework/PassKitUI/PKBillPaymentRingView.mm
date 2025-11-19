@interface PKBillPaymentRingView
- (BOOL)_isAmount:(id)a3 withinRoundingUnitOfAmount:(id)a4;
- (BOOL)_setDisplayAmount:(id)a3;
- (BOOL)_updateEffectiveDisplayAmount;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGPoint)_center;
- (CGPoint)_centerPointAtAngle:(double)a3 adjustToCover:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSDecimalNumber)amount;
- (PKBillPaymentRingView)initWithSuggestedAmountList:(id)a3 delegate:(id)a4 dataSource:(id)a5;
- (PKBillPaymentRingViewDataSource)dataSource;
- (PKBillPaymentRingViewDelegate)delegate;
- (UIColor)currentEndColor;
- (UIColor)currentStartColor;
- (double)_amountLabelMaximumFontSize;
- (double)_angleForAmount:(id)a3;
- (double)_angleForAngleIndex:(unint64_t)a3;
- (double)_angleForPosition:(CGPoint)a3;
- (double)_angleForRecognizer:(id)a3;
- (id)_blendFromGradientState:(id)a3 toState:(id)a4 withProgress:(double)a5;
- (id)_gradientStateForSuggestedAmount:(id)a3;
- (id)_roundedAmountForAngle:(double)a3;
- (id)_stickySuggestedAmountForCurrentAngle;
- (id)_suggestedAmountForAngleIndex:(unint64_t)a3;
- (id)_suggestedAmountImageForSuggestedAmount:(id)a3;
- (id)_targetGradientStateForAngle:(double)a3;
- (unint64_t)_segmentEndAngleIndexForAngle:(double)a3;
- (unint64_t)_unnormalizedAngleIndexForAngle:(double)a3;
- (void)_createStandardColors;
- (void)_createSuggestedAmountAngles;
- (void)_createSuggestedAmountRingColorStops;
- (void)_createSuggestedAmountsImageDictionary;
- (void)_dragEnded:(id)a3;
- (void)_dragMoved:(id)a3;
- (void)_dragMovedToAngle:(double)a3 normalizedRadius:(double)a4;
- (void)_dragRecognizerChanged:(id)a3;
- (void)_dragStarted:(id)a3;
- (void)_pauseRenderLoop;
- (void)_pressRecognized:(id)a3;
- (void)_setDotsVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_setHighlightedSuggestedAmount:(id)a3;
- (void)_setResponse:(double)a3;
- (void)_setSelectedSuggestedAmount:(id)a3;
- (void)_tapRecognized:(id)a3;
- (void)_updateCurvedText;
- (void)_updateForEnabledState;
- (void)_updateHandleImage;
- (void)_updateHandleState;
- (void)_updateInitialDisplayState;
- (void)_updateInterestText;
- (void)_updatePausedState;
- (void)completeInitialDisplayAnimated:(BOOL)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)didUpdateAngleSpringPosition;
- (void)didUpdateAngleSpringTarget;
- (void)didUpdateScaleSpringPosition;
- (void)layoutSubviews;
- (void)prepareForInitialDisplayWithAmount:(id)a3;
- (void)renderLoop:(id)a3 drawAtTime:(double)a4;
- (void)setAmount:(id)a3 animated:(BOOL)a4 userInitiatedWithKeypad:(BOOL)a5;
- (void)setAngle:(double)a3 animated:(BOOL)a4 forExplicitAmount:(id)a5 userInitiatedWithRing:(BOOL)a6 userInitiatedWithKeypad:(BOOL)a7;
- (void)setEnabled:(BOOL)a3;
- (void)setHandleScale:(double)a3 animated:(BOOL)a4;
- (void)setIsSmall:(BOOL)a3;
@end

@implementation PKBillPaymentRingView

- (PKBillPaymentRingView)initWithSuggestedAmountList:(id)a3 delegate:(id)a4 dataSource:(id)a5
{
  v87 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v85.receiver = self;
  v85.super_class = PKBillPaymentRingView;
  v12 = [(PKBillPaymentRingView *)&v85 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v13 = v12;
  if (v12)
  {
    v78 = v9;
    v12->_enabled = 1;
    v12->_needsInitialDisplay = 1;
    objc_storeStrong(&v12->_suggestedAmountList, a3);
    v77 = v10;
    objc_storeWeak(&v13->_delegate, v10);
    objc_storeWeak(&v13->_dataSource, v11);
    v13->_pinnedAmountAngleIndex = 0x7FFFFFFFFFFFFFFFLL;
    v13->_dragCapture = 0;
    [(PKBillPaymentRingView *)v13 _createSuggestedAmountsImageDictionary];
    [(PKBillPaymentRingView *)v13 _createSuggestedAmountAngles];
    [(PKBillPaymentRingView *)v13 _createStandardColors];
    [(PKBillPaymentRingView *)v13 _createSuggestedAmountRingColorStops];
    v14 = objc_alloc_init(PKRingGradientView);
    ringView = v13->_ringView;
    v13->_ringView = v14;

    v16 = v13->_ringView;
    v17 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(PKRingGradientView *)v16 setStrokeColor:v17];

    v18 = v13->_ringView;
    v19 = [MEMORY[0x1E69DC888] systemGray5Color];
    [(PKRingGradientView *)v18 setFillColor:v19];

    [(PKRingGradientView *)v13->_ringView setMinimumAngle:0.523598776];
    v20 = objc_alloc_init(PKBillPaymentCircularView);
    handleView = v13->_handleView;
    v76 = 1000;
    v13->_handleView = v20;

    v22 = [PKEnterCurrencyAmountView alloc];
    v23 = [(PKBillPaymentSuggestedAmountList *)v13->_suggestedAmountList currencyCode];
    v24 = [(PKBillPaymentRingView *)v13 _roundedAmountForAngle:0.0];
    v25 = [(PKEnterCurrencyAmountView *)v22 initWithCurrency:v23 amount:v24];
    enterCurrencyAmountView = v13->_enterCurrencyAmountView;
    v13->_enterCurrencyAmountView = v25;

    [(PKEnterCurrencyAmountView *)v13->_enterCurrencyAmountView setShowsDecimalPointButton:1];
    [(PKEnterCurrencyAmountView *)v13->_enterCurrencyAmountView setKerning:&unk_1F3CC6C48];
    [(PKEnterCurrencyAmountView *)v13->_enterCurrencyAmountView setIgnoreIntegralNumber:1];
    [(PKEnterCurrencyAmountView *)v13->_enterCurrencyAmountView sizeToFit];
    v27 = objc_alloc_init(PKCurvedTextLabel);
    topCurvedTextLabel = v13->_topCurvedTextLabel;
    v13->_topCurvedTextLabel = v27;

    [(PKCurvedTextLabel *)v13->_topCurvedTextLabel setBaselineAdjustment:1];
    [(PKCurvedTextLabel *)v13->_topCurvedTextLabel setInterior:0];
    [(PKCurvedTextLabel *)v13->_topCurvedTextLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9538]];
    v29 = objc_alloc_init(PKCurvedTextLabel);
    bottomCurvedTextLabel = v13->_bottomCurvedTextLabel;
    v13->_bottomCurvedTextLabel = v29;

    [(PKCurvedTextLabel *)v13->_bottomCurvedTextLabel setBaselineAdjustment:1];
    [(PKCurvedTextLabel *)v13->_bottomCurvedTextLabel setInterior:1];
    [(PKCurvedTextLabel *)v13->_bottomCurvedTextLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9530]];
    v31 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    interestLabel = v13->_interestLabel;
    v13->_interestLabel = v31;

    [(UILabel *)v13->_interestLabel setBaselineAdjustment:1];
    [(UILabel *)v13->_interestLabel setTextAlignment:1];
    [(UILabel *)v13->_interestLabel setNumberOfLines:1];
    [(UILabel *)v13->_interestLabel setAccessibilityIdentifier:*MEMORY[0x1E69B98A8]];
    [(PKBillPaymentRingView *)v13 addSubview:v13->_ringView];
    [(PKBillPaymentRingView *)v13 addSubview:v13->_interestLabel];
    [(PKBillPaymentRingView *)v13 addSubview:v13->_enterCurrencyAmountView];
    [(PKBillPaymentRingView *)v13 addSubview:v13->_topCurvedTextLabel];
    [(PKBillPaymentRingView *)v13 addSubview:v13->_bottomCurvedTextLabel];
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v34 = v13->_suggestedAmountAngles;
    v35 = [(NSArray *)v34 countByEnumeratingWithState:&v81 objects:v86 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v82;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v82 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [(NSDictionary *)v13->_suggestedAmountsForAngle objectForKeyedSubscript:*(*(&v81 + 1) + 8 * i), v76];
          if (v39)
          {
            v40 = [[PKBillPaymentSuggestedAmountView alloc] initWithSuggestedAmount:v39];
            [v33 addObject:v40];
            [(PKBillPaymentRingView *)v13 addSubview:v40];
          }
        }

        v36 = [(NSArray *)v34 countByEnumeratingWithState:&v81 objects:v86 count:16];
      }

      while (v36);
    }

    v41 = [v33 copy];
    suggestedAmountViews = v13->_suggestedAmountViews;
    v13->_suggestedAmountViews = v41;

    [(PKBillPaymentRingView *)v13 addSubview:*(&v13->super.super.super.isa + v76)];
    v43 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v13 action:sel__tapRecognized_];
    tapRecognizer = v13->_tapRecognizer;
    v13->_tapRecognizer = v43;

    [(UITapGestureRecognizer *)v13->_tapRecognizer setDelegate:v13];
    [(PKBillPaymentRingView *)v13 addGestureRecognizer:v13->_tapRecognizer];
    v45 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v13 action:sel__pressRecognized_];
    pressRecognizer = v13->_pressRecognizer;
    v13->_pressRecognizer = v45;

    [(UILongPressGestureRecognizer *)v13->_pressRecognizer setMinimumPressDuration:0.0];
    [(UILongPressGestureRecognizer *)v13->_pressRecognizer setDelegate:v13];
    [(PKBillPaymentRingView *)v13 addGestureRecognizer:v13->_pressRecognizer];
    v47 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v13 action:sel__dragRecognizerChanged_];
    dragRecognizer = v13->_dragRecognizer;
    v13->_dragRecognizer = v47;

    [(UIPanGestureRecognizer *)v13->_dragRecognizer setDelegate:v13];
    [(PKBillPaymentRingView *)v13 addGestureRecognizer:v13->_dragRecognizer];
    [(UITapGestureRecognizer *)v13->_tapRecognizer requireGestureRecognizerToFail:v13->_dragRecognizer];
    p_mass = &v13->_spring.mass;
    if (v13->_spring.mass != 1.0)
    {
      *p_mass = 1.0;
      v13->_spring.dirty = 1;
    }

    v50 = &v13->_responseSpring.mass;
    if (v13->_responseSpring.mass != 1.0)
    {
      *v50 = 1.0;
      v13->_responseSpring.dirty = 1;
    }

    v10 = v77;
    if (v13->_scaleSpring.mass != 1.0)
    {
      v13->_scaleSpring.mass = 1.0;
      v13->_scaleSpring.dirty = 1;
    }

    v51 = *p_mass;
    stiffness = v13->_spring.stiffness;
    v53 = *p_mass * 322.272797;
    if (stiffness != v53)
    {
      v13->_spring.stiffness = v53;
      v13->_spring.dirty = 1;
      stiffness = v53;
    }

    v54 = sqrt(v51 * stiffness);
    v55 = v54 + v54;
    if (v13->_spring.damping != v55)
    {
      v13->_spring.damping = v55;
      v13->_spring.dirty = 1;
    }

    v56 = *v50;
    v57 = v13->_responseSpring.stiffness;
    v58 = *v50 * 3947.84176;
    if (v57 != v58)
    {
      v13->_responseSpring.stiffness = v58;
      v13->_responseSpring.dirty = 1;
      v57 = v58;
    }

    v59 = sqrt(v56 * v57);
    v60 = v59 + v59;
    if (v13->_responseSpring.damping != v60)
    {
      v13->_responseSpring.damping = v60;
      v13->_responseSpring.dirty = 1;
    }

    if (v13->_scaleSpring.stiffness != 631.654682)
    {
      v13->_scaleSpring.stiffness = 631.654682;
      v13->_scaleSpring.dirty = 1;
    }

    if (v13->_scaleSpring.damping != 50.2654825)
    {
      v13->_scaleSpring.damping = 50.2654825;
      v13->_scaleSpring.dirty = 1;
    }

    *&v13->_responseState.positionThreshold = vdupq_n_s64(0x3F40624DD2F1A9FCuLL);
    v61 = vdupq_n_s64(0x3F916872B020C49CuLL);
    *&v13->_angleState.positionThreshold = v61;
    *&v13->_scaleState.positionThreshold = v61;
    v62 = objc_alloc_init(MEMORY[0x1E69BC790]);
    renderLoop = v13->_renderLoop;
    v13->_renderLoop = v62;

    [(PKRenderLoop *)v13->_renderLoop setDelegate:v13];
    [(PKRenderLoop *)v13->_renderLoop setPaused:1];
    LODWORD(v64) = 1117782016;
    LODWORD(v65) = 1123024896;
    LODWORD(v66) = 1123024896;
    [(PKRenderLoop *)v13->_renderLoop setPreferredFrameRateRange:v64, v65, v66];
    v67 = [(PKBillPaymentRingView *)v13 traitCollection];
    v68 = [v67 userInterfaceIdiom];

    if (!v68)
    {
      [(PKRenderLoop *)v13->_renderLoop setHighFrameRateReason:2162690];
    }

    v69 = MEMORY[0x1E69DD250];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __73__PKBillPaymentRingView_initWithSuggestedAmountList_delegate_dataSource___block_invoke;
    v79[3] = &unk_1E8010970;
    v70 = v13;
    v80 = v70;
    [v69 performWithoutAnimation:v79];
    [(PKBillPaymentRingView *)v70 setOpaque:0];
    v71 = [(PKBillPaymentSuggestedAmountList *)v13->_suggestedAmountList minimumAmount];
    v72 = [(PKBillPaymentSuggestedAmountList *)v13->_suggestedAmountList remainingStatementAmount];
    v73 = [(PKBillPaymentSuggestedAmountList *)v13->_suggestedAmountList sortedSuggestedAmounts];
    if ([v73 count] == 1 && v71 && v72)
    {
      v74 = PKEqualObjects();

      v9 = v78;
      if (v74)
      {
        v70->_ignoreTouches = 1;
      }
    }

    else
    {

      v9 = v78;
    }
  }

  return v13;
}

uint64_t __73__PKBillPaymentRingView_initWithSuggestedAmountList_delegate_dataSource___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didUpdateAngleSpringTarget];
  [*(a1 + 32) didUpdateAngleSpringPosition];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2 + 880;
    *v3 = 0;
    if ((*(v3 + 40) & 1) == 0 && *(v3 + 8) != 0.0)
    {
      *(v3 + 40) = 1;
    }

    v4 = *(a1 + 32);
    if (v4 && *(v4 + 920) == 1)
    {
      *(v4 + 920) = 0;
      *(v4 + 888) = *(v4 + 880);
      *(v4 + 896) = 0;
      v4 = *(a1 + 32);
    }
  }

  else
  {
    v4 = 0;
  }

  [v4 didUpdateScaleSpringPosition];
  [*(a1 + 32) setAngle:0 animated:0 forExplicitAmount:0 userInitiatedWithRing:0 userInitiatedWithKeypad:0.523598776];
  v5 = *(a1 + 32);

  return [v5 _updateForEnabledState];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(PKRenderLoop *)self->_renderLoop invalidate];
  v4.receiver = self;
  v4.super_class = PKBillPaymentRingView;
  [(PKBillPaymentRingView *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = PKBillPaymentRingView;
  [(PKBillPaymentRingView *)&v6 didMoveToWindow];
  v3 = [(PKBillPaymentRingView *)self window];
  renderLoop = self->_renderLoop;
  v5 = [v3 windowScene];
  [(PKRenderLoop *)renderLoop attachToWindowScene:v5];
}

- (void)layoutSubviews
{
  v128 = *MEMORY[0x1E69E9840];
  v126.receiver = self;
  v126.super_class = PKBillPaymentRingView;
  [(PKBillPaymentRingView *)&v126 layoutSubviews];
  v3 = objc_autoreleasePoolPush();
  [(PKBillPaymentRingView *)self bounds];
  v5 = v4;
  v7 = v6;
  PKSizeAlignedInRect();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(PKRingGradientView *)self->_ringView frame];
  v134.origin.x = v16;
  v134.origin.y = v17;
  v134.size.width = v18;
  v134.size.height = v19;
  v129.origin.x = v9;
  v129.origin.y = v11;
  v129.size.width = v13;
  v118 = v15;
  v129.size.height = v15;
  v20 = CGRectEqualToRect(v129, v134);
  if (!v20)
  {
    [(PKRingGradientView *)self->_ringView setFrame:v9, v11, v13, v15];
    [(PKRingGradientView *)self->_ringView setNeedsDisplay];
  }

  [(PKBillPaymentRingView *)self _ringWidth];
  v22 = v21;
  v23 = v13 + v21 * -2.0 + -20.0;
  if (v23 >= 0.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0.0;
  }

  v116 = v9;
  v117 = v13;
  v25 = v13 - v22;
  context = v3;
  v113 = v7;
  v114 = v5;
  v112 = v13 - v22;
  v119 = v24;
  if (!v20)
  {
    [(PKBillPaymentRingView *)self _amountLabelMaximumFontSize];
    v27 = v26;
    v28 = *MEMORY[0x1E69DB970];
    v29 = PKRoundedSystemFontOfSizeAndWeight(v26, *MEMORY[0x1E69DB970]);
    v30 = [v29 pk_fixedWidthFont];

    v31 = PKRoundedSystemFontOfSizeAndWeight(v27 * 0.5, v28);
    v32 = [v31 pk_fixedWidthFont];

    [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setAmountFont:v30];
    [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setCurrencySymbolFont:v32];
    v33 = [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView currentAmount];
    enterCurrencyAmountView = self->_enterCurrencyAmountView;
    v35 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList maximumAmount];
    [(PKEnterCurrencyAmountView *)enterCurrencyAmountView setCurrentAmount:v35];

    [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView sizeThatFits:v24, 1.79769313e308];
    v37 = fmax(v27 * fmin(v24 / v36, 1.0), 12.0);
    v38 = PKRoundedSystemFontOfSizeAndWeight(v37, v28);
    v39 = [v38 pk_fixedWidthFont];

    v40 = PKRoundedSystemFontOfSizeAndWeight(v37 * 0.5, v28);
    v41 = [v40 pk_fixedWidthFont];

    [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setAmountFont:v39];
    [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setCurrencySymbolFont:v41];
    [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setCurrentAmount:v33];
    [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView sizeThatFits:v24, 1.79769313e308];
    v43 = v42;
    v44 = v25 * 0.5;
    v45 = PKRoundedSystemFontOfSizeAndWeight(fmax(fmin(v25 * 0.5 * 0.096, 13.0), 2.0), *MEMORY[0x1E69DB968]);
    [(PKCurvedTextLabel *)self->_topCurvedTextLabel setFont:v45];
    [(PKCurvedTextLabel *)self->_bottomCurvedTextLabel setFont:v45];
    v46 = acos(1.0 - (v44 - (v43 * 0.5 + 10.0)) / v44);
    v47 = sin((v46 + v46) * 0.5);
    v48 = PKRoundedSystemFontOfSizeAndWeight(fmax(fmin((v44 + v44) * v47 * 0.0856, 22.0), 2.0), v28);
    v49 = [v48 pk_fixedWidthFont];

    [(UILabel *)self->_interestLabel setFont:v49];
  }

  [(PKBillPaymentCircularView *)self->_handleView sizeThatFits:v22, v22];
  v50 = *MEMORY[0x1E695EFF8];
  v51 = *(MEMORY[0x1E695EFF8] + 8);
  [(PKBillPaymentCircularView *)self->_handleView setBounds:*MEMORY[0x1E695EFF8], v51, v52, v53];
  handleView = self->_handleView;
  [(PKBillPaymentRingView *)self _offsetCurrentAngle];
  [(PKBillPaymentRingView *)self _centerPointAtAngle:0 adjustToCover:?];
  [(PKBillPaymentCircularView *)handleView setCenter:?];
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView frame];
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView sizeThatFits:v119, 1.79769313e308];
  PKRectCenteredXInRect();
  v111 = v11;
  PKRectCenteredYInRect();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  isSmall = self->_isSmall;
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setBounds:v50, v51];
  v64 = self->_enterCurrencyAmountView;
  v130.origin.x = v56;
  v130.origin.y = v58;
  v130.size.width = v60;
  v130.size.height = v62;
  MidX = CGRectGetMidX(v130);
  v131.origin.x = v56;
  v131.origin.y = v58;
  v110 = v62;
  v131.size.width = v60;
  v131.size.height = v62;
  [(PKEnterCurrencyAmountView *)v64 setCenter:MidX, CGRectGetMidY(v131)];
  v66 = self->_enterCurrencyAmountView;
  if (isSmall)
  {
    v67 = 0.00001;
    v68 = 0.00001;
  }

  else
  {
    v67 = 1.0;
    v68 = 1.0;
  }

  CGAffineTransformMakeScale(&v125, v67, v68);
  [(PKEnterCurrencyAmountView *)v66 setTransform:&v125];
  [(PKCurvedTextLabel *)self->_topCurvedTextLabel frame];
  v69 = [(PKCurvedTextLabel *)self->_topCurvedTextLabel text];
  v70 = [(PKCurvedTextLabel *)self->_topCurvedTextLabel textAttributes];
  [v69 sizeWithAttributes:v70];
  v72 = v71;

  v109 = v117 * 0.5 - v22;
  [(PKCurvedTextLabel *)self->_topCurvedTextLabel setCircleRadius:v109 - v72 * 0.5 + -7.0];
  [(PKCurvedTextLabel *)self->_topCurvedTextLabel sizeThatFits:v114, v113];
  PKRectCenteredXInRect();
  [(PKCurvedTextLabel *)self->_topCurvedTextLabel setFrame:?];
  [(PKCurvedTextLabel *)self->_bottomCurvedTextLabel frame];
  v73 = [(PKCurvedTextLabel *)self->_bottomCurvedTextLabel text];
  v74 = [(PKCurvedTextLabel *)self->_bottomCurvedTextLabel textAttributes];
  [v73 sizeWithAttributes:v74];
  v76 = v75;

  [(PKCurvedTextLabel *)self->_bottomCurvedTextLabel setCircleRadius:v109 - v76 * 0.5 + -7.0];
  [(PKCurvedTextLabel *)self->_bottomCurvedTextLabel sizeThatFits:v114, v113];
  v132.origin.x = v116;
  v132.origin.y = v111;
  v132.size.width = v117;
  v132.size.height = v118;
  CGRectGetMaxY(v132);
  PKRectCenteredXInRect();
  [(PKCurvedTextLabel *)self->_bottomCurvedTextLabel setFrame:?];
  [(UILabel *)self->_interestLabel frame];
  [(UILabel *)self->_interestLabel sizeThatFits:v112, 3.40282347e38];
  v133.origin.y = v58;
  v133.origin.x = v56;
  v133.size.height = v110;
  v133.size.width = v60;
  CGRectGetMaxY(v133);
  PKRectCenteredXInRect();
  [(UILabel *)self->_interestLabel setFrame:?];
  if (self->_dotsVisible)
  {
    v77 = self->_isSmall;
    v78 = !v77;
    memset(&v125, 0, sizeof(v125));
    if (!v77)
    {
      v79 = *(MEMORY[0x1E695EFD0] + 16);
      *&v125.a = *MEMORY[0x1E695EFD0];
      *&v125.c = v79;
      *&v125.tx = *(MEMORY[0x1E695EFD0] + 32);
      goto LABEL_16;
    }
  }

  else
  {
    memset(&v125, 0, sizeof(v125));
    v78 = 0.0;
  }

  CGAffineTransformMakeScale(&v125, 0.00001, 0.00001);
LABEL_16:
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v80 = self->_suggestedAmountViews;
  v81 = [(NSArray *)v80 countByEnumeratingWithState:&v121 objects:v127 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v122;
    do
    {
      for (i = 0; i != v82; ++i)
      {
        if (*v122 != v83)
        {
          objc_enumerationMutation(v80);
        }

        v85 = *(*(&v121 + 1) + 8 * i);
        v86 = [v85 suggestedAmount];
        v87 = [v86 amount];
        [(PKBillPaymentRingView *)self _angleForAmount:v87];
        [(PKBillPaymentRingView *)self _offsetAngle:?];
        [(PKBillPaymentRingView *)self _centerPointAtAngle:0 adjustToCover:?];
        v89 = v88;
        v91 = v90;
        [v85 sizeThatFits:{v22, v22}];
        v93 = v92;
        v95 = v94;
        [v85 setBounds:{v50, v51, v92, v94}];
        v96.n128_f64[0] = v89 + v93 * -0.5;
        v97.n128_f64[0] = v91 + v95 * -0.5;
        PKPointRoundToPixel(v96, v97, v98);
        v100 = v99;
        v102 = v101;
        v103 = [v85 layer];
        [v103 anchorPoint];
        [v103 setPosition:{v100 + v104 * v93, v102 + v105 * v95}];
        [v85 setAlpha:v78];
        v120 = v125;
        [v85 setTransform:&v120];
      }

      v82 = [(NSArray *)v80 countByEnumeratingWithState:&v121 objects:v127 count:16];
    }

    while (v82);
  }

  topCurvedTextLabel = self->_topCurvedTextLabel;
  if (self->_isSmall)
  {
    [(PKCurvedTextLabel *)topCurvedTextLabel setAlpha:0.0];
    [(PKCurvedTextLabel *)self->_bottomCurvedTextLabel setAlpha:0.0];
    [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setAlpha:0.0];
    [(PKBillPaymentCircularView *)self->_handleView setAlpha:0.0];
    interestLabel = self->_interestLabel;
    interestLabelAlpha = 0.0;
  }

  else
  {
    [(PKCurvedTextLabel *)topCurvedTextLabel setAlpha:1.0];
    [(PKCurvedTextLabel *)self->_bottomCurvedTextLabel setAlpha:1.0];
    [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setAlpha:1.0];
    [(PKBillPaymentCircularView *)self->_handleView setAlpha:1.0];
    interestLabel = self->_interestLabel;
    interestLabelAlpha = self->_interestLabelAlpha;
  }

  [(UILabel *)interestLabel setAlpha:interestLabelAlpha];
  objc_autoreleasePoolPop(context);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if ([(UIView *)self pkui_userInterfaceIdiomSupportsLargeLayouts:a3.width])
  {
    v3 = 280.0;
  }

  else
  {
    v4 = PKUIGetMinScreenType();
    if (v4 > 3)
    {
      v3 = 318.0;
    }

    else
    {
      v3 = dbl_1BE115348[v4];
    }
  }

  v5 = v3;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)renderLoop:(id)a3 drawAtTime:(double)a4
{
  v61 = a3;
  lastDrawTime = self->_lastDrawTime;
  v7 = fmax(a4 - lastDrawTime, 0.0);
  self->_lastDrawTime = a4;
  if (lastDrawTime <= 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  p_angleState = &self->_angleState;
  position = self->_angleState.position;
  v11 = self->_scaleState.position;
  p_responseState = &self->_responseState;
  v13 = &OBJC_IVAR___PKPaymentPassTableViewCell__mainLabel;
  if (!self->_responseState.running)
  {
    v27 = 608;
    SpringStatesUpdate(&self->_spring, p_angleState, v8);
    goto LABEL_49;
  }

  v59 = self->_angleState.position;
  v60 = self->_scaleState.position;
  [(PKRenderLoop *)self->_renderLoop preferredFrameRateRange];
  v15 = v14;
  if (v14 < 0.0)
  {
    v15 = 60.0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PKBillPaymentRingView_renderLoop_drawAtTime___block_invoke;
  aBlock[3] = &__block_descriptor_40_e8_d16__0Q8l;
  *&aBlock[4] = v15;
  v16 = _Block_copy(aBlock);
  v17 = v16[2](v16, 1);
  v18 = fmax(v17 - self->_responseSpringElapsedDuration, 0.0);
  v63 = v18;
  if (v8 - v18 <= 0.000001)
  {
    v19 = v8;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v8)
  {
    v20 = v19;
  }

  else
  {
    v20 = v8;
  }

  v62 = v20;
  v21 = -1;
  v22 = 0.0;
  while (1)
  {
    v23 = v21 + 1;
    if (v21 == -1)
    {
      responseSpringElapsedDuration = self->_responseSpringElapsedDuration;
      v25 = v19;
      if (v19 >= v8)
      {
        v26 = v8 + responseSpringElapsedDuration;
        if (v19 <= v8)
        {
          v26 = 0.0;
        }

        self->_responseSpringElapsedDuration = v26;
        v25 = v62;
      }

      v27 = v13[377];
      if (responseSpringElapsedDuration > 0.0)
      {
        v28 = v19 >= v8;
        v29 = v8;
        goto LABEL_40;
      }

      v28 = v19 >= v8;
      v29 = v8;
      if (v25 <= 0.0)
      {
        goto LABEL_40;
      }

LABEL_37:
      if (self->_responseState.running)
      {
        SpringStatesUpdate(&self->_responseSpring, p_responseState, v17);
        v34 = self + v27;
        SpringSetResponse(v34, self->_responseState.position);
        goto LABEL_41;
      }

LABEL_40:
      v34 = self + v27;
LABEL_41:
      SpringStatesUpdate(v34, p_angleState, v25);
      if (v28)
      {
        goto LABEL_48;
      }

      goto LABEL_42;
    }

    v30 = v63 + (v16[2])(v16);
    v29 = v8 - v30;
    v31 = fmax(fmin(v8 - v30, v17), 0.0);
    v25 = v8 - v30 - v31 <= 0.000001 ? v8 - v30 : v31;
    if (v25 < v17 || v22 >= v30)
    {
      break;
    }

    v27 = v13[377];
    if (v25 > 0.0)
    {
      v28 = 0;
LABEL_36:
      v22 = v30;
      goto LABEL_37;
    }

    v34 = self + v27;
    SpringStatesUpdate(v34, p_angleState, v25);
    v22 = v30;
LABEL_42:
    v21 = v23;
    v13 = &OBJC_IVAR___PKPaymentPassTableViewCell__mainLabel;
    if (!self->_responseState.running)
    {
      v35 = v29 - v25;
      v36 = v34;
      v37 = &self->_angleState;
      goto LABEL_47;
    }
  }

  if (v25 <= 0.0)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v25;
  }

  self->_responseSpringElapsedDuration = v33;
  v27 = v13[377];
  if (v25 > 0.0)
  {
    v28 = 1;
    goto LABEL_36;
  }

  v36 = self + v27;
  v37 = &self->_angleState;
  v35 = v25;
LABEL_47:
  SpringStatesUpdate(v36, v37, v35);
LABEL_48:

  position = v59;
  v11 = v60;
LABEL_49:
  SpringStatesUpdate(&self->_scaleSpring, &self->_scaleState, v8);
  v38 = [(PKBillPaymentRingView *)self _preferredPausedState];
  if (!self->_angleState.running)
  {
    overrideGradientState = self->_overrideGradientState;
    self->_overrideGradientState = 0;

    if (self->_responseState.running)
    {
      self->_responseState.running = 0;
      target = p_responseState->target;
      self->_responseState.position = self->_responseState.target;
      self->_responseState.velocity = 0.0;
      SpringSetResponse(self + v27, target);
    }
  }

  v41 = objc_autoreleasePoolPush();
  if (self->_angleState.position != position)
  {
    [(PKBillPaymentRingView *)self didUpdateAngleSpringPosition];
    if (self->_feedbackGenerator)
    {
      v42 = self->_angleState.position;
      if (self->_dragging)
      {
        v43 = [(NSArray *)self->_suggestedAmountAngles count];
        if (v43)
        {
          v44 = 0;
          v45 = v43 - 1;
          while (1)
          {
            v46 = [(NSArray *)self->_suggestedAmountAngles objectAtIndexedSubscript:v44];
            [v46 doubleValue];
            v48 = v47;

            v49 = v42 <= position || v42 < v48;
            if (!v49 && position < v48)
            {
              break;
            }

            v51 = v42 <= v48 && v42 <= position;
            if (position <= v48)
            {
              v51 = 0;
            }

            if (!v51 && v45 != v44++)
            {
              continue;
            }

            if (v51)
            {
              break;
            }

            goto LABEL_87;
          }

LABEL_86:
          [(UISelectionFeedbackGenerator *)self->_feedbackGenerator selectionChanged];
        }
      }

      else if (self->_pinnedAmount && self->_pinnedAmountAngleIndex != 0x7FFFFFFFFFFFFFFFLL)
      {
        pinnedAmountAngle = self->_pinnedAmountAngle;
        v54 = pinnedAmountAngle + -0.04;
        v55 = pinnedAmountAngle + 0.04;
        v56 = position < v54 || position > v55;
        v57 = !v56 || v42 < v54;
        if (!v57 && v42 <= v55)
        {
          goto LABEL_86;
        }
      }
    }
  }

LABEL_87:
  if (self->_scaleState.position != v11)
  {
    [(PKBillPaymentRingView *)self didUpdateScaleSpringPosition];
  }

  objc_autoreleasePoolPop(v41);
  if (v38)
  {
    [(PKBillPaymentRingView *)self _pauseRenderLoop];
  }

  [(PKBillPaymentRingView *)self layoutIfNeeded];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  [a4 locationInView:self];
  v8 = v7;
  v10 = v9;
  if (self->_tapRecognizer == v6)
  {
    [(PKBillPaymentRingView *)self _ringWidth];
    v30 = v29;
    [(PKRingGradientView *)self->_ringView radius];
    v32 = v31 + v30 * -0.5;
    v33 = v30 * 0.5 + 16.0;
    [(PKBillPaymentRingView *)self _center];
    v36 = sqrt((v35 - v10) * (v35 - v10) + (v34 - v8) * (v34 - v8));
    v11 = v36 <= v33 + v32 && v36 >= v32 - v33;
  }

  else if (self->_dragRecognizer == v6 || self->_pressRecognizer == v6)
  {
    v12 = [(PKBillPaymentCircularView *)self->_handleView layer];
    [v12 anchorPoint];
    v14 = v13;
    v16 = v15;
    [v12 position];
    v18 = v17;
    v20 = v19;
    [v12 bounds];
    width = v38.size.width;
    height = v38.size.height;
    v23 = v18 - v14 * v38.size.width;
    v24 = v20 - v16 * v38.size.height;
    v38.origin.x = v23;
    v38.origin.y = v24;
    MidX = CGRectGetMidX(v38);
    v39.origin.x = v23;
    v39.origin.y = v24;
    v39.size.width = width;
    v39.size.height = height;
    MidY = CGRectGetMidY(v39);
    v27 = sqrt((MidY - v10) * (MidY - v10) + (MidX - v8) * (MidX - v8));
    if (width >= height)
    {
      v28 = height;
    }

    else
    {
      v28 = width;
    }

    v11 = v27 <= v28 + 16.0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)_angleForRecognizer:(id)a3
{
  [a3 locationInView:self];

  [(PKBillPaymentRingView *)self _angleForPosition:?];
  return result;
}

- (double)_angleForPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PKBillPaymentRingView *)self _center];
  v7 = atan2(y - v6, x - v5);
  result = fmod(v7 + -4.71238898, 6.28318531);
  if (result < 0.0)
  {
    result = result + 6.28318531;
  }

  if (result == 0.0)
  {
    return 6.28318531;
  }

  return result;
}

- (void)_tapRecognized:(id)a3
{
  [(PKBillPaymentRingView *)self _angleForRecognizer:a3];
  if (v4 < 0.523598776)
  {
    v4 = 6.28318531;
  }

  [(PKBillPaymentRingView *)self setAngle:1 animated:0 forExplicitAmount:1 userInitiatedWithRing:0 userInitiatedWithKeypad:v4];
}

- (void)_pressRecognized:(id)a3
{
  v4 = [a3 state];
  v5 = v4 - 1;
  if (v4 - 1) <= 4 && ((0x1Du >> v5))
  {
    self->_pressed = 0x101uLL >> (8 * v5);

    [(PKBillPaymentRingView *)self _updateHandleState];
  }
}

- (void)_dragRecognizerChanged:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if ((v4 - 3) < 3)
  {
    [(PKBillPaymentRingView *)self _dragMoved:v7];
    [(PKBillPaymentRingView *)self _dragEnded:v7];
LABEL_8:
    v6 = v7;
    goto LABEL_9;
  }

  if (v4 == 2)
  {
LABEL_7:
    [(PKBillPaymentRingView *)self _dragMoved:v7];
    goto LABEL_8;
  }

  v5 = v4 == 1;
  v6 = v7;
  if (v5)
  {
    [(PKBillPaymentRingView *)self _dragStarted:v7];
    goto LABEL_7;
  }

LABEL_9:
}

- (void)_dragMoved:(id)a3
{
  [a3 locationInView:self];
  v5 = v4;
  v7 = v6;
  [(PKRingGradientView *)self->_ringView radius];
  [(PKBillPaymentRingView *)self _center];
  [(PKBillPaymentRingView *)self _angleForPosition:v5, v7];

  [PKBillPaymentRingView _dragMovedToAngle:"_dragMovedToAngle:normalizedRadius:" normalizedRadius:?];
}

- (void)_dragStarted:(id)a3
{
  self->_dragging = 1;
  [(PKBillPaymentRingView *)self _updateHandleState];
  feedbackGenerator = self->_feedbackGenerator;
  if (feedbackGenerator)
  {

    [(UISelectionFeedbackGenerator *)feedbackGenerator userInteractionStarted];
  }
}

- (void)_dragEnded:(id)a3
{
  self->_dragging = 0;
  self->_dragCapture = 0;
  [(PKBillPaymentRingView *)self _updateHandleState];
  feedbackGenerator = self->_feedbackGenerator;
  if (feedbackGenerator)
  {
    [(UISelectionFeedbackGenerator *)feedbackGenerator userInteractionEnded];
    if ([(PKRenderLoop *)self->_renderLoop isPaused])
    {
      v5 = self->_feedbackGenerator;
      self->_feedbackGenerator = 0;
    }
  }
}

- (void)_dragMovedToAngle:(double)a3 normalizedRadius:(double)a4
{
  dragCapture = self->_dragCapture;
  if ((dragCapture - 1) >= 2)
  {
    if (!dragCapture)
    {
      if (a4 <= 0.25)
      {
LABEL_17:
        self->_dragCapture = 3;
LABEL_18:
        if (a4 <= 0.25)
        {
          target = self->_angleState.target;
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      if (a3 < 6.28318531 && a3 > 0.523598776)
      {
        goto LABEL_23;
      }

      dragCapture = 2;
      if ((self->_angleState.target + -0.523598776) / 5.75958653 < 0.5)
      {
        dragCapture = 1;
      }

      self->_dragCapture = dragCapture;
    }
  }

  else if (a4 <= 0.25)
  {
    goto LABEL_17;
  }

  if (dragCapture == 1)
  {
    target = 0.523598776;
    if (a3 <= 0.523598776 || a3 > 0.696386372)
    {
      goto LABEL_24;
    }

LABEL_22:
    self->_dragCapture = 0;
    goto LABEL_23;
  }

  if (dragCapture == 3)
  {
    goto LABEL_18;
  }

  if (dragCapture != 2)
  {
LABEL_23:
    target = a3;
    goto LABEL_24;
  }

  target = 6.28318531;
  if (a3 >= 6.11039771 && a3 < 6.28318531)
  {
    goto LABEL_22;
  }

LABEL_24:
  [(PKBillPaymentRingView *)self setAngle:1 animated:0 forExplicitAmount:1 userInitiatedWithRing:0 userInitiatedWithKeypad:target];
}

- (void)_updateHandleState
{
  if (self->_dragging)
  {
    v2 = 1.2;
  }

  else
  {
    v2 = 1.2;
    if (!self->_pressed)
    {
      v2 = 1.0;
    }
  }

  [(PKBillPaymentRingView *)self setHandleScale:1 animated:v2];
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(PKBillPaymentRingView *)self _updateForEnabledState];
    [(PKBillPaymentRingView *)self _updateCurvedText];
    enabled = self->_enabled;
    if (enabled)
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E696AB90] zero];
    }

    objc_storeStrong(&self->_overrideDisplayAmount, v5);
    if (!enabled)
    {
    }

    [(PKBillPaymentRingView *)self _updateEffectiveDisplayAmount];
  }
}

- (void)prepareForInitialDisplayWithAmount:(id)a3
{
  if (self->_needsInitialDisplay)
  {
    v4 = [a3 copy];
    initialDisplayAmount = self->_initialDisplayAmount;
    self->_initialDisplayAmount = v4;

    [(PKBillPaymentRingView *)self _updateInitialDisplayState];
    self->_preparedForInitialDisplay = 1;
  }
}

- (void)_updateInitialDisplayState
{
  if (self->_needsInitialDisplay)
  {
    v13 = v6;
    v14 = v2;
    if (self->_initialDisplayAmount)
    {
      [(PKBillPaymentRingView *)self _angleForAmount:?];
      v10 = v9;
    }

    else if (self->_isSmall)
    {
      v10 = 0.226892803;
    }

    else
    {
      v10 = 0.523598776;
    }

    v11 = [(PKBillPaymentRingView *)self _targetGradientStateForAngle:v10, v7, v13, v3, v14, v4];
    overrideGradientState = self->_overrideGradientState;
    self->_overrideGradientState = v11;

    self->_overrideGradientStartAngle = v10;
    [(PKBillPaymentRingView *)self didUpdateAngleSpringTarget];

    [(PKBillPaymentRingView *)self didUpdateAngleSpringPosition];
  }
}

- (void)completeInitialDisplayAnimated:(BOOL)a3
{
  if (self->_needsInitialDisplay)
  {
    v3 = a3;
    if (!self->_preparedForInitialDisplay)
    {
      [(PKBillPaymentRingView *)self prepareForInitialDisplayWithAmount:0];
    }

    self->_needsInitialDisplay = 0;
    [(PKBillPaymentRingView *)self _setDotsVisible:1 animated:v3];
    if (self->_initialDisplayAmount)
    {

      [PKBillPaymentRingView setAmount:"setAmount:animated:" animated:?];
    }
  }
}

- (void)setAmount:(id)a3 animated:(BOOL)a4 userInitiatedWithKeypad:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    if (self->_needsInitialDisplay)
    {
      [(PKBillPaymentRingView *)self prepareForInitialDisplayWithAmount:v8];
    }

    else
    {
      [(PKBillPaymentRingView *)self _angleForAmount:v8];
      [(PKBillPaymentRingView *)self setAngle:v6 animated:v10 forExplicitAmount:0 userInitiatedWithRing:v5 userInitiatedWithKeypad:?];
    }

    v9 = v10;
  }
}

- (NSDecimalNumber)amount
{
  pinnedAmount = self->_pinnedAmount;
  if (pinnedAmount)
  {
    v3 = pinnedAmount;
  }

  else
  {
    v3 = [(PKBillPaymentRingView *)self _roundedAmountForAngle:self->_angleState.target];
  }

  return v3;
}

- (UIColor)currentStartColor
{
  v2 = [(PKBillPaymentRingView *)self _targetGradientStateForAngle:self->_angleState.target];
  v3 = [v2 startColor];

  return v3;
}

- (UIColor)currentEndColor
{
  v2 = [(PKBillPaymentRingView *)self _targetGradientStateForAngle:self->_angleState.target];
  v3 = [v2 endColor];

  return v3;
}

- (void)setIsSmall:(BOOL)a3
{
  if (self->_isSmall != a3)
  {
    [(PKBillPaymentRingView *)self layoutIfNeeded];
    self->_isSmall = a3;
    [(PKBillPaymentRingView *)self setNeedsLayout];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __36__PKBillPaymentRingView_setIsSmall___block_invoke;
    v8[3] = &unk_1E8010970;
    v8[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v8 completion:0];
    [(PKBillPaymentRingView *)self setNeedsDisplay];
    if (self->_needsInitialDisplay)
    {
      if (self->_preparedForInitialDisplay)
      {
        [(PKBillPaymentRingView *)self _updateInitialDisplayState];
      }
    }

    else
    {
      if (self->_pinnedAmount)
      {
        [(PKBillPaymentRingView *)self _angleForAmount:?];
        pinnedAmount = self->_pinnedAmount;
      }

      else
      {
        pinnedAmount = 0;
        v7 = 0.523598776;
        if (self->_isSmall)
        {
          v7 = 0.226892803;
        }

        v5 = fmin(fmax(self->_angleState.target, v7), 6.28318531);
      }

      [(PKBillPaymentRingView *)self setAngle:1 animated:pinnedAmount forExplicitAmount:0 userInitiatedWithRing:0 userInitiatedWithKeypad:v5];
    }
  }
}

- (void)didUpdateAngleSpringTarget
{
  if (self->_initialDisplayAmount)
  {
    [(PKBillPaymentRingView *)self _angleForAmount:?];
  }

  else if (self->_pinnedAmount)
  {
    pinnedAmountAngleIndex = self->_pinnedAmountAngleIndex;
    if (pinnedAmountAngleIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_4;
    }
  }

  pinnedAmountAngleIndex = [(PKBillPaymentRingView *)self _unnormalizedAngleIndexForAngle:?];
LABEL_4:
  v4 = [(PKBillPaymentRingView *)self _suggestedAmountForAngleIndex:pinnedAmountAngleIndex];
  if (v4)
  {
    [(PKBillPaymentRingView *)self _setSelectedSuggestedAmount:v4];
  }

  else
  {
    v5 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList initialSuggestedAmount];
    [(PKBillPaymentRingView *)self _setSelectedSuggestedAmount:v5];
  }

  if (self->_isSmall)
  {

    [(PKBillPaymentRingView *)self _updateHandleImage];
  }
}

- (void)didUpdateAngleSpringPosition
{
  [(PKBillPaymentRingView *)self setNeedsLayout];
  p_initialDisplayAmount = &self->_initialDisplayAmount;
  initialDisplayAmount = self->_initialDisplayAmount;
  if (initialDisplayAmount)
  {
    [(PKBillPaymentRingView *)self _angleForAmount:self->_initialDisplayAmount];
    target = v5;
    v7 = 0;
    position = self->_angleState.position;
    v9 = 1;
  }

  else
  {
    target = self->_angleState.target;
    position = self->_angleState.position;
    if (self->_pinnedAmount && (pinnedAmountAngle = self->_pinnedAmountAngle, position >= pinnedAmountAngle + -0.172787596))
    {
      v9 = position <= pinnedAmountAngle + 0.172787596;
      v7 = v9;
    }

    else
    {
      v9 = 0;
      v7 = 0;
    }
  }

  [(PKRingGradientView *)self->_ringView setCurrentAngle:position];
  if (!self->_isSmall)
  {
    [(PKBillPaymentRingView *)self _updateHandleImage];
  }

  v23 = [(PKBillPaymentRingView *)self _roundedAmountForAngle:position];
  if (self->_userEnteredAmountWithKeypad)
  {
    v11 = v23;
    v23 = self->_pinnedAmount;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    if (!initialDisplayAmount)
    {
      p_initialDisplayAmount = &self->_pinnedAmount;
    }

    v11 = *p_initialDisplayAmount;
    if ([(PKBillPaymentRingView *)self _isAmount:v23 withinRoundingUnitOfAmount:v11])
    {
      v11 = v11;

      v23 = v11;
    }
  }

  if (initialDisplayAmount)
  {
    pinnedAmountAngleIndex = [(PKBillPaymentRingView *)self _unnormalizedAngleIndexForAngle:target];
    v13 = target;
    goto LABEL_24;
  }

LABEL_18:
  if (!v7 || (pinnedAmountAngleIndex = self->_pinnedAmountAngleIndex, pinnedAmountAngleIndex == 0x7FFFFFFFFFFFFFFFLL))
  {
    pinnedAmountAngleIndex = [(PKBillPaymentRingView *)self _unnormalizedAngleIndexForAngle:position];
  }

  if (self->_overrideGradientState)
  {
    v13 = target;
  }

  else
  {
    v13 = position;
  }

LABEL_24:
  v14 = [(PKBillPaymentRingView *)self _targetGradientStateForAngle:v13];
  overrideGradientState = self->_overrideGradientState;
  if (overrideGradientState)
  {
    overrideGradientStartAngle = self->_overrideGradientStartAngle;
    if (target - overrideGradientStartAngle == 0.0)
    {
      v17 = overrideGradientState;
    }

    else
    {
      v17 = [PKBillPaymentRingView _blendFromGradientState:"_blendFromGradientState:toState:withProgress:" toState:(position - overrideGradientStartAngle) / (target - overrideGradientStartAngle) withProgress:?];
    }

    v18 = v17;

    v14 = v18;
  }

  v19 = [v14 startColor];
  v20 = [v14 endColor];
  [(PKRingGradientView *)self->_ringView setGradientStartColor:v19];
  [(PKRingGradientView *)self->_ringView setGradientEndColor:v20];
  [(PKBillPaymentCircularView *)self->_handleView setPrimaryColor:v20];
  [(UILabel *)self->_interestLabel setTextColor:v19];
  v21 = [(PKBillPaymentRingView *)self _suggestedAmountForAngleIndex:pinnedAmountAngleIndex];
  if (v21)
  {
    [(PKBillPaymentRingView *)self _setHighlightedSuggestedAmount:v21];
  }

  else
  {
    v22 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList initialSuggestedAmount];
    [(PKBillPaymentRingView *)self _setHighlightedSuggestedAmount:v22];
  }

  if (![(PKBillPaymentRingView *)self _setDisplayAmount:v23])
  {
    [(PKBillPaymentRingView *)self _updateInterestText];
  }
}

- (void)didUpdateScaleSpringPosition
{
  v3 = exp(self->_scaleState.position);
  v4 = [(PKBillPaymentCircularView *)self->_handleView layer];
  CATransform3DMakeScale(&v5, v3, v3, 1.0);
  [v4 setTransform:&v5];
}

- (void)setAngle:(double)a3 animated:(BOOL)a4 forExplicitAmount:(id)a5 userInitiatedWithRing:(BOOL)a6 userInitiatedWithKeypad:(BOOL)a7
{
  v8 = a6;
  v9 = a4;
  v12 = a5;
  v13 = v9 && self->_enabled;
  self->_userSelectedAngleChange = v8;
  self->_userEnteredAmountWithKeypad = a7;
  p_angleState = &self->_angleState;
  target = self->_angleState.target;
  position = self->_angleState.position;
  v69 = v12;
  if (v12)
  {
    v17 = v12;
    v18 = [(NSArray *)self->_suggestedAmountAngles count];
    if (!v18)
    {
      p_initialDisplayAmount = &self->_initialDisplayAmount;
      initialDisplayAmount = self->_initialDisplayAmount;
      needsInitialDisplay = initialDisplayAmount == 0;
      v20 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = a3;
      if (!initialDisplayAmount || v8)
      {
        goto LABEL_40;
      }

      goto LABEL_35;
    }

    v19 = v18;
    v68 = v13;
    v20 = 0;
    while (1)
    {
      suggestedAmountsForAngle = self->_suggestedAmountsForAngle;
      v22 = [(NSArray *)self->_suggestedAmountAngles objectAtIndexedSubscript:v20];
      v23 = [(NSDictionary *)suggestedAmountsForAngle objectForKeyedSubscript:v22];
      v24 = [v23 amount];
      v25 = PKEqualObjects();

      if (v25)
      {
        break;
      }

      if (v19 == ++v20)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
        break;
      }
    }

    v26 = a3;
    p_angleState = &self->_angleState;
    v13 = v68;
  }

  else
  {
    v17 = [(NSArray *)self->_suggestedAmountAngles count];
    if (!v17)
    {
      p_initialDisplayAmount = &self->_initialDisplayAmount;
      v42 = self->_initialDisplayAmount;
      needsInitialDisplay = v42 == 0;
      v20 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = 0.0;
      if (!v42 || v8)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    }

    v27 = v13;
    v28 = 0;
    v29 = 0;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    v30 = 1.79769313e308;
    do
    {
      v31 = [(NSArray *)self->_suggestedAmountAngles objectAtIndexedSubscript:v29];
      [v31 doubleValue];
      v33 = v32 + -0.172787596 > a3 || v32 + 0.172787596 < a3;
      v34 = vabdd_f64(a3, v32);
      if (!v33 && v34 <= v30)
      {
        v36 = v31;

        v28 = v36;
        v20 = v29;
        v30 = v34;
      }

      ++v29;
    }

    while (v17 != v29);
    if (v28)
    {
      [v28 doubleValue];
      v26 = v37;
      v38 = [(NSDictionary *)self->_suggestedAmountsForAngle objectForKeyedSubscript:v28];
      v17 = [v38 amount];

      a3 = v26;
    }

    else
    {
      v17 = 0;
      v26 = 0.0;
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v13 = v27;
  }

  p_initialDisplayAmount = &self->_initialDisplayAmount;
  v43 = self->_initialDisplayAmount;
  needsInitialDisplay = v43 == 0;
  if (!v43 || v8)
  {
    goto LABEL_40;
  }

  if (!v69)
  {
    goto LABEL_36;
  }

LABEL_35:
  if (PKEqualObjects())
  {
LABEL_36:
    needsInitialDisplay = self->_needsInitialDisplay;
    if (!needsInitialDisplay && v13)
    {
      if ((PKEqualObjects() & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_41:
      v45 = 0;
      goto LABEL_42;
    }

LABEL_40:
    if (!needsInitialDisplay)
    {
      goto LABEL_39;
    }

    goto LABEL_41;
  }

LABEL_39:
  v44 = *p_initialDisplayAmount;
  *p_initialDisplayAmount = 0;

  v45 = 1;
LABEL_42:
  if (PKEqualObjects() && self->_pinnedAmountAngle == v26)
  {
    if (self->_pinnedAmountAngleIndex == v20)
    {
      v46 = v45;
    }

    else
    {
      v46 = 1;
    }

    if (target == a3 && v46 == 0)
    {
      v46 = 0;
      if (v13)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }
  }

  else
  {
    v46 = 1;
  }

  p_angleState->target = a3;
  if (!p_angleState->running && p_angleState->position != a3)
  {
    p_angleState->running = 1;
  }

  v47 = [v17 copy];
  pinnedAmount = self->_pinnedAmount;
  self->_pinnedAmount = v47;

  self->_pinnedAmountAngle = v26;
  self->_pinnedAmountAngleIndex = v20;
  if (self->_overrideGradientState)
  {
    v49 = [(PKRingGradientView *)self->_ringView gradientStartColor];
    v50 = [(PKRingGradientView *)self->_ringView gradientEndColor];
    v51 = v50;
    if (v49 && v50)
    {
      v52 = [[PKBillPaymentRingGradientState alloc] initWithStartColor:v49 endColor:v50];
      overrideGradientState = self->_overrideGradientState;
      self->_overrideGradientState = v52;

      self->_overrideGradientStartAngle = position;
    }

    else
    {
      v54 = self->_overrideGradientState;
      self->_overrideGradientState = 0;
    }
  }

  [(PKBillPaymentRingView *)self didUpdateAngleSpringTarget];
  if (!v13)
  {
LABEL_55:
    v55 = self->_overrideGradientState;
    self->_overrideGradientState = 0;

    if (p_angleState->running)
    {
      p_angleState->running = 0;
      p_angleState->position = p_angleState->target;
      p_angleState->velocity = 0.0;
    }
  }

LABEL_57:
  if (((p_angleState->position == position) & ~v46) == 0)
  {
    [(PKBillPaymentRingView *)self didUpdateAngleSpringPosition];
  }

  if (p_angleState->running)
  {
    if (target != a3)
    {
      if (v13 && v8)
      {
        if (!self->_feedbackGenerator)
        {
          v56 = [MEMORY[0x1E69DD6E8] defaultConfiguration];
          v57 = [v56 tweakedConfigurationForCaller:self usage:@"majorSelection"];

          v58 = [MEMORY[0x1E69DD470] feedbackWithDictionaryRepresentation:&unk_1F3CC8870];
          [v57 setFeedback:v58];

          v59 = [objc_alloc(MEMORY[0x1E69DCF40]) initWithConfiguration:v57 coordinateSpace:self];
          feedbackGenerator = self->_feedbackGenerator;
          self->_feedbackGenerator = v59;

          if (self->_dragging)
          {
            [(UISelectionFeedbackGenerator *)self->_feedbackGenerator userInteractionStarted];
          }

          goto LABEL_77;
        }
      }

      else if (!self->_dragging)
      {
        v57 = self->_feedbackGenerator;
        self->_feedbackGenerator = 0;
LABEL_77:
      }
    }

    v62 = vabdd_f64(p_angleState->position, p_angleState->target);
    if (self->_dragging)
    {
      v63 = fmin(fmax((v62 + -0.575958653) / 5.18362788, 0.0), 1.0);
      v64 = 1.0 - v63;
      v65 = v63 * -0.356674944;
      v66 = -2.07944154;
    }

    else
    {
      v67 = v62 / 5.75958653;
      v64 = 1.0 - v67;
      v65 = v67 * -0.356674944;
      v66 = -1.04982212;
    }

    [(PKBillPaymentRingView *)self _setResponse:exp(v65 + v64 * v66)];
  }

  [(PKBillPaymentRingView *)self _updatePausedState];
}

- (void)setHandleScale:(double)a3 animated:(BOOL)a4
{
  p_scaleState = &self->_scaleState;
  position = self->_scaleState.position;
  v8 = log(a3);
  p_scaleState->target = v8;
  if (p_scaleState->running || position == v8)
  {
    v9 = position;
    if (!p_scaleState->running)
    {
      goto LABEL_7;
    }
  }

  else
  {
    p_scaleState->running = 1;
  }

  v9 = position;
  if (!a4)
  {
    p_scaleState->running = 0;
    p_scaleState->position = v8;
    v9 = v8;
    p_scaleState->velocity = 0.0;
  }

LABEL_7:
  if (v9 != position)
  {
    [(PKBillPaymentRingView *)self didUpdateScaleSpringPosition];
  }

  [(PKBillPaymentRingView *)self _updatePausedState];
}

- (void)_updatePausedState
{
  if ([(PKBillPaymentRingView *)self _preferredPausedState])
  {

    [(PKBillPaymentRingView *)self _pauseRenderLoop];
  }

  else if ([(PKRenderLoop *)self->_renderLoop isPaused])
  {
    if (self->_responseState.running)
    {
      self->_responseState.running = 0;
      target = self->_responseState.target;
      self->_responseState.position = target;
      self->_responseState.velocity = 0.0;
      SpringSetResponse(&self->_spring, target);
    }

    self->_lastDrawTime = CACurrentMediaTime();
    renderLoop = self->_renderLoop;

    [(PKRenderLoop *)renderLoop setPaused:0];
  }
}

- (id)_blendFromGradientState:(id)a3 toState:(id)a4 withProgress:(double)a5
{
  v7 = MEMORY[0x1E69DC888];
  v8 = a4;
  v9 = a3;
  v10 = [v9 startColor];
  v11 = [v8 startColor];
  v12 = [v7 pkui_blendFromColor:v10 toColor:v11 withProgress:a5];

  v13 = MEMORY[0x1E69DC888];
  v14 = [v9 endColor];

  v15 = [v8 endColor];

  v16 = [v13 pkui_blendFromColor:v14 toColor:v15 withProgress:a5];

  v17 = [[PKBillPaymentRingGradientState alloc] initWithStartColor:v12 endColor:v16];

  return v17;
}

- (void)_updateForEnabledState
{
  if (self->_enabled)
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }
  v4 = ;
  if (self->_enabled)
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] quaternaryLabelColor];
  }
  v3 = ;
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setTextColor:v4];
  [(PKCurvedTextLabel *)self->_topCurvedTextLabel setTextColor:v3];
  [(PKCurvedTextLabel *)self->_bottomCurvedTextLabel setTextColor:v3];
  [(UITapGestureRecognizer *)self->_tapRecognizer setEnabled:self->_enabled];
  [(UIPanGestureRecognizer *)self->_dragRecognizer setEnabled:self->_enabled];
  [(PKBillPaymentCircularView *)self->_handleView setHidden:!self->_enabled];
  [(PKRingGradientView *)self->_ringView setEnabled:self->_enabled];
}

- (void)_updateCurvedText
{
  enabled = self->_enabled;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = WeakRetained;
  if (enabled)
  {
    v8 = [WeakRetained billPaymentRingView:self topCurvedTextForSuggestedAmount:self->_highlightedSuggestedAmount];

    v6 = objc_loadWeakRetained(&self->_dataSource);
    [v6 billPaymentRingView:self bottomCurvedTextForSuggestedAmount:self->_highlightedSuggestedAmount];
  }

  else
  {
    v8 = [WeakRetained disabledTopCurvedTextForBillPaymentRingView:self];

    v6 = objc_loadWeakRetained(&self->_dataSource);
    [v6 disabledBottomCurvedTextForBillPaymentRingView:self];
  }
  v7 = ;

  [(PKCurvedTextLabel *)self->_topCurvedTextLabel setText:v8];
  [(PKCurvedTextLabel *)self->_bottomCurvedTextLabel setText:v7];
}

- (void)_setResponse:(double)a3
{
  if (self->_responseState.target != a3)
  {
    self->_responseSpringElapsedDuration = 0.0;
    self->_responseState.target = a3;
    if (!self->_responseState.running && self->_responseState.position != a3)
    {
      self->_responseState.running = 1;
    }
  }
}

- (void)_setDotsVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_dotsVisible == !a3)
  {
    if (a4)
    {
      [(PKBillPaymentRingView *)self layoutIfNeeded];
      self->_dotsVisible = a3;
      [(PKBillPaymentRingView *)self setNeedsLayout];
      v6 = [objc_alloc(MEMORY[0x1E69BC7A0]) initWithMass:3.0 stiffness:1000.0 damping:500.0];
      v7 = v6;
      if (self->_dotsVisible)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __50__PKBillPaymentRingView__setDotsVisible_animated___block_invoke;
        v9[3] = &unk_1E80183C0;
        v9[4] = self;
        [v6 setAnimationDelayHandler:v9];
      }

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __50__PKBillPaymentRingView__setDotsVisible_animated___block_invoke_2;
      v8[3] = &unk_1E8010970;
      v8[4] = self;
      [MEMORY[0x1E69DD250] pkui_animateUsingFactory:v7 withDelay:0 options:v8 animations:0 completion:0.0];
    }

    else
    {
      self->_dotsVisible = a3;

      [(PKBillPaymentRingView *)self setNeedsLayout];
    }
  }
}

double __50__PKBillPaymentRingView__setDotsVisible_animated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v6 isEqualToString:@"opacity"] & 1) != 0 || (v7 = 0.0, objc_msgSend(v6, "isEqualToString:", @"transform")))
  {
    v8 = [*(*(a1 + 32) + 416) indexOfObjectIdenticalTo:v5];
    v7 = 0.0;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v8 * 0.15;
    }
  }

  return v7;
}

- (BOOL)_setDisplayAmount:(id)a3
{
  v4 = a3;
  if (PKEqualObjects())
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 copy];
    displayAmount = self->_displayAmount;
    self->_displayAmount = v6;

    v5 = [(PKBillPaymentRingView *)self _updateEffectiveDisplayAmount];
  }

  return v5;
}

- (BOOL)_updateEffectiveDisplayAmount
{
  overrideDisplayAmount = self->_overrideDisplayAmount;
  if (!overrideDisplayAmount)
  {
    overrideDisplayAmount = self->_displayAmount;
  }

  v4 = overrideDisplayAmount;
  v5 = PKEqualObjects();
  if ((v5 & 1) == 0)
  {
    objc_storeStrong(&self->_effectiveDisplayAmount, overrideDisplayAmount);
    [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setCurrentAmount:self->_effectiveDisplayAmount forceFormatForDisplay:PKIsVision() ^ 1];
    [(PKBillPaymentRingView *)self _updateInterestText];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(NSDecimalNumber *)self->_effectiveDisplayAmount copy];
      [WeakRetained billPaymentRingView:self amountChanged:v7];
    }

    [(PKBillPaymentRingView *)self setNeedsLayout];
  }

  return v5 ^ 1;
}

- (void)_setSelectedSuggestedAmount:(id)a3
{
  v12 = a3;
  if (v12)
  {
    pinnedAmountAngleIndex = self->_pinnedAmountAngleIndex;
    if (pinnedAmountAngleIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      suggestedAmountsForAngle = self->_suggestedAmountsForAngle;
      v3 = [(NSArray *)self->_suggestedAmountAngles objectAtIndexedSubscript:self->_pinnedAmountAngleIndex];
      v4 = [(NSDictionary *)suggestedAmountsForAngle objectForKeyedSubscript:v3];
      if (v4 == v12)
      {
        LODWORD(initialDisplayAmount) = 1;
      }

      else
      {
        initialDisplayAmount = self->_initialDisplayAmount;
        if (initialDisplayAmount)
        {
          goto LABEL_8;
        }
      }

LABEL_11:

      goto LABEL_12;
    }

    initialDisplayAmount = self->_initialDisplayAmount;
    if (initialDisplayAmount)
    {
LABEL_8:
      v10 = [v12 amount];
      LODWORD(initialDisplayAmount) = PKEqualObjects();

      if (pinnedAmountAngleIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    LODWORD(initialDisplayAmount) = 0;
  }

LABEL_12:
  if (!PKEqualObjects() || self->_needsInitialDisplay || self->_selectedSuggestedAmountIsTarget == (initialDisplayAmount ^ 1))
  {
    self->_selectedSuggestedAmountIsTarget = initialDisplayAmount;
    objc_storeStrong(&self->_selectedSuggestedAmount, a3);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained billPaymentRingView:self selectedSuggestedAmount:self->_selectedSuggestedAmount selectedSuggestedAmountIsTarget:self->_selectedSuggestedAmountIsTarget userInitiatedChange:self->_userSelectedAngleChange];
  }
}

- (void)_setHighlightedSuggestedAmount:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_highlightedSuggestedAmount, a3);
    if (self->_enabled)
    {
      [(PKBillPaymentRingView *)self _updateCurvedText];
    }
  }
}

- (id)_stickySuggestedAmountForCurrentAngle
{
  if (self->_pinnedAmount)
  {
    pinnedAmountAngleIndex = self->_pinnedAmountAngleIndex;
    if (pinnedAmountAngleIndex == 0x7FFFFFFFFFFFFFFFLL || (([(PKBillPaymentRingView *)self _angleForAngleIndex:self->_pinnedAmountAngleIndex], position = self->_angleState.position, v7 = v6 + -0.172787596, v8 = v6 + 0.172787596, position >= v7) ? (v9 = position > v8) : (v9 = 1), v9))
    {
      v11 = 0;
    }

    else
    {
      v11 = [(PKBillPaymentRingView *)self _suggestedAmountForAngleIndex:pinnedAmountAngleIndex];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_updateHandleImage
{
  if (self->_isSmall)
  {
    v3 = [(PKBillPaymentRingView *)self _suggestedAmountImageForSuggestedAmount:self->_selectedSuggestedAmount];
  }

  else
  {
    v4 = [(PKBillPaymentRingView *)self _stickySuggestedAmountForCurrentAngle];
    if (v4)
    {
      v5 = [(PKBillPaymentRingView *)self _suggestedAmountImageForSuggestedAmount:v4];
    }

    else
    {
      v5 = 0;
    }

    v3 = v5;
  }

  v6 = v3;
  [(PKBillPaymentCircularView *)self->_handleView setImage:v3];
}

- (void)_updateInterestText
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = WeakRetained;
  initialDisplayAmount = self->_initialDisplayAmount;
  if (!initialDisplayAmount)
  {
    initialDisplayAmount = self->_effectiveDisplayAmount;
  }

  v6 = [WeakRetained billPaymentRingView:self interestTextForAmount:initialDisplayAmount];

  v7 = [(UILabel *)self->_interestLabel text];
  v8 = objc_loadWeakRetained(&self->_dataSource);
  v9 = [v8 billPaymentRingViewZeroInterestText:self];

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  v12 = PKEqualObjects();
  v13 = PKEqualObjects();
  if (self->_needsInitialDisplay || self->_isSmall || ((v12 | v13) & 1) == 0)
  {
    v14 = 0;
    if (v12)
    {
LABEL_13:
      interestLabel = self->_interestLabel;
      v17 = v9;
      goto LABEL_15;
    }
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E69BC7A0]) initWithMass:3.0 stiffness:1000.0 damping:500.0];
    v14 = v15;
    if (v12)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __44__PKBillPaymentRingView__updateInterestText__block_invoke;
      v20[3] = &unk_1E80183C0;
      v20[4] = self;
      [v15 setAnimationDelayHandler:v20];
      goto LABEL_13;
    }
  }

  interestLabel = self->_interestLabel;
  v17 = v11;
LABEL_15:
  [(UILabel *)interestLabel setText:v17];
  if (v14)
  {
    [(PKBillPaymentRingView *)self layoutIfNeeded];
  }

  v18 = 1.0;
  if (v12)
  {
    v18 = 0.0;
  }

  self->_interestLabelAlpha = v18;
  if ((v12 & 1) == 0)
  {
    [(UILabel *)self->_interestLabel setText:v11];
  }

  [(PKBillPaymentRingView *)self setNeedsLayout];
  if (v14)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __44__PKBillPaymentRingView__updateInterestText__block_invoke_2;
    v19[3] = &unk_1E8010970;
    v19[4] = self;
    [MEMORY[0x1E69DD250] pkui_animateUsingFactory:v14 withDelay:4 options:v19 animations:0 completion:0.0];
  }
}

double __44__PKBillPaymentRingView__updateInterestText__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v6 isEqualToString:@"opacity"] & 1) != 0 || (v7 = 0.0, objc_msgSend(v6, "isEqualToString:", @"position")))
  {
    if (*(*(a1 + 32) + 1016) == v5)
    {
      v7 = 0.35;
    }

    else
    {
      v7 = 0.0;
    }
  }

  return v7;
}

- (void)_pauseRenderLoop
{
  [(PKRenderLoop *)self->_renderLoop setPaused:1];
  if (!self->_dragging)
  {
    feedbackGenerator = self->_feedbackGenerator;
    self->_feedbackGenerator = 0;
  }

  initialDisplayAmount = self->_initialDisplayAmount;
  if (initialDisplayAmount && !self->_needsInitialDisplay)
  {
    self->_initialDisplayAmount = 0;
  }
}

- (double)_angleForAmount:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_suggestedAmountAngles count];
  [v4 doubleValue];
  v7 = v6;
  minimumPaymentAmount = self->_minimumPaymentAmount;
  if (v6 >= minimumPaymentAmount)
  {
    if (v5)
    {
      v11 = 0;
      v12 = 0.523598776;
      while (1)
      {
        v13 = [(NSArray *)self->_suggestedAmountAngles objectAtIndexedSubscript:v11];
        v14 = [(NSDictionary *)self->_suggestedAmountsForAngle objectForKeyedSubscript:v13];
        v15 = [v14 amount];
        [v15 doubleValue];
        v17 = v16;

        [v13 doubleValue];
        v10 = v18;
        if (v7 < v17)
        {
          break;
        }

        ++v11;
        v12 = v10;
        minimumPaymentAmount = v17;
        if (v5 == v11)
        {
          goto LABEL_14;
        }
      }

      if (v17 != minimumPaymentAmount)
      {
        v19 = fmin(fmax((v7 - minimumPaymentAmount) / (v17 - minimumPaymentAmount), 0.0), 1.0);
        v12 = v10 * v19 + v12 * (1.0 - v19);
      }

      v10 = v12;
    }

    else
    {
      v10 = 6.28318531;
    }
  }

  else if (self->_isSmall)
  {
    v9 = fmin(fmax(v6 / minimumPaymentAmount, 0.0), 1.0);
    v10 = v9 * 0.523598776 + (1.0 - v9) * 0.226892803;
  }

  else
  {
    v10 = dbl_1BE1152B0[v5 == 0];
  }

LABEL_14:

  return v10;
}

- (id)_roundedAmountForAngle:(double)a3
{
  v5 = [(NSArray *)self->_suggestedAmountAngles count];
  maximumPaymentAmount = self->_maximumPaymentAmount;
  minimumPaymentAmount = self->_minimumPaymentAmount;
  if (!v5)
  {
    v9 = self->_maximumPaymentAmount;
    if (a3 >= 0.523598776)
    {
      v9 = self->_maximumPaymentAmount;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v8 = 0.523598776;
  v9 = self->_minimumPaymentAmount;
  if (a3 < 0.523598776)
  {
LABEL_8:
    if (self->_isSmall)
    {
      v18 = fmin(fmax((a3 + -0.226892803) / 0.296705973, 0.0), 1.0);
      v9 = v18 * minimumPaymentAmount + minimumPaymentAmount * (1.0 - v18);
    }

    goto LABEL_14;
  }

  v10 = v5;
  v11 = 0;
  while (1)
  {
    v12 = [(NSArray *)self->_suggestedAmountAngles objectAtIndexedSubscript:v11];
    v13 = [(NSDictionary *)self->_suggestedAmountsForAngle objectForKeyedSubscript:v12];
    v14 = [v13 amount];
    [v14 doubleValue];
    v9 = v15;

    [v12 doubleValue];
    v17 = v16;
    if (v16 > a3)
    {
      break;
    }

    ++v11;
    minimumPaymentAmount = v9;
    v8 = v17;
    if (v10 == v11)
    {
      minimumPaymentAmount = v9;
      goto LABEL_14;
    }
  }

  v19 = minimumPaymentAmount;
  if (v16 != v8)
  {
    v20 = fmin(fmax((a3 - v8) / (v16 - v8), 0.0), 1.0);
    v19 = v9 * v20 + minimumPaymentAmount * (1.0 - v20);
  }

  maximumPaymentAmount = v9;
  v9 = v19;
LABEL_14:
  v21 = fmin(fmax(self->_amountRoundingUnit * round(v9 / self->_amountRoundingUnit), minimumPaymentAmount), maximumPaymentAmount);
  v22 = MEMORY[0x1E696AB90];
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
  v24 = v23;
  if (v23)
  {
    [v23 decimalValue];
  }

  else
  {
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
  }

  v25 = [v22 decimalNumberWithDecimal:v27];

  return v25;
}

- (BOOL)_isAmount:(id)a3 withinRoundingUnitOfAmount:(id)a4
{
  v6 = a4;
  [a3 doubleValue];
  v8 = v7;
  [v6 doubleValue];
  v10 = v9;

  amountRoundingUnit = self->_amountRoundingUnit;
  return v8 <= v10 + amountRoundingUnit && v8 >= v10 - amountRoundingUnit;
}

- (CGPoint)_centerPointAtAngle:(double)a3 adjustToCover:(BOOL)a4
{
  v4 = a4;
  [(PKBillPaymentRingView *)self _center];
  v8 = v7;
  v10 = v9;
  [(PKRingGradientView *)self->_ringView frame];
  v11 = CGRectGetWidth(v20) * 0.5;
  [(PKBillPaymentRingView *)self _ringWidth];
  v13 = v11 - v12 * 0.5;
  if (v4)
  {
    v14 = PKUIPixelLength();
    a3 = a3 + asin(v14 / v13) * -5.0;
  }

  v15 = a3;
  v16 = __sincosf_stret(v15);
  v17 = v10 + v13 * v16.__sinval;
  v18 = v8 + v13 * v16.__cosval;
  result.y = v17;
  result.x = v18;
  return result;
}

- (CGPoint)_center
{
  [(PKRingGradientView *)self->_ringView frame];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MidX = CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidY = CGRectGetMidY(v11);
  v8 = MidX;
  result.y = MidY;
  result.x = v8;
  return result;
}

- (double)_amountLabelMaximumFontSize
{
  v2 = PKUIGetMinScreenWidthType();
  result = 57.0;
  if (!v2)
  {
    return 42.0;
  }

  return result;
}

- (unint64_t)_unnormalizedAngleIndexForAngle:(double)a3
{
  v5 = [(NSArray *)self->_suggestedAmountAngles count];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  v8 = fmax(a3, 0.523598776);
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v10 = [(NSArray *)self->_suggestedAmountAngles objectAtIndexedSubscript:v7];
    [v10 doubleValue];
    if (v8 >= v11)
    {
      v9 = v7;
    }

    ++v7;
  }

  while (v6 != v7);
  return v9;
}

- (unint64_t)_segmentEndAngleIndexForAngle:(double)a3
{
  result = [(NSArray *)self->_suggestedAmountAngles count];
  if (result)
  {
    v6 = result;
    v7 = [(PKBillPaymentRingView *)self _unnormalizedAngleIndexForAngle:a3];
    if (v7 + 1 < v6 - 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v6 - 1;
    }

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

- (double)_angleForAngleIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_suggestedAmountAngles count]<= a3)
  {
    return 0.0;
  }

  v5 = [(NSArray *)self->_suggestedAmountAngles objectAtIndexedSubscript:a3];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (id)_suggestedAmountForAngleIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_suggestedAmountAngles count]<= a3)
  {
    v7 = 0;
  }

  else
  {
    suggestedAmountsForAngle = self->_suggestedAmountsForAngle;
    v6 = [(NSArray *)self->_suggestedAmountAngles objectAtIndexedSubscript:a3];
    v7 = [(NSDictionary *)suggestedAmountsForAngle objectForKeyedSubscript:v6];
  }

  return v7;
}

- (id)_suggestedAmountImageForSuggestedAmount:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 category] == 1)
    {
      suggestedAmoutImages = self->_suggestedAmoutImages;
      v7 = &unk_1F3CC74C0;
LABEL_10:
      v9 = [(NSDictionary *)suggestedAmoutImages objectForKey:v7];
      goto LABEL_12;
    }

    if ([v5 category] == 19)
    {
      suggestedAmoutImages = self->_suggestedAmoutImages;
LABEL_6:
      v7 = &unk_1F3CC74D8;
      goto LABEL_10;
    }

    if ([v5 category] == 18)
    {
      v8 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList suggestedAmountWithCategory:19];

      suggestedAmoutImages = self->_suggestedAmoutImages;
      if (v8)
      {
        v7 = &unk_1F3CC74F0;
        goto LABEL_10;
      }

      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (id)_targetGradientStateForAngle:(double)a3
{
  v5 = [(PKBillPaymentRingView *)self _segmentEndAngleIndexForAngle:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5 - 1;
  }

  else
  {
    v7 = 0;
  }

  [(PKBillPaymentRingView *)self _angleForAngleIndex:v5];
  v9 = v8;
  v10 = [(PKBillPaymentRingView *)self _suggestedAmountForAngleIndex:v6];
  v11 = [(PKBillPaymentRingView *)self _gradientStateForSuggestedAmount:v10];

  if (v7 == v6)
  {
    v12 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList smalllestSuggestionAmountBelowRemainingStatementAmount];
    v13 = [v12 pk_isPositiveNumber];

    if (v13)
    {
      standardRingStates = self->_standardRingStates;
      v15 = &unk_1F3CC74C0;
    }

    else
    {
      v20 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList remainingStatementAmount];

      standardRingStates = self->_standardRingStates;
      if (v20)
      {
        v15 = &unk_1F3CC74F0;
      }

      else
      {
        v15 = &unk_1F3CC74D8;
      }
    }

    v19 = [(NSDictionary *)standardRingStates objectForKeyedSubscript:v15];
    v17 = 0.523598776;
  }

  else
  {
    [(PKBillPaymentRingView *)self _angleForAngleIndex:v7];
    v17 = v16;
    v18 = [(PKBillPaymentRingView *)self _suggestedAmountForAngleIndex:v7];
    v19 = [(PKBillPaymentRingView *)self _gradientStateForSuggestedAmount:v18];
  }

  v21 = fmin(v9 - v17, 0.172787596);
  if (v9 - v21 >= a3)
  {
    v22 = v19;
  }

  else if (v9 <= a3)
  {
    v22 = v11;
  }

  else
  {
    v22 = [(PKBillPaymentRingView *)self _blendFromGradientState:v19 toState:v11 withProgress:(a3 - (v9 - v21)) / v21];
  }

  v23 = v22;

  return v23;
}

- (id)_gradientStateForSuggestedAmount:(id)a3
{
  v4 = [a3 amount];
  v5 = [(NSDictionary *)self->_colorStops objectForKeyedSubscript:&unk_1F3CC74C0];
  v6 = [(NSDictionary *)self->_colorStops objectForKeyedSubscript:&unk_1F3CC74D8];
  v7 = [(NSDictionary *)self->_colorStops objectForKeyedSubscript:&unk_1F3CC7508];
  if (v5)
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = [v4 compare:v5];
  }

  if (v6)
  {
    v11 = v4 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = [v4 compare:v6];
  }

  if (v7)
  {
    v14 = v4 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (v14)
  {
    v16 = 0;
    v17 = 1;
  }

  else
  {
    v16 = [v4 compare:v7] != -1;
    v17 = v16;
  }

  if (v10 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v9;
  }

  v19 = v12 ^ 1;
  if (v13 == 1)
  {
    v19 = 1;
  }

  if (v18)
  {
    v19 = 0;
  }

  if ((v10 - 1) < 0xFFFFFFFFFFFFFFFELL)
  {
    v20 = v9;
  }

  else
  {
    v20 = 0;
  }

  if (v18)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (v13 != -1)
  {
    v21 = 2;
  }

  if (v12)
  {
    v20 = v21;
  }

  v22 = v18 | v17 | ~v15;
  v8 = !v16;
  v23 = 3;
  if (v8)
  {
    v23 = v20;
  }

  if (v19)
  {
    v20 = 2;
  }

  if (v22)
  {
    v24 = v23;
  }

  else
  {
    v24 = v20;
  }

  standardRingStates = self->_standardRingStates;
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
  v27 = [(NSDictionary *)standardRingStates objectForKeyedSubscript:v26];

  return v27;
}

- (void)_createSuggestedAmountsImageDictionary
{
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = PKPassKitUIBundle();
  v4 = [v3 URLForResource:@"Bill_Payment_Exclamation" withExtension:@"pdf"];

  v5 = PKUIScreenScale();
  v6 = PKUIImageFromPDF(v4, 18.0, 18.0, v5);
  [v17 setObject:v6 forKey:&unk_1F3CC74C0];
  v7 = PKPassKitUIBundle();
  v8 = [v7 URLForResource:@"Bill_Payment_Checkmark" withExtension:@"pdf"];

  v9 = PKUIScreenScale();
  v10 = PKUIImageFromPDF(v8, 18.0, 18.0, v9);

  [v17 setObject:v10 forKey:&unk_1F3CC74F0];
  v11 = PKPassKitUIBundle();
  v12 = [v11 URLForResource:@"Bill_Payment_Star" withExtension:@"pdf"];

  v13 = PKUIScreenScale();
  v14 = PKUIImageFromPDF(v12, 18.0, 18.0, v13);

  [v17 setObject:v14 forKey:&unk_1F3CC74D8];
  v15 = [v17 copy];
  suggestedAmoutImages = self->_suggestedAmoutImages;
  self->_suggestedAmoutImages = v15;
}

- (void)_createSuggestedAmountAngles
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList minimumAmount];
  v54 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList maximumAmount];
  [v54 doubleValue];
  v5 = v4;
  if (v3)
  {
    [v3 doubleValue];
  }

  else
  {
    v6 = 0.0;
  }

  v7 = v5 - v6;
  v8 = 0.01;
  v55 = v3;
  if (v7 != 0.0)
  {
    v9 = 0;
    v10 = 1.79769313e308;
    v11 = fabs(v7) / 100.0;
    while (1)
    {
      v12 = v9 >= 0xA ? __exp10(((v9 - 10) / 3u + 2)) * RoundingUnit_map[(v9 - 10) % 3u] : dbl_1BE115368[v9];
      if (v12 >= v11)
      {
        break;
      }

      v13 = v11 - v12;
      if (v13 < v10 && v13 > 0.0)
      {
        v10 = v13;
        if (v9++ != 99)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    v8 = v12;
  }

LABEL_16:
  if (v3)
  {
    [v3 doubleValue];
    v16 = v15;
  }

  else
  {
    v17 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList remainingStatementAmount];
    v18 = v17;
    v16 = v8;
    if (v17)
    {
      [v17 doubleValue];
      v16 = fmin(v19, v8);
    }

    v20 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList maximumAmount];

    if (v20)
    {
      [v20 doubleValue];
      v16 = fmin(v21, v16);
    }

    v3 = v55;
  }

  self->_amountRoundingUnit = v8;
  self->_minimumPaymentAmount = v16;
  self->_maximumPaymentAmount = v5;
  v22 = vabdd_f64(v5, v16);
  v23 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList suggestedAmountWithCategory:18];
  v24 = [v23 amount];

  [v24 doubleValue];
  v26 = v25;
  v57 = 0;
  v56 = 0.0;
  if (v24)
  {
    v27 = 0.0;
    if (v5 - v16 == 0.0)
    {
      goto LABEL_36;
    }

    v28 = fmin(fmax((v25 - v16) / v22, 0.0), 1.0);
    v29 = v28 * 6.28318531 + (1.0 - v28) * 0.523598776;
    if (v3)
    {
      v30 = [v24 isEqual:v3];
    }

    else
    {
      v30 = 0;
    }

    v31 = [v24 isEqual:v54];
    v27 = 5.75958653;
    if (v29 > 5.75958653 && (v31 & 1) == 0)
    {
      goto LABEL_30;
    }

    v57 = 0;
    v56 = 0.0;
    if (v3)
    {
      v27 = 1.04719755;
      if (v29 < 1.04719755)
      {
        if ((v30 & 1) == 0)
        {
LABEL_30:
          v22 = fabs(v26 - v16);
          v56 = vabdd_f64(v5, v26);
          v57 = 1;
          goto LABEL_36;
        }

        v57 = 0;
      }
    }
  }

  v27 = 0.0;
LABEL_36:
  v53 = v24;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v58 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v33 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList sortedSuggestedAmounts];
  v34 = [v33 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v60;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v60 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v59 + 1) + 8 * i);
        v39 = [v38 amount];
        [v39 doubleValue];
        v41 = v40;

        if (v41 >= self->_minimumPaymentAmount && v41 <= self->_maximumPaymentAmount)
        {
          if (v57)
          {
            if (v22 <= 0.0)
            {
              if (v41 <= v26)
              {
                v42 = v27;
              }

              else
              {
                v42 = 6.28318531;
              }
            }

            else
            {
              if (v41 > v26)
              {
                v42 = 6.28318531;
                if (v56 > 0.0)
                {
                  v43 = fmin(fmax((v41 - v26) / v56, 0.0), 1.0);
                  v42 = v43 * 6.28318531 + v27 * (1.0 - v43);
                }

                goto LABEL_55;
              }

              v47 = fmin(fmax((v41 - v16) / v22, 0.0), 1.0);
              v45 = 1.0 - v47;
              v46 = v27 * v47;
LABEL_54:
              v42 = v46 + v45 * 0.523598776;
            }
          }

          else
          {
            v42 = 6.28318531;
            if (v22 > 0.0)
            {
              v44 = fmin(fmax((v41 - v16) / v22, 0.0), 1.0);
              v45 = 1.0 - v44;
              v46 = v44 * 6.28318531;
              goto LABEL_54;
            }
          }

LABEL_55:
          v48 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
          [v32 addObject:v48];
          [v58 setObject:v38 forKeyedSubscript:v48];

          continue;
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v35);
  }

  [v32 sortUsingComparator:&__block_literal_global_88];
  v49 = [v32 copy];
  suggestedAmountAngles = self->_suggestedAmountAngles;
  self->_suggestedAmountAngles = v49;

  v51 = [v58 copy];
  suggestedAmountsForAngle = self->_suggestedAmountsForAngle;
  self->_suggestedAmountsForAngle = v51;
}

uint64_t __53__PKBillPaymentRingView__createSuggestedAmountAngles__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 doubleValue];
  v6 = v5;
  [v4 doubleValue];
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

- (void)_createStandardColors
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = 0;
  v20 = vdupq_n_s64(0x3FD7D7D7D7D5AFEEuLL);
  do
  {
    v4 = [PKBillPaymentRingGradientState alloc];
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        components = 0.105882353;
        v5 = xmmword_1BE1152D0;
      }

      else
      {
        components = 0.0392156863;
        v5 = xmmword_1BE1152C0;
      }
    }

    else if (v3)
    {
      components = 0.992;
      v5 = xmmword_1BE1152E0;
    }

    else
    {
      components = 1.0;
      v5 = v20;
    }

    v22 = v5;
    v23 = 0x3FF0000000000000;
    v6 = PKColorSpaceStandardRGB();
    v7 = CGColorCreate(v6, &components);
    v8 = [MEMORY[0x1E69DC888] colorWithCGColor:v7];
    CGColorRelease(v7);
    v9 = [v8 pkui_extendedLinearColor];

    if (v3 > 1)
    {
      if (v3 == 2)
      {
        components = 0.71372549;
        v10 = xmmword_1BE115300;
      }

      else
      {
        components = 0.615686275;
        v10 = xmmword_1BE1152F0;
      }
    }

    else if (v3)
    {
      components = 1.0;
      v10 = xmmword_1BE115310;
    }

    else
    {
      components = 0.960784314;
      v10 = xmmword_1BE115320;
    }

    v22 = v10;
    v23 = 0x3FF0000000000000;
    v11 = PKColorSpaceStandardRGB();
    v12 = CGColorCreate(v11, &components);
    v13 = [MEMORY[0x1E69DC888] colorWithCGColor:v12];
    CGColorRelease(v12);
    v14 = [v13 pkui_extendedLinearColor];

    v15 = [(PKBillPaymentRingGradientState *)v4 initWithStartColor:v9 endColor:v14];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
    [v2 setObject:v15 forKeyedSubscript:v16];

    ++v3;
  }

  while (v3 != 4);
  v17 = [v2 copy];
  standardRingStates = self->_standardRingStates;
  self->_standardRingStates = v17;
}

- (void)_createSuggestedAmountRingColorStops
{
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList minimumAmount];
  v4 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList remainingStatementAmount];
  v5 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList maximumAmount];
  v6 = [(PKBillPaymentSuggestedAmountList *)self->_suggestedAmountList suggestedAmountWithCategory:30];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 amount];

    v5 = v8;
  }

  if (PKEqualObjects())
  {

    v5 = 0;
  }

  [v11 setObject:v3 forKeyedSubscript:&unk_1F3CC74C0];
  [v11 setObject:v4 forKeyedSubscript:&unk_1F3CC74D8];
  [v11 setObject:v5 forKeyedSubscript:&unk_1F3CC7508];
  v9 = [v11 copy];
  colorStops = self->_colorStops;
  self->_colorStops = v9;
}

- (PKBillPaymentRingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKBillPaymentRingViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end