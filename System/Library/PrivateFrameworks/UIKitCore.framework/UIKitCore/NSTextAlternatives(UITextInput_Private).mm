@interface NSTextAlternatives(UITextInput_Private)
+ (id)attributedText:()UITextInput_Private withAlternativeTexts:style:;
@end

@implementation NSTextAlternatives(UITextInput_Private)

+ (id)attributedText:()UITextInput_Private withAlternativeTexts:style:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  if ([v7 count])
  {
    v9 = [[off_1E70ECBA0 alloc] initWithPrimaryString:v8 alternativeStrings:v7 isLowConfidence:a5 == 1];
    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v14 = *off_1E70EC9F8;
    v15[0] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = [v10 initWithString:v8 attributes:v11];

    v8 = v9;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];
  }

  return v12;
}

@end