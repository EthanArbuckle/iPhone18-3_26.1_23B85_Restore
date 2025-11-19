@interface NSFileHandle
- (void)pathname;
@end

@implementation NSFileHandle

- (void)pathname
{
  v4 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = [result fileDescriptor];
    if (v1 < 0 || fcntl(v1, 50, v3) < 0)
    {
      result = 0;
    }

    else
    {
      result = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

@end