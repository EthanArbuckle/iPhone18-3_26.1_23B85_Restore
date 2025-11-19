@interface _UITextOption
+ (double)baseSymbolSize;
- (CGSize)intrinsicContentSize;
- (CGSize)secureCandidateSize;
- (NSDirectionalEdgeInsets)contentInsetsForType:(int64_t)a3 dividerWidth:(double)a4;
- (NSDirectionalEdgeInsets)currentEdgeInsets;
- (_UITextOption)initWithTitle:(id)a3 type:(int64_t)a4 optionalTintColor:(id)a5;
- (double)insetMultiplierForContentSizeCategory:(id)a3;
- (double)leadingSpace;
- (id)buttonImage;
- (id)createSelectionVibrancyView;
- (id)fontForLabel;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)imageName;
- (id)textToUse;
- (id)viewForLastBaselineLayout;
- (void)_outermostLayerDidChange:(id)a3;
- (void)setLightingEffectEnabled:(BOOL)a3 atPosition:(int64_t)a4;
- (void)setState:(unint64_t)a3;
- (void)showSeparator:(BOOL)a3;
- (void)updateContentView;
- (void)updateSourceCandidate:(id)a3 secureCandidateHeight:(double)a4;
- (void)updateText:(id)a3 type:(int64_t)a4;
@end

@implementation _UITextOption

- (_UITextOption)initWithTitle:(id)a3 type:(int64_t)a4 optionalTintColor:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _UITextOption;
  v11 = [(UIView *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_textChoice, a3);
    v12->_type = a4;
    v12->_state = 0;
    v12->_optionalTintColor = v10;
    [(_UITextOption *)v12 updateContentView];
  }

  return v12;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(UIView *)self pointInside:v7 withEvent:x, y])
  {
    v8 = self;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _UITextOption;
    v8 = [(UIView *)&v11 hitTest:v7 withEvent:x, y];
  }

  v9 = v8;

  return v9;
}

- (void)showSeparator:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UITextOption *)self lineView];
  [v4 setHidden:!v3];
}

- (id)viewForLastBaselineLayout
{
  v2 = self;
  if ([(_UITextOption *)self type]== 2 || [(_UITextOption *)v2 type]== 3 || [(_UITextOption *)v2 type]== 4)
  {
    v3 = &OBJC_IVAR____UITextOption__contentsLabel;
LABEL_5:
    v2 = *(&v2->super.super.super.isa + *v3);
    goto LABEL_6;
  }

  if (![(_UITextOption *)v2 type]|| [(_UITextOption *)v2 type]== 1 || [(_UITextOption *)v2 type]== 5)
  {
    v3 = &OBJC_IVAR____UITextOption__symbolImageView;
    goto LABEL_5;
  }

LABEL_6:

  return v2;
}

- (double)leadingSpace
{
  [(_UITextOption *)self currentEdgeInsets];
  if (v3 <= 0.0)
  {
    [(_UITextOption *)self contentInsetsForType:[(_UITextOption *)self type] dividerWidth:1.0];
  }

  else
  {
    [(_UITextOption *)self currentEdgeInsets];
  }

  return v4;
}

- (void)setLightingEffectEnabled:(BOOL)a3 atPosition:(int64_t)a4
{
  if (a3)
  {
    v6 = [(UIView *)self traitCollection];
    v7 = [(_UITextOption *)self contentsLabel];
    v8 = [v7 textColor];
    v9 = [v8 resolvedColorWithTraitCollection:v6];

    v10 = +[_UIColorPalette intelligenceAmbientPalette];
    v11 = [v10 colors];
    v12 = [v11 mutableCopy];

    [v12 insertObject:v9 atIndex:0];
    [v12 addObject:v9];
    v13 = [[_UIColorPalette alloc] initWithColors:v12 locations:&unk_1EFE2BEC0 colorSpaceName:0];
    v14 = [[_UIDirectionalLightConfiguration alloc] initWithColorPalette:v13];
    [(_UIDirectionalLightConfiguration *)v14 setDirection:0];
    [(_UIDirectionalLightConfiguration *)v14 setDuration:2.0];
    [(TUIGradientView *)self->_contentsLabelEffectView setLightConfiguration:v14];
    v15 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E0]];
    v16 = [(UIView *)self->_contentsLabel _outermostLayer];
    [v16 setCompositingFilter:v15];

    v17 = dispatch_time(0, ((a4 * 0.625) * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53___UITextOption_setLightingEffectEnabled_atPosition___block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_after(v17, MEMORY[0x1E69E96A0], block);
    [(_UITextOption *)self updateContentView];
  }

  else
  {
    [(TUIGradientView *)self->_contentsLabelEffectView setLightConfiguration:0, a4];
    v18 = [(UIView *)self->_contentsLabel _outermostLayer];
    [v18 setCompositingFilter:0];
  }
}

- (NSDirectionalEdgeInsets)contentInsetsForType:(int64_t)a3 dividerWidth:(double)a4
{
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v7 = a4 + 26.0;
      v8 = 5.0;
      v5 = 14.0;
      goto LABEL_11;
    }

    if (a3 != 7)
    {
      goto LABEL_8;
    }

