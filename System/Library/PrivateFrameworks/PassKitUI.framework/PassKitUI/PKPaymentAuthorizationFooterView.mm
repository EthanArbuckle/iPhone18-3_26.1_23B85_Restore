@interface PKPaymentAuthorizationFooterView
- (BOOL)setConstraintState:(int64_t)state;
- (PKPaymentAuthorizationFooterView)initWithFrame:(CGRect)frame layout:(id)layout;
- (PKPaymentAuthorizationFooterViewDelegate)delegate;
- (id)_payWithPasscodeTitleForState:(int64_t)state;
- (id)_titleAttributedStringForState:(int64_t)state;
- (id)_titleLabelAttributedString:(id)string;
- (id)createDefaultHeightConstraintForConstraintState:(int64_t)state;
- (void)_createSubviews;
- (void)_payWithPasscodePressed;
- (void)_prepareConstraints;
- (void)dealloc;
- (void)glyphView:(id)view revealingCheckmark:(BOOL)checkmark;
- (void)glyphViewUserIntentEdgeDidChange:(id)change;
- (void)setConfirmationStyle:(unint64_t)style;
- (void)setHidden:(BOOL)hidden;
- (void)setHidesSeparatorView:(BOOL)view;
- (void)setRequestType:(unint64_t)type;
- (void)setState:(int64_t)state string:(id)string animated:(BOOL)animated withCompletion:(id)completion;
- (void)updateConstraints;
@end

@implementation PKPaymentAuthorizationFooterView

- (PKPaymentAuthorizationFooterView)initWithFrame:(CGRect)frame layout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  v23.receiver = self;
  v23.super_class = PKPaymentAuthorizationFooterView;
  height = [(PKPaymentAuthorizationFooterView *)&v23 initWithFrame:x, y, width, height];
  if (height)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionHandlers = height->_completionHandlers;
    height->_completionHandlers = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deferredCompletionHandlers = height->_deferredCompletionHandlers;
    height->_deferredCompletionHandlers = v14;

    objc_storeStrong(&height->_layout, layout);
    height->_constraintState = 0;
    height->_queuedConstraintState = 0;
    traitCollection = [(PKPaymentAuthorizationFooterView *)height traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    height->_isPad = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
    height->_hasPearl = PKPearlIsAvailable();
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    dynamicRegularConstraints = height->_dynamicRegularConstraints;
    height->_dynamicRegularConstraints = v18;

    height->_compact = [(PKPaymentAuthorizationFooterView *)height _shouldCompact];
    style = [(PKPaymentAuthorizationLayout *)height->_layout style];
    height->_compactUserIntent = style == 0;
    if (style)
    {
      IsAvailable = 0;
    }

    else
    {
      IsAvailable = PKSystemApertureIsAvailable();
    }

    height->_compactBiometrics = IsAvailable;
    [(PKPaymentAuthorizationFooterView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaymentAuthorizationFooterView *)height _createSubviews];
    [(PKPaymentAuthorizationFooterView *)height _prepareConstraints];
  }

  return height;
}

- (void)dealloc
{
  [(PKGlyphView *)self->_glyphView setDelegate:0];
  [(PKGlyphView *)self->_glyphView setState:6 animated:0 completionHandler:0];
  v3.receiver = self;
  v3.super_class = PKPaymentAuthorizationFooterView;
  [(PKPaymentAuthorizationFooterView *)&v3 dealloc];
}

- (void)setRequestType:(unint64_t)type
{
  if (self->_requestType != type)
  {
    self->_requestType = type;
    _shouldCompact = [(PKPaymentAuthorizationFooterView *)self _shouldCompact];
    if (self->_compact != _shouldCompact)
    {
      self->_compact = _shouldCompact;
      self->_constraintsDirty = 1;
      [(PKPaymentAuthorizationFooterView *)self setNeedsUpdateConstraints];
    }

    state = self->_state;

    [(PKPaymentAuthorizationFooterView *)self setState:state];
  }
}

- (void)setConfirmationStyle:(unint64_t)style
{
  if (self->_confirmationStyle != style)
  {
    self->_confirmationStyle = style;
    [(PKPaymentAuthorizationFooterView *)self setState:self->_state];
  }
}

