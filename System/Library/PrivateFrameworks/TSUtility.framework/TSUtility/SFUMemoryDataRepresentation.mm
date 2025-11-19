@interface SFUMemoryDataRepresentation
- (BOOL)hasSameLocationAs:(id)a3;
- (SFUMemoryDataRepresentation)initWithData:(id)a3;
- (SFUMemoryDataRepresentation)initWithDataNoCopy:(id)a3;
- (SFUMemoryDataRepresentation)initWithDataRepresentation:(id)a3;
- (id)bufferedInputStream;
- (unint64_t)readIntoData:(id)a3;
- (void)dealloc;
@end

@implementation SFUMemoryDataRepresentation

- (SFUMemoryDataRepresentation)initWithData:(id)a3
{
  v6.receiver = self;
  v6.super_class = SFUMemoryDataRepresentation;
  v4 = [(SFUMemoryDataRepresentation *)&v6 init];
  if (v4)
  {
    v4->mData = [a3 copy];
  }

  return v4;
}

- (SFUMemoryDataRepresentation)initWithDataNoCopy:(id)a3
{
  v6.receiver = self;
  v6.super_class = SFUMemoryDataRepresentation;
  v4 = [(SFUMemoryDataRepresentation *)&v6 init];
  if (v4)
  {
    v4->mData = a3;
  }

  return v4;
}

- (SFUMemoryDataRepresentation)initWithDataRepresentation:(id)a3
{
  v14.receiver = self;
  v14.super_class = SFUMemoryDataRepresentation;
  v4 = [(SFUMemoryDataRepresentation *)&v14 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      v6 = objc_alloc_init(MEMORY[0x277CCA8B0]);
      v7 = [a3 dataLength];
      v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
      if (!v8)
      {
        [MEMORY[0x277CBEAD8] raise:@"SFUMemoryDataRepresentationError" format:@"Could not allocate data"];
      }

      v9 = [a3 inputStream];
      if (v7 >= 1)
      {
        v10 = &v8[v7];
        v11 = v8;
        do
        {
          v12 = [v9 readToBuffer:v11 size:v10 - v11];
          if (!v12)
          {
            [MEMORY[0x277CBEAD8] raise:@"SFUMemoryDataRepresentationError" format:@"Couldn't read enough data"];
          }

          v11 += v12;
        }

        while (v11 < v10);
      }

      [v9 close];
      v5->mData = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v8 length:v7];
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

- (BOOL)hasSameLocationAs:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(SFUMemoryDataRepresentation *)self data];
  return v5 == [a3 data];
}

- (unint64_t)readIntoData:(id)a3
{
  v5 = [a3 length];
  [a3 appendData:{-[SFUMemoryDataRepresentation data](self, "data")}];
  return [a3 length] - v5;
}

@end