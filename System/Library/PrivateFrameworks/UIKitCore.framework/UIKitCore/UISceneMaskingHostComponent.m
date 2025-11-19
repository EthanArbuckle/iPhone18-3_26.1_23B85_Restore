@interface UISceneMaskingHostComponent
@end

@implementation UISceneMaskingHostComponent

void __53___UISceneMaskingHostComponent__handleMaskingAction___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) canSendResponse])
  {
    v3 = [MEMORY[0x1E698E600] responseForError:v4];
    [*(a1 + 32) sendResponse:v3];
  }
}

@end