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
  configuration = [self configuration];
  attributedTitle = [configuration attributedTitle];

  if ([attributedTitle length])
  {
    v7 = [attributedTitle attributesAtIndex:0 longestEffectiveRange:0 inRange:{0, objc_msgSend(attributedTitle, "length")}];
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
  configuration2 = [self configuration];
  [configuration2 setAttributedTitle:v9];
  [self setConfiguration:configuration2];
}

- (void)pkui_updateConfigurationWithFont:()PKUIUtilities
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  configuration = [self configuration];
  attributedTitle = [configuration attributedTitle];
  v7 = [attributedTitle mutableCopy];

  v10 = *MEMORY[0x1E69DB648];
  v11[0] = v4;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [v7 setAttributes:v8 range:{0, objc_msgSend(v7, "length")}];
  configuration2 = [self configuration];
  [configuration2 setAttributedTitle:v7];
  [self setConfiguration:configuration2];
}

- (void)pkui_updateConfigurationWithImage:()PKUIUtilities
{
  v4 = a3;
  configuration = [self configuration];
  [configuration setImage:v4];

  [self setConfiguration:configuration];
}

- (void)pkui_updateConfigurationShowingActivityIndicator:()PKUIUtilities
{
  configuration = [self configuration];
  [configuration setShowsActivityIndicator:a3];
  [self setConfiguration:configuration];
}

- (void)pkui_updateTitleTextAttributesWithFont:()PKUIUtilities
{
  v4 = a3;
  configuration = [self configuration];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__UIButton_PKUIUtilities__pkui_updateTitleTextAttributesWithFont___block_invoke;
  v7[3] = &unk_1E8013EE8;
  v8 = v4;
  v6 = v4;
  [configuration setTitleTextAttributesTransformer:v7];
  [self setConfiguration:configuration];
}

@end