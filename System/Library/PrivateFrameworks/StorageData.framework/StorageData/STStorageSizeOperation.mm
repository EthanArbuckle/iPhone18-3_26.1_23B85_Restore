@interface STStorageSizeOperation
- (int64_t)size;
- (void)setSize:(int64_t)size;
@end

@implementation STStorageSizeOperation

- (void)setSize:(int64_t)size
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:size];
  [(STStorageOperation *)self setOutput:v4];
}

- (int64_t)size
{
  output = [(STStorageOperation *)self output];
  longLongValue = [output longLongValue];

  return longLongValue;
}

@end