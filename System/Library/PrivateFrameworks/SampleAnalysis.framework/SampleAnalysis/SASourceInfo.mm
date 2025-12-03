@interface SASourceInfo
+ (id)sourceInfoWithOffsetIntoSegment:(uint64_t)segment length:(int)length lineNum:(int)num columnNum:(void *)columnNum filePath:;
- (NSString)fileName;
- (id)debugDescription;
@end

@implementation SASourceInfo

+ (id)sourceInfoWithOffsetIntoSegment:(uint64_t)segment length:(int)length lineNum:(int)num columnNum:(void *)columnNum filePath:
{
  v11 = objc_alloc_init(objc_opt_self());
  *(v11 + 2) = a2;
  *(v11 + 3) = segment;
  *(v11 + 2) = length;
  *(v11 + 3) = num;
  objc_storeStrong(v11 + 4, columnNum);

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