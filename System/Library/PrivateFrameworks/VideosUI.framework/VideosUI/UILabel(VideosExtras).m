@interface UILabel(VideosExtras)
- (uint64_t)_textAlignmentFromElementAlignment:()VideosExtras;
- (void)configureForIKTextElement:()VideosExtras fontDescriptor:textStyle:capitalize:overrideWithTraitCollection:;
@end

@implementation UILabel(VideosExtras)

- (uint64_t)_textAlignmentFromElementAlignment:()VideosExtras
{
  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 3);
  }
}

- (void)configureForIKTextElement:()VideosExtras fontDescriptor:textStyle:capitalize:overrideWithTraitCollection:
{
  v35[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = MEMORY[0x1E69DB880];
  v16 = a4;
  v17 = [v15 preferredFontDescriptorWithTextStyle:v13];
  v18 = [v16 fontAttributes];

  v19 = [v17 fontDescriptorByAddingAttributes:v18];

  v33 = v19;
  v20 = [MEMORY[0x1E69DB878] fontWithDescriptor:v19 size:0.0];
  if (v14)
  {
    v21 = MEMORY[0x1E69DB878];
    v22 = [v14 preferredContentSizeCategory];
    v23 = [v21 _preferredFontForTextStyle:v13 maximumContentSizeCategory:v22];

    v20 = v23;
  }

  [a1 setFont:v20];
  v24 = [v12 maxLines];
  [a1 setNumberOfLines:v24 & ~(v24 >> 63)];
  v25 = [v12 color];
  if (v25)
  {
    [a1 setTextColor:v25];
  }

  [a1 setTextAlignment:{objc_msgSend(a1, "_textAlignmentFromElementAlignment:", objc_msgSend(v12, "alignment"))}];
  v26 = [MEMORY[0x1E696AAB0] attributedStringWithTextElement:v12 baseFont:v20];
  if (a6)
  {
    v27 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v26];
    v28 = [v26 string];
    v29 = [v28 uppercaseString];

    [v27 replaceCharactersInRange:0 withString:{objc_msgSend(v29, "length"), v29}];
    v26 = v27;
  }

  if (v14)
  {
    v30 = [v26 length];
    v34 = *MEMORY[0x1E69DB648];
    v35[0] = v20;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v32 = [v26 mutableCopy];
    [v32 addAttributes:v31 range:{0, v30}];

    v26 = v32;
  }

  [a1 setAttributedText:v26];
}

@end