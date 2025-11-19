@interface SASourceInfo
+ (id)sourceInfoWithOffsetIntoSegment:(uint64_t)a3 length:(int)a4 lineNum:(int)a5 columnNum:(void *)a6 filePath:;
- (NSString)fileName;
- (id)debugDescription;
@end

@implementation SASourceInfo

+ (id)sourceInfoWithOffsetIntoSegment:(uint64_t)a3 length:(int)a4 lineNum:(int)a5 columnNum:(void *)a6 filePath:
{
  v11 = objc_alloc_init(objc_opt_self());
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 2) = a4;
  *(v11 + 3) = a5;
  objc_storeStrong(v11 + 4, a6);

  return v11;
}

- (NSString)fileName
{
  Path = [(NSString *)self->_filePath copyLastPathComponent];

  return Path;
}

- (id)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%d, %d (0x%llx-0x%llx)", self->_filePath, self->_lineNum, self->_columnNum, self->_offsetIntoSegment, self->_length + self->_offsetIntoSegment];

  return v2;
}

@end