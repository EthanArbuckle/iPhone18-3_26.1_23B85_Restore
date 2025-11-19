id GetLocalizedString(uint64_t a1)
{
  v2 = GetBundle();
  v3 = v2;
  v4 = 0;
  if (a1 && v2)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
    v4 = [v3 localizedStringForKey:v5 value:0 table:0];
  }

  return v4;
}

id GetBundle()
{
  if (GetBundle_onceToken != -1)
  {
    GetBundle_cold_1();
  }

  v1 = GetBundle_bundle;

  return v1;
}

double RoundFloatToPixels(double a1)
{
  v2 = *&_ScreenScale_scale;
  if (*&_ScreenScale_scale == 0.0)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    _ScreenScale_scale = v4;

    v2 = *&_ScreenScale_scale;
  }

  return round(v2 * a1) / v2;
}

__CFString *escapedStringFromURL(void *a1)
{
  v1 = [a1 absoluteString];
  v2 = CFURLCreateStringByAddingPercentEscapes(0, v1, &stru_2882BFA40, @"/:?&=", 0x8000100u);

  return v2;
}

void sub_273D4D790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __GetBundle_block_invoke()
{
  GetBundle_bundle = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:@"/System/Library/PrivateFrameworks/WebSheet.framework"];

  return MEMORY[0x2821F96F8]();
}