- (BOOL)setConstraintState:(int64_t)state
{
  if (self->_constraintState == state && self->_queuedConstraintState == state)
  {
    return 0;
  }

  self->_queuedConstraintState = state;
  if (([(PKPaymentAuthorizationFooterView *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  [(PKPaymentAuthorizationFooterView *)self setNeedsUpdateConstraints];
  return 1;
}

- (void)setState:(int64_t)state string:(id)string animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  v143 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  completionCopy = completion;
  if (self->_deferringState)
  {
    if (state == 9)
    {
      v10 = 0;
      self->_deferredStateRequiresRetry = 1;
LABEL_18:
      v12 = [stringCopy copy];
      deferredStateString = self->_deferredStateString;
      self->_deferredStateString = v12;

      if (completionCopy)
      {
        deferredCompletionHandlers = self->_deferredCompletionHandlers;
        v15 = [completionCopy copy];
        v16 = _Block_copy(v15);
        [(NSMutableArray *)deferredCompletionHandlers addObject:v16];
      }

      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v17 = v10;
      v18 = [v17 countByEnumeratingWithState:&v137 objects:v142 count:16];
      if (v18)
      {
        v19 = *v138;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v138 != v19)
            {
              objc_enumerationMutation(v17);
            }

            (*(*(*(&v137 + 1) + 8 * i) + 16))();
          }

          v18 = [v17 countByEnumeratingWithState:&v137 objects:v142 count:16];
        }

        while (v18);
      }

      v21 = v17;
      goto LABEL_146;
    }

LABEL_13:
    if (self->_state == state)
    {
      v10 = 0;
    }

    else
    {
      v10 = [(NSMutableArray *)self->_deferredCompletionHandlers copy];
      [(NSMutableArray *)self->_deferredCompletionHandlers removeAllObjects];
      self->_state = state;
    }

    goto LABEL_18;
  }

  if (state == 9 || !self->_biometricSuccessOutstanding)
  {
    if (state == 9)
    {
      v90 = 0;
      goto LABEL_32;
    }
  }

  else if (self->_state != state)
  {
    self->_deferringState = 1;
    self->_deferredStateRequiresRetry = 0;
    v11 = self->_deferredStateString;
    self->_deferredStateString = 0;

    if (self->_deferringState)
    {
      goto LABEL_13;
    }
  }

  ++self->_stateTransitionIndex;
  if (self->_state == state)
  {
    v90 = 0;
  }

  else
  {
    if ([(NSMutableArray *)self->_completionHandlers count])
    {
      v90 = [(NSMutableArray *)self->_completionHandlers copy];
      [(NSMutableArray *)self->_completionHandlers removeAllObjects];
    }

    else
    {
      v90 = 0;
    }

    self->_state = state;
  }

  if (completionCopy)
  {
    completionHandlers = self->_completionHandlers;
    v23 = [completionCopy copy];
    v24 = _Block_copy(v23);
    [(NSMutableArray *)completionHandlers addObject:v24];
  }

LABEL_32:
  state = self->_state;
  if (state > 9)
  {
LABEL_103:
    compactBiometrics = 0;
    v27 = 0;
    goto LABEL_37;
  }

  if (((1 << state) & 0x3E7) != 0)
  {
    compactBiometrics = self->_compactBiometrics;
    if (compactBiometrics)
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_37;
  }

  if (state == 3)
  {
    if (self->_compactUserIntent)
    {
      compactBiometrics = self->_userIntentStyle == 1;
      v27 = 2 * compactBiometrics;
      goto LABEL_37;
    }

    goto LABEL_103;
  }

  compactBiometrics = 0;
  v27 = 1;
LABEL_37:
  v89 = [(PKPaymentAuthorizationFooterView *)self setConstraintState:v27];
  v28 = [stringCopy copy];
  overrideString = self->_overrideString;
  self->_overrideString = v28;

  if (self->_overrideString)
  {
    [(PKPaymentAuthorizationFooterView *)self _titleLabelAttributedString:?];
  }

  else
  {
    [(PKPaymentAuthorizationFooterView *)self _titleAttributedStringForState:state];
  }
  v17 = ;
  v91 = [(PKPaymentAuthorizationFooterView *)self _payWithPasscodeTitleForState:state];
  objc_initWeak(&location, self);
  stateTransitionIndex = self->_stateTransitionIndex;
  if (state != 8)
  {
    if (state == 9)
    {
      v30 = self->_state;
      if (v30 <= 5)
      {
        if (v17)
        {
          [(UILabel *)self->_labelView setAttributedText:v17];
        }

        if (!self->_hasPearl || self->_state == 4)
        {
          AudioServicesPlaySystemSound(0x573u);
          v31 = 23;
          if (self->_hasPearl)
          {
            v31 = 24;
          }

          layer = [*(&self->super.super.super.isa + OBJC_IVAR___PKPaymentAuthorizationFooterView__completionHandlers[v31]) layer];
          pkui_shakeAnimation = [MEMORY[0x1E6979300] pkui_shakeAnimation];
          v34 = [layer pkui_addAdditiveAnimation:pkui_shakeAnimation];
        }
      }

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, v30 < 6);
      }

      goto LABEL_138;
    }

    self->_biometricSuccessOutstanding = 0;
  }

  v132 = 0;
  v133 = &v132;
  v134 = 0x2020000000;
  v135 = 1;
  v35 = state == 8 && animatedCopy;
  if (v35)
  {
    self->_biometricSuccessOutstanding = 1;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke;
  aBlock[3] = &unk_1E8023190;
  objc_copyWeak(v130, &location);
  v130[1] = stateTransitionIndex;
  aBlock[4] = &v132;
  v131 = v35;
  v36 = _Block_copy(aBlock);
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (state > 4)
  {
    if (state > 9)
    {
      if ((state - 10) < 2)
      {
        [(UIButton *)self->_payWithPasscodeButton alpha];
        if (v61 > 0.0)
        {
          [v37 addObject:self->_payWithPasscodeButton];
        }

        [(PKGlyphView *)self->_glyphView alpha];
        if (v62 == 0.0)
        {
          [v38 addObject:self->_glyphView];
        }

        if (v17)
        {
          [v38 addObject:self->_labelView];
        }

        ++v133[3];
        glyphView = self->_glyphView;
        v42 = v125;
        v125[0] = MEMORY[0x1E69E9820];
        v125[1] = 3221225472;
        v125[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_6;
        v125[3] = &unk_1E8010AD8;
        v125[4] = v36;
        [(PKGlyphView *)glyphView setState:7 animated:animatedCopy completionHandler:v125];
        goto LABEL_132;
      }

      if (state == 12)
      {
        [(UIButton *)self->_payWithPasscodeButton alpha];
        if (v66 > 0.0)
        {
          [v37 addObject:self->_payWithPasscodeButton];
        }

        [(PKGlyphView *)self->_glyphView alpha];
        if (v67 == 0.0)
        {
          [v38 addObject:self->_glyphView];
        }

        if (v17)
        {
          [v38 addObject:self->_labelView];
        }

        ++v133[3];
        v68 = self->_glyphView;
        v42 = v124;
        v124[0] = MEMORY[0x1E69E9820];
        v124[1] = 3221225472;
        v124[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_7;
        v124[3] = &unk_1E8010AD8;
        v124[4] = v36;
        [(PKGlyphView *)v68 setState:11 animated:animatedCopy completionHandler:v124];
        goto LABEL_132;
      }

      if (state == 13)
      {
        [(UIButton *)self->_payWithPasscodeButton alpha];
        if (v48 > 0.0)
        {
          [v37 addObject:self->_payWithPasscodeButton];
        }

        [(PKGlyphView *)self->_glyphView alpha];
        if (v49 == 0.0)
        {
          [v38 addObject:self->_glyphView];
        }

        if (v17)
        {
          [v38 addObject:self->_labelView];
        }

        [(PKGlyphView *)self->_glyphView setColorMode:3 animated:animatedCopy];
        ++v133[3];
        v50 = self->_glyphView;
        v122[0] = MEMORY[0x1E69E9820];
        v122[1] = 3221225472;
        v122[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_8;
        v122[3] = &unk_1E8010AD8;
        v123 = v36;
        [(PKGlyphView *)v50 setState:10 animated:animatedCopy completionHandler:v122];
        [(PKPaymentAuthorizationLayout *)self->_layout glyphDimension];
        v87 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:1 scale:v51 / 43.0 * 34.0];
        v52 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark" withConfiguration:?];
        primaryColor = [(PKGlyphView *)self->_glyphView primaryColor];
        v54 = [v52 _flatImageWithColor:primaryColor];

        v55 = self->_glyphView;
        v56 = v54;
        cGImage = [v54 CGImage];
        [v54 alignmentRectInsets];
        [(PKGlyphView *)v55 setCustomImage:cGImage withAlignmentEdgeInsets:?];

        v58 = &v123;
        goto LABEL_133;
      }

      goto LABEL_134;
    }

    if ((state - 5) >= 3)
    {
      if (state == 8)
      {
        if (animatedCopy)
        {
          self->_biometricSuccessOutstanding = 1;
        }

        [(UIButton *)self->_payWithPasscodeButton alpha];
        if (v39 > 0.0)
        {
          [v37 addObject:self->_payWithPasscodeButton];
        }

        [(PKGlyphView *)self->_glyphView alpha];
        if (v40 == 0.0)
        {
          [v38 addObject:self->_glyphView];
        }

        if (v17)
        {
          [v38 addObject:self->_labelView];
        }

        ++v133[3];
        v41 = self->_glyphView;
        v42 = v126;
        v126[0] = MEMORY[0x1E69E9820];
        v126[1] = 3221225472;
        v126[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_5;
        v126[3] = &unk_1E8010AD8;
        v126[4] = v36;
        [(PKGlyphView *)v41 setState:12 animated:animatedCopy completionHandler:v126];
        goto LABEL_132;
      }

      goto LABEL_134;
    }

LABEL_72:
    [(UIButton *)self->_payWithPasscodeButton alpha];
    if (v43 > 0.0)
    {
      [v37 addObject:self->_payWithPasscodeButton];
    }

    if (compactBiometrics)
    {
      [(PKGlyphView *)self->_glyphView alpha];
      if (v44 > 0.0)
      {
        [v37 addObject:self->_glyphView];
      }

      p_labelView = &self->_labelView;
      [(UILabel *)self->_labelView alpha];
      v46 = v37;
      if (v47 <= 0.0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      [v38 addObject:self->_glyphView];
      if (!v17)
      {
LABEL_95:
        v59 = 0;
        v60 = 1;
        if (state > 4)
        {
          if ((state - 5) < 3)
          {
            v59 = 4;
          }
        }

        else
        {
          switch(state)
          {
            case 1:
              v59 = 3;
              break;
            case 2:
              if (PKPearlIsAvailable())
              {
                v59 = 5;
              }

              else
              {
                v59 = 1;
              }

              v60 = 1;
              break;
            case 3:
              if (compactBiometrics)
              {
                v59 = 0;
              }

              else
              {
                userIntentStyle = self->_userIntentStyle;
                v84 = userIntentStyle == 1;
                v85 = userIntentStyle == 1;
                v60 = userIntentStyle != 1;
                v59 = 2 * v85;
                if (v84 && !animatedCopy)
                {
                  [(PKGlyphView *)self->_glyphView setState:6 animated:0 completionHandler:0];
                  v60 = 0;
                }
              }

              break;
          }
        }

        ++v133[3];
        v69 = self->_glyphView;
        v70 = !v60;
        v42 = v128;
        v128[0] = MEMORY[0x1E69E9820];
        v128[1] = 3221225472;
        v128[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_3;
        v128[3] = &unk_1E8010AD8;
        v128[4] = v36;
        [(PKGlyphView *)v69 setState:v59 animated:v70 | animatedCopy completionHandler:v128];
        goto LABEL_132;
      }

      p_labelView = &self->_labelView;
      v46 = v38;
    }

    [v46 addObject:*p_labelView];
    goto LABEL_95;
  }

  if (state < 4)
  {
    goto LABEL_72;
  }

  if (state == 4)
  {
    [(PKGlyphView *)self->_glyphView alpha];
    if (v64 > 0.0)
    {
      [v37 addObject:self->_glyphView];
    }

    [(UILabel *)self->_labelView alpha];
    if (v65 > 0.0)
    {
      [v37 addObject:self->_labelView];
    }

    [v38 addObject:self->_payWithPasscodeButton];
    ++v133[3];
    if (!self->_preventBiometricStateFallbacks)
    {
      v86 = self->_glyphView;
      v42 = v127;
      v127[0] = MEMORY[0x1E69E9820];
      v127[1] = 3221225472;
      v127[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_4;
      v127[3] = &unk_1E8010AD8;
      v127[4] = v36;
      [(PKGlyphView *)v86 setState:0 animated:animatedCopy completionHandler:v127];
LABEL_132:
      v58 = (v42 + 4);
LABEL_133:

      goto LABEL_134;
    }

    v36[2](v36);
  }

LABEL_134:
  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_9;
  v115[3] = &unk_1E80231B8;
  objc_copyWeak(&v119, &location);
  v88 = v37;
  v116 = v88;
  v71 = v17;
  v117 = v71;
  v120 = animatedCopy;
  v72 = v38;
  v118 = v72;
  v121 = v89;
  v73 = _Block_copy(v115);
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_10;
  v111[3] = &unk_1E8011828;
  objc_copyWeak(&v114, &location);
  v112 = v71;
  v113 = v91;
  v74 = _Block_copy(v111);
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v108[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_11;
  v108[3] = &unk_1E80110E0;
  objc_copyWeak(&v110, &location);
  v75 = v72;
  v109 = v75;
  v76 = _Block_copy(v108);
  ++v133[3];
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_12;
  v104[3] = &unk_1E80231E0;
  objc_copyWeak(v106, &location);
  v106[1] = stateTransitionIndex;
  v77 = v36;
  v105 = v77;
  v107 = animatedCopy;
  v78 = _Block_copy(v104);
  if (animatedCopy)
  {
    v79 = MEMORY[0x1E69DD250];
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_14;
    v99[3] = &unk_1E8023258;
    objc_copyWeak(v103, &location);
    v103[1] = stateTransitionIndex;
    v100 = v74;
    v101 = v76;
    v102 = v78;
    [v79 _animateUsingDefaultTimingWithOptions:0 animations:v73 completion:v99];

    objc_destroyWeak(v103);
  }

  else
  {
    v73[2](v73);
    v74[2](v74);
    v76[2](v76);
    v78[2](v78);
  }

  v77[2](v77);

  objc_destroyWeak(v106);
  objc_destroyWeak(&v110);

  objc_destroyWeak(&v114);
  objc_destroyWeak(&v119);

  objc_destroyWeak(v130);
  _Block_object_dispose(&v132, 8);
LABEL_138:
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v21 = v90;
  v80 = [v21 countByEnumeratingWithState:&v95 objects:v141 count:16];
  if (v80)
  {
    v81 = *v96;
    do
    {
      for (j = 0; j != v80; ++j)
      {
        if (*v96 != v81)
        {
          objc_enumerationMutation(v21);
        }

        (*(*(*(&v95 + 1) + 8 * j) + 16))();
      }

      v80 = [v21 countByEnumeratingWithState:&v95 objects:v141 count:16];
    }

    while (v80);
  }

  objc_destroyWeak(&location);
LABEL_146:
}

void __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[58] == *(a1 + 48))
    {
      v4 = *(*(a1 + 32) + 8);
      v5 = *(v4 + 24) - 1;
      *(v4 + 24) = v5;
      if (!v5)
      {
        if (*(a1 + 56) == 1)
        {
          *(WeakRetained + 488) = 0;
        }

        v6 = *(WeakRetained + 472);
        v7 = WeakRetained[74];
        v8 = WeakRetained[60];
        v9 = *(v3 + 473);
        *(v3 + 472) = 0;
        *(v3 + 473) = 0;
        v10 = v3[60];
        v3[60] = 0;

        if ([v3[62] count])
        {
          v11 = [v3[62] copy];
        }

        else
        {
          v11 = 0;
        }

        [v3[62] removeAllObjects];
        if ([v3[63] count])
        {
          v12 = [v3[63] copy];
        }

        else
        {
          v12 = 0;
        }

        [v3[63] removeAllObjects];
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v31;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v13);
              }

              (*(*(*(&v30 + 1) + 8 * i) + 16))();
            }

            v15 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
          }

          while (v15);
        }

        if (v6)
        {
          if (v9)
          {
            v18 = 0;
          }

          else
          {
            v18 = v8;
          }

          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_2;
          v28[3] = &unk_1E8011D28;
          v29 = v12;
          [v3 setState:v7 string:v18 animated:1 withCompletion:v28];
          if (v9)
          {
            [v3 setState:9 string:v8 animated:1];
          }

          v19 = v29;
        }

        else
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v19 = v12;
          v20 = [v19 countByEnumeratingWithState:&v24 objects:v34 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v25;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v25 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                (*(*(*(&v24 + 1) + 8 * j) + 16))(*(*(&v24 + 1) + 8 * j));
              }

              v21 = [v19 countByEnumeratingWithState:&v24 objects:v34 count:16];
            }

            while (v21);
          }
        }
      }
    }
  }
}

