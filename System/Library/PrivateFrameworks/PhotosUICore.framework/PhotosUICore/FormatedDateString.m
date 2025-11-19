@interface FormatedDateString
@end

@implementation FormatedDateString

uint64_t ___FormatedDateString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _FormatedDateString_dateFormatter;
  _FormatedDateString_dateFormatter = v0;

  [_FormatedDateString_dateFormatter setDateStyle:2];
  v2 = _FormatedDateString_dateFormatter;

  return [v2 setTimeStyle:0];
}

@end