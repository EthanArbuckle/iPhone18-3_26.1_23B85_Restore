@interface RIOTextureDescription
+ (int64_t)pixelEncodingForBitsPerComponent:(unint64_t)a3;
+ (unint64_t)bytesPerComponentForColorModel:(int64_t)a3;
+ (unint64_t)bytesPerComponentForPixelEncoding:(int64_t)a3;
+ (unint64_t)bytesPerPixelForPixelFormat:(id)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)destinationPixelFormat;
- ($0AC6E346AE4835514AAA8AC86D8F4844)originalPixelFormat;
- (RIOTextureDescription)initWithName:(id)a3 destinationPixelFormat:(id)a4 imageProperties:(__CFDictionary *)a5 fileType:(__CFString *)a6 generateMipmaps:(BOOL)a7;
- (RIOTextureDescription)initWithName:(id)a3 originalSize:(id)a4 originalPixelFormat:(id)a5 destinationPixelFormat:(int64_t)a6 downsamplingFactor:(int64_t)a7 fileType:(BOOL)a8 generateMipmaps:;
- (__n64)destinationSize;
- (id)debugDescription;
@end

@implementation RIOTextureDescription

- (RIOTextureDescription)initWithName:(id)a3 originalSize:(id)a4 originalPixelFormat:(id)a5 destinationPixelFormat:(int64_t)a6 downsamplingFactor:(int64_t)a7 fileType:(BOOL)a8 generateMipmaps:
{
  var1 = a5.var1;
  var0 = a5.var0;
  v12 = a4.var1;
  v13 = a4.var0;
  v14 = v8;
  v17 = a3;
  v21.receiver = self;
  v21.super_class = RIOTextureDescription;
  v18 = [(RIOTextureDescription *)&v21 init];
  v19 = v18;
  if (v18)
  {
    *&v18->_originalSize[7] = v14;
    v18->_originalPixelFormat.colorModel = v13;
    v18->_originalPixelFormat.pixelEncoding = v12;
    v18->_destinationPixelFormat.colorModel = var0;
    v18->_destinationPixelFormat.pixelEncoding = var1;
    v18->_downsamplingFactor = a6;
    v18->_fileType = a7;
    objc_storeStrong(&v18->_name, a3);
    v19->_generateMipmaps = a8;
  }

  return v19;
}

