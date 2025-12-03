@interface UIKBMultilingualKeyboardArtworkView
+ (id)_memojiAssets1;
+ (id)_memojiAssets2;
+ (id)memojiImageForLanguage:(id)language from:(id)from;
- (UIKBMultilingualKeyboardArtworkView)initWithLanguage1:(id)language1 andLanguage2:(id)language2;
- (void)animateBubblesWithExample1:(id)example1 example2:(id)example2 altExample1:(id)altExample1 altExample2:(id)altExample2 showAltExample:(BOOL)example;
@end

@implementation UIKBMultilingualKeyboardArtworkView

- (UIKBMultilingualKeyboardArtworkView)initWithLanguage1:(id)language1 andLanguage2:(id)language2
{
  language1Copy = language1;
  language2Copy = language2;
  v45.receiver = self;
  v45.super_class = UIKBMultilingualKeyboardArtworkView;
  v9 = [(UIView *)&v45 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_language1, language1);
    objc_storeStrong(&v10->_language2, language2);
    v11 = objc_opt_new();
    [(UIKBMultilingualKeyboardArtworkView *)v10 setMemoji1:v11];

    memoji1 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji1];
    [memoji1 setTranslatesAutoresizingMaskIntoConstraints:0];

    memoji12 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji1];
    [memoji12 setAlpha:0.0];

    v14 = objc_opt_class();
    _memojiAssets1 = [objc_opt_class() _memojiAssets1];
    v16 = [v14 memojiImageForLanguage:language1Copy from:_memojiAssets1];
    memoji13 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji1];
    [memoji13 setImage:v16];

    memoji14 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji1];
    [(UIView *)v10 addSubview:memoji14];

    v19 = objc_opt_new();
    [(UIKBMultilingualKeyboardArtworkView *)v10 setMemoji2:v19];

    memoji2 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji2];
    [memoji2 setTranslatesAutoresizingMaskIntoConstraints:0];

    memoji22 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji2];
    [memoji22 setAlpha:0.0];

    v22 = objc_opt_class();
    _memojiAssets2 = [objc_opt_class() _memojiAssets2];
    v24 = [v22 memojiImageForLanguage:language2Copy from:_memojiAssets2];
    memoji23 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji2];
    [memoji23 setImage:v24];

    memoji24 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji2];
    [(UIView *)v10 addSubview:memoji24];

    v27 = TIInputModeGetLanguage();
    LODWORD(_memojiAssets2) = [v27 isEqualToString:@"en"];

    if (_memojiAssets2)
    {
      v28 = GetExampleSentencesForLanguage(language2Copy);
      v29 = [v28 objectAtIndexedSubscript:0];

      v30 = language2Copy;
      v31 = language2Copy;
    }

    else
    {
      v32 = TIInputModeGetLanguage();
      v33 = [v32 isEqualToString:@"en"];

      v34 = GetExampleSentencesForLanguage(language1Copy);
      v29 = [v34 objectAtIndexedSubscript:0];

      if (v33)
      {
        v30 = language1Copy;
      }

      else
      {
        v30 = language2Copy;
      }

      v31 = language1Copy;
    }

    v35 = GetExampleSentencesForLanguage(v30);
    v36 = [v35 objectAtIndexedSubscript:1];

    v37 = GetAlternativeExampleSentencesForLanguage(v31);
    v38 = [v37 objectAtIndexedSubscript:0];

    v39 = GetAlternativeExampleSentencesForLanguage(v30);
    v40 = [v39 objectAtIndexedSubscript:1];

    if (![v29 length] || !objc_msgSend(v36, "length"))
    {
      if (os_variant_has_internal_diagnostics())
      {
        v43 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          *v44 = 0;
          _os_log_fault_impl(&dword_188A29000, v43, OS_LOG_TYPE_FAULT, "Multilingual Education UI: Required Examples are empty.", v44, 2u);
        }
      }

      else
      {
        v42 = *(__UILogGetCategoryCachedImpl("Assert", &initWithLanguage1_andLanguage2____s_category) + 8);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *v44 = 0;
          _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_ERROR, "Multilingual Education UI: Required Examples are empty.", v44, 2u);
        }
      }
    }

    [(UIKBMultilingualKeyboardArtworkView *)v10 animateBubblesWithExample1:v29 example2:v36 altExample1:v38 altExample2:v40 showAltExample:0];
  }

  return v10;
}

