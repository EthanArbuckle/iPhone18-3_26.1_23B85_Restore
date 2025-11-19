@interface NSMutableData(Append)
- (void)appendShortBE:()Append;
@end

@implementation NSMutableData(Append)

- (void)appendShortBE:()Append
{
  v2 = [MEMORY[0x277CBEA90] dataWithShortBE:?];
  [a1 appendData:v2];
}

@end