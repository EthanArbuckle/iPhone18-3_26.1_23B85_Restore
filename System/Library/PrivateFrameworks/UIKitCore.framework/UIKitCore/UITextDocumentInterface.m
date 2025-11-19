@interface UITextDocumentInterface
@end

@implementation UITextDocumentInterface

void *__54___UITextDocumentInterface__didPerformOutputOperation__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[6])
  {
    v3 = [result responseDelegate];
    v4 = [*(a1 + 32) _controllerOutput];
    [v3 _performInputViewControllerOutput:v4];

    v5 = *(a1 + 32);

    return [v5 setControllerOutput:0];
  }

  return result;
}

@end