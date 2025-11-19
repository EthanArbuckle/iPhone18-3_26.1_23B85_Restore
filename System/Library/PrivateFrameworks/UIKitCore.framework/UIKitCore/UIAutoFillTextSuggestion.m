@interface UIAutoFillTextSuggestion
+ (id)autoFillSuggestionWithContents:(id)a3;
- (UIAutoFillTextSuggestion)initWithContents:(id)a3;
@end

@implementation UIAutoFillTextSuggestion

+ (id)autoFillSuggestionWithContents:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__UIAutoFillTextSuggestion_autoFillSuggestionWithContents___block_invoke;
  v10[3] = &unk_1E70F7970;
  v11 = v6;
  v7 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];

  v8 = [[a1 alloc] initWithContents:v7];

  return v8;
}

void __59__UIAutoFillTextSuggestion_autoFillSuggestionWithContents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
    }
  }
}

- (UIAutoFillTextSuggestion)initWithContents:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIAutoFillTextSuggestion;
  v5 = [(UITextSuggestion *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    contents = v5->_contents;
    v5->_contents = v6;
  }

  return v5;
}

@end