LABEL_7:
    v5 = 14.0;
    v7 = a4 + 14.0;
    v8 = 5.0;
LABEL_11:
    v6 = 6.0;
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    goto LABEL_7;
  }

  if (a3 == 3)
  {
    v5 = 8.0;
    v6 = 3.0;
    v7 = 0.0;
    v8 = 3.0;
    goto LABEL_12;
  }

LABEL_8:
  if (a3 >= 2)
  {
    v17 = a3 - 5;
    v7 = 0.0;
    if ((a3 - 5) <= 3)
    {
      v6 = dbl_18A67B808[v17];
      v5 = dbl_18A67B7E8[v17];
      v8 = v6;
      goto LABEL_12;
    }

    v6 = 0.0;
    v5 = 0.0;
  }

  else
  {
    v5 = 23.0;
    v7 = 0.0;
    v6 = 0.0;
  }

  v8 = 0.0;
LABEL_12:
  v9 = [(UIView *)self traitCollection];
  v10 = [v9 preferredContentSizeCategory];
  [(_UITextOption *)self insetMultiplierForContentSizeCategory:v10];
  v12 = v11;

  if (v12 <= 1.0)
  {
    v13 = v7;
  }

  else
  {
    v13 = v7 * v12;
  }

  v14 = v5 * fmax(v12, 1.0);
  v15 = v8;
  v16 = v6;
  result.trailing = v13;
  result.bottom = v16;
  result.leading = v14;
  result.top = v15;
  return result;
}

