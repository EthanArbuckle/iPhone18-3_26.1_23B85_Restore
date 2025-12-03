@interface GQZArchiveMemoryInputStream
- (GQZArchiveMemoryInputStream)initWithData:(id)data;
- (const)dataAtOffset:(int64_t)offset size:(unint64_t)size end:(int64_t)end readSize:(unint64_t *)readSize;
- (void)dealloc;
- (void)readFromOffset:(int64_t)offset size:(unint64_t)size buffer:(char *)buffer;
@end

@implementation GQZArchiveMemoryInputStream

- (GQZArchiveMemoryInputStream)initWithData:(id)data
{
  v4 = [(GQZArchiveMemoryInputStream *)self init];
  if (v4)
  {
    dataCopy = data;
    v4->mData = dataCopy;
    v4->mBytes = [(NSData *)dataCopy bytes];
    v4->mSize = [(NSData *)v4->mData length];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQZArchiveMemoryInputStream;
  [(GQZArchiveMemoryInputStream *)&v3 dealloc];
}

- (const)dataAtOffset:(int64_t)offset size:(unint64_t)size end:(int64_t)end readSize:(unint64_t *)readSize
{
  if (((offset | size) & 0x8000000000000000) != 0 || (size ^ 0x7FFFFFFFFFFFFFFFLL) < offset)
  {
    [GQZException raise:@"GQZReadError" format:@"Size overflow."];
  }

  if (end)
  {
    if ((size + offset) > end)
    {
      [GQZException raise:@"GQZReadError" format:@"Tried to read past end of chunk."];
    }
  }

  else
  {
    end = size + offset;
  }

  if (end > self->mSize)
  {
    [GQZException raise:@"GQZReadError" format:@"Tried to read past end of the stream."];
  }

  if (readSize)
  {
    *readSize = end - offset;
  }

  return &self->mBytes[offset];
}

- (void)readFromOffset:(int64_t)offset size:(unint64_t)size buffer:(char *)buffer
{
  v9 = size + offset;
  if (((offset | size) & 0x8000000000000000) != 0 || (size ^ 0x7FFFFFFFFFFFFFFFLL) < offset)
  {
    [GQZException raise:@"GQZReadError" format:@"Size overflow."];
  }

  if (v9 > self->mSize)
  {
    [GQZException raise:@"GQZReadError" format:@"Tried to read past end of the stream."];
  }

  v10 = &self->mBytes[offset];

  memcpy(buffer, v10, size);
}

@end