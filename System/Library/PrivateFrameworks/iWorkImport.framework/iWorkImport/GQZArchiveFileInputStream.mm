@interface GQZArchiveFileInputStream
- (GQZArchiveFileInputStream)initWithPath:(id)path;
- (const)dataAtOffset:(int64_t)offset size:(unint64_t)size end:(int64_t)end readSize:(unint64_t *)readSize;
- (void)dealloc;
- (void)readFromOffset:(int64_t)offset size:(unint64_t)size buffer:(char *)buffer;
@end

@implementation GQZArchiveFileInputStream

- (GQZArchiveFileInputStream)initWithPath:(id)path
{
  v4 = [(GQZArchiveFileInputStream *)self init];
  if (v4)
  {
    v4->mFile = sub_44F28(path, "r");
    v5 = malloc_type_malloc(0x40000uLL, 0x100004077774924uLL);
    v4->mBuffer = v5;
    if (!v5)
    {
      [GQZException raise:@"GQZFileBufferError" format:@"Could not create read buffer"];
    }

    if (fseeko(v4->mFile, 0, 2))
    {
      v6 = __error();
      [GQZException raise:@"GQZSeekError" format:@"Could not seek: %s", strerror(*v6)];
    }

    v7 = ftello(v4->mFile);
    if (v7 == -1)
    {
      v8 = __error();
      [GQZException raise:@"GQZTellError" format:@"Could not tell: %s", strerror(*v8)];
    }

    v4->mSize = v7;
  }

  return v4;
}

- (void)dealloc
{
  mFile = self->mFile;
  if (mFile)
  {
    fclose(mFile);
  }

  free(self->mBuffer);
  v4.receiver = self;
  v4.super_class = GQZArchiveFileInputStream;
  [(GQZArchiveFileInputStream *)&v4 dealloc];
}

- (const)dataAtOffset:(int64_t)offset size:(unint64_t)size end:(int64_t)end readSize:(unint64_t *)readSize
{
  if (((offset | size) & 0x8000000000000000) != 0 || (size ^ 0x7FFFFFFFFFFFFFFFLL) < offset)
  {
    [GQZException raise:@"GQZReadError" format:@"Size overflow."];
  }

  v11 = size + offset;
  if (end)
  {
    if (v11 > end)
    {
      [GQZException raise:@"GQZReadError" format:@"Tried to read past end of chunk."];
    }
  }

  else
  {
    end = v11;
  }

  mBufferStart = self->mBufferStart;
  if (mBufferStart > offset || (mBufferEnd = self->mBufferEnd, v11 > mBufferEnd))
  {
    if (fseeko(self->mFile, offset, 0))
    {
      v14 = __error();
      [GQZException raise:@"GQZSeekError" format:@"Could not seek: %s", strerror(*v14)];
    }

    if (end - offset >= 0x40000)
    {
      v15 = 0x40000;
    }

    else
    {
      v15 = end - offset;
    }

    if (fread(self->mBuffer, 1uLL, v15, self->mFile) != v15)
    {
      v16 = __error();
      [GQZException raise:@"GQZReadError" format:@"Could not read: %s", strerror(*v16)];
    }

    mBufferEnd = v15 + offset;
    self->mBufferStart = offset;
    self->mBufferEnd = v15 + offset;
    mBufferStart = offset;
  }

  if (readSize)
  {
    *readSize = mBufferEnd - offset;
  }

  return &self->mBuffer[offset - mBufferStart];
}

- (void)readFromOffset:(int64_t)offset size:(unint64_t)size buffer:(char *)buffer
{
  if (fseeko(self->mFile, offset, 0))
  {
    v8 = __error();
    [GQZException raise:@"GQZSeekError" format:@"Could not seek: %s", strerror(*v8)];
  }

  if (fread(buffer, 1uLL, size, self->mFile) != size)
  {
    v9 = __error();
    [GQZException raise:@"GQZReadError" format:@"Could not read: %s", strerror(*v9)];
  }
}

@end