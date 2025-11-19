@interface UITextFieldEditingToken
@end

@implementation UITextFieldEditingToken

void __38___UITextFieldEditingToken_endEditing__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 length];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38___UITextFieldEditingToken_endEditing__block_invoke_2;
  v5[3] = &unk_1E70F3050;
  v6 = v2;
  v4 = v2;
  [v4 enumerateAttribute:@"_UILastStoredDefaultTextAttributesName" inRange:0 options:v3 usingBlock:{0x100000, v5}];
}

uint64_t __38___UITextFieldEditingToken_endEditing__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) setAttributes:a2 range:{a3, a4}];
  }

  return result;
}

void __38___UITextFieldEditingToken_endEditing__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 defaultAttributes];
  v4 = [v3 objectForKeyedSubscript:@"_UILastStoredDefaultTextAttributesName"];

  [v2 setDefaultAttributes:v4];
}

@end