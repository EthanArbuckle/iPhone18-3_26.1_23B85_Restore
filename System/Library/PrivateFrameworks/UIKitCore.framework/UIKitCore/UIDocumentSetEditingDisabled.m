@interface UIDocumentSetEditingDisabled
@end

@implementation UIDocumentSetEditingDisabled

uint64_t ___UIDocumentSetEditingDisabled_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 disableEditing];
  }

  else
  {
    [v3 enableEditing];
  }

  v4 = *(a1 + 32);

  return [v4 _sendStateChangedNotification];
}

@end