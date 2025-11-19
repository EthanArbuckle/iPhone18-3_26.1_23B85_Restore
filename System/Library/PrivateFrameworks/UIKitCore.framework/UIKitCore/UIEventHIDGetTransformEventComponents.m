@interface UIEventHIDGetTransformEventComponents
@end

@implementation UIEventHIDGetTransformEventComponents

uint64_t ___UIEventHIDGetTransformEventComponents_block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = IOHIDEventGetType();
  switch(result)
  {
    case 4:
      v8 = 6;
      goto LABEL_7;
    case 7:
      v8 = 4;
      goto LABEL_7;
    case 5:
      v8 = 5;
LABEL_7:
      *(*(a1[v8] + 8) + 24) = a2;
      break;
  }

  if (*(*(a1[4] + 8) + 24) && *(*(a1[5] + 8) + 24))
  {
    if (*(*(a1[6] + 8) + 24))
    {
      *a4 = 1;
    }
  }

  return result;
}

@end