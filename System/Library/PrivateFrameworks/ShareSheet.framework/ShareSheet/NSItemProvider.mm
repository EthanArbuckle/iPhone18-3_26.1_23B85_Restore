@interface NSItemProvider
@end

@implementation NSItemProvider

void __80__NSItemProvider_SHSheetGroupActivity__loadGroupActivityMetadataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [objc_alloc(getLPLinkMetadataClass_2()) _initWithConversationActivity:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end