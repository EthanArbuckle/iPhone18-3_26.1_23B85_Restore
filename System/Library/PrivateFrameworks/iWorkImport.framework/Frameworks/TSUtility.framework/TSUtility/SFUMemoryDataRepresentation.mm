@interface SFUMemoryDataRepresentation
- (BOOL)hasSameLocationAs:(id)as;
- (SFUMemoryDataRepresentation)initWithData:(id)data;
- (SFUMemoryDataRepresentation)initWithDataNoCopy:(id)copy;
- (SFUMemoryDataRepresentation)initWithDataRepresentation:(id)representation;
- (id)bufferedInputStream;
- (unint64_t)readIntoData:(id)data;
- (void)dealloc;
@end

@implementation SFUMemoryDataRepresentation

- (SFUMemoryDataRepresentation)initWithData:(id)data
{
  v6.receiver = self;
  v6.super_class = SFUMemoryDataRepresentation;
  v4 = [(SFUMemoryDataRepresentation *)&v6 init];
  if (v4)
  {
    v4->mData = [data copy];
  }

  return v4;
}

- (SFUMemoryDataRepresentation)initWithDataNoCopy:(id)copy
{
  v6.receiver = self;
  v6.super_class = SFUMemoryDataRepresentation;
  v4 = [(SFUMemoryDataRepresentation *)&v6 init];
  if (v4)
  {
    v4->mData = copy;
  }

  return v4;
}

- (SFUMemoryDataRepresentation)initWithDataRepresentation:(id)representation
{
  v14.receiver = self;
  v14.super_class = SFUMemoryDataRepresentation;
  v4 = [(SFUMemoryDataRepresentation *)&v14 init];
  v5 = v4;
  if (v4)
  {
    if (representation)
    {
      v6 = objc_autoreleasePoolPush();
      dataLength = [representation dataLength];
      v8 = malloc_type_malloc(dataLength, 0x100004077774924uLL);
      if (!v8)
      {
        [MEMORY[0x277CBEAD8] raise:@"SFUMemoryDataRepresentationError" format:@"Could not allocate data"];
      }

      inputStream = [representation inputStream];
      if (dataLength >= 1)
      {
        v10 = &v8[dataLength];
        v11 = v8;
        do
        {
          v12 = [inputStream readToBuffer:v11 size:v10 - v11];
          if (!v12)
          {
            [MEMORY[0x277CBEAD8] raise:@"SFUMemoryDataRepresentationError" format:@"Couldn't read enough data"];
          }

          v11 += v12;
        }

        while (v11 < v10);
      }

      [inputStream close];
      v5->mData = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v8 length:dataLength];
      objc_autoreleasePoolPop(v6);
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUMemoryDataRepresentation;
  [(SFUMemoryDataRepresentation *)&v3 dealloc];
}

- (id)bufferedInputStream
{
  v2 = [[SFUMemoryInputStream alloc] initWithData:self->mData];

  return v2;
}

- (BOOL)hasSameLocationAs:(id)as
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  data = [(SFUMemoryDataRepresentation *)self data];
  return data == [as data];
}

- (unint64_t)readIntoData:(id)data
{
  v5 = [data length];
  [data appendData:{-[SFUMemoryDataRepresentation data](self, "data")}];
  return [data length] - v5;
}

@end