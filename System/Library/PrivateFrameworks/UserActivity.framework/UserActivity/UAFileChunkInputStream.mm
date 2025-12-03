@interface UAFileChunkInputStream
- (BOOL)hasBytesAvailable;
- (UAFileChunkInputStream)initWithFileHandle:(id)handle offsetInFile:(id)file size:(int64_t)size;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
- (void)open;
@end

@implementation UAFileChunkInputStream

- (UAFileChunkInputStream)initWithFileHandle:(id)handle offsetInFile:(id)file size:(int64_t)size
{
  handleCopy = handle;
  fileCopy = file;
  v13.receiver = self;
  v13.super_class = UAFileChunkInputStream;
  v10 = [(UAFileChunkInputStream *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(UAFileChunkInputStream *)v10 setFile:handleCopy];
    [(UAFileChunkInputStream *)v11 setChunkOffset:fileCopy];
    [(UAFileChunkInputStream *)v11 setChunkSize:size];
    [(UAFileChunkInputStream *)v11 setCurrentOffset:fileCopy];
    [(UAFileChunkInputStream *)v11 setReadSize:0];
    [(UAFileChunkInputStream *)v11 setStatus:0];
  }

  return v11;
}

- (BOOL)hasBytesAvailable
{
  status = [(UAFileChunkInputStream *)self status];
  if (status > 3 || status == 1)
  {
    return 0;
  }

  readSize = [(UAFileChunkInputStream *)self readSize];
  return readSize < [(UAFileChunkInputStream *)self chunkSize];
}

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(UAFileChunkInputStream *)self status]== 5 || [(UAFileChunkInputStream *)self status]== 6 || [(UAFileChunkInputStream *)self status]== 7)
  {
    goto LABEL_15;
  }

  readSize = [(UAFileChunkInputStream *)self readSize];
  if (readSize >= [(UAFileChunkInputStream *)self chunkSize])
  {
    [(UAFileChunkInputStream *)self setStatus:5];
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  [(UAFileChunkInputStream *)self setStatus:3];
  chunkSize = [(UAFileChunkInputStream *)self chunkSize];
  readSize2 = [(UAFileChunkInputStream *)self readSize];
  if (chunkSize - readSize2 >= length)
  {
    lengthCopy = length;
  }

  else
  {
    lengthCopy = chunkSize - readSize2;
  }

  file = [(UAFileChunkInputStream *)self file];
  objc_sync_enter(file);
  currentOffset = [(UAFileChunkInputStream *)self currentOffset];
  unsignedLongLongValue = [currentOffset unsignedLongLongValue];

  file2 = [(UAFileChunkInputStream *)self file];
  offsetInFile = [file2 offsetInFile];

  if (unsignedLongLongValue != offsetInFile)
  {
    file3 = [(UAFileChunkInputStream *)self file];
    [file3 seekToFileOffset:unsignedLongLongValue];
  }

  file4 = [(UAFileChunkInputStream *)self file];
  fileDescriptor = [file4 fileDescriptor];

  v19 = read(fileDescriptor, read, lengthCopy);
  [(UAFileChunkInputStream *)self setReadSize:[(UAFileChunkInputStream *)self readSize]+ v19];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v19 + unsignedLongLongValue];
  [(UAFileChunkInputStream *)self setCurrentOffset:v20];

  if (length && !v19)
  {
    [(UAFileChunkInputStream *)self setStatus:5];
    [(UAFileChunkInputStream *)self setReadSize:[(UAFileChunkInputStream *)self chunkSize]];
    v19 = 0;
  }

  objc_sync_exit(file);

LABEL_16:
  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)open
{
  if ([(UAFileChunkInputStream *)self status]!= 6)
  {

    [(UAFileChunkInputStream *)self setStatus:2];
  }
}

@end