@interface SFUZipInputBundle
- (SFUZipInputBundle)initWithZipArchive:(id)archive;
- (id)bufferedInputStreamForEntry:(id)entry;
- (id)inputStreamForEntry:(id)entry;
- (int64_t)lengthOfEntry:(id)entry;
- (unsigned)crc32ForEntry:(id)entry;
- (void)copyEntry:(id)entry toFile:(id)file;
- (void)dealloc;
@end

@implementation SFUZipInputBundle

- (SFUZipInputBundle)initWithZipArchive:(id)archive
{
  v6.receiver = self;
  v6.super_class = SFUZipInputBundle;
  v4 = [(SFUZipInputBundle *)&v6 init];
  if (v4)
  {
    v4->_zipArchive = archive;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUZipInputBundle;
  [(SFUZipInputBundle *)&v3 dealloc];
}

- (id)inputStreamForEntry:(id)entry
{
  v3 = [(SFUZipArchive *)self->_zipArchive entryWithName:entry];

  return [v3 inputStream];
}

- (id)bufferedInputStreamForEntry:(id)entry
{
  v3 = [(SFUZipArchive *)self->_zipArchive entryWithName:entry];

  return [v3 bufferedInputStream];
}

- (int64_t)lengthOfEntry:(id)entry
{
  v3 = [(SFUZipArchive *)self->_zipArchive entryWithName:entry];

  return [v3 dataLength];
}

- (unsigned)crc32ForEntry:(id)entry
{
  v3 = [(SFUZipArchive *)self->_zipArchive entryWithName:entry];

  return [v3 crc];
}

- (void)copyEntry:(id)entry toFile:(id)file
{
  v6 = [(SFUZipArchive *)self->_zipArchive entryWithName:?];
  if (!v6)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipInputBundle copyEntry:toFile:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUInputBundle.m"), 70, @"Asked to copy missing entry %@", entry}];
  }

  v9 = [[SFUFileDataRepresentation alloc] initWithCopyOfData:v6 path:file];
}

@end