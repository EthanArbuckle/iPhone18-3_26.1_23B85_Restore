@interface FileEntry
- (FileEntry)initWithFilePath:(id)path journalNumber:(unint64_t)number fileSize:(unint64_t)size;
@end

@implementation FileEntry

- (FileEntry)initWithFilePath:(id)path journalNumber:(unint64_t)number fileSize:(unint64_t)size
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = FileEntry;
  v9 = [(FileEntry *)&v13 init];
  if (v9)
  {
    v10 = [pathCopy copy];
    filePath = v9->_filePath;
    v9->_filePath = v10;

    v9->_journalNumber = number;
    v9->_fileSize = size;
  }

  return v9;
}

@end