- (void)animateBubblesWithExample1:(id)example1 example2:(id)example2 altExample1:(id)altExample1 altExample2:(id)altExample2 showAltExample:(BOOL)example
{
  exampleCopy = example;
  v121[16] = *MEMORY[0x1E69E9840];
  example1Copy = example1;
  example2Copy = example2;
  altExample1Copy = altExample1;
  altExample2Copy = altExample2;
  bubble1 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  [bubble1 removeFromSuperview];

  bubble2 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  [bubble2 removeFromSuperview];

  if ([altExample1Copy length])
  {
    v18 = [altExample2Copy length] != 0;
  }

  else
  {
    v18 = 0;
  }

  v107 = v18;
  v19 = [UIKBTutorialConversationBubble alloc];
  if (exampleCopy && v18)
  {
    v20 = altExample1Copy;
  }

  else
  {
    v20 = example1Copy;
  }

  if (exampleCopy && v18)
  {
    v21 = altExample2Copy;
  }

  else
  {
    v21 = example2Copy;
  }

  v106 = altExample1Copy;
  v22 = [(UIKBTutorialConversationBubble *)v19 initWithText:v20 originationDirection:1];
  [(UIKBMultilingualKeyboardArtworkView *)self setBubble1:v22];

  bubble12 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  [bubble12 setTranslatesAutoresizingMaskIntoConstraints:0];

  bubble13 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  [(UIView *)self addSubview:bubble13];

  v25 = [[UIKBTutorialConversationBubble alloc] initWithText:v21 originationDirection:0];
  [(UIKBMultilingualKeyboardArtworkView *)self setBubble2:v25];

  bubble22 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  [bubble22 setTranslatesAutoresizingMaskIntoConstraints:0];

  bubble23 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  [(UIView *)self addSubview:bubble23];

  v76 = MEMORY[0x1E69977A0];
  memoji1 = [(UIKBMultilingualKeyboardArtworkView *)self memoji1];
  bottomAnchor = [memoji1 bottomAnchor];
  centerYAnchor = [(UIView *)self centerYAnchor];
  v102 = [bottomAnchor constraintEqualToAnchor:centerYAnchor constant:-10.0];
  v121[0] = v102;
  memoji12 = [(UIKBMultilingualKeyboardArtworkView *)self memoji1];
  trailingAnchor = [memoji12 trailingAnchor];
  centerXAnchor = [(UIView *)self centerXAnchor];
  v96 = [trailingAnchor constraintEqualToAnchor:centerXAnchor];
  v121[1] = v96;
  memoji13 = [(UIKBMultilingualKeyboardArtworkView *)self memoji1];
  widthAnchor = [memoji13 widthAnchor];
  v93 = [widthAnchor constraintEqualToConstant:50.0];
  v121[2] = v93;
  memoji14 = [(UIKBMultilingualKeyboardArtworkView *)self memoji1];
  heightAnchor = [memoji14 heightAnchor];
  v88 = [heightAnchor constraintEqualToConstant:50.0];
  v121[3] = v88;
  memoji2 = [(UIKBMultilingualKeyboardArtworkView *)self memoji2];
  topAnchor = [memoji2 topAnchor];
  centerYAnchor2 = [(UIView *)self centerYAnchor];
  v84 = [topAnchor constraintEqualToAnchor:centerYAnchor2 constant:10.0];
  v121[4] = v84;
  memoji22 = [(UIKBMultilingualKeyboardArtworkView *)self memoji2];
  leadingAnchor = [memoji22 leadingAnchor];
  centerXAnchor2 = [(UIView *)self centerXAnchor];
  v80 = [leadingAnchor constraintEqualToAnchor:centerXAnchor2];
  v121[5] = v80;
  memoji23 = [(UIKBMultilingualKeyboardArtworkView *)self memoji2];
  widthAnchor2 = [memoji23 widthAnchor];
  v77 = [widthAnchor2 constraintEqualToConstant:50.0];
  v121[6] = v77;
  memoji24 = [(UIKBMultilingualKeyboardArtworkView *)self memoji2];
  heightAnchor2 = [memoji24 heightAnchor];
  v73 = [heightAnchor2 constraintEqualToConstant:50.0];
  v121[7] = v73;
  bubble14 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  leadingAnchor2 = [bubble14 leadingAnchor];
  memoji15 = [(UIKBMultilingualKeyboardArtworkView *)self memoji1];
  trailingAnchor2 = [memoji15 trailingAnchor];
  v68 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v121[8] = v68;
  bubble15 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  topAnchor2 = [bubble15 topAnchor];
  memoji16 = [(UIKBMultilingualKeyboardArtworkView *)self memoji1];
  topAnchor3 = [memoji16 topAnchor];
  v63 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v121[9] = v63;
  bubble16 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  widthAnchor3 = [bubble16 widthAnchor];
  v60 = [widthAnchor3 constraintEqualToConstant:148.0];
  v121[10] = v60;
  bubble17 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  trailingAnchor3 = [bubble17 trailingAnchor];
  trailingAnchor4 = [(UIView *)self trailingAnchor];
  v56 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
  v121[11] = v56;
  bubble24 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  trailingAnchor5 = [bubble24 trailingAnchor];
  memoji25 = [(UIKBMultilingualKeyboardArtworkView *)self memoji2];
  leadingAnchor3 = [memoji25 leadingAnchor];
  v51 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor3 constant:10.0];
  v121[12] = v51;
  bubble25 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  topAnchor4 = [bubble25 topAnchor];
  memoji26 = [(UIKBMultilingualKeyboardArtworkView *)self memoji2];
  topAnchor5 = [memoji26 topAnchor];
  [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v28 = v99 = exampleCopy;
  v121[13] = v28;
  [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  v29 = v97 = altExample2Copy;
  widthAnchor4 = [v29 widthAnchor];
  v31 = [widthAnchor4 constraintEqualToConstant:148.0];
  v121[14] = v31;
  bubble26 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  leadingAnchor4 = [bubble26 leadingAnchor];
  leadingAnchor5 = [(UIView *)self leadingAnchor];
  [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:leadingAnchor5];
  v35 = v92 = example1Copy;
  v121[15] = v35;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:16];
  v36 = v90 = example2Copy;
  [v76 activateConstraints:v36];

  memoji17 = [(UIKBMultilingualKeyboardArtworkView *)self memoji1];
  [memoji17 setAlpha:0.0];

  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __114__UIKBMultilingualKeyboardArtworkView_animateBubblesWithExample1_example2_altExample1_altExample2_showAltExample___block_invoke;
  v120[3] = &unk_1E70F3590;
  v120[4] = self;
  [UIView animateWithDuration:4 delay:v120 options:&__block_literal_global_125 animations:0.8 completion:0.0];
  memset(&v119, 0, sizeof(v119));
  CGAffineTransformMakeScale(&v119, 0.1, 0.1);
  bubble18 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  [bubble18 setAlpha:0.0];

  bubble19 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  v118 = v119;
  [bubble19 setTransform:&v118];

  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __114__UIKBMultilingualKeyboardArtworkView_animateBubblesWithExample1_example2_altExample1_altExample2_showAltExample___block_invoke_3;
  v117[3] = &unk_1E70F3590;
  v117[4] = self;
  [UIView animateWithDuration:4 delay:v117 usingSpringWithDamping:&__block_literal_global_10_2 initialSpringVelocity:0.5 options:0.2 animations:0.75 completion:0.0];
  memoji27 = [(UIKBMultilingualKeyboardArtworkView *)self memoji2];
  [memoji27 setAlpha:0.0];

  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __114__UIKBMultilingualKeyboardArtworkView_animateBubblesWithExample1_example2_altExample1_altExample2_showAltExample___block_invoke_5;
  v116[3] = &unk_1E70F3590;
  v116[4] = self;
  [UIView animateWithDuration:4 delay:v116 options:&__block_literal_global_12_1 animations:0.8 completion:0.5];
  bubble27 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  [bubble27 setAlpha:0.0];

  bubble28 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  v118 = v119;
  [bubble28 setTransform:&v118];

  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __114__UIKBMultilingualKeyboardArtworkView_animateBubblesWithExample1_example2_altExample1_altExample2_showAltExample___block_invoke_7;
  v115[3] = &unk_1E70F3590;
  v115[4] = self;
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v108[2] = __114__UIKBMultilingualKeyboardArtworkView_animateBubblesWithExample1_example2_altExample1_altExample2_showAltExample___block_invoke_8;
  v108[3] = &unk_1E71005B8;
  v113 = v107;
  v108[4] = self;
  v109 = v92;
  v110 = v90;
  v111 = v106;
  v112 = v97;
  v114 = v99;
  v43 = v97;
  v44 = v106;
  v45 = v90;
  v46 = v92;
  [UIView animateWithDuration:4 delay:v115 usingSpringWithDamping:v108 initialSpringVelocity:0.5 options:0.7 animations:0.75 completion:0.0];
}

void __114__UIKBMultilingualKeyboardArtworkView_animateBubblesWithExample1_example2_altExample1_altExample2_showAltExample___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) memoji1];
  [v1 setAlpha:1.0];
}

void __114__UIKBMultilingualKeyboardArtworkView_animateBubblesWithExample1_example2_altExample1_altExample2_showAltExample___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) bubble1];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) bubble1];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v5];
}

void __114__UIKBMultilingualKeyboardArtworkView_animateBubblesWithExample1_example2_altExample1_altExample2_showAltExample___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) memoji2];
  [v1 setAlpha:1.0];
}

void __114__UIKBMultilingualKeyboardArtworkView_animateBubblesWithExample1_example2_altExample1_altExample2_showAltExample___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) bubble2];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) bubble2];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v5];
}

void __114__UIKBMultilingualKeyboardArtworkView_animateBubblesWithExample1_example2_altExample1_altExample2_showAltExample___block_invoke_8(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v16[7] = v1;
    v16[8] = v2;
    objc_initWeak(v16, *(a1 + 32));
    v4 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __114__UIKBMultilingualKeyboardArtworkView_animateBubblesWithExample1_example2_altExample1_altExample2_showAltExample___block_invoke_9;
    block[3] = &unk_1E7100590;
    objc_copyWeak(&v14, v16);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    *&v10 = v5;
    *(&v10 + 1) = v6;
    v12 = v10;
    v13 = v9;
    v15 = *(a1 + 73);
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(v16);
  }
}

void __114__UIKBMultilingualKeyboardArtworkView_animateBubblesWithExample1_example2_altExample1_altExample2_showAltExample___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained animateBubblesWithExample1:*(a1 + 32) example2:*(a1 + 40) altExample1:*(a1 + 48) altExample2:*(a1 + 56) showAltExample:(*(a1 + 72) & 1) == 0];
}

+ (id)memojiImageForLanguage:(id)language from:(id)from
{
  fromCopy = from;
  v5 = [fromCopy count];
  v6 = arc4random();
  v7 = [fromCopy objectAtIndexedSubscript:vcvtmd_s64_f64(v6 / 4294967300.0 * v5 + (1.0 - v6 / 4294967300.0) * 0.0)];

  v8 = [UIImage kitImageNamed:v7];

  return v8;
}

+ (id)_memojiAssets1
{
  if (qword_1ED49A010 != -1)
  {
    dispatch_once(&qword_1ED49A010, &__block_literal_global_15_1);
  }

  v3 = _MergedGlobals_3_5;

  return v3;
}

void __53__UIKBMultilingualKeyboardArtworkView__memojiAssets1__block_invoke()
{
  v0 = _MergedGlobals_3_5;
  _MergedGlobals_3_5 = &unk_1EFE2B620;
}

+ (id)_memojiAssets2
{
  if (qword_1ED49A020 != -1)
  {
    dispatch_once(&qword_1ED49A020, &__block_literal_global_32);
  }

  v3 = qword_1ED49A018;

  return v3;
}

void __53__UIKBMultilingualKeyboardArtworkView__memojiAssets2__block_invoke()
{
  v0 = qword_1ED49A018;
  qword_1ED49A018 = &unk_1EFE2B638;
}

@end