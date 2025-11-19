@interface PLProcessCPUWrapper
+ (id)start;
@end

@implementation PLProcessCPUWrapper

+ (id)start
{
  if (_MergedGlobals_85 != -1)
  {
    dispatch_once(&_MergedGlobals_85, &__block_literal_global_7);
  }

  v3 = qword_2811F7438;

  return v3;
}

uint64_t __28__PLProcessCPUWrapper_start__block_invoke()
{
  qword_2811F7438 = objc_alloc_init(PLProcessCPUWrapper);

  return MEMORY[0x2821F96F8]();
}

@end