@interface PLProcessCPUWrapper
+ (id)start;
@end

@implementation PLProcessCPUWrapper

+ (id)start
{
  if (+[PLProcessCPUWrapper start]::oncePLProcessCpuWrapper != -1)
  {
    +[PLProcessCPUWrapper start];
  }

  v3 = +[PLProcessCPUWrapper start]::sharedPLProcessCpuWrapper;

  return v3;
}

uint64_t __28__PLProcessCPUWrapper_start__block_invoke()
{
  +[PLProcessCPUWrapper start]::sharedPLProcessCpuWrapper = objc_alloc_init(PLProcessCPUWrapper);

  return MEMORY[0x2821F96F8]();
}

@end