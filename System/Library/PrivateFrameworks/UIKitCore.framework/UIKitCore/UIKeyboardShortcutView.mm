@interface UIKeyboardShortcutView
@end

@implementation UIKeyboardShortcutView

void __47___UIKeyboardShortcutView__defaultStandardFont__block_invoke()
{
  v0 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
  v1 = _MergedGlobals_5_0;
  _MergedGlobals_5_0 = v0;
}

void __53___UIKeyboardShortcutView__defaultInputCharacterFont__block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleBody"];
  v5 = *off_1E70ECC98;
  v6[0] = &unk_1EFE2B2A8;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = [v0 fontDescriptorByAddingAttributes:v1];

  v3 = [off_1E70ECC18 fontWithDescriptor:v2 size:0.0];
  v4 = qword_1ED49A4E8;
  qword_1ED49A4E8 = v3;
}

@end