- (double)insetMultiplierForContentSizeCategory:(id)a3
{
  v3 = a3;
  if (qword_1ED49B2E0 != -1)
  {
    dispatch_once(&qword_1ED49B2E0, &__block_literal_global_244);
  }

  v4 = [_MergedGlobals_29_1 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  return v7;
}

- (id)createSelectionVibrancyView
{
  v23[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(UIView);
  v3 = +[UIColor blackColor];
  [(UIView *)v2 setBackgroundColor:v3];

  v4 = [UIBlurEffect effectWithStyle:9];
  v22 = [UIVibrancyEffect effectForBlurEffect:v4 style:6];

  v5 = [[UIVisualEffectView alloc] initWithEffect:v22];
  [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(UIVisualEffectView *)v5 contentView];
  [v6 addSubview:v2];

  [(UIView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = MEMORY[0x1E69977A0];
  v21 = [(UIView *)v2 leadingAnchor];
  v20 = [(UIView *)v5 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v23[0] = v19;
  v18 = [(UIView *)v2 trailingAnchor];
  v17 = [(UIView *)v5 trailingAnchor];
  v7 = [v18 constraintEqualToAnchor:v17];
  v23[1] = v7;
  v8 = [(UIView *)v2 topAnchor];
  v9 = [(UIView *)v5 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v23[2] = v10;
  v11 = [(UIView *)v2 bottomAnchor];
  v12 = [(UIView *)v5 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v23[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v16 activateConstraints:v14];

  return v5;
}

- (void)updateContentView
{
  v279[4] = *MEMORY[0x1E69E9840];
  if (!self->_selectionVibrancyView)
  {
    v3 = [(_UITextOption *)self createSelectionVibrancyView];
    selectionVibrancyView = self->_selectionVibrancyView;
    self->_selectionVibrancyView = v3;

    [(UIView *)self addSubview:self->_selectionVibrancyView];
    if ([(_UITextOption *)self type]== 1 || (v5 = 0.0, ![(_UITextOption *)self type]))
    {
      v5 = 4.0;
    }

    v231 = MEMORY[0x1E69977A0];
    v258 = [(UIView *)self->_selectionVibrancyView leadingAnchor];
    v256 = [(UIView *)self leadingAnchor];
    v249 = [v258 constraintEqualToAnchor:v256];
    v279[0] = v249;
    v243 = [(UIView *)self->_selectionVibrancyView trailingAnchor];
    v237 = [(UIView *)self trailingAnchor];
    v6 = [v243 constraintEqualToAnchor:v237 constant:v5];
    v279[1] = v6;
    v7 = [(UIView *)self->_selectionVibrancyView topAnchor];
    v8 = [(UIView *)self topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v279[2] = v9;
    v10 = [(UIView *)self->_selectionVibrancyView bottomAnchor];
    v11 = [(UIView *)self bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v279[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v279 count:4];
    [v231 activateConstraints:v13];

    [(UIView *)self->_selectionVibrancyView setHidden:[(_UITextOption *)self selectionVisibilityForState:self->_state]^ 1];
  }

  [(UIView *)self->_contentsLabel setHidden:1];
  [(UIImageView *)self->_symbolImageView setHidden:1];
  [(UIView *)self->_secureCandidateLabel setHidden:1];
  v14 = [(_UITextOption *)self type]== 6;
  v15 = [(_UITextOption *)self type];
  v16 = v15;
  if (v14)
  {
    [(_UITextOption *)self contentInsetsForType:v15 dividerWidth:0.0];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    if (!self->_secureCandidateLabel)
    {
      v25 = [UIView alloc];
      v26 = [(UIView *)v25 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      secureCandidateLabel = self->_secureCandidateLabel;
      self->_secureCandidateLabel = v26;

      v28 = [objc_opt_self() mainScreen];
      [v28 scale];
      v30 = v29;
      v31 = [(UIView *)self->_secureCandidateLabel layer];
      [v31 setContentsScale:v30];

      v32 = [objc_opt_self() mainScreen];
      [v32 scale];
      v34 = v33;
      v35 = [(UIView *)self->_secureCandidateLabel layer];
      [v35 setRasterizationScale:v34];

      v36 = [(UIView *)self->_secureCandidateLabel layer];
      [v36 setContentsGravity:*MEMORY[0x1E6979DD0]];

      [(UIView *)self->_secureCandidateLabel setUserInteractionEnabled:0];
      [(UIView *)self->_secureCandidateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self addSubview:self->_secureCandidateLabel];
      v232 = MEMORY[0x1E69977A0];
      v259 = [(UIView *)self->_secureCandidateLabel topAnchor];
      v257 = [(UIView *)self topAnchor];
      v250 = [v259 constraintEqualToAnchor:v257 constant:v18];
      v278[0] = v250;
      v244 = [(UIView *)self->_secureCandidateLabel leadingAnchor];
      v238 = [(UIView *)self leadingAnchor];
      v37 = [v244 constraintEqualToAnchor:v238 constant:v20];
      v278[1] = v37;
      v38 = [(UIView *)self bottomAnchor];
      v39 = [(UIView *)self->_secureCandidateLabel bottomAnchor];
      v40 = [v38 constraintEqualToAnchor:v39 constant:v22];
      v278[2] = v40;
      v41 = [(UIView *)self trailingAnchor];
      v42 = [(UIView *)self->_secureCandidateLabel trailingAnchor];
      v43 = [v41 constraintEqualToAnchor:v42 constant:v24];
      v278[3] = v43;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v278 count:4];
      [v232 activateConstraints:v44];
    }

    v45 = MEMORY[0x1E6979320];
    v46 = [(_UITextOption *)self sourceCandidate];
    v47 = [v45 objectForSlot:{objc_msgSend(v46, "slotID")}];
    v48 = [(UIView *)self->_secureCandidateLabel layer];
    [v48 setContents:v47];

    [(UIView *)self->_secureCandidateLabel setHidden:0];
  }

  else if (v15 == 2 || [(_UITextOption *)self type]== 3 || [(_UITextOption *)self type]== 4 || [(_UITextOption *)self type]== 7 || [(_UITextOption *)self type]== 8)
  {
    [(_UITextOption *)self contentInsetsForType:[(_UITextOption *)self type] dividerWidth:1.0];
    v18 = v49;
    v20 = v50;
    v22 = v51;
    v24 = v52;
    if (self->_contentsLabel)
    {
      v53 = [(_UITextOption *)self insetConstraints];
      if (v53)
      {
        v54 = [(_UITextOption *)self insetConstraints];
        v55 = [v54 count] == 8;

        if (v55)
        {
          v56 = [(_UITextOption *)self insetConstraints];
          v57 = [v56 objectAtIndexedSubscript:0];
          [v57 setConstant:v18];

          v58 = [(_UITextOption *)self insetConstraints];
          v59 = [v58 objectAtIndexedSubscript:1];
          [v59 setConstant:v20];

          v60 = [(_UITextOption *)self insetConstraints];
          v61 = [v60 objectAtIndexedSubscript:2];
          [v61 setConstant:v22];

          v62 = [(_UITextOption *)self insetConstraints];
          v63 = [v62 objectAtIndexedSubscript:3];
          [v63 setConstant:v24];
        }
      }
    }

    else
    {
      if (!self->_contentsLabelEffectView)
      {
        v264 = 0;
        v265 = &v264;
        v266 = 0x2050000000;
        v64 = qword_1ED49B2F8;
        v267 = qword_1ED49B2F8;
        if (!qword_1ED49B2F8)
        {
          v263[0] = MEMORY[0x1E69E9820];
          v263[1] = 3221225472;
          v263[2] = __getTUIGradientViewClass_block_invoke;
          v263[3] = &unk_1E70F2F20;
          v263[4] = &v264;
          __getTUIGradientViewClass_block_invoke(v263);
          v64 = v265[3];
        }

        v65 = v64;
        _Block_object_dispose(&v264, 8);
        v66 = [v64 alloc];
        v67 = [v66 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        contentsLabelEffectView = self->_contentsLabelEffectView;
        self->_contentsLabelEffectView = v67;

        [(TUIGradientView *)self->_contentsLabelEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIView *)self addSubview:self->_contentsLabelEffectView];
      }

      v69 = objc_alloc_init(UILabel);
      contentsLabel = self->_contentsLabel;
      self->_contentsLabel = v69;

      [(UIView *)self->_contentsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)self->_contentsLabel setTextAlignment:1];
      [(UIView *)self->_contentsLabel _registerMultiLayerDelegate:?];
      [(TUIGradientView *)self->_contentsLabelEffectView addSubview:self->_contentsLabel];
      v71 = [(_UITextOption *)self insetConstraints];

      if (v71)
      {
        v72 = MEMORY[0x1E69977A0];
        v73 = [(_UITextOption *)self insetConstraints];
        [v72 deactivateConstraints:v73];
      }

      v251 = [(TUIGradientView *)self->_contentsLabelEffectView topAnchor];
      v245 = [(UIView *)self topAnchor];
      v239 = [v251 constraintEqualToAnchor:v245 constant:v18];
      v277[0] = v239;
      v233 = [(TUIGradientView *)self->_contentsLabelEffectView leadingAnchor];
      v227 = [(UIView *)self leadingAnchor];
      v223 = [v233 constraintEqualToAnchor:v227 constant:v20];
      v277[1] = v223;
      v219 = [(UIView *)self bottomAnchor];
      v215 = [(TUIGradientView *)self->_contentsLabelEffectView bottomAnchor];
      v211 = [v219 constraintEqualToAnchor:v215 constant:v22];
      v277[2] = v211;
      v208 = [(UIView *)self trailingAnchor];
      v206 = [(TUIGradientView *)self->_contentsLabelEffectView trailingAnchor];
      v204 = [v208 constraintEqualToAnchor:v206 constant:v24];
      v277[3] = v204;
      v202 = [(UIView *)self->_contentsLabel topAnchor];
      v200 = [(TUIGradientView *)self->_contentsLabelEffectView topAnchor];
      v198 = [v202 constraintEqualToAnchor:v200];
      v277[4] = v198;
      v196 = [(UIView *)self->_contentsLabel leadingAnchor];
      v74 = [(TUIGradientView *)self->_contentsLabelEffectView leadingAnchor];
      v75 = [v196 constraintEqualToAnchor:v74];
      v277[5] = v75;
      v76 = [(TUIGradientView *)self->_contentsLabelEffectView bottomAnchor];
      v77 = [(UIView *)self->_contentsLabel bottomAnchor];
      v78 = [v76 constraintEqualToAnchor:v77];
      v277[6] = v78;
      v79 = [(TUIGradientView *)self->_contentsLabelEffectView trailingAnchor];
      v80 = [(UIView *)self->_contentsLabel trailingAnchor];
      v81 = [v79 constraintEqualToAnchor:v80];
      v277[7] = v81;
      v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v277 count:8];
      [(_UITextOption *)self setInsetConstraints:v82];

      v83 = [(UIView *)self->_contentsLabel widthAnchor];
      v84 = [v83 constraintGreaterThanOrEqualToConstant:16.0];
      [(_UITextOption *)self setMinimumLabelWidth:v84];

      v85 = MEMORY[0x1E69977A0];
      v86 = [(_UITextOption *)self insetConstraints];
      [v85 activateConstraints:v86];

      LODWORD(v87) = 1144750080;
      [(UIView *)self->_contentsLabel setContentHuggingPriority:0 forAxis:v87];
    }

    [(UIView *)self->_contentsLabel setHidden:0];
    v88 = [(_UITextOption *)self type];
    v89 = [(_UITextOption *)self minimumLabelWidth];
    v90 = [v89 isActive];

    if ((v88 == 2) != v90)
    {
      v91 = v88 == 2;
      v92 = [(_UITextOption *)self minimumLabelWidth];
      [v92 setActive:v91];
    }

    if ([(_UITextOption *)self type]== 8)
    {
      v252 = [(TIKeyboardCandidate *)self->_sourceCandidate textSuggestion];
      v93 = [v252 displayText];
      v94 = v93;
      if (v93)
      {
        v95 = v93;
      }

      else
      {
        v95 = [v252 inputText];
      }

      v100 = v95;

      v101 = [off_1E70ECB80 defaultParagraphStyle];
      v102 = [v101 mutableCopy];

      [v102 setFirstLineHeadIndent:14.0];
      [v102 setAlignment:0];
      v103 = *off_1E70EC918;
      v275[0] = *off_1E70EC918;
      v104 = [off_1E70ECC18 systemFontOfSize:20.0];
      v276[0] = v104;
      v105 = *off_1E70EC920;
      v275[1] = *off_1E70EC920;
      v106 = +[UIColor labelColor];
      v276[1] = v106;
      v107 = *off_1E70EC988;
      v275[2] = *off_1E70EC988;
      v276[2] = v102;
      v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v276 forKeys:v275 count:3];

      v109 = objc_alloc(MEMORY[0x1E696AD40]);
      if (v100)
      {
        v110 = v100;
      }

      else
      {
        v110 = &stru_1EFB14550;
      }

      v111 = [v109 initWithString:v110 attributes:v108];
      if ([(__CFString *)v100 length])
      {
        v112 = [v252 headerText];
        v113 = [v112 length] == 0;

        if (!v113)
        {
          v273[0] = v103;
          v114 = [off_1E70ECC18 systemFontOfSize:17.0];
          v274[0] = v114;
          v273[1] = v105;
          v115 = +[UIColor secondaryLabelColor];
          v274[1] = v115;
          v273[2] = v107;
          v274[2] = v102;
          v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v274 forKeys:v273 count:3];

          v117 = objc_alloc(MEMORY[0x1E696AAB0]);
          v118 = [v252 headerText];
          v119 = [@"\n" stringByAppendingString:v118];
          v120 = [v117 initWithString:v119 attributes:v116];
          [v111 appendAttributedString:v120];
        }
      }

      [(UILabel *)self->_contentsLabel setAttributedText:v111];
      [(UILabel *)self->_contentsLabel _setMultilineLabelRequiresCarefulMeasurement:1];
      [(UILabel *)self->_contentsLabel setNumberOfLines:2];
    }

    else
    {
      [(UILabel *)self->_contentsLabel setText:self->_textChoice];
      v96 = self->_contentsLabel;
      v97 = [(_UITextOption *)self fontForLabel];
      [(UILabel *)v96 setFont:v97];

      v98 = self->_contentsLabel;
      v99 = [(_UITextOption *)self textColor];
      [(UILabel *)v98 setTextColor:v99];

      [(UILabel *)self->_contentsLabel _setMultilineLabelRequiresCarefulMeasurement:0];
      [(UILabel *)self->_contentsLabel setNumberOfLines:1];
    }

    if (!self->_lineView)
    {
      v121 = objc_alloc_init(UIView);
      lineView = self->_lineView;
      self->_lineView = v121;

      [(UIView *)self->_lineView setTranslatesAutoresizingMaskIntoConstraints:0];
      v123 = +[UIColor separatorColor];
      [(UIView *)self->_lineView setBackgroundColor:v123];

      v124 = [(UIView *)self _inheritedRenderConfig];
      v125 = [v124 colorAdaptiveBackground];

      if (v125)
      {
        [(UIView *)self addSubview:self->_lineView];
        v126 = MEMORY[0x1E69977A0];
        v260 = [(UIView *)self trailingAnchor];
        v127 = [(UIView *)self->_lineView trailingAnchor];
        v253 = [v260 constraintEqualToAnchor:v127];
        v272[0] = v253;
        v246 = [(UIView *)self->_lineView heightAnchor];
        v240 = [(UIView *)self heightAnchor];
        v234 = [v246 constraintEqualToAnchor:v240 multiplier:0.5];
        v272[1] = v234;
        v228 = [(UIView *)self->_lineView centerYAnchor];
        v224 = [(UIView *)self centerYAnchor];
        v220 = [v228 constraintEqualToAnchor:v224];
        v272[2] = v220;
        v216 = [(UIView *)self->_lineView widthAnchor];
        v212 = [v216 constraintEqualToConstant:1.0];
        v272[3] = v212;
        v209 = [MEMORY[0x1E695DEC8] arrayWithObjects:v272 count:4];
        [v126 activateConstraints:v209];
      }

      else
      {
        v128 = [UIBlurEffect effectWithStyle:9];
        v260 = [UIVibrancyEffect effectForBlurEffect:v128 style:7];

        v127 = [[UIVisualEffectView alloc] initWithEffect:v260];
        [(UIView *)v127 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIView *)self addSubview:v127];
        v129 = [(UIVisualEffectView *)v127 contentView];
        [v129 addSubview:self->_lineView];

        v195 = MEMORY[0x1E69977A0];
        v253 = [(UIView *)self trailingAnchor];
        v246 = [(UIView *)v127 trailingAnchor];
        v240 = [v253 constraintEqualToAnchor:v246];
        v271[0] = v240;
        v234 = [(UIView *)v127 topAnchor];
        v228 = [(UIView *)self topAnchor];
        v224 = [v234 constraintEqualToAnchor:v228];
        v271[1] = v224;
        v220 = [(UIView *)v127 bottomAnchor];
        v216 = [(UIView *)self bottomAnchor];
        v212 = [v220 constraintEqualToAnchor:v216];
        v271[2] = v212;
        v209 = [(UIView *)v127 widthAnchor];
        v207 = [v209 constraintEqualToConstant:1.0];
        v271[3] = v207;
        v205 = [(UIView *)v127 trailingAnchor];
        v203 = [(UIView *)self->_lineView trailingAnchor];
        v201 = [v205 constraintEqualToAnchor:v203];
        v271[4] = v201;
        v197 = [(UIView *)self->_lineView topAnchor];
        v199 = [(UIView *)v127 topAnchor];
        v130 = [v197 constraintEqualToAnchor:v199];
        v271[5] = v130;
        v131 = [(UIView *)self->_lineView bottomAnchor];
        v132 = [(UIView *)v127 bottomAnchor];
        v133 = [v131 constraintEqualToAnchor:v132];
        v271[6] = v133;
        v134 = [(UIView *)self->_lineView widthAnchor];
        v135 = [v134 constraintEqualToConstant:1.0];
        v271[7] = v135;
        v136 = [MEMORY[0x1E695DEC8] arrayWithObjects:v271 count:8];
        [v195 activateConstraints:v136];
      }
    }

    v137 = [(_UITextOption *)self type];
    symbolImageView = self->_symbolImageView;
    if (v137 == 4)
    {
      if (!symbolImageView)
      {
        v139 = [UIImageView alloc];
        v140 = [(_UITextOption *)self buttonImage];
        v141 = [(UIImageView *)v139 initWithImage:v140];
        v142 = self->_symbolImageView;
        self->_symbolImageView = v141;

        [(UIImageView *)self->_symbolImageView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIView *)self addSubview:self->_symbolImageView];
        if (self->_accessorySymbolSpacingGuide)
        {
          [(UIView *)self removeLayoutGuide:?];
        }

        v143 = objc_alloc_init(UILayoutGuide);
        accessorySymbolSpacingGuide = self->_accessorySymbolSpacingGuide;
        self->_accessorySymbolSpacingGuide = v143;

        [(UIView *)self addLayoutGuide:self->_accessorySymbolSpacingGuide];
        v145 = [(_UITextOption *)self type]== 4;
        v213 = MEMORY[0x1E69977A0];
        v261 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide topAnchor];
        v254 = [(UIView *)self topAnchor];
        v247 = [v261 constraintEqualToAnchor:v254 constant:v18];
        if (v145)
        {
          v270[0] = v247;
          v241 = [(UIView *)self bottomAnchor];
          v235 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide bottomAnchor];
          v229 = [v241 constraintEqualToAnchor:v235 constant:v22];
          v270[1] = v229;
          v225 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide trailingAnchor];
          v221 = [(UIView *)self->_lineView leadingAnchor];
          v217 = [v225 constraintEqualToAnchor:v221];
          v270[2] = v217;
          v146 = [(UIView *)self->_symbolImageView centerXAnchor];
          v147 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide centerXAnchor];
          v148 = [v146 constraintEqualToAnchor:v147 constant:-2.0];
          v270[3] = v148;
          v149 = [(UIView *)self->_symbolImageView centerYAnchor];
          v150 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide centerYAnchor];
          v151 = [v149 constraintEqualToAnchor:v150];
          v270[4] = v151;
          v152 = v270;
          v153 = v24;
        }

        else
        {
          v269[0] = v247;
          v241 = [(UIView *)self bottomAnchor];
          v235 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide bottomAnchor];
          v229 = [v241 constraintEqualToAnchor:v235 constant:v22];
          v269[1] = v229;
          v225 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide leadingAnchor];
          v221 = [(UIView *)self leadingAnchor];
          v217 = [v225 constraintEqualToAnchor:v221];
          v269[2] = v217;
          v146 = [(UIView *)self->_symbolImageView centerXAnchor];
          v147 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide centerXAnchor];
          v148 = [v146 constraintEqualToAnchor:v147 constant:0.0];
          v269[3] = v148;
          v149 = [(UIView *)self->_symbolImageView centerYAnchor];
          v150 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide centerYAnchor];
          v151 = [v149 constraintEqualToAnchor:v150 constant:-2.0];
          v269[4] = v151;
          v152 = v269;
          v153 = v20;
        }

        v156 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide widthAnchor];
        v157 = [v156 constraintEqualToConstant:v153];
        v152[5] = v157;
        v158 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:6];
        [v213 activateConstraints:v158];

        symbolImageView = self->_symbolImageView;
      }

      [(UIImageView *)symbolImageView setHidden:0];
      v159 = self->_symbolImageView;
      v160 = [(_UITextOption *)self buttonImage];
      [(UIImageView *)v159 setImage:v160];

      [(UIImageView *)self->_symbolImageView setContentMode:1];
      v161 = [(_UITextOption *)self type];
      v162 = self->_symbolImageView;
      if (v161 == 4)
      {
        +[UIColor secondaryLabelColor];
      }

      else
      {
        +[UIColor labelColor];
      }
      v163 = ;
      [(UIView *)v162 setTintColor:v163];

      LODWORD(v164) = 1144750080;
      [(UIView *)self->_symbolImageView setContentHuggingPriority:0 forAxis:v164];
    }

    else if (symbolImageView)
    {
      [(UIView *)symbolImageView removeFromSuperview];
      v154 = self->_symbolImageView;
      self->_symbolImageView = 0;

      if (self->_accessorySymbolSpacingGuide)
      {
        [(UIView *)self removeLayoutGuide:?];
        v155 = self->_accessorySymbolSpacingGuide;
        self->_accessorySymbolSpacingGuide = 0;
      }
    }
  }

  else if ([(_UITextOption *)self type]== 1 || ![(_UITextOption *)self type]|| (v24 = 0.0, v22 = 0.0, v20 = 0.0, v18 = 0.0, [(_UITextOption *)self type]== 5))
  {
    [(_UITextOption *)self contentInsetsForType:[(_UITextOption *)self type] dividerWidth:0.0];
    v18 = v167;
    v20 = v168;
    v22 = v169;
    v24 = v170;
    v171 = self->_symbolImageView;
    if (!v171)
    {
      v172 = [UIImageView alloc];
      v173 = [(_UITextOption *)self buttonImage];
      v174 = [(UIImageView *)v172 initWithImage:v173];
      v175 = self->_symbolImageView;
      self->_symbolImageView = v174;

      [(UIImageView *)self->_symbolImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self addSubview:self->_symbolImageView];
      v176 = objc_alloc_init(UILayoutGuide);
      [(UIView *)self addLayoutGuide:v176];
      v177 = [(UIView *)self->_symbolImageView centerYAnchor];
      v178 = [(UILayoutGuide *)v176 centerYAnchor];
      v179 = [v177 constraintEqualToAnchor:v178];
      symbolImageViewYConstraint = self->_symbolImageViewYConstraint;
      self->_symbolImageViewYConstraint = v179;

      v210 = MEMORY[0x1E69977A0];
      v255 = [(UILayoutGuide *)v176 topAnchor];
      v262 = [(UIView *)self topAnchor];
      v248 = [v255 constraintEqualToAnchor:v262];
      v268[0] = v248;
      v242 = [(UILayoutGuide *)v176 leadingAnchor];
      v236 = [(UIView *)self leadingAnchor];
      v230 = [v242 constraintEqualToAnchor:v236];
      v268[1] = v230;
      v226 = [(UIView *)self bottomAnchor];
      v222 = [(UILayoutGuide *)v176 bottomAnchor];
      v218 = [v226 constraintEqualToAnchor:v222];
      v268[2] = v218;
      v214 = [(UIView *)self trailingAnchor];
      v181 = [(UILayoutGuide *)v176 trailingAnchor];
      v182 = [v214 constraintEqualToAnchor:v181 constant:v24];
      v268[3] = v182;
      v183 = [(UILayoutGuide *)v176 widthAnchor];
      v184 = [v183 constraintEqualToConstant:v20];
      v268[4] = v184;
      v268[5] = self->_symbolImageViewYConstraint;
      v185 = [(UIView *)self->_symbolImageView centerXAnchor];
      v186 = [(UILayoutGuide *)v176 centerXAnchor];
      v187 = [v185 constraintEqualToAnchor:v186];
      v268[6] = v187;
      v188 = [MEMORY[0x1E695DEC8] arrayWithObjects:v268 count:7];
      [v210 activateConstraints:v188];

      v171 = self->_symbolImageView;
    }

    [(UIImageView *)v171 setHidden:0];
    v189 = self->_symbolImageView;
    v190 = [(_UITextOption *)self buttonImage];
    [(UIImageView *)v189 setImage:v190];

    v191 = [(_UITextOption *)self optionalTintColor];

    v192 = self->_symbolImageView;
    if (v191)
    {
      [(_UITextOption *)self optionalTintColor];
    }

    else
    {
      +[UIColor secondaryLabelColor];
    }
    v193 = ;
    [(UIView *)v192 setTintColor:v193];

    LODWORD(v194) = 1144750080;
    [(UIView *)self->_symbolImageView setContentHuggingPriority:0 forAxis:v194];
  }

  [(_UITextOption *)self setCurrentEdgeInsets:v18, v20, v22, v24];
  [(_UITextOption *)self setHorizontalPadding:v24 + v20];
  LODWORD(v165) = 1144750080;
  [(UIView *)self setContentHuggingPriority:0 forAxis:v165];
  LODWORD(v166) = 1148829696;
  [(UIView *)self setContentCompressionResistancePriority:0 forAxis:v166];
}