void __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_9(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v10 + 1) + 8 * v7++) setAlpha:{0.0, v10}];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    if (*(a1 + 40))
    {
      v8 = [WeakRetained[51] attributedText];
      if ((PKEqualObjects() & 1) != 0 || (*(a1 + 64) & 1) == 0)
      {
      }

      else
      {
        v9 = [*(a1 + 48) containsObject:WeakRetained[51]];

        if (v9)
        {
          [WeakRetained[51] setAlpha:0.0];
        }
      }
    }

    if (*(a1 + 65) == 1)
    {
      [WeakRetained updateConstraintsIfNeeded];
      [WeakRetained layoutIfNeeded];
    }
  }
}

void __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (*(a1 + 32))
    {
      [WeakRetained[51] setAttributedText:?];
      WeakRetained = v4;
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      [v4[53] setTitle:v3 forState:0];
      WeakRetained = v4;
    }
  }
}

void __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_11(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) setAlpha:{1.0, v8}];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

void __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[58] == *(a1 + 48))
    {
      (*(*(a1 + 32) + 16))();
      if (v3[74] == 1 && (*(v3 + 590) & 1) == 0)
      {
        v4 = dispatch_time(0, 1850000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_13;
        block[3] = &unk_1E801A2F0;
        objc_copyWeak(v6, (a1 + 40));
        v6[1] = *(a1 + 48);
        v7 = *(a1 + 56);
        dispatch_after(v4, MEMORY[0x1E69E96A0], block);
        objc_destroyWeak(v6);
      }
    }
  }
}

