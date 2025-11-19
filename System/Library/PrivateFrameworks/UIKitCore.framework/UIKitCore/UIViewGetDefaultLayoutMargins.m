@interface UIViewGetDefaultLayoutMargins
@end

@implementation UIViewGetDefaultLayoutMargins

uint64_t ___UIViewGetDefaultLayoutMargins_block_invoke()
{
  result = dyld_program_sdk_at_least();
  if ((result & 1) == 0)
  {
    _MergedGlobals_367 = 0x4020000000000000;
    unk_1EA95CBF0 = 0x4020000000000000;
    qword_1EA95CBF8 = 0x4020000000000000;
    unk_1EA95CC00 = 0x4020000000000000;
  }

  return result;
}

@end