- (RIOTextureDescription)initWithName:(id)a3 destinationPixelFormat:(id)a4 imageProperties:(__CFDictionary *)a5 fileType:(__CFString *)a6 generateMipmaps:(BOOL)a7
{
  var1 = a4.var1;
  var0 = a4.var0;
  v14 = a3;
  v41.receiver = self;
  v41.super_class = RIOTextureDescription;
  v15 = [(RIOTextureDescription *)&v41 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_39;
  }

  objc_storeStrong(&v15->_name, a3);
  v16->_generateMipmaps = a7;
  v17 = 1;
  v16->_downsamplingFactor = 1;
  if (!CFEqual(a6, *MEMORY[0x277CC20C8]))
  {
    if (CFEqual(a6, *MEMORY[0x277CC2120]))
    {
      v17 = 2;
    }

    else if (CFEqual(a6, *MEMORY[0x277CC2180]))
    {
      v17 = 3;
    }

    else if (CFEqual(a6, @"public.heic") || CFEqual(a6, @"public.heif"))
    {
      v17 = 4;
    }

    else if (CFEqual(a6, *MEMORY[0x277CC2088]))
    {
      v17 = 5;
    }

    else if (CFEqual(a6, @"public.avif"))
    {
      v17 = 7;
    }

    else
    {
      v17 = 6;
    }
  }

  v16->_fileType = v17;
  Value = CFDictionaryGetValue(a5, *MEMORY[0x277CD3450]);
  v19 = CFDictionaryGetValue(a5, *MEMORY[0x277CD3448]);
  v20 = CFDictionaryGetValue(a5, *MEMORY[0x277CD2F38]);
  if (Value)
  {
    v21 = v19 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21 && v20 != 0)
  {
    v24 = v20;
    v39 = 0;
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberNSIntegerType, &valuePtr);
    CFNumberGetValue(v19, kCFNumberNSIntegerType, &v39);
    *&v16->_originalSize[7] = __PAIR64__(v39, valuePtr);
    v38 = 0;
    CFNumberGetValue(v24, kCFNumberNSIntegerType, &v38);
    v25 = CFDictionaryGetValue(a5, *MEMORY[0x277CD2E40]);
    v26 = CFDictionaryGetValue(a5, *MEMORY[0x277CD33A0]);
    v27 = *MEMORY[0x277CD3368];
    if (CFDictionaryContainsKey(a5, *MEMORY[0x277CD3368]))
    {
      v29 = CFDictionaryGetValue(a5, v27);
      v30 = CFBooleanGetValue(v29) == 0;
      if (v25)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v30 = 1;
      if (v25)
      {
LABEL_21:
        if (CFEqual(v25, *MEMORY[0x277CD2E58]))
        {
          v31 = 1;
          if (!v30)
          {
            v31 = 2;
          }

          if (v38 < 9 && *MEMORY[0x277CBED28] == v26)
          {
            v33 = 6;
          }

          else
          {
            v33 = v31;
          }
        }

        else
        {
          v34 = CFEqual(v25, *MEMORY[0x277CD2E50]);
          v35 = 4;
          if (!v30)
          {
            v35 = 5;
          }

          if (v34)
          {
            v33 = v35;
          }

          else
          {
            v33 = 0;
          }
        }

LABEL_37:
        v36 = [RIOTextureDescription pixelEncodingForBitsPerComponent:v38];
        v16->_originalPixelFormat.colorModel = v33;
        v16->_originalPixelFormat.pixelEncoding = v36;
        v16->_destinationPixelFormat.colorModel = var0;
        v16->_destinationPixelFormat.pixelEncoding = var1;
        if (var0)
        {
          if (var1)
          {
LABEL_39:
            v23 = v16;
            goto LABEL_40;
          }
        }

        else
        {
          v16->_destinationPixelFormat.colorModel = v33;
          if (var1)
          {
            goto LABEL_39;
          }
        }

        v16->_destinationPixelFormat.pixelEncoding = v36;
        goto LABEL_39;
      }
    }

    v33 = 0;
    goto LABEL_37;
  }

  v23 = 0;
LABEL_40:

  return v23;
}

- (__n64)destinationSize
{
  [a1 originalSize];
  v3 = v2 / [a1 downsamplingFactor];
  [a1 originalSize];
  v5 = v4;
  v6 = [a1 downsamplingFactor];
  result.n64_u32[0] = v3;
  result.n64_u32[1] = v5 / v6;
  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RIOTextureDescription *)self name];
  [(RIOTextureDescription *)self originalSize];
  v6 = v5;
  [(RIOTextureDescription *)self originalSize];
  v8 = v7;
  [(RIOTextureDescription *)self destinationSize];
  v10 = v9;
  [(RIOTextureDescription *)self destinationSize];
  v12 = [v3 stringWithFormat:@"%@: original (%d, %d), destination (%d, %d)", v4, v6, v8, v10, v11];

  return v12;
}

+ (unint64_t)bytesPerComponentForColorModel:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_261994108[a3 - 1];
  }
}

+ (unint64_t)bytesPerComponentForPixelEncoding:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_261994138[a3 - 1];
  }
}

+ (int64_t)pixelEncodingForBitsPerComponent:(unint64_t)a3
{
  v3 = 2;
  v4 = 3;
  if (a3 != 32)
  {
    v4 = 0;
  }

  if (a3 >= 0x11)
  {
    v3 = v4;
  }

  if (a3 >= 9)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

+ (unint64_t)bytesPerPixelForPixelFormat:(id)a3
{
  var1 = a3.var1;
  v4 = [RIOTextureDescription bytesPerComponentForColorModel:a3.var0];
  return [RIOTextureDescription bytesPerComponentForPixelEncoding:var1]* v4;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)originalPixelFormat
{
  pixelEncoding = self->_originalPixelFormat.pixelEncoding;
  colorModel = self->_originalPixelFormat.colorModel;
  result.var1 = pixelEncoding;
  result.var0 = colorModel;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)destinationPixelFormat
{
  pixelEncoding = self->_destinationPixelFormat.pixelEncoding;
  colorModel = self->_destinationPixelFormat.colorModel;
  result.var1 = pixelEncoding;
  result.var0 = colorModel;
  return result;
}

@end