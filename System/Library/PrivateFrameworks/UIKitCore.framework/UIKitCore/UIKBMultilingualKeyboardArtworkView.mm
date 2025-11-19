@interface UIKBMultilingualKeyboardArtworkView
+ (id)_memojiAssets1;
+ (id)_memojiAssets2;
+ (id)memojiImageForLanguage:(id)a3 from:(id)a4;
- (UIKBMultilingualKeyboardArtworkView)initWithLanguage1:(id)a3 andLanguage2:(id)a4;
- (void)animateBubblesWithExample1:(id)a3 example2:(id)a4 altExample1:(id)a5 altExample2:(id)a6 showAltExample:(BOOL)a7;
@end

@implementation UIKBMultilingualKeyboardArtworkView

- (UIKBMultilingualKeyboardArtworkView)initWithLanguage1:(id)a3 andLanguage2:(id)a4
{
  v7 = a3;
  v8 = a4;
  v45.receiver = self;
  v45.super_class = UIKBMultilingualKeyboardArtworkView;
  v9 = [(UIView *)&v45 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_language1, a3);
    objc_storeStrong(&v10->_language2, a4);
    v11 = objc_opt_new();
    [(UIKBMultilingualKeyboardArtworkView *)v10 setMemoji1:v11];

    v12 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji1];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji1];
    [v13 setAlpha:0.0];

    v14 = objc_opt_class();
    v15 = [objc_opt_class() _memojiAssets1];
    v16 = [v14 memojiImageForLanguage:v7 from:v15];
    v17 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji1];
    [v17 setImage:v16];

    v18 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji1];
    [(UIView *)v10 addSubview:v18];

    v19 = objc_opt_new();
    [(UIKBMultilingualKeyboardArtworkView *)v10 setMemoji2:v19];

    v20 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji2];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji2];
    [v21 setAlpha:0.0];

    v22 = objc_opt_class();
    v23 = [objc_opt_class() _memojiAssets2];
    v24 = [v22 memojiImageForLanguage:v8 from:v23];
    v25 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji2];
    [v25 setImage:v24];

    v26 = [(UIKBMultilingualKeyboardArtworkView *)v10 memoji2];
    [(UIView *)v10 addSubview:v26];

    v27 = TIInputModeGetLanguage();
    LODWORD(v23) = [v27 isEqualToString:@"en"];

    if (v23)
    {
      v28 = GetExampleSentencesForLanguage(v8);
      v29 = [v28 objectAtIndexedSubscript:0];

      v30 = v8;
      v31 = v8;
    }

    else
    {
      v32 = TIInputModeGetLanguage();
      v33 = [v32 isEqualToString:@"en"];

      v34 = GetExampleSentencesForLanguage(v7);
      v29 = [v34 objectAtIndexedSubscript:0];

      if (v33)
      {
        v30 = v7;
      }

      else
      {
        v30 = v8;
      }

      v31 = v7;
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

- (void)animateBubblesWithExample1:(id)a3 example2:(id)a4 altExample1:(id)a5 altExample2:(id)a6 showAltExample:(BOOL)a7
{
  v7 = a7;
  v121[16] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  [v16 removeFromSuperview];

  v17 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  [v17 removeFromSuperview];

  if ([v14 length])
  {
    v18 = [v15 length] != 0;
  }

  else
  {
    v18 = 0;
  }

  v107 = v18;
  v19 = [UIKBTutorialConversationBubble alloc];
  if (v7 && v18)
  {
    v20 = v14;
  }

  else
  {
    v20 = v12;
  }

  if (v7 && v18)
  {
    v21 = v15;
  }

  else
  {
    v21 = v13;
  }

  v106 = v14;
  v22 = [(UIKBTutorialConversationBubble *)v19 initWithText:v20 originationDirection:1];
  [(UIKBMultilingualKeyboardArtworkView *)self setBubble1:v22];

  v23 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  [(UIView *)self addSubview:v24];

  v25 = [[UIKBTutorialConversationBubble alloc] initWithText:v21 originationDirection:0];
  [(UIKBMultilingualKeyboardArtworkView *)self setBubble2:v25];

  v26 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  [(UIView *)self addSubview:v27];

  v76 = MEMORY[0x1E69977A0];
  v105 = [(UIKBMultilingualKeyboardArtworkView *)self memoji1];
  v104 = [v105 bottomAnchor];
  v103 = [(UIView *)self centerYAnchor];
  v102 = [v104 constraintEqualToAnchor:v103 constant:-10.0];
  v121[0] = v102;
  v101 = [(UIKBMultilingualKeyboardArtworkView *)self memoji1];
  v100 = [v101 trailingAnchor];
  v98 = [(UIView *)self centerXAnchor];
  v96 = [v100 constraintEqualToAnchor:v98];
  v121[1] = v96;
  v95 = [(UIKBMultilingualKeyboardArtworkView *)self memoji1];
  v94 = [v95 widthAnchor];
  v93 = [v94 constraintEqualToConstant:50.0];
  v121[2] = v93;
  v91 = [(UIKBMultilingualKeyboardArtworkView *)self memoji1];
  v89 = [v91 heightAnchor];
  v88 = [v89 constraintEqualToConstant:50.0];
  v121[3] = v88;
  v87 = [(UIKBMultilingualKeyboardArtworkView *)self memoji2];
  v86 = [v87 topAnchor];
  v85 = [(UIView *)self centerYAnchor];
  v84 = [v86 constraintEqualToAnchor:v85 constant:10.0];
  v121[4] = v84;
  v83 = [(UIKBMultilingualKeyboardArtworkView *)self memoji2];
  v82 = [v83 leadingAnchor];
  v81 = [(UIView *)self centerXAnchor];
  v80 = [v82 constraintEqualToAnchor:v81];
  v121[5] = v80;
  v79 = [(UIKBMultilingualKeyboardArtworkView *)self memoji2];
  v78 = [v79 widthAnchor];
  v77 = [v78 constraintEqualToConstant:50.0];
  v121[6] = v77;
  v75 = [(UIKBMultilingualKeyboardArtworkView *)self memoji2];
  v74 = [v75 heightAnchor];
  v73 = [v74 constraintEqualToConstant:50.0];
  v121[7] = v73;
  v72 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  v70 = [v72 leadingAnchor];
  v71 = [(UIKBMultilingualKeyboardArtworkView *)self memoji1];
  v69 = [v71 trailingAnchor];
  v68 = [v70 constraintEqualToAnchor:v69 constant:-10.0];
  v121[8] = v68;
  v67 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  v65 = [v67 topAnchor];
  v66 = [(UIKBMultilingualKeyboardArtworkView *)self memoji1];
  v64 = [v66 topAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v121[9] = v63;
  v62 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  v61 = [v62 widthAnchor];
  v60 = [v61 constraintEqualToConstant:148.0];
  v121[10] = v60;
  v59 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  v58 = [v59 trailingAnchor];
  v57 = [(UIView *)self trailingAnchor];
  v56 = [v58 constraintLessThanOrEqualToAnchor:v57];
  v121[11] = v56;
  v55 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  v53 = [v55 trailingAnchor];
  v54 = [(UIKBMultilingualKeyboardArtworkView *)self memoji2];
  v52 = [v54 leadingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52 constant:10.0];
  v121[12] = v51;
  v50 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  v48 = [v50 topAnchor];
  v49 = [(UIKBMultilingualKeyboardArtworkView *)self memoji2];
  v47 = [v49 topAnchor];
  [v48 constraintEqualToAnchor:v47];
  v28 = v99 = v7;
  v121[13] = v28;
  [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  v29 = v97 = v15;
  v30 = [v29 widthAnchor];
  v31 = [v30 constraintEqualToConstant:148.0];
  v121[14] = v31;
  v32 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  v33 = [v32 leadingAnchor];
  v34 = [(UIView *)self leadingAnchor];
  [v33 constraintGreaterThanOrEqualToAnchor:v34];
  v35 = v92 = v12;
  v121[15] = v35;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:16];
  v36 = v90 = v13;
  [v76 activateConstraints:v36];

  v37 = [(UIKBMultilingualKeyboardArtworkView *)self memoji1];
  [v37 setAlpha:0.0];

  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __114__UIKBMultilingualKeyboardArtworkView_animateBubblesWithExample1_example2_altExample1_altExample2_showAltExample___block_invoke;
  v120[3] = &unk_1E70F3590;
  v120[4] = self;
  [UIView animateWithDuration:4 delay:v120 options:&__block_literal_global_125 animations:0.8 completion:0.0];
  memset(&v119, 0, sizeof(v119));
  CGAffineTransformMakeScale(&v119, 0.1, 0.1);
  v38 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  [v38 setAlpha:0.0];

  v39 = [(UIKBMultilingualKeyboardArtworkView *)self bubble1];
  v118 = v119;
  [v39 setTransform:&v118];

  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __114__UIKBMultilingualKeyboardArtworkView_animateBubblesWithExample1_example2_altExample1_altExample2_showAltExample___block_invoke_3;
  v117[3] = &unk_1E70F3590;
  v117[4] = self;
  [UIView animateWithDuration:4 delay:v117 usingSpringWithDamping:&__block_literal_global_10_2 initialSpringVelocity:0.5 options:0.2 animations:0.75 completion:0.0];
  v40 = [(UIKBMultilingualKeyboardArtworkView *)self memoji2];
  [v40 setAlpha:0.0];

  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __114__UIKBMultilingualKeyboardArtworkView_animateBubblesWithExample1_example2_altExample1_altExample2_showAltExample___block_invoke_5;
  v116[3] = &unk_1E70F3590;
  v116[4] = self;
  [UIView animateWithDuration:4 delay:v116 options:&__block_literal_global_12_1 animations:0.8 completion:0.5];
  v41 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  [v41 setAlpha:0.0];

  v42 = [(UIKBMultilingualKeyboardArtworkView *)self bubble2];
  v118 = v119;
  [v42 setTransform:&v118];

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

+ (id)memojiImageForLanguage:(id)a3 from:(id)a4
{
  v4 = a4;
  v5 = [v4 count];
  v6 = arc4random();
  v7 = [v4 objectAtIndexedSubscript:vcvtmd_s64_f64(v6 / 4294967300.0 * v5 + (1.0 - v6 / 4294967300.0) * 0.0)];

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