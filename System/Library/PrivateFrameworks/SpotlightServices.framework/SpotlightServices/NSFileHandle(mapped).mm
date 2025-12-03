@interface NSFileHandle(mapped)
- (id)prs_mappedData;
@end

@implementation NSFileHandle(mapped)

- (id)prs_mappedData
{
  fileDescriptor = [self fileDescriptor];
  memset(&v8, 0, sizeof(v8));
  if (fstat(fileDescriptor, &v8) || (v4 = mmap(0, v8.st_size, 1, 1, fileDescriptor, 0)) == 0)
  {
    readDataToEndOfFile = [self readDataToEndOfFile];
  }

  else
  {
    v5 = v4;
    v6 = objc_alloc(MEMORY[0x1E695DEF0]);
    readDataToEndOfFile = [v6 initWithBytesNoCopy:v5 length:v8.st_size deallocator:&__block_literal_global_0];
  }

  return readDataToEndOfFile;
}

@end