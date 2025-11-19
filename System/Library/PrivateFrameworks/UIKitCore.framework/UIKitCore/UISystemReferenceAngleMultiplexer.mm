@interface UISystemReferenceAngleMultiplexer
@end

@implementation UISystemReferenceAngleMultiplexer

void __55___UISystemReferenceAngleMultiplexer_sharedMultiplexer__block_invoke()
{
  v0 = objc_alloc_init(_UISystemReferenceAngleMultiplexer);
  v1 = qword_1ED49FD60;
  qword_1ED49FD60 = v0;
}

id __84___UISystemReferenceAngleMultiplexer_systemReferenceAngleDidChange_mode_forWindows___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _contextId];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end