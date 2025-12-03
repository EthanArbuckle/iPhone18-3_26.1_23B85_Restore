@interface _UITextOption
+ (double)baseSymbolSize;
- (CGSize)intrinsicContentSize;
- (CGSize)secureCandidateSize;
- (NSDirectionalEdgeInsets)contentInsetsForType:(int64_t)type dividerWidth:(double)width;
- (NSDirectionalEdgeInsets)currentEdgeInsets;
- (_UITextOption)initWithTitle:(id)title type:(int64_t)type optionalTintColor:(id)color;
- (double)insetMultiplierForContentSizeCategory:(id)category;
- (double)leadingSpace;
- (id)buttonImage;
- (id)createSelectionVibrancyView;
- (id)fontForLabel;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)imageName;
- (id)textToUse;
- (id)viewForLastBaselineLayout;
- (void)_outermostLayerDidChange:(id)change;
- (void)setLightingEffectEnabled:(BOOL)enabled atPosition:(int64_t)position;
- (void)setState:(unint64_t)state;
- (void)showSeparator:(BOOL)separator;
- (void)updateContentView;
- (void)updateSourceCandidate:(id)candidate secureCandidateHeight:(double)height;
- (void)updateText:(id)text type:(int64_t)type;
@end

@implementation _UITextOption

- (_UITextOption)initWithTitle:(id)title type:(int64_t)type optionalTintColor:(id)color
{
  titleCopy = title;
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = _UITextOption;
  v11 = [(UIView *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_textChoice, title);
    v12->_type = type;
    v12->_state = 0;
    v12->_optionalTintColor = colorCopy;
    [(_UITextOption *)v12 updateContentView];
  }

  return v12;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(UIView *)self pointInside:eventCopy withEvent:x, y])
  {
    selfCopy = self;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _UITextOption;
    selfCopy = [(UIView *)&v11 hitTest:eventCopy withEvent:x, y];
  }

  v9 = selfCopy;

  return v9;
}

- (void)showSeparator:(BOOL)separator
{
  separatorCopy = separator;
  lineView = [(_UITextOption *)self lineView];
  [lineView setHidden:!separatorCopy];
}

- (id)viewForLastBaselineLayout
{
  selfCopy = self;
  if ([(_UITextOption *)self type]== 2 || [(_UITextOption *)selfCopy type]== 3 || [(_UITextOption *)selfCopy type]== 4)
  {
    v3 = &OBJC_IVAR____UITextOption__contentsLabel;
LABEL_5:
    selfCopy = *(&selfCopy->super.super.super.isa + *v3);
    goto LABEL_6;
  }

  if (![(_UITextOption *)selfCopy type]|| [(_UITextOption *)selfCopy type]== 1 || [(_UITextOption *)selfCopy type]== 5)
  {
    v3 = &OBJC_IVAR____UITextOption__symbolImageView;
    goto LABEL_5;
  }

LABEL_6:

  return selfCopy;
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

- (void)setLightingEffectEnabled:(BOOL)enabled atPosition:(int64_t)position
{
  if (enabled)
  {
    traitCollection = [(UIView *)self traitCollection];
    contentsLabel = [(_UITextOption *)self contentsLabel];
    textColor = [contentsLabel textColor];
    v9 = [textColor resolvedColorWithTraitCollection:traitCollection];

    v10 = +[_UIColorPalette intelligenceAmbientPalette];
    colors = [v10 colors];
    v12 = [colors mutableCopy];

    [v12 insertObject:v9 atIndex:0];
    [v12 addObject:v9];
    v13 = [[_UIColorPalette alloc] initWithColors:v12 locations:&unk_1EFE2BEC0 colorSpaceName:0];
    v14 = [[_UIDirectionalLightConfiguration alloc] initWithColorPalette:v13];
    [(_UIDirectionalLightConfiguration *)v14 setDirection:0];
    [(_UIDirectionalLightConfiguration *)v14 setDuration:2.0];
    [(TUIGradientView *)self->_contentsLabelEffectView setLightConfiguration:v14];
    v15 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E0]];
    _outermostLayer = [(UIView *)self->_contentsLabel _outermostLayer];
    [_outermostLayer setCompositingFilter:v15];

    v17 = dispatch_time(0, ((position * 0.625) * 1000000000.0));
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
    [(TUIGradientView *)self->_contentsLabelEffectView setLightConfiguration:0, position];
    _outermostLayer2 = [(UIView *)self->_contentsLabel _outermostLayer];
    [_outermostLayer2 setCompositingFilter:0];
  }
}

