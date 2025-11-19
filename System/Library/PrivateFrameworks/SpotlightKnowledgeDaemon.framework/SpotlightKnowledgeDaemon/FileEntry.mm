@interface FileEntry
- (FileEntry)initWithFilePath:(id)a3 journalNumber:(unint64_t)a4 fileSize:(unint64_t)a5;
@end

@implementation FileEntry

- (FileEntry)initWithFilePath:(id)a3 journalNumber:(unint64_t)a4 fileSize:(unint64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = FileEntry;
  v9 = [(FileEntry *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    filePath = v9->_filePath;
    v9->_filePath = v10;

    v9->_journalNumber = a4;
    v9->_fileSize = a5;
  }

  return v9;
}

@end