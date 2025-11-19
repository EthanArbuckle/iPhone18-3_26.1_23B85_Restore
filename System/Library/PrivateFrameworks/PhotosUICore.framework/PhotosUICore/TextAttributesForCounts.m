@interface TextAttributesForCounts
@end

@implementation TextAttributesForCounts

void ___TextAttributesForCounts_block_invoke()
{
  v8[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DC888] labelColor];
  v1 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80]];
  v2 = [v1 fontDescriptorWithSymbolicTraits:0x8000];

  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];
  v4 = *MEMORY[0x1E69DB650];
  v7[0] = *MEMORY[0x1E69DB648];
  v7[1] = v4;
  v8[0] = v3;
  v8[1] = v0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v6 = _TextAttributesForCounts__textAttributes;
  _TextAttributesForCounts__textAttributes = v5;
}

@end