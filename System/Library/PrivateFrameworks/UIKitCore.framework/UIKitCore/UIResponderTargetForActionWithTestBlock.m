@interface UIResponderTargetForActionWithTestBlock
@end

@implementation UIResponderTargetForActionWithTestBlock

uint64_t ___UIResponderTargetForActionWithTestBlock_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:20];
  v1 = _MergedGlobals_1046;
  _MergedGlobals_1046 = v0;

  v2 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:20];
  v3 = qword_1ED49D6F0;
  qword_1ED49D6F0 = v2;

  result = dyld_program_sdk_at_least();
  v5 = 2;
  if (!result)
  {
    v5 = 0;
  }

  qword_1ED49D6F8 = v5;
  return result;
}

@end