- (NSDirectionalEdgeInsets)contentInsetsForType:(int64_t)type dividerWidth:(double)width
{
  if (type > 3)
  {
    if (type == 4)
    {
      v7 = width + 26.0;
      v8 = 5.0;
      v5 = 14.0;
      goto LABEL_11;
    }

    if (type != 7)
    {
      goto LABEL_8;
    }

LABEL_7:
    v5 = 14.0;
    v7 = width + 14.0;
    v8 = 5.0;
LABEL_11:
    v6 = 6.0;
    goto LABEL_12;
  }

  if (type == 2)
  {
    goto LABEL_7;
  }

  if (type == 3)
  {
    v5 = 8.0;
    v6 = 3.0;
    v7 = 0.0;
    v8 = 3.0;
    goto LABEL_12;
  }

LABEL_8:
  if (type >= 2)
  {
    v17 = type - 5;
    v7 = 0.0;
    if ((type - 5) <= 3)
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
  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [(_UITextOption *)self insetMultiplierForContentSizeCategory:preferredContentSizeCategory];
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

- (double)insetMultiplierForContentSizeCategory:(id)category
{
  categoryCopy = category;
  if (qword_1ED49B2E0 != -1)
  {
    dispatch_once(&qword_1ED49B2E0, &__block_literal_global_244);
  }

  v4 = [_MergedGlobals_29_1 objectForKeyedSubscript:categoryCopy];
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
  contentView = [(UIVisualEffectView *)v5 contentView];
  [contentView addSubview:v2];

  [(UIView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = MEMORY[0x1E69977A0];
  leadingAnchor = [(UIView *)v2 leadingAnchor];
  leadingAnchor2 = [(UIView *)v5 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v23[0] = v19;
  trailingAnchor = [(UIView *)v2 trailingAnchor];
  trailingAnchor2 = [(UIView *)v5 trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[1] = v7;
  topAnchor = [(UIView *)v2 topAnchor];
  topAnchor2 = [(UIView *)v5 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[2] = v10;
  bottomAnchor = [(UIView *)v2 bottomAnchor];
  bottomAnchor2 = [(UIView *)v5 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
    createSelectionVibrancyView = [(_UITextOption *)self createSelectionVibrancyView];
    selectionVibrancyView = self->_selectionVibrancyView;
    self->_selectionVibrancyView = createSelectionVibrancyView;

    [(UIView *)self addSubview:self->_selectionVibrancyView];
    if ([(_UITextOption *)self type]== 1 || (v5 = 0.0, ![(_UITextOption *)self type]))
    {
      v5 = 4.0;
    }

    v231 = MEMORY[0x1E69977A0];
    leadingAnchor = [(UIView *)self->_selectionVibrancyView leadingAnchor];
    leadingAnchor2 = [(UIView *)self leadingAnchor];
    v249 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v279[0] = v249;
    trailingAnchor = [(UIView *)self->_selectionVibrancyView trailingAnchor];
    trailingAnchor2 = [(UIView *)self trailingAnchor];
    v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v5];
    v279[1] = v6;
    topAnchor = [(UIView *)self->_selectionVibrancyView topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v279[2] = v9;
    bottomAnchor = [(UIView *)self->_selectionVibrancyView bottomAnchor];
    bottomAnchor2 = [(UIView *)self bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v279[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v279 count:4];
    [v231 activateConstraints:v13];

    [(UIView *)self->_selectionVibrancyView setHidden:[(_UITextOption *)self selectionVisibilityForState:self->_state]^ 1];
  }

  [(UIView *)self->_contentsLabel setHidden:1];
  [(UIImageView *)self->_symbolImageView setHidden:1];
  [(UIView *)self->_secureCandidateLabel setHidden:1];
  v14 = [(_UITextOption *)self type]== 6;
  type = [(_UITextOption *)self type];
  v16 = type;
  if (v14)
  {
    [(_UITextOption *)self contentInsetsForType:type dividerWidth:0.0];
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

      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen scale];
      v30 = v29;
      layer = [(UIView *)self->_secureCandidateLabel layer];
      [layer setContentsScale:v30];

      mainScreen2 = [objc_opt_self() mainScreen];
      [mainScreen2 scale];
      v34 = v33;
      layer2 = [(UIView *)self->_secureCandidateLabel layer];
      [layer2 setRasterizationScale:v34];

      layer3 = [(UIView *)self->_secureCandidateLabel layer];
      [layer3 setContentsGravity:*MEMORY[0x1E6979DD0]];

      [(UIView *)self->_secureCandidateLabel setUserInteractionEnabled:0];
      [(UIView *)self->_secureCandidateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self addSubview:self->_secureCandidateLabel];
      v232 = MEMORY[0x1E69977A0];
      topAnchor3 = [(UIView *)self->_secureCandidateLabel topAnchor];
      topAnchor4 = [(UIView *)self topAnchor];
      v250 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v18];
      v278[0] = v250;
      leadingAnchor3 = [(UIView *)self->_secureCandidateLabel leadingAnchor];
      leadingAnchor4 = [(UIView *)self leadingAnchor];
      v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v20];
      v278[1] = v37;
      bottomAnchor3 = [(UIView *)self bottomAnchor];
      bottomAnchor4 = [(UIView *)self->_secureCandidateLabel bottomAnchor];
      v40 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:v22];
      v278[2] = v40;
      trailingAnchor3 = [(UIView *)self trailingAnchor];
      trailingAnchor4 = [(UIView *)self->_secureCandidateLabel trailingAnchor];
      v43 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:v24];
      v278[3] = v43;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v278 count:4];
      [v232 activateConstraints:v44];
    }

    v45 = MEMORY[0x1E6979320];
    sourceCandidate = [(_UITextOption *)self sourceCandidate];
    v47 = [v45 objectForSlot:{objc_msgSend(sourceCandidate, "slotID")}];
    layer4 = [(UIView *)self->_secureCandidateLabel layer];
    [layer4 setContents:v47];

    [(UIView *)self->_secureCandidateLabel setHidden:0];
  }

  else if (type == 2 || [(_UITextOption *)self type]== 3 || [(_UITextOption *)self type]== 4 || [(_UITextOption *)self type]== 7 || [(_UITextOption *)self type]== 8)
  {
    [(_UITextOption *)self contentInsetsForType:[(_UITextOption *)self type] dividerWidth:1.0];
    v18 = v49;
    v20 = v50;
    v22 = v51;
    v24 = v52;
    if (self->_contentsLabel)
    {
      insetConstraints = [(_UITextOption *)self insetConstraints];
      if (insetConstraints)
      {
        insetConstraints2 = [(_UITextOption *)self insetConstraints];
        v55 = [insetConstraints2 count] == 8;

        if (v55)
        {
          insetConstraints3 = [(_UITextOption *)self insetConstraints];
          v57 = [insetConstraints3 objectAtIndexedSubscript:0];
          [v57 setConstant:v18];

          insetConstraints4 = [(_UITextOption *)self insetConstraints];
          v59 = [insetConstraints4 objectAtIndexedSubscript:1];
          [v59 setConstant:v20];

          insetConstraints5 = [(_UITextOption *)self insetConstraints];
          v61 = [insetConstraints5 objectAtIndexedSubscript:2];
          [v61 setConstant:v22];

          insetConstraints6 = [(_UITextOption *)self insetConstraints];
          v63 = [insetConstraints6 objectAtIndexedSubscript:3];
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
      insetConstraints7 = [(_UITextOption *)self insetConstraints];

      if (insetConstraints7)
      {
        v72 = MEMORY[0x1E69977A0];
        insetConstraints8 = [(_UITextOption *)self insetConstraints];
        [v72 deactivateConstraints:insetConstraints8];
      }

      topAnchor5 = [(TUIGradientView *)self->_contentsLabelEffectView topAnchor];
      topAnchor6 = [(UIView *)self topAnchor];
      v239 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:v18];
      v277[0] = v239;
      leadingAnchor5 = [(TUIGradientView *)self->_contentsLabelEffectView leadingAnchor];
      leadingAnchor6 = [(UIView *)self leadingAnchor];
      v223 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v20];
      v277[1] = v223;
      bottomAnchor5 = [(UIView *)self bottomAnchor];
      bottomAnchor6 = [(TUIGradientView *)self->_contentsLabelEffectView bottomAnchor];
      v211 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:v22];
      v277[2] = v211;
      trailingAnchor5 = [(UIView *)self trailingAnchor];
      trailingAnchor6 = [(TUIGradientView *)self->_contentsLabelEffectView trailingAnchor];
      v204 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:v24];
      v277[3] = v204;
      topAnchor7 = [(UIView *)self->_contentsLabel topAnchor];
      topAnchor8 = [(TUIGradientView *)self->_contentsLabelEffectView topAnchor];
      v198 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
      v277[4] = v198;
      leadingAnchor7 = [(UIView *)self->_contentsLabel leadingAnchor];
      leadingAnchor8 = [(TUIGradientView *)self->_contentsLabelEffectView leadingAnchor];
      v75 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
      v277[5] = v75;
      bottomAnchor7 = [(TUIGradientView *)self->_contentsLabelEffectView bottomAnchor];
      bottomAnchor8 = [(UIView *)self->_contentsLabel bottomAnchor];
      v78 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
      v277[6] = v78;
      trailingAnchor7 = [(TUIGradientView *)self->_contentsLabelEffectView trailingAnchor];
      trailingAnchor8 = [(UIView *)self->_contentsLabel trailingAnchor];
      v81 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
      v277[7] = v81;
      v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v277 count:8];
      [(_UITextOption *)self setInsetConstraints:v82];

      widthAnchor = [(UIView *)self->_contentsLabel widthAnchor];
      v84 = [widthAnchor constraintGreaterThanOrEqualToConstant:16.0];
      [(_UITextOption *)self setMinimumLabelWidth:v84];

      v85 = MEMORY[0x1E69977A0];
      insetConstraints9 = [(_UITextOption *)self insetConstraints];
      [v85 activateConstraints:insetConstraints9];

      LODWORD(v87) = 1144750080;
      [(UIView *)self->_contentsLabel setContentHuggingPriority:0 forAxis:v87];
    }

    [(UIView *)self->_contentsLabel setHidden:0];
    type2 = [(_UITextOption *)self type];
    minimumLabelWidth = [(_UITextOption *)self minimumLabelWidth];
    isActive = [minimumLabelWidth isActive];

    if ((type2 == 2) != isActive)
    {
      v91 = type2 == 2;
      minimumLabelWidth2 = [(_UITextOption *)self minimumLabelWidth];
      [minimumLabelWidth2 setActive:v91];
    }

    if ([(_UITextOption *)self type]== 8)
    {
      textSuggestion = [(TIKeyboardCandidate *)self->_sourceCandidate textSuggestion];
      displayText = [textSuggestion displayText];
      v94 = displayText;
      if (displayText)
      {
        inputText = displayText;
      }

      else
      {
        inputText = [textSuggestion inputText];
      }

      v100 = inputText;

      defaultParagraphStyle = [off_1E70ECB80 defaultParagraphStyle];
      v102 = [defaultParagraphStyle mutableCopy];

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
        headerText = [textSuggestion headerText];
        v113 = [headerText length] == 0;

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
          headerText2 = [textSuggestion headerText];
          v119 = [@"\n" stringByAppendingString:headerText2];
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
      fontForLabel = [(_UITextOption *)self fontForLabel];
      [(UILabel *)v96 setFont:fontForLabel];

      v98 = self->_contentsLabel;
      textColor = [(_UITextOption *)self textColor];
      [(UILabel *)v98 setTextColor:textColor];

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

      _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
      colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

      if (colorAdaptiveBackground)
      {
        [(UIView *)self addSubview:self->_lineView];
        v126 = MEMORY[0x1E69977A0];
        trailingAnchor9 = [(UIView *)self trailingAnchor];
        trailingAnchor10 = [(UIView *)self->_lineView trailingAnchor];
        trailingAnchor11 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
        v272[0] = trailingAnchor11;
        heightAnchor = [(UIView *)self->_lineView heightAnchor];
        heightAnchor2 = [(UIView *)self heightAnchor];
        topAnchor9 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.5];
        v272[1] = topAnchor9;
        centerYAnchor = [(UIView *)self->_lineView centerYAnchor];
        centerYAnchor2 = [(UIView *)self centerYAnchor];
        bottomAnchor9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v272[2] = bottomAnchor9;
        widthAnchor2 = [(UIView *)self->_lineView widthAnchor];
        v212 = [widthAnchor2 constraintEqualToConstant:1.0];
        v272[3] = v212;
        widthAnchor3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v272 count:4];
        [v126 activateConstraints:widthAnchor3];
      }

      else
      {
        v128 = [UIBlurEffect effectWithStyle:9];
        trailingAnchor9 = [UIVibrancyEffect effectForBlurEffect:v128 style:7];

        trailingAnchor10 = [[UIVisualEffectView alloc] initWithEffect:trailingAnchor9];
        [(UIView *)trailingAnchor10 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIView *)self addSubview:trailingAnchor10];
        contentView = [(UIVisualEffectView *)trailingAnchor10 contentView];
        [contentView addSubview:self->_lineView];

        v195 = MEMORY[0x1E69977A0];
        trailingAnchor11 = [(UIView *)self trailingAnchor];
        heightAnchor = [(UIView *)trailingAnchor10 trailingAnchor];
        heightAnchor2 = [trailingAnchor11 constraintEqualToAnchor:heightAnchor];
        v271[0] = heightAnchor2;
        topAnchor9 = [(UIView *)trailingAnchor10 topAnchor];
        centerYAnchor = [(UIView *)self topAnchor];
        centerYAnchor2 = [topAnchor9 constraintEqualToAnchor:centerYAnchor];
        v271[1] = centerYAnchor2;
        bottomAnchor9 = [(UIView *)trailingAnchor10 bottomAnchor];
        widthAnchor2 = [(UIView *)self bottomAnchor];
        v212 = [bottomAnchor9 constraintEqualToAnchor:widthAnchor2];
        v271[2] = v212;
        widthAnchor3 = [(UIView *)trailingAnchor10 widthAnchor];
        v207 = [widthAnchor3 constraintEqualToConstant:1.0];
        v271[3] = v207;
        v127TrailingAnchor = [(UIView *)trailingAnchor10 trailingAnchor];
        trailingAnchor12 = [(UIView *)self->_lineView trailingAnchor];
        v201 = [v127TrailingAnchor constraintEqualToAnchor:trailingAnchor12];
        v271[4] = v201;
        topAnchor10 = [(UIView *)self->_lineView topAnchor];
        topAnchor11 = [(UIView *)trailingAnchor10 topAnchor];
        v130 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
        v271[5] = v130;
        bottomAnchor10 = [(UIView *)self->_lineView bottomAnchor];
        bottomAnchor11 = [(UIView *)trailingAnchor10 bottomAnchor];
        v133 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
        v271[6] = v133;
        widthAnchor4 = [(UIView *)self->_lineView widthAnchor];
        v135 = [widthAnchor4 constraintEqualToConstant:1.0];
        v271[7] = v135;
        v136 = [MEMORY[0x1E695DEC8] arrayWithObjects:v271 count:8];
        [v195 activateConstraints:v136];
      }
    }

    type3 = [(_UITextOption *)self type];
    symbolImageView = self->_symbolImageView;
    if (type3 == 4)
    {
      if (!symbolImageView)
      {
        v139 = [UIImageView alloc];
        buttonImage = [(_UITextOption *)self buttonImage];
        v141 = [(UIImageView *)v139 initWithImage:buttonImage];
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
        topAnchor12 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide topAnchor];
        topAnchor13 = [(UIView *)self topAnchor];
        v247 = [topAnchor12 constraintEqualToAnchor:topAnchor13 constant:v18];
        if (v145)
        {
          v270[0] = v247;
          bottomAnchor12 = [(UIView *)self bottomAnchor];
          bottomAnchor13 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide bottomAnchor];
          v229 = [bottomAnchor12 constraintEqualToAnchor:bottomAnchor13 constant:v22];
          v270[1] = v229;
          trailingAnchor13 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide trailingAnchor];
          leadingAnchor9 = [(UIView *)self->_lineView leadingAnchor];
          v217 = [trailingAnchor13 constraintEqualToAnchor:leadingAnchor9];
          v270[2] = v217;
          centerXAnchor = [(UIView *)self->_symbolImageView centerXAnchor];
          centerXAnchor2 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide centerXAnchor];
          v148 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:-2.0];
          v270[3] = v148;
          centerYAnchor3 = [(UIView *)self->_symbolImageView centerYAnchor];
          centerYAnchor4 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide centerYAnchor];
          v151 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
          v270[4] = v151;
          v152 = v270;
          v153 = v24;
        }

        else
        {
          v269[0] = v247;
          bottomAnchor12 = [(UIView *)self bottomAnchor];
          bottomAnchor13 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide bottomAnchor];
          v229 = [bottomAnchor12 constraintEqualToAnchor:bottomAnchor13 constant:v22];
          v269[1] = v229;
          trailingAnchor13 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide leadingAnchor];
          leadingAnchor9 = [(UIView *)self leadingAnchor];
          v217 = [trailingAnchor13 constraintEqualToAnchor:leadingAnchor9];
          v269[2] = v217;
          centerXAnchor = [(UIView *)self->_symbolImageView centerXAnchor];
          centerXAnchor2 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide centerXAnchor];
          v148 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
          v269[3] = v148;
          centerYAnchor3 = [(UIView *)self->_symbolImageView centerYAnchor];
          centerYAnchor4 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide centerYAnchor];
          v151 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:-2.0];
          v269[4] = v151;
          v152 = v269;
          v153 = v20;
        }

        widthAnchor5 = [(UILayoutGuide *)self->_accessorySymbolSpacingGuide widthAnchor];
        v157 = [widthAnchor5 constraintEqualToConstant:v153];
        v152[5] = v157;
        v158 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:6];
        [v213 activateConstraints:v158];

        symbolImageView = self->_symbolImageView;
      }

      [(UIImageView *)symbolImageView setHidden:0];
      v159 = self->_symbolImageView;
      buttonImage2 = [(_UITextOption *)self buttonImage];
      [(UIImageView *)v159 setImage:buttonImage2];

      [(UIImageView *)self->_symbolImageView setContentMode:1];
      type4 = [(_UITextOption *)self type];
      v162 = self->_symbolImageView;
      if (type4 == 4)
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
      buttonImage3 = [(_UITextOption *)self buttonImage];
      v174 = [(UIImageView *)v172 initWithImage:buttonImage3];
      v175 = self->_symbolImageView;
      self->_symbolImageView = v174;

      [(UIImageView *)self->_symbolImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self addSubview:self->_symbolImageView];
      v176 = objc_alloc_init(UILayoutGuide);
      [(UIView *)self addLayoutGuide:v176];
      centerYAnchor5 = [(UIView *)self->_symbolImageView centerYAnchor];
      centerYAnchor6 = [(UILayoutGuide *)v176 centerYAnchor];
      v179 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
      symbolImageViewYConstraint = self->_symbolImageViewYConstraint;
      self->_symbolImageViewYConstraint = v179;

      v210 = MEMORY[0x1E69977A0];
      topAnchor14 = [(UILayoutGuide *)v176 topAnchor];
      topAnchor15 = [(UIView *)self topAnchor];
      v248 = [topAnchor14 constraintEqualToAnchor:topAnchor15];
      v268[0] = v248;
      leadingAnchor10 = [(UILayoutGuide *)v176 leadingAnchor];
      leadingAnchor11 = [(UIView *)self leadingAnchor];
      v230 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
      v268[1] = v230;
      bottomAnchor14 = [(UIView *)self bottomAnchor];
      bottomAnchor15 = [(UILayoutGuide *)v176 bottomAnchor];
      v218 = [bottomAnchor14 constraintEqualToAnchor:bottomAnchor15];
      v268[2] = v218;
      trailingAnchor14 = [(UIView *)self trailingAnchor];
      trailingAnchor15 = [(UILayoutGuide *)v176 trailingAnchor];
      v182 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15 constant:v24];
      v268[3] = v182;
      widthAnchor6 = [(UILayoutGuide *)v176 widthAnchor];
      v184 = [widthAnchor6 constraintEqualToConstant:v20];
      v268[4] = v184;
      v268[5] = self->_symbolImageViewYConstraint;
      centerXAnchor3 = [(UIView *)self->_symbolImageView centerXAnchor];
      centerXAnchor4 = [(UILayoutGuide *)v176 centerXAnchor];
      v187 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      v268[6] = v187;
      v188 = [MEMORY[0x1E695DEC8] arrayWithObjects:v268 count:7];
      [v210 activateConstraints:v188];

      v171 = self->_symbolImageView;
    }

    [(UIImageView *)v171 setHidden:0];
    v189 = self->_symbolImageView;
    buttonImage4 = [(_UITextOption *)self buttonImage];
    [(UIImageView *)v189 setImage:buttonImage4];

    optionalTintColor = [(_UITextOption *)self optionalTintColor];

    v192 = self->_symbolImageView;
    if (optionalTintColor)
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