- (void)updateSourceCandidate:(id)a3 secureCandidateHeight:(double)a4
{
  v7 = a3;
  [v7 secureCandidateWidth];
  [(_UITextOption *)self setSecureCandidateSize:v6 + 4.0, a4 + 4.0];
  [(_UITextOption *)self setSourceCandidate:v7];
}

- (void)updateText:(id)a3 type:(int64_t)a4
{
  v31 = a3;
  objc_storeStrong(&self->_textChoice, a3);
  if (self->_type == a4)
  {
    [(_UITextOption *)self updateContentView];
  }

  else
  {
    self->_type = a4;
    v7 = (a4 - 2) < 6 && ((0x37u >> (a4 - 2)) & 1) != 0 || [(_UITextOption *)self type]== 8;
    symbolImageView = self->_symbolImageView;
    if (symbolImageView)
    {
      [(UIView *)symbolImageView removeFromSuperview];
      v9 = self->_symbolImageView;
      self->_symbolImageView = 0;

      if (self->_accessorySymbolSpacingGuide)
      {
        [(UIView *)self removeLayoutGuide:?];
        accessorySymbolSpacingGuide = self->_accessorySymbolSpacingGuide;
        self->_accessorySymbolSpacingGuide = 0;
      }
    }

    [(_UITextOption *)self updateContentView];
    if (v7)
    {
      if (a4 > 7 || (v11 = 1.0, ((1 << a4) & 0xC4) == 0))
      {
        v12 = [(_UITextOption *)self type];
        v11 = 0.0;
        if (v12 == 8)
        {
          v11 = 1.0;
        }
      }

      [(_UITextOption *)self contentInsetsForType:a4 dividerWidth:v11];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(_UITextOption *)self insetConstraints];
      v22 = [v21 count];

      if (v22 == 8)
      {
        v23 = [(_UITextOption *)self insetConstraints];
        v24 = [v23 objectAtIndexedSubscript:0];
        [v24 setConstant:v14];

        v25 = [(_UITextOption *)self insetConstraints];
        v26 = [v25 objectAtIndexedSubscript:1];
        [v26 setConstant:v16];

        v27 = [(_UITextOption *)self insetConstraints];
        v28 = [v27 objectAtIndexedSubscript:2];
        [v28 setConstant:v18];

        v29 = [(_UITextOption *)self insetConstraints];
        v30 = [v29 objectAtIndexedSubscript:3];
        [v30 setConstant:v20];
      }
    }
  }

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (id)textToUse
{
  if ([(_UITextOption *)self type]== 6 || [(_UITextOption *)self type]== 2 || [(_UITextOption *)self type]== 3 || [(_UITextOption *)self type]== 4 || [(_UITextOption *)self type]== 7 || [(_UITextOption *)self type]== 8)
  {
    v3 = self->_textChoice;
  }

  else if ([(_UITextOption *)self type]== 1)
  {
    v3 = @"autocorrection.revert";
  }

  else if ([(_UITextOption *)self type])
  {
    v3 = 0;
  }

  else
  {
    v3 = @"autocorrection.cancel";
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  if ([(_UITextOption *)self type]== 6)
  {
    [(_UITextOption *)self secureCandidateSize];
    v4 = v3;
    v6 = v5;
  }

  else if ([(_UITextOption *)self type]== 2 || [(_UITextOption *)self type]== 3 || [(_UITextOption *)self type]== 4 || [(_UITextOption *)self type]== 7)
  {
    [(UILabel *)self->_contentsLabel intrinsicContentSize];
    v4 = v7;
    v6 = v8;
    if ([(_UITextOption *)self type]== 2)
    {
      v9 = 32.0;
    }

    else
    {
      v10 = [(_UITextOption *)self type];
      v9 = 32.0;
      if (v10 != 4)
      {
        v9 = 27.0;
      }
    }

    if (v6 < v9)
    {
      v6 = v9;
    }
  }

  else
  {
    v6 = 27.0;
    v4 = -1.0;
  }

  [(_UITextOption *)self horizontalPadding];
  v12 = v4 + v11;
  v13 = v6;
  result.height = v13;
  result.width = v12;
  return result;
}

- (id)fontForLabel
{
  v2 = [(UIView *)self traitCollection];
  v3 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCallout" compatibleWithTraitCollection:v2];

  return v3;
}

+ (double)baseSymbolSize
{
  if (qword_1ED49B2F0 != -1)
  {
    dispatch_once(&qword_1ED49B2F0, &__block_literal_global_472_0);
  }

  v2 = [UIApp preferredContentSizeCategory];
  v3 = [qword_1ED49B2E8 objectForKeyedSubscript:v2];
  [v3 floatValue];
  v5 = v4 + 22.0;

  return v5;
}

- (id)buttonImage
{
  if ([(_UITextOption *)self type]== 5)
  {
    [objc_opt_class() baseSymbolSize];
    v3 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:-1 scale:?];
    v4 = [(_UITextOption *)self imageName];
    v5 = [UIImage systemImageNamed:v4 withConfiguration:v3];
    v6 = [v5 imageWithRenderingMode:1];
  }

  else
  {
    v3 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:-1 scale:10.0];
    v7 = [(UIView *)self traitCollection];
    v8 = [v7 preferredContentSizeCategory];
    v9 = UIContentSizeCategoryCompareToCategory(v8, &cfstr_Uictcontentsiz_5.isa);

    if (v9 == NSOrderedDescending)
    {
      v10 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleEmphasizedCaption2" scale:-1];

      v11 = [UIImageSymbolConfiguration configurationWithWeight:7];
      v3 = [v10 configurationByApplyingConfiguration:v11];
    }

    v4 = [(_UITextOption *)self imageName];
    v6 = [UIImage systemImageNamed:v4 withConfiguration:v3];
  }

  return v6;
}

