@interface NSAttributedString(_UIAnimatedTextSpacer_Factory)
+ (id)attributedStringWithAnimatedTextSpacer:()_UIAnimatedTextSpacer_Factory attributes:;
@end

@implementation NSAttributedString(_UIAnimatedTextSpacer_Factory)

+ (id)attributedStringWithAnimatedTextSpacer:()_UIAnimatedTextSpacer_Factory attributes:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _animatedTextSpacerAttributeKey];
  v14 = v8;
  v15[0] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  if ([v7 count])
  {
    v10 = [v7 mutableCopy];
    v11 = [a1 _animatedTextSpacerAttributeKey];
    [v10 setObject:v6 forKeyedSubscript:v11];
  }

  else
  {
    v10 = v9;
  }

  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\uFFFC\n" attributes:v10];

  return v12;
}

@end