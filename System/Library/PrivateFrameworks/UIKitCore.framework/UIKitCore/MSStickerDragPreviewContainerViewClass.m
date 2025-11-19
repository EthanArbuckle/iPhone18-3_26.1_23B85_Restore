@interface MSStickerDragPreviewContainerViewClass
@end

@implementation MSStickerDragPreviewContainerViewClass

Class __get_MSStickerDragPreviewContainerViewClass_block_invoke(uint64_t a1)
{
  if (!qword_1ED4991E8)
  {
    qword_1ED4991E8 = _sl_dlopen();
  }

  result = objc_getClass("_MSStickerDragPreviewContainerView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4991E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end