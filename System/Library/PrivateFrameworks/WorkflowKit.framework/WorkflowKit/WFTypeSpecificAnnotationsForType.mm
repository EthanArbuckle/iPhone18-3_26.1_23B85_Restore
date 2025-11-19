@interface WFTypeSpecificAnnotationsForType
@end

@implementation WFTypeSpecificAnnotationsForType

void *___WFTypeSpecificAnnotationsForType_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = _WFTypeSpecificAnnotationsForType(*(a1 + 32), a2, *(a1 + 40));
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

@end