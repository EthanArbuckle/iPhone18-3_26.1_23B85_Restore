@interface TIKeyboardInputManagerLiveConversion
@end

@implementation TIKeyboardInputManagerLiveConversion

void __71__TIKeyboardInputManagerLiveConversion_zh_presentSegmentPickerIfNeeded__block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a2;
  LODWORD(v7) = [v7 inputIndex];
  v9 = *(*(a1[5] + 8) + 24);
  v10 = [v8 surface];
  v11 = [v10 length] + v9;

  if (v11 >= v7)
  {
    *(*(a1[6] + 8) + 24) = a3;
    *a4 = 1;
  }

  v12 = [v8 surface];

  *(*(a1[5] + 8) + 24) += [v12 length];
}

@end