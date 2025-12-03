@interface SFUZipArchiveMemoryDataRepresentation
- (BOOL)hasSameLocationAs:(id)as;
- (SFUZipArchiveMemoryDataRepresentation)initWithData:(id)data;
- (id)bufferedInputStream;
- (id)bufferedInputStreamWithBufferSize:(unint64_t)size;
- (id)bufferedInputStreamWithOffset:(int64_t)offset length:(int64_t)length;
- (id)inputStream;
- (void)dealloc;
@end

@implementation SFUZipArchiveMemoryDataRepresentation

- (SFUZipArchiveMemoryDataRepresentation)initWithData:(id)data
{
  v6.receiver = self;
  v6.super_class = SFUZipArchiveMemoryDataRepresentation;
  v4 = [(SFUZipArchiveMemoryDataRepresentation *)&v6 init];
  if (v4)
  {
    v4->mData = [data copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUZipArchiveMemoryDataRepresentation;
  [(SFUZipArchiveMemoryDataRepresentation *)&v3 dealloc];
}

- (id)inputStream
{
  dataLength = [(SFUZipArchiveMemoryDataRepresentation *)self dataLength];

  return [(SFUZipArchiveMemoryDataRepresentation *)self bufferedInputStreamWithOffset:0 length:dataLength];
}

- (id)bufferedInputStream
{
  dataLength = [(SFUZipArchiveMemoryDataRepresentation *)self dataLength];

  return [(SFUZipArchiveMemoryDataRepresentation *)self bufferedInputStreamWithOffset:0 length:dataLength];
}

- (id)bufferedInputStreamWithBufferSize:(unint64_t)size
{
  dataLength = [(SFUZipArchiveMemoryDataRepresentation *)self dataLength];

  return [(SFUZipArchiveMemoryDataRepresentation *)self bufferedInputStreamWithOffset:0 length:dataLength];
}

- (BOOL)hasSameLocationAs:(id)as
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  data = [(SFUZipArchiveMemoryDataRepresentation *)self data];
  return data == [as data];
}

- (id)bufferedInputStreamWithOffset:(int64_t)offset length:(int64_t)length
{
  v7 = [(NSData *)self->mData length];
  if ((length | offset) < 0 || (v7 >= length ? (v8 = v7 - length < offset) : (v8 = 1), v8))
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Bad input stream range."];
  }

  v9 = [[SFUMemoryInputStream alloc] initWithData:self->mData offset:offset length:length];

  return v9;
}

@end