@interface UITextAttachmentInteractionHandler
@end

@implementation UITextAttachmentInteractionHandler

void __70___UITextAttachmentInteractionHandler__defaultMenuForInteractableItem__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[UIPasteboard generalPasteboard];
  [v2 setImage:v1];
}

@end