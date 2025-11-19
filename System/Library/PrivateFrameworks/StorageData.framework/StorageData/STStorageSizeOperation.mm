@interface STStorageSizeOperation
- (int64_t)size;
- (void)setSize:(int64_t)a3;
@end

@implementation STStorageSizeOperation

- (void)setSize:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [(STStorageOperation *)self setOutput:v4];
}

- (int64_t)size
{
  v2 = [(STStorageOperation *)self output];
  v3 = [v2 longLongValue];

  return v3;
}

@end