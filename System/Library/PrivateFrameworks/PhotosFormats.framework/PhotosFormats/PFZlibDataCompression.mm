@interface PFZlibDataCompression
+ (id)compressData:(id)data options:(id)options error:(id *)error;
+ (id)decompressData:(id)data options:(id)options error:(id *)error;
- (PFZlibDataCompression)init;
@end

@implementation PFZlibDataCompression

+ (id)decompressData:(id)data options:(id)options error:(id *)error
{
  dataCopy = data;
  optionsCopy = options;
  if (!optionsCopy)
  {
    optionsCopy = +[PFZlibDataDecompressionOptions defaultOptions];
  }

  if (![dataCopy length])
  {
LABEL_7:
    v10 = 0;
    goto LABEL_26;
  }

  memset(&v22.total_out, 0, 72);
  v22.avail_in = [dataCopy length];
  v9 = inflateInit2_(&v22, [optionsCopy windowBits], "1.2.12", 112);
  if (v9)
  {
    if (error)
    {
      ErrorForCode(&v22, v9, 0);
      *error = v10 = 0;
      goto LABEL_26;
    }

    goto LABEL_7;
  }

  createBuffer = [optionsCopy createBuffer];
  v12 = (createBuffer)[2](createBuffer, dataCopy);

  do
  {
    total_out = v22.total_out;
    if (total_out >= [v12 length])
    {
      growData = [optionsCopy growData];
      (growData)[2](growData, dataCopy, v12);
    }

    mutableBytes = [v12 mutableBytes];
    v22.next_out = (mutableBytes + v22.total_out);
    v16 = [v12 length];
    v22.avail_out = v16 - LODWORD(v22.total_out);
    if ([optionsCopy decompressAllAtOnce])
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    v18 = inflate(&v22, v17);
  }

  while (!v18);
  if (v18 != 1)
  {
    if (error)
    {
      v20 = ErrorForCode(&v22, v18, 0);
      *error = v20;
      v19 = inflateEnd(&v22);
      if (v19)
      {
LABEL_21:
        ErrorForCode(&v22, v19, v20);
        *error = v10 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      inflateEnd(&v22);
      v20 = 0;
    }

    v10 = 0;
    goto LABEL_25;
  }

  v19 = inflateEnd(&v22);
  if (!v19)
  {
    [v12 setLength:v22.total_out];
    v10 = [MEMORY[0x1E695DEF0] dataWithData:v12];
    v20 = 0;
    goto LABEL_25;
  }

  v20 = 0;
  if (error)
  {
    goto LABEL_21;
  }

  v10 = 0;
LABEL_25:

LABEL_26:

  return v10;
}

+ (id)compressData:(id)data options:(id)options error:(id *)error
{
  dataCopy = data;
  optionsCopy = options;
  if (!optionsCopy)
  {
    optionsCopy = +[PFZlibDataCompressionOptions defaultOptions];
  }

  v9 = dataCopy;
  v10 = v9;
  if ([v9 length])
  {
    memset(&v20.total_out, 0, 72);
    v20.avail_in = [v9 length];
    v11 = deflateInit2_(&v20, [optionsCopy compressionLevel], 8, objc_msgSend(optionsCopy, "windowBits"), objc_msgSend(optionsCopy, "memoryLevel"), objc_msgSend(optionsCopy, "strategy"), "1.2.12", 112);
    if (v11)
    {
      if (error)
      {
        ErrorForCode(&v20, v11, 0);
        *error = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      v17 = v9;
    }

    else
    {
      v12 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(optionsCopy, "chunkSize")}];
      while (1)
      {
        total_out = v20.total_out;
        if (total_out >= [v12 length])
        {
          [v12 increaseLengthBy:{objc_msgSend(optionsCopy, "chunkSize")}];
        }

        mutableBytes = [v12 mutableBytes];
        v20.next_out = (mutableBytes + v20.total_out);
        v15 = [v12 length];
        v20.avail_out = v15 - LODWORD(v20.total_out);
        v16 = deflate(&v20, 4);
        if (v16 >= 2)
        {
          break;
        }

        if (v20.avail_out)
        {
          goto LABEL_17;
        }
      }

      if (error)
      {
        v17 = ErrorForCode(&v20, v16, 0);
        *error = v17;
        goto LABEL_18;
      }

LABEL_17:
      v17 = 0;
LABEL_18:
      v18 = deflateEnd(&v20);
      if (error && v18)
      {
        *error = ErrorForCode(&v20, v18, v17);
      }

      [v12 setLength:v20.total_out];
      v10 = [MEMORY[0x1E695DEF0] dataWithData:v12];
    }
  }

  return v10;
}

- (PFZlibDataCompression)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"non-instantiable class, use the class methods!"}];

  return 0;
}

@end