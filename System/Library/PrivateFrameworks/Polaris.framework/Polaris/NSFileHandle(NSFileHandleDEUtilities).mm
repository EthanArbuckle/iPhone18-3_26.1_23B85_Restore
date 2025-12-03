@interface NSFileHandle(NSFileHandleDEUtilities)
- (void)writeFormat:()NSFileHandleDEUtilities;
@end

@implementation NSFileHandle(NSFileHandleDEUtilities)

- (void)writeFormat:()NSFileHandleDEUtilities
{
  v10 = MEMORY[0x277CCACA8];
  v11 = a3;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = [v12 dataUsingEncoding:4];
  [self writeData:v13];
}

@end