- (id)imageName
{
  v3 = [(_UITextOption *)self type];
  if (v3 < 2 || v3 == 5)
  {
    v4 = self->_textChoice;
  }

  else if (v3 == 4)
  {
    v4 = @"arrow.uturn.backward";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setState:(unint64_t)a3
{
  self->_state = a3;
  v4 = [(_UITextOption *)self selectionVisibilityForState:?]^ 1;
  selectionVibrancyView = self->_selectionVibrancyView;

  [(UIView *)selectionVibrancyView setHidden:v4];
}

- (void)_outermostLayerDidChange:(id)a3
{
  if (self->_contentsLabel == a3)
  {
    v4 = a3;
    v8 = [v4 _outermostLayer];
    v5 = [v4 layer];

    if (v8 != v5)
    {
      v6 = [v5 compositingFilter];

      if (v6)
      {
        v7 = [v5 compositingFilter];
        [v8 setCompositingFilter:v7];

        [v5 setCompositingFilter:0];
      }
    }
  }
}

- (CGSize)secureCandidateSize
{
  width = self->_secureCandidateSize.width;
  height = self->_secureCandidateSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSDirectionalEdgeInsets)currentEdgeInsets
{
  top = self->_currentEdgeInsets.top;
  leading = self->_currentEdgeInsets.leading;
  bottom = self->_currentEdgeInsets.bottom;
  trailing = self->_currentEdgeInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end