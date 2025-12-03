@interface ICDDeleteOnDeallocTemporaryFile
- (ICDDeleteOnDeallocTemporaryFile)initWithTemporaryFileURL:(id)l;
- (void)dealloc;
@end

@implementation ICDDeleteOnDeallocTemporaryFile

- (void)dealloc
{
  v3 = +[NSFileManager defaultManager];
  [v3 removeItemAtURL:self->_fileURL error:0];

  v4.receiver = self;
  v4.super_class = ICDDeleteOnDeallocTemporaryFile;
  [(ICDDeleteOnDeallocTemporaryFile *)&v4 dealloc];
}

- (ICDDeleteOnDeallocTemporaryFile)initWithTemporaryFileURL:(id)l
{
  lCopy = l;
  v5 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v7 = [v5 fileExistsAtPath:path];

  if (v7)
  {
    v13.receiver = self;
    v13.super_class = ICDDeleteOnDeallocTemporaryFile;
    v8 = [(ICDDeleteOnDeallocTemporaryFile *)&v13 init];
    if (v8)
    {
      v9 = [lCopy copy];
      fileURL = v8->_fileURL;
      v8->_fileURL = v9;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end