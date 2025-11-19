@interface NSTextAttachmentLayoutContext
@end

@implementation NSTextAttachmentLayoutContext

uint64_t __88___NSTextAttachmentLayoutContext_notifyTextLayoutManagerAboutTextAttachmentInvalidation__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 textAttachment];

  return [v3 willInvalidateTextAttachmentViewProvider:a2 forTextAttachment:v4];
}

uint64_t __91___NSTextAttachmentLayoutContext_enumerateViewportElementsFromLocation_options_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 16) objectForKey:a2];
  result = [v3 textAttachmentViewProvider];
  if (result)
  {
    result = [v3 textLayoutFragment];
    if (result)
    {
      v5 = *(*(a1 + 40) + 16);

      return v5();
    }
  }

  return result;
}

@end