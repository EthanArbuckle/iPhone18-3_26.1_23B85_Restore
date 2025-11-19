@interface UIButton(PKUIUtilities)
- (void)pkui_updateConfigurationShowingActivityIndicator:()PKUIUtilities;
- (void)pkui_updateConfigurationWithFont:()PKUIUtilities;
- (void)pkui_updateConfigurationWithImage:()PKUIUtilities;
- (void)pkui_updateConfigurationWithTitle:()PKUIUtilities;
- (void)pkui_updateTitleTextAttributesWithFont:()PKUIUtilities;
@end

@implementation UIButton(PKUIUtilities)

- (void)pkui_updateConfigurationWithTitle:()PKUIUtilities
{
  v4 = a3;
  v5 = [a1 configuration];
  v6 = [v5 attributedTitle];

  if ([v6 length])
  {
    v7 = [v6 attributesAtIndex:0 longestEffectiveRange:0 inRange:{0, objc_msgSend(v6, "length")}];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = &stru_1F3BD7330;
  }

  v11 = v8;
  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8 attributes:v7];
  v10 = [a1 configuration];
  [v10 setAttributedTitle:v9];
  [a1 setConfiguration:v10];
}

- (void)pkui_updateConfigurationWithFont:()PKUIUtilities
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 configuration];
  v6 = [v5 attributedTitle];
  v7 = [v6 mutableCopy];

  v10 = *MEMORY[0x1E69DB648];
  v11[0] = v4;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [v7 setAttributes:v8 range:{0, objc_msgSend(v7, "length")}];
  v9 = [a1 configuration];
  [v9 setAttributedTitle:v7];
  [a1 setConfiguration:v9];
}

- (void)pkui_updateConfigurationWithImage:()PKUIUtilities
{
  v4 = a3;
  v5 = [a1 configuration];
  [v5 setImage:v4];

  [a1 setConfiguration:v5];
}

- (void)pkui_updateConfigurationShowingActivityIndicator:()PKUIUtilities
{
  v5 = [a1 configuration];
  [v5 setShowsActivityIndicator:a3];
  [a1 setConfiguration:v5];
}

- (void)pkui_updateTitleTextAttributesWithFont:()PKUIUtilities
{
  v4 = a3;
  v5 = [a1 configuration];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__UIButton_PKUIUtilities__pkui_updateTitleTextAttributesWithFont___block_invoke;
  v7[3] = &unk_1E8013EE8;
  v8 = v4;
  v6 = v4;
  [v5 setTitleTextAttributesTransformer:v7];
  [a1 setConfiguration:v5];
}

@end