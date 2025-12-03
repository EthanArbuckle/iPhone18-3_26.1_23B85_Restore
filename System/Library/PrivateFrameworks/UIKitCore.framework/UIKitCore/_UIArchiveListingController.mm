@interface _UIArchiveListingController
- (BOOL)_shouldVisitItem:(id)item;
- (BOOL)determineIsReadableArchive;
- (BOOL)enumerateLogicalItemsWithBlock:(id)block error:(id *)error;
- (_UIArchiveListingController)initWithArchivePath:(id)path;
- (void)dealloc;
@end

@implementation _UIArchiveListingController

- (_UIArchiveListingController)initWithArchivePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = _UIArchiveListingController;
  v6 = [(_UIArchiveListingController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archivePath, path);
    v7->_appleDoubleIdentificationType = 1;
    v7->_excludeDotFilesFromResults = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(_UILibArchiveStreamingReader *)self->_archiveReader close];
  v3.receiver = self;
  v3.super_class = _UIArchiveListingController;
  [(_UIArchiveListingController *)&v3 dealloc];
}

- (BOOL)determineIsReadableArchive
{
  if (self->_archiveReader)
  {
    return self->_isValidArchive;
  }

  else
  {
    v4 = [[_UILibArchiveStreamingReader alloc] initForReadingArchivePath:self->_archivePath];
    archiveReader = self->_archiveReader;
    self->_archiveReader = v4;

    open = [(_UILibArchiveStreamingReader *)self->_archiveReader open];
    self->_isValidArchive = open;
  }

  return open;
}

- (BOOL)enumerateLogicalItemsWithBlock:(id)block error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if ([(_UIArchiveListingController *)self determineIsReadableArchive])
  {
    [(_UILibArchiveStreamingReader *)self->_archiveReader setAppleDoubleIdentificationType:[(_UIArchiveListingController *)self appleDoubleIdentificationType]];
    archiveReader = self->_archiveReader;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68___UIArchiveListingController_enumerateLogicalItemsWithBlock_error___block_invoke;
    v16[3] = &unk_1E7105970;
    v16[4] = self;
    v17 = blockCopy;
    v15 = 0;
    [(_UILibArchiveStreamingReader *)archiveReader readLogicalItemsWithBlock:v16 error:&v15];
    v8 = v15;
    [(_UILibArchiveStreamingReader *)self->_archiveReader close];

    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = MEMORY[0x1E696ABC0];
  v18 = *MEMORY[0x1E696A578];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to open %@ for reading", self->_archivePath];
  v19[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v8 = [v9 errorWithDomain:@"_UIArchiveReaderErrorDomain" code:-1 userInfo:v11];

  if (error)
  {
LABEL_5:
    v12 = v8;
    *error = v8;
  }

LABEL_6:
  v13 = self->_archiveReader;
  self->_archiveReader = 0;

  return v8 == 0;
}

- (BOOL)_shouldVisitItem:(id)item
{
  itemCopy = item;
  if ([(_UIArchiveListingController *)self excludeDotFilesFromResults])
  {
    pathInArchive = [itemCopy pathInArchive];
    lastPathComponent = [pathInArchive lastPathComponent];
    v7 = [lastPathComponent hasPrefix:@"."];

    if (v7 & 1) != 0 || ([pathInArchive hasPrefix:@"."])
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v8 = [pathInArchive containsString:@"/."] ^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

@end