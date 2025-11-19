@interface UISmartActionPollSuggestion
+ (id)pollDictionaryWithTitle:(id)a3 options:(id)a4;
- (UISmartActionPollSuggestion)initWithTitle:(id)a3 options:(id)a4;
@end

@implementation UISmartActionPollSuggestion

+ (id)pollDictionaryWithTitle:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setObject:v7 forKey:@"pollTitle"];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__UISmartActionPollSuggestion_pollDictionaryWithTitle_options___block_invoke;
  v12[3] = &unk_1E710E740;
  v13 = v8;
  v9 = v8;
  [v6 enumerateObjectsUsingBlock:v12];

  v10 = [v9 copy];

  return v10;
}

void __63__UISmartActionPollSuggestion_pollDictionaryWithTitle_options___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (a3 < 0x64)
  {
    v6 = *(a1 + 32);
    v8 = [a2 option];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pollOption%02lu", a3];
    [v6 setObject:v8 forKey:v7];
  }

  else
  {
    *a4 = 1;
  }
}

- (UISmartActionPollSuggestion)initWithTitle:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() pollDictionaryWithTitle:v6 options:v7];
  v15.receiver = self;
  v15.super_class = UISmartActionPollSuggestion;
  v9 = [(UISmartActionSuggestion *)&v15 initWithSmartPollsResponse:v8];
  if (v9)
  {
    v10 = [v6 copy];
    title = v9->_title;
    v9->_title = v10;

    v12 = [v7 copy];
    options = v9->_options;
    v9->_options = v12;
  }

  return v9;
}

@end