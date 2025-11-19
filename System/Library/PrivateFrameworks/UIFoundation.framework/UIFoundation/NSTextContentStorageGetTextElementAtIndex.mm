@interface NSTextContentStorageGetTextElementAtIndex
@end

@implementation NSTextContentStorageGetTextElementAtIndex

void ____NSTextContentStorageGetTextElementAtIndex_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = [[NSCountableTextRange alloc] initWithRange:a4, a5];
  [a2 setElementRange:v15];
  if (a5)
  {

    v16 = [[NSCountableTextRange alloc] initWithRange:a6, a7];
    [a2 setParagraphContentRange:v16];

    v17 = [NSCountableTextRange alloc];
  }

  else
  {
    [a2 setParagraphContentRange:v15];

    v17 = [NSCountableTextRange alloc];
    a9 = a4;
    a10 = 0;
  }

  v20 = [(NSCountableTextRange *)v17 initWithRange:a9, a10];
  [a2 setParagraphSeparatorRange:v20];
}

uint64_t ____NSTextContentStorageGetTextElementAtIndex_block_invoke(uint64_t a1, uint64_t a2)
{
  if (NSTextContentStorageBreakOnEnumerateWhileEditing_onceToken != -1)
  {
    NSTextContentStorageBreakOnEnumerateWhileEditing_cold_1();
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Requested to instantiate a new text element while textStorage being edited.", a2];
}

@end