- (void)updateSourceCandidate:(id)candidate secureCandidateHeight:(double)height
{
  candidateCopy = candidate;
  [candidateCopy secureCandidateWidth];
  [(_UITextOption *)self setSecureCandidateSize:v6 + 4.0, height + 4.0];
  [(_UITextOption *)self setSourceCandidate:candidateCopy];
}

- (void)updateText:(id)text type:(int64_t)type
{
  textCopy = text;
  objc_storeStrong(&self->_textChoice, text);
  if (self->_type == type)
  {
    [(_UITextOption *)self updateContentView];
  }

  else
  {
    self->_type = type;
    v7 = (type - 2) < 6 && ((0x37u >> (type - 2)) & 1) != 0 || [(_UITextOption *)self type]== 8;
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
      if (type > 7 || (v11 = 1.0, ((1 << type) & 0xC4) == 0))
      {
        type = [(_UITextOption *)self type];
        v11 = 0.0;
        if (type == 8)
        {
          v11 = 1.0;
        }
      }

      [(_UITextOption *)self contentInsetsForType:type dividerWidth:v11];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      insetConstraints = [(_UITextOption *)self insetConstraints];
      v22 = [insetConstraints count];

      if (v22 == 8)
      {
        insetConstraints2 = [(_UITextOption *)self insetConstraints];
        v24 = [insetConstraints2 objectAtIndexedSubscript:0];
        [v24 setConstant:v14];

        insetConstraints3 = [(_UITextOption *)self insetConstraints];
        v26 = [insetConstraints3 objectAtIndexedSubscript:1];
        [v26 setConstant:v16];

        insetConstraints4 = [(_UITextOption *)self insetConstraints];
        v28 = [insetConstraints4 objectAtIndexedSubscript:2];
        [v28 setConstant:v18];

        insetConstraints5 = [(_UITextOption *)self insetConstraints];
        v30 = [insetConstraints5 objectAtIndexedSubscript:3];
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
      type = [(_UITextOption *)self type];
      v9 = 32.0;
      if (type != 4)
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
  traitCollection = [(UIView *)self traitCollection];
  v3 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCallout" compatibleWithTraitCollection:traitCollection];

  return v3;
}

+ (double)baseSymbolSize
{
  if (qword_1ED49B2F0 != -1)
  {
    dispatch_once(&qword_1ED49B2F0, &__block_literal_global_472_0);
  }

  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  v3 = [qword_1ED49B2E8 objectForKeyedSubscript:preferredContentSizeCategory];
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
    imageName = [(_UITextOption *)self imageName];
    v5 = [UIImage systemImageNamed:imageName withConfiguration:v3];
    v6 = [v5 imageWithRenderingMode:1];
  }

  else
  {
    v3 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:-1 scale:10.0];
    traitCollection = [(UIView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v9 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_5.isa);

    if (v9 == NSOrderedDescending)
    {
      v10 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleEmphasizedCaption2" scale:-1];

      v11 = [UIImageSymbolConfiguration configurationWithWeight:7];
      v3 = [v10 configurationByApplyingConfiguration:v11];
    }

    imageName = [(_UITextOption *)self imageName];
    v6 = [UIImage systemImageNamed:imageName withConfiguration:v3];
  }

  return v6;
}

- (id)imageName
{
  type = [(_UITextOption *)self type];
  if (type < 2 || type == 5)
  {
    v4 = self->_textChoice;
  }

  else if (type == 4)
  {
    v4 = @"arrow.uturn.backward";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setState:(unint64_t)state
{
  self->_state = state;
  v4 = [(_UITextOption *)self selectionVisibilityForState:?]^ 1;
  selectionVibrancyView = self->_selectionVibrancyView;

  [(UIView *)selectionVibrancyView setHidden:v4];
}

- (void)_outermostLayerDidChange:(id)change
{
  if (self->_contentsLabel == change)
  {
    changeCopy = change;
    _outermostLayer = [changeCopy _outermostLayer];
    layer = [changeCopy layer];

    if (_outermostLayer != layer)
    {
      compositingFilter = [layer compositingFilter];

      if (compositingFilter)
      {
        compositingFilter2 = [layer compositingFilter];
        [_outermostLayer setCompositingFilter:compositingFilter2];

        [layer setCompositingFilter:0];
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