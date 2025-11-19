@interface ICDDeleteOnDeallocTemporaryFile
- (ICDDeleteOnDeallocTemporaryFile)initWithTemporaryFileURL:(id)a3;
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

- (ICDDeleteOnDeallocTemporaryFile)initWithTemporaryFileURL:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v13.receiver = self;
    v13.super_class = ICDDeleteOnDeallocTemporaryFile;
    v8 = [(ICDDeleteOnDeallocTemporaryFile *)&v13 init];
    if (v8)
    {
      v9 = [v4 copy];
      fileURL = v8->_fileURL;
      v8->_fileURL = v9;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end