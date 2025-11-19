@interface UIKeyboardTextSelectionGestureController
@end

@implementation UIKeyboardTextSelectionGestureController

void __59___UIKeyboardTextSelectionGestureController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_UIKeyboardTextSelectionGestureController);
  v1 = qword_1ED498F60;
  qword_1ED498F60 = v0;
}

void __74___UIKeyboardTextSelectionGestureController_willRemoveSelectionController__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setEnabled:0];
  [v2 setEnabled:1];
}

@end