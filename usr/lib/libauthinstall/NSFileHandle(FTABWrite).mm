@interface NSFileHandle(FTABWrite)
- (uint64_t)writeBytes:()FTABWrite length:;
@end

@implementation NSFileHandle(FTABWrite)

- (uint64_t)writeBytes:()FTABWrite length:
{
  v2 = [MEMORY[0x29EDB8DA0] dataWithBytes:? length:?];
  v3 = [self uarpWriteData:v2 error:0];

  return v3;
}

@end