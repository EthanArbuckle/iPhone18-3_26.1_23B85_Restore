@interface PFZlibDataCompression
+ (id)compressData:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)decompressData:(id)a3 options:(id)a4 error:(id *)a5;
- (PFZlibDataCompression)init;
@end

@implementation PFZlibDataCompression

+ (id)decompressData:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v8 = +[PFZlibDataDecompressionOptions defaultOptions];
  }

  if (![v7 length])
  {
LABEL_7:
    v10 = 0;
    goto LABEL_26;
  }

  memset(&v22.total_out, 0, 72);
  v22.avail_in = [v7 length];
  v9 = inflateInit2_(&v22, [v8 windowBits], "1.2.12", 112);
  if (v9)
  {
    if (a5)
    {
      ErrorForCode(&v22, v9, 0);
      *a5 = v10 = 0;
      goto LABEL_26;
    }

    goto LABEL_7;
  }

  v11 = [v8 createBuffer];
  v12 = (v11)[2](v11, v7);

  do
  {
    total_out = v22.total_out;
    if (total_out >= [v12 length])
    {
      v14 = [v8 growData];
      (v14)[2](v14, v7, v12);
    }

    v15 = [v12 mutableBytes];
    v22.next_out = (v15 + v22.total_out);
    v16 = [v12 length];
    v22.avail_out = v16 - LODWORD(v22.total_out);
    if ([v8 decompressAllAtOnce])
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
    if (a5)
    {
      v20 = ErrorForCode(&v22, v18, 0);
      *a5 = v20;
      v19 = inflateEnd(&v22);
      if (v19)
      {
LABEL_21:
        ErrorForCode(&v22, v19, v20);
        *a5 = v10 = 0;
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
  if (a5)
  {
    goto LABEL_21;
  }

  v10 = 0;
LABEL_25:

LABEL_26:

  return v10;
}

+ (id)compressData:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v8 = +[PFZlibDataCompressionOptions defaultOptions];
  }

  v9 = v7;
  v10 = v9;
  if ([v9 length])
  {
    memset(&v20.total_out, 0, 72);
    v20.avail_in = [v9 length];
    v11 = deflateInit2_(&v20, [v8 compressionLevel], 8, objc_msgSend(v8, "windowBits"), objc_msgSend(v8, "memoryLevel"), objc_msgSend(v8, "strategy"), "1.2.12", 112);
    if (v11)
    {
      if (a5)
      {
        ErrorForCode(&v20, v11, 0);
        *a5 = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      v17 = v9;
    }

    else
    {
      v12 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(v8, "chunkSize")}];
      while (1)
      {
        total_out = v20.total_out;
        if (total_out >= [v12 length])
        {
          [v12 increaseLengthBy:{objc_msgSend(v8, "chunkSize")}];
        }

        v14 = [v12 mutableBytes];
        v20.next_out = (v14 + v20.total_out);
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

      if (a5)
      {
        v17 = ErrorForCode(&v20, v16, 0);
        *a5 = v17;
        goto LABEL_18;
      }

LABEL_17:
      v17 = 0;
LABEL_18:
      v18 = deflateEnd(&v20);
      if (a5 && v18)
      {
        *a5 = ErrorForCode(&v20, v18, v17);
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