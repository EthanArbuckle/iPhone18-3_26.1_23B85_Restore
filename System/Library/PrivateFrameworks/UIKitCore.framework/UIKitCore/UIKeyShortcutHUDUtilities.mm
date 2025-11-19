@interface UIKeyShortcutHUDUtilities
@end

@implementation UIKeyShortcutHUDUtilities

void __40___UIKeyShortcutHUDUtilities_searchIcon__block_invoke()
{
  v0 = [UIFontMetrics metricsForTextStyle:@"UICTFontTextStyleBody"];
  v1 = [off_1E70ECC18 systemFontOfSize:14.0 weight:*off_1E70ECD20];
  v5 = [v0 scaledFontForFont:v1];

  v2 = [UIImageSymbolConfiguration configurationWithFont:v5 scale:3];
  v3 = [UIImage systemImageNamed:@"magnifyingglass" withConfiguration:v2];
  v4 = _MergedGlobals_1403[0];
  _MergedGlobals_1403[0] = v3;
}

void __56___UIKeyShortcutHUDUtilities_searchIconAttributedString__block_invoke()
{
  v0 = MEMORY[0x1E696AAB0];
  v4 = +[_UIKeyShortcutHUDUtilities searchIcon];
  v1 = [off_1E70ECBA8 textAttachmentWithImage:v4];
  v2 = [v0 attributedStringWithAttachment:v1];
  v3 = qword_1ED4A30A0;
  qword_1ED4A30A0 = v2;
}

void __119___UIKeyShortcutHUDUtilities_modifiersAttributedStringForMenuLeafShortcut_font_shouldDisplayGlobeModiferAsGlobeSymbol___block_invoke(uint64_t a1)
{
  v31 = [UIImageSymbolConfiguration configurationWithFont:*(a1 + 32) scale:1];
  v30 = [UIImage systemImageNamed:@"control" withConfiguration:v31];
  v1 = [UIImage systemImageNamed:@"option" withConfiguration:v31];
  v2 = [UIImage systemImageNamed:@"shift" withConfiguration:v31];
  v3 = [UIImage systemImageNamed:@"command" withConfiguration:v31];
  v4 = [UIImage systemImageNamed:@"globe" withConfiguration:v31];
  v5 = [UIImage systemImageNamed:@"fn" withConfiguration:v31];
  v6 = MEMORY[0x1E696AAB0];
  v7 = [off_1E70ECBA8 textAttachmentWithImage:v30];
  v8 = [v6 attributedStringWithAttachment:v7];
  v9 = qword_1ED4A30B0;
  qword_1ED4A30B0 = v8;

  v10 = MEMORY[0x1E696AAB0];
  v11 = [off_1E70ECBA8 textAttachmentWithImage:v1];
  v12 = [v10 attributedStringWithAttachment:v11];
  v13 = qword_1ED4A30B8;
  qword_1ED4A30B8 = v12;

  v14 = MEMORY[0x1E696AAB0];
  v15 = [off_1E70ECBA8 textAttachmentWithImage:v2];
  v16 = [v14 attributedStringWithAttachment:v15];
  v17 = qword_1ED4A30C0;
  qword_1ED4A30C0 = v16;

  v18 = MEMORY[0x1E696AAB0];
  v19 = [off_1E70ECBA8 textAttachmentWithImage:v3];
  v20 = [v18 attributedStringWithAttachment:v19];
  v21 = qword_1ED4A30C8;
  qword_1ED4A30C8 = v20;

  v22 = MEMORY[0x1E696AAB0];
  v23 = [off_1E70ECBA8 textAttachmentWithImage:v4];
  v24 = [v22 attributedStringWithAttachment:v23];
  v25 = qword_1ED4A30D0;
  qword_1ED4A30D0 = v24;

  v26 = MEMORY[0x1E696AAB0];
  v27 = [off_1E70ECBA8 textAttachmentWithImage:v5];
  v28 = [v26 attributedStringWithAttachment:v27];
  v29 = qword_1ED4A30D8;
  qword_1ED4A30D8 = v28;
}

void __182___UIKeyShortcutHUDUtilities_inputAttributedStringForMenuLeafShortcut_symbolFont_shouldDisplayEscShortcutAlternative_shouldMirrorShortcutInputs_shouldStyleAsSingleCharacterOrSymbol___block_invoke(uint64_t a1)
{
  v11[10] = *MEMORY[0x1E69E9840];
  v1 = [UIImageSymbolConfiguration configurationWithFont:*(a1 + 32) scale:1];
  v2 = qword_1ED4A30E8;
  qword_1ED4A30E8 = v1;

  v10[0] = @"UIKeyInputUpArrow";
  v10[1] = @"UIKeyInputDownArrow";
  v11[0] = @"arrowtriangle.up.fill";
  v11[1] = @"arrowtriangle.down.fill";
  v10[2] = @"UIKeyInputLeftArrow";
  v10[3] = @"UIKeyInputRightArrow";
  v11[2] = @"arrowtriangle.left.fill";
  v11[3] = @"arrowtriangle.right.fill";
  v10[4] = @"UIKeyInputEscape";
  v10[5] = @"\b";
  v11[4] = @"escape";
  v11[5] = @"delete.left";
  v10[6] = @"\t";
  v10[7] = @"\n";
  v11[6] = @"arrow.right.to.line";
  v11[7] = @"return.left";
  v10[8] = @"\r";
  v10[9] = @"⌅";
  v11[8] = @"return.left";
  v11[9] = @"projective";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:10];
  v4 = qword_1ED4A30F0;
  qword_1ED4A30F0 = v3;

  v8[0] = @"\b";
  v8[1] = @"\t";
  v9[0] = @"delete.right";
  v9[1] = @"arrow.left.to.line";
  v8[2] = @"\n";
  v8[3] = @"\r";
  v9[2] = @"return.right";
  v9[3] = @"return.right";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];
  v6 = qword_1ED4A30F8;
  qword_1ED4A30F8 = v5;

  v7 = qword_1ED4A3100;
  qword_1ED4A3100 = &unk_1EFE34C20;
}

@end