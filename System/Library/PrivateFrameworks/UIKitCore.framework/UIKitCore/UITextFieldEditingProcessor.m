@interface UITextFieldEditingProcessor
@end

@implementation UITextFieldEditingProcessor

void __60___UITextFieldEditingProcessor_beginEditingWithTextStorage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __60___UITextFieldEditingProcessor_beginEditingWithTextStorage___block_invoke_2;
  v14 = &unk_1E7126218;
  v15 = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  v16 = v5;
  v17 = v6;
  [v5 enumerateAttributesInRange:0 options:v4 usingBlock:{0x100000, &v11}];
  if (objc_opt_respondsToSelector())
  {
    v7 = v5;
    v8 = [v7 defaultAttributes];
    v9 = [*(a1 + 32) overridingEditingAttributesForAttributes:v8 withOverrides:*(a1 + 40)];
    if ([v9 count])
    {
      if (v8)
      {
        v10 = [v8 mutableCopy];
        [v10 addEntriesFromDictionary:v9];
        [v7 setDefaultAttributes:v10];
      }

      else
      {
        [v7 setDefaultAttributes:v9];
      }

      [*(a1 + 48) setRestoreDefaultAttributes:1];
    }
  }

  if (![v5 length])
  {
    [*(a1 + 48) setRestoreTextAttributes:1];
  }
}

void __60___UITextFieldEditingProcessor_beginEditingWithTextStorage___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) overridingEditingAttributesForAttributes:a2 withOverrides:*(a1 + 40)];
  [*(a1 + 48) setAttributes:v7 range:{a3, a4}];
  [*(a1 + 56) setRestoreTextAttributes:1];
}

@end