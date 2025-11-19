@interface UIAdaptLocalizedStringForView
@end

@implementation UIAdaptLocalizedStringForView

void ___UIAdaptLocalizedStringForView_block_invoke()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = [off_1E70ECC18 defaultFontForTextStyle:@"UICTFontTextStyleBody"];
  v1 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = *off_1E70EC918;
  v7[0] = v0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [v1 initWithString:@"M" attributes:v2];

  v4 = CTLineCreateWithAttributedString(v3);
  if (v4)
  {
    v5 = v4;
    qword_1EA993178 = CTLineGetTypographicBounds(v4, 0, 0, 0);
    CFRelease(v5);
  }
}

@end