void __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[58] == *(a1 + 40) && WeakRetained[74] == 1)
  {
    v3 = WeakRetained;
    [WeakRetained setState:4 string:0 animated:*(a1 + 48)];
    WeakRetained = v3;
  }
}

void __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_14(id *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_15;
  block[3] = &unk_1E8023230;
  objc_copyWeak(v6, a1 + 7);
  v6[1] = a1[8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v6);
}

void __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 58) == *(a1 + 64))
  {
    (*(*(a1 + 32) + 16))();
    v4 = MEMORY[0x1E69DD250];
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_16;
    v6[3] = &unk_1E8023208;
    objc_copyWeak(v8, (a1 + 56));
    v8[1] = *(a1 + 64);
    v7 = *(a1 + 48);
    [v4 _animateUsingDefaultTimingWithOptions:0 animations:v5 completion:v6];

    objc_destroyWeak(v8);
  }
}

void __76__PKPaymentAuthorizationFooterView_setState_string_animated_withCompletion___block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[58] == *(a1 + 48))
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (void)_createSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  separatorView = self->_separatorView;
  self->_separatorView = v3;

  [(UIView *)self->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = self->_separatorView;
  v6 = PKAuthorizationSeparatorColor();
  [(UIView *)v5 setBackgroundColor:v6];

  [(PKPaymentAuthorizationFooterView *)self addSubview:self->_separatorView];
  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  lockupView = self->_lockupView;
  self->_lockupView = v7;

  [(UIView *)self->_lockupView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PKPaymentAuthorizationFooterView *)self addSubview:self->_lockupView];
  v9 = [objc_alloc(MEMORY[0x1E69BC758]) initWithStyle:1];
  glyphView = self->_glyphView;
  self->_glyphView = v9;

  [(PKGlyphView *)self->_glyphView setDelegate:self];
  [(PKGlyphView *)self->_glyphView updateRasterizationScale:PKUIScreenScale()];
  [(PKGlyphView *)self->_glyphView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PKGlyphView *)self->_glyphView setAlpha:0.0];
  [(UIView *)self->_lockupView addSubview:self->_glyphView];
  self->_emphasizedEdge = [(PKGlyphView *)self->_glyphView userIntentEdge];
  PKFloatRoundToPixel();
  v12 = v11;
  v13 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD00], *MEMORY[0x1E69DDC38]);
  [v13 lineHeight];
  PKFloatRoundToPixel();
  v25 = v14;
  v26 = xmmword_1BE0B69E0;
  v27 = vdupq_n_s64(2uLL);
  v15 = [[PKContinuousButton alloc] initWithConfiguration:&v25];
  payWithPasscodeButton = self->_payWithPasscodeButton;
  self->_payWithPasscodeButton = &v15->super;

  [(UIButton *)self->_payWithPasscodeButton setContentEdgeInsets:v12, 25.0, 16.0 - v12, 25.0];
  [(UIButton *)self->_payWithPasscodeButton addTarget:self action:sel__payWithPasscodePressed forControlEvents:64];
  [(UIButton *)self->_payWithPasscodeButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = self->_payWithPasscodeButton;
  v18 = [(PKPaymentAuthorizationFooterView *)self _payWithPasscodeTitleForState:self->_state];
  [(UIButton *)v17 setTitle:v18 forState:0];

  titleLabel = [(UIButton *)self->_payWithPasscodeButton titleLabel];
  [titleLabel setFont:v13];
  [titleLabel setLineBreakMode:4];
  [(UIButton *)self->_payWithPasscodeButton sizeToFit];
  [(UIButton *)self->_payWithPasscodeButton setAlpha:0.0];
  [(PKPaymentAuthorizationFooterView *)self addSubview:self->_payWithPasscodeButton];
  v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  labelView = self->_labelView;
  self->_labelView = v20;

  [(UILabel *)self->_labelView setAlpha:0.0];
  [(UILabel *)self->_labelView setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = self->_labelView;
  v23 = PKLocalizedPaymentString(&cfstr_InAppPaymentTo.isa);
  v24 = [(PKPaymentAuthorizationFooterView *)self _titleLabelAttributedString:v23];
  [(UILabel *)v22 setAttributedText:v24];

  [(UILabel *)self->_labelView setOpaque:0];
  [(UILabel *)self->_labelView setAdjustsFontSizeToFitWidth:1];
  [(UIView *)self->_lockupView addSubview:self->_labelView];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v6.receiver = self;
  v6.super_class = PKPaymentAuthorizationFooterView;
  [(PKPaymentAuthorizationFooterView *)&v6 setHidden:?];
  if (hiddenCopy)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_staticRegularConstraints];
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_dynamicRegularConstraints];
    v5 = &OBJC_IVAR___PKPaymentAuthorizationFooterView__hiddenConstraints;
  }

  else
  {
    if (self->_constraintState != self->_queuedConstraintState || self->_constraintsDirty)
    {
      [(PKPaymentAuthorizationFooterView *)self setNeedsUpdateConstraints];
      [(PKPaymentAuthorizationFooterView *)self updateConstraintsIfNeeded];
    }

    v5 = &OBJC_IVAR___PKPaymentAuthorizationFooterView__dynamicRegularConstraints;
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_hiddenConstraints];
    [MEMORY[0x1E696ACD8] activateConstraints:self->_staticRegularConstraints];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:*(&self->super.super.super.isa + *v5)];
}

- (void)setHidesSeparatorView:(BOOL)view
{
  if (self->_hidesSeparatorView == !view)
  {
    self->_hidesSeparatorView = view;
    [(UIView *)self->_separatorView setHidden:?];
  }
}

- (id)createDefaultHeightConstraintForConstraintState:(int64_t)state
{
  if (state >= 2)
  {
    if (state == 2)
    {
      heightAnchor = [(PKPaymentAuthorizationFooterView *)self heightAnchor];
      bottomAnchor = heightAnchor;
      v8 = 0.0;
      goto LABEL_15;
    }

    return 0;
  }

  else
  {
    if ([(PKPaymentAuthorizationLayout *)self->_layout style])
    {
      if (state != 1)
      {
        v12 = 0.0;
        if (!self->_compact)
        {
          v13 = PKPaymentAuthorizationFooterViewFontForAuthorizationLayoutStyle([(PKPaymentAuthorizationLayout *)self->_layout style]);
          [v13 _bodyLeading];
          v12 = v14;
        }

        bottomAnchor = [(PKPaymentAuthorizationFooterView *)self bottomAnchor];
        lastBaselineAnchor = [(UILabel *)self->_labelView lastBaselineAnchor];
        v9 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:v12];

        goto LABEL_16;
      }

      if (self->_compact)
      {
        v5 = 101.0;
      }

      else
      {
        v5 = fmax(self->_minimumHeight, 101.0);
      }

      heightAnchor = [(PKPaymentAuthorizationFooterView *)self heightAnchor];
      bottomAnchor = heightAnchor;
      v8 = v5;
LABEL_15:
      v9 = [heightAnchor constraintEqualToConstant:v8];
LABEL_16:

      return v9;
    }

    heightAnchor2 = [(PKPaymentAuthorizationFooterView *)self heightAnchor];
    v9 = [heightAnchor2 constraintEqualToConstant:201.0];

    LODWORD(v11) = 1144750080;
    [v9 setPriority:v11];
  }

  return v9;
}

- (void)updateConstraints
{
  v28.receiver = self;
  v28.super_class = PKPaymentAuthorizationFooterView;
  [(PKPaymentAuthorizationFooterView *)&v28 updateConstraints];
  if (([(PKPaymentAuthorizationFooterView *)self isHidden]& 1) != 0)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained authorizationFooterViewWillChangeConstraints:self];
  }

  self->_constraintsDirty = 0;
  queuedConstraintState = self->_queuedConstraintState;
  if (self->_constraintState != queuedConstraintState)
  {
    self->_constraintState = queuedConstraintState;
    if (queuedConstraintState == 1 && self->_isPad)
    {
      [(PKPaymentAuthorizationFooterView *)self frame];
      self->_minimumHeight = fmax(v5, self->_minimumHeight);
    }

    else
    {
      self->_minimumHeight = 0.0;
    }
  }

  if ([(NSMutableArray *)self->_dynamicRegularConstraints count])
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_dynamicRegularConstraints];
    [(NSMutableArray *)self->_dynamicRegularConstraints removeAllObjects];
  }

  if (![(PKPaymentAuthorizationLayout *)self->_layout shouldSuppressTotal]|| (v6 = 0.0, !self->_occludesBodyView))
  {
    [(PKPaymentAuthorizationLayout *)self->_layout contentHorizontalMargin];
    v6 = v7;
  }

  separatorLeftConstraint = self->_separatorLeftConstraint;
  if (separatorLeftConstraint)
  {
    [(NSLayoutConstraint *)separatorLeftConstraint setConstant:v6];
  }

  else
  {
    leftAnchor = [(UIView *)self->_separatorView leftAnchor];
    leftAnchor2 = [(PKPaymentAuthorizationFooterView *)self leftAnchor];
    v11 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v6];
    v12 = self->_separatorLeftConstraint;
    self->_separatorLeftConstraint = v11;
  }

  [(NSMutableArray *)self->_dynamicRegularConstraints addObject:self->_separatorLeftConstraint];
  compact = self->_compact;
  dynamicRegularConstraints = self->_dynamicRegularConstraints;
  bottomAnchor = [(UIView *)self->_lockupView bottomAnchor];
  labelView = self->_labelView;
  if (compact)
  {
    [(UILabel *)labelView lastBaselineAnchor];
  }

  else
  {
    [(UILabel *)labelView bottomAnchor];
  }
  v17 = ;
  v18 = [bottomAnchor constraintEqualToAnchor:v17];
  [(NSMutableArray *)dynamicRegularConstraints addObject:v18];

  v19 = self->_dynamicRegularConstraints;
  v20 = [(PKPaymentAuthorizationFooterView *)self createDefaultHeightConstraintForConstraintState:self->_constraintState];
  [(NSMutableArray *)v19 addObject:v20];

  v21 = self->_queuedConstraintState;
  if (!v21 || v21 == 2)
  {
    v22 = self->_dynamicRegularConstraints;
    payWithPasscodeButton = self->_payWithPasscodeButton;
    goto LABEL_26;
  }

  if (v21 == 1)
  {
    v22 = self->_dynamicRegularConstraints;
    payWithPasscodeButton = self->_payWithPasscodeButton;
    if (self->_compact)
    {
      topAnchor = [(UIButton *)payWithPasscodeButton topAnchor];
      topAnchor2 = [(PKPaymentAuthorizationFooterView *)self topAnchor];
      v26 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:34.0];
LABEL_27:
      v27 = v26;
      [(NSMutableArray *)v22 addObject:v26];

      goto LABEL_28;
    }

LABEL_26:
    topAnchor = [(UIButton *)payWithPasscodeButton centerYAnchor];
    topAnchor2 = [(PKPaymentAuthorizationFooterView *)self centerYAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    goto LABEL_27;
  }

LABEL_28:
  [MEMORY[0x1E696ACD8] activateConstraints:self->_dynamicRegularConstraints];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained authorizationFooterViewDidChangeConstraints:self];
  }
}

- (void)_prepareConstraints
{
  v43[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_separatorView attribute:2 relatedBy:0 toItem:self attribute:2 multiplier:1.0 constant:0.0];
  [v3 addObject:v4];

  v5 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_separatorView attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
  [v3 addObject:v5];

  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_separatorView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:PKUIPixelLength()];
  [v3 addObject:v6];

  v7 = PKPaymentAuthorizationFooterViewFontForAuthorizationLayoutStyle([(PKPaymentAuthorizationLayout *)self->_layout style]);
  [v7 _bodyLeading];

  leadingAnchor = [(UIView *)self->_lockupView leadingAnchor];
  leadingAnchor2 = [(PKPaymentAuthorizationFooterView *)self leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v3 addObject:v10];

  trailingAnchor = [(UIView *)self->_lockupView trailingAnchor];
  trailingAnchor2 = [(PKPaymentAuthorizationFooterView *)self trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v3 addObject:v13];

  topAnchor = [(UIView *)self->_lockupView topAnchor];
  topAnchor2 = [(PKPaymentAuthorizationFooterView *)self topAnchor];
  PKFloatRoundToPixel();
  v16 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:?];
  [v3 addObject:v16];

  centerYAnchor = [(UIView *)self->_lockupView centerYAnchor];
  centerYAnchor2 = [(PKPaymentAuthorizationFooterView *)self centerYAnchor];
  v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  LODWORD(v20) = 1144750080;
  [v19 setPriority:v20];
  [v3 addObject:v19];
  v21 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_glyphView attribute:9 relatedBy:0 toItem:self->_lockupView attribute:9 multiplier:1.0 constant:0.0];
  [v3 addObject:v21];

  v22 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_glyphView attribute:3 relatedBy:0 toItem:self->_lockupView attribute:3 multiplier:1.0 constant:0.0];
  [v3 addObject:v22];

  v23 = MEMORY[0x1E696ACD8];
  glyphView = self->_glyphView;
  [(PKPaymentAuthorizationLayout *)self->_layout glyphDimension];
  v26 = [v23 constraintWithItem:glyphView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v25];
  [v3 addObject:v26];

  v27 = MEMORY[0x1E696ACD8];
  v28 = self->_glyphView;
  [(PKPaymentAuthorizationLayout *)self->_layout glyphDimension];
  v30 = [v27 constraintWithItem:v28 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v29];
  [v3 addObject:v30];

  v31 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_payWithPasscodeButton attribute:9 relatedBy:0 toItem:self->_lockupView attribute:9 multiplier:1.0 constant:0.0];
  [v3 addObject:v31];

  v32 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_payWithPasscodeButton attribute:7 relatedBy:-1 toItem:self attribute:7 multiplier:1.0 constant:-20.0];
  [v3 addObject:v32];

  if ([(PKPaymentAuthorizationLayout *)self->_layout style])
  {
    PKFloatRoundToPixel();
    v34 = v33;
  }

  else
  {
    v34 = 30.0;
  }

  v35 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_labelView attribute:5 relatedBy:0 toItem:self->_lockupView attribute:5 multiplier:1.0 constant:0.0];
  [v3 addObject:v35];

  v36 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_labelView attribute:6 relatedBy:0 toItem:self->_lockupView attribute:6 multiplier:1.0 constant:0.0];
  [v3 addObject:v36];

  v37 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_labelView attribute:12 relatedBy:0 toItem:self->_glyphView attribute:4 multiplier:1.0 constant:v34];
  [v3 addObject:v37];

  v38 = [v3 copy];
  staticRegularConstraints = self->_staticRegularConstraints;
  self->_staticRegularConstraints = v38;

  v40 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
  v43[0] = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  hiddenConstraints = self->_hiddenConstraints;
  self->_hiddenConstraints = v41;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_staticRegularConstraints];
  [(PKPaymentAuthorizationFooterView *)self setNeedsUpdateConstraints];
}

- (id)_titleLabelAttributedString:(id)string
{
  v16[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7C8];
  stringCopy = string;
  defaultParagraphStyle = [v4 defaultParagraphStyle];
  v7 = [defaultParagraphStyle mutableCopy];

  [v7 setAlignment:1];
  v15[0] = *MEMORY[0x1E69DB648];
  v8 = PKPaymentAuthorizationFooterViewFontForAuthorizationLayoutStyle([(PKPaymentAuthorizationLayout *)self->_layout style]);
  v9 = *MEMORY[0x1E69DB688];
  v16[0] = v8;
  v16[1] = v7;
  v10 = *MEMORY[0x1E69DB650];
  v15[1] = v9;
  v15[2] = v10;
  v11 = PKAuthorizationViewValueLabelColor();
  v16[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy attributes:v12];

  return v13;
}

- (id)_titleAttributedStringForState:(int64_t)state
{
  v4 = 0;
  if (state > 6)
  {
    if (state <= 9)
    {
      if (state != 7)
      {
        if (state != 8)
        {
          if (self->_state == 1)
          {
            goto LABEL_48;
          }

          v5 = @"IN_APP_PAYMENT_TRY_AGAIN";
          goto LABEL_45;
        }

        if (!self->_hasPearl)
        {
          goto LABEL_48;
        }

LABEL_33:
        v6 = @"GENERIC_PEARL";
        goto LABEL_34;
      }

      v6 = @"POSE_OUT_OF_RANGE_DOWN_INSTRUCTION";
      goto LABEL_34;
    }

    if (state == 10)
    {
      goto LABEL_44;
    }

    if (state != 11)
    {
      if (state != 12)
      {
        goto LABEL_49;
      }

      v5 = @"IN_APP_PAYMENT_AUTHORIZED";
      goto LABEL_45;
    }

    authorizingTitle = self->_authorizingTitle;
    if (authorizingTitle)
    {
LABEL_36:
      v9 = authorizingTitle;
      goto LABEL_47;
    }

    requestType = self->_requestType;
    if (requestType == 3)
    {
LABEL_44:
      v5 = @"IN_APP_PAYMENT_PROCESSING";
    }

    else
    {
      if (requestType == 4)
      {
        v10 = PKLocalizedFeatureString();
        goto LABEL_46;
      }

      v5 = @"IN_APP_PAYMENT_AUTHORIZING";
    }

LABEL_45:
    v10 = PKLocalizedPaymentString(&v5->isa);
LABEL_46:
    v9 = v10;
    if (v10)
    {
      goto LABEL_47;
    }

LABEL_48:
    v4 = 0;
    goto LABEL_49;
  }

  if (state > 2)
  {
    if (state != 3)
    {
      if (state != 5)
      {
        if (state != 6)
        {
          goto LABEL_49;
        }

        v6 = @"CAMERA_OBSCURED_FOOTER_INSTRUCTION";
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    if (self->_queuedConstraintState == 2)
    {
      v9 = @" ";
LABEL_47:
      v4 = [(PKPaymentAuthorizationFooterView *)self _titleLabelAttributedString:v9];

      goto LABEL_49;
    }

    userIntentStyle = self->_userIntentStyle;
    switch(userIntentStyle)
    {
      case 1:
        if (self->_isPad)
        {
          if (self->_emphasizedEdge == 1)
          {
            v6 = @"IN_APP_PAYMENT_PUSH_BUTTON_SECONDARY_PAD_TOP";
          }

          else
          {
            v6 = @"IN_APP_PAYMENT_PUSH_BUTTON_SECONDARY_PAD";
          }
        }

        else
        {
          v6 = @"IN_APP_PAYMENT_PUSH_BUTTON_SECONDARY";
        }

        break;
      case 3:
        v6 = @"ACCESSIBILITY_PUSH_BUTTON_SWITCH_CONTROL";
        break;
      case 2:
        v6 = @"ACCESSIBILITY_PUSH_BUTTON_ASSISTIVE_TOUCH";
        break;
      default:
        goto LABEL_48;
    }

LABEL_34:
    v10 = PKLocalizedPearlString(&v6->isa);
    goto LABEL_46;
  }

  switch(state)
  {
    case 0:
      goto LABEL_20;
    case 1:
      v6 = @"GENERIC_PEARL_FAILURE";
      goto LABEL_34;
    case 2:
LABEL_20:
      if (!PKPearlIsAvailable())
      {
        authorizingTitle = self->_biometricConfirmationTitle;
        if (!authorizingTitle)
        {
          v4 = 0;
          confirmationStyle = self->_confirmationStyle;
          if (confirmationStyle <= 3)
          {
            if (confirmationStyle > 1)
            {
              if (confirmationStyle == 2)
              {
                v5 = @"IN_APP_PAYMENT_GET_WITH_TOUCH_ID";
              }

              else
              {
                v5 = @"IN_APP_PAYMENT_INSTALL_WITH_TOUCH_ID";
              }
            }

            else if (confirmationStyle)
            {
              if (confirmationStyle != 1)
              {
                break;
              }

              v5 = @"IN_APP_PAYMENT_CONFIRM_WITH_TOUCH_ID";
            }

            else
            {
              v5 = @"IN_APP_PAYMENT_TOUCH_ID";
            }
          }

          else if (confirmationStyle <= 5)
          {
            if (confirmationStyle == 4)
            {
              v5 = @"IN_APP_PAYMENT_RENT_WITH_TOUCH_ID";
            }

            else
            {
              v5 = @"IN_APP_PAYMENT_REDEEM_WITH_TOUCH_ID";
            }
          }

          else
          {
            switch(confirmationStyle)
            {
              case 6:
                v5 = @"IN_APP_PAYMENT_ADD_WITH_TOUCH_ID";
                break;
              case 7:
                v5 = @"IN_APP_PAYMENT_SUBSCRIBE_WITH_TOUCH_ID";
                break;
              case 8:
                v5 = @"IN_APP_PAYMENT_SUBSCRIBE_AND_INSTALL_WITH_TOUCH_ID";
                break;
              default:
                goto LABEL_49;
            }
          }

          goto LABEL_45;
        }

        goto LABEL_36;
      }

      goto LABEL_33;
  }

LABEL_49:

  return v4;
}

- (id)_payWithPasscodeTitleForState:(int64_t)state
{
  confirmationTitle = self->_confirmationTitle;
  if (confirmationTitle)
  {
    v4 = confirmationTitle;
    goto LABEL_27;
  }

  confirmationStyle = self->_confirmationStyle;
  if (confirmationStyle > 4)
  {
    if (confirmationStyle <= 6)
    {
      if (confirmationStyle == 5)
      {
        v6 = @"IN_APP_PAYMENT_STORE_REDEEM";
      }

      else
      {
        v6 = @"IN_APP_PAYMENT_STORE_ADD";
      }

      goto LABEL_26;
    }

    switch(confirmationStyle)
    {
      case 7:
        v6 = @"IN_APP_PAYMENT_STORE_SUBSCRIBE";
        goto LABEL_26;
      case 8:
        v6 = @"IN_APP_PAYMENT_STORE_SUBSCRIBE_AND_INSTALL";
        goto LABEL_26;
      case 9:
        v4 = 0;
        goto LABEL_27;
    }

    goto LABEL_20;
  }

  if (confirmationStyle > 1)
  {
    if (confirmationStyle == 2)
    {
      v6 = @"IN_APP_PAYMENT_STORE_GET";
    }

    else if (confirmationStyle == 3)
    {
      v6 = @"IN_APP_PAYMENT_STORE_INSTALL";
    }

    else
    {
      v6 = @"IN_APP_PAYMENT_STORE_RENT";
    }

    goto LABEL_26;
  }

  if (!confirmationStyle)
  {
    if ([(PKPaymentAuthorizationLayout *)self->_layout isAMPPayment])
    {
      v6 = @"IN_APP_PAYMENT_STORE_PURCHASE";
      goto LABEL_26;
    }

LABEL_20:
    v6 = @"IN_APP_PAYMENT_PAY_WITH_PASSCODE";
    goto LABEL_26;
  }

  if (confirmationStyle != 1)
  {
    goto LABEL_20;
  }

  v6 = @"IN_APP_PAYMENT_STORE_CONFIRM";
LABEL_26:
  v4 = PKLocalizedPaymentString(&v6->isa);
LABEL_27:

  return v4;
}

- (void)glyphView:(id)view revealingCheckmark:(BOOL)checkmark
{
  if (self->_state == 12)
  {
    v5 = [(PKPaymentAuthorizationFooterView *)self window:view];

    if (v5)
    {
      kdebug_trace();
      completionStyle = self->_completionStyle;
      if (completionStyle)
      {
        if (completionStyle != 1)
        {
          return;
        }

        v7 = 1275;
      }

      else
      {
        v7 = 1394;
      }

      AudioServicesPlaySystemSound(v7);
    }
  }
}

- (void)glyphViewUserIntentEdgeDidChange:(id)change
{
  userIntentEdge = [change userIntentEdge];
  if (self->_emphasizedEdge != userIntentEdge)
  {
    self->_emphasizedEdge = userIntentEdge;
    if (self->_isPad)
    {
      state = self->_state;
      overrideString = self->_overrideString;

      [(PKPaymentAuthorizationFooterView *)self setState:state string:overrideString animated:1];
    }
  }
}

- (void)_payWithPasscodePressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationFooterViewPasscodeButtonPressed:self];
}

- (PKPaymentAuthorizationFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end