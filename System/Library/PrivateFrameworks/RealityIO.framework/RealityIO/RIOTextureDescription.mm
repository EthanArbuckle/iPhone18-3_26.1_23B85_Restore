@interface RIOTextureDescription
+ (int64_t)pixelEncodingForBitsPerComponent:(unint64_t)component;
+ (unint64_t)bytesPerComponentForColorModel:(int64_t)model;
+ (unint64_t)bytesPerComponentForPixelEncoding:(int64_t)encoding;
+ (unint64_t)bytesPerPixelForPixelFormat:(id)format;
- ($0AC6E346AE4835514AAA8AC86D8F4844)destinationPixelFormat;
- ($0AC6E346AE4835514AAA8AC86D8F4844)originalPixelFormat;
- (RIOTextureDescription)initWithName:(id)name destinationPixelFormat:(id)format imageProperties:(__CFDictionary *)properties fileType:(__CFString *)type generateMipmaps:(BOOL)mipmaps;
- (RIOTextureDescription)initWithName:(id)name originalSize:(id)size originalPixelFormat:(id)format destinationPixelFormat:(int64_t)pixelFormat downsamplingFactor:(int64_t)factor fileType:(BOOL)type generateMipmaps:;
- (__n64)destinationSize;
- (id)debugDescription;
@end

@implementation RIOTextureDescription

- (RIOTextureDescription)initWithName:(id)name originalSize:(id)size originalPixelFormat:(id)format destinationPixelFormat:(int64_t)pixelFormat downsamplingFactor:(int64_t)factor fileType:(BOOL)type generateMipmaps:
{
  var1 = format.var1;
  var0 = format.var0;
  v12 = size.var1;
  v13 = size.var0;
  v14 = v8;
  nameCopy = name;
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
    v18->_downsamplingFactor = pixelFormat;
    v18->_fileType = factor;
    objc_storeStrong(&v18->_name, name);
    v19->_generateMipmaps = type;
  }

  return v19;
}

- (RIOTextureDescription)initWithName:(id)name destinationPixelFormat:(id)format imageProperties:(__CFDictionary *)properties fileType:(__CFString *)type generateMipmaps:(BOOL)mipmaps
{
  var1 = format.var1;
  var0 = format.var0;
  nameCopy = name;
  v41.receiver = self;
  v41.super_class = RIOTextureDescription;
  v15 = [(RIOTextureDescription *)&v41 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_39;
  }

  objc_storeStrong(&v15->_name, name);
  v16->_generateMipmaps = mipmaps;
  v17 = 1;
  v16->_downsamplingFactor = 1;
  if (!CFEqual(type, *MEMORY[0x277CC20C8]))
  {
    if (CFEqual(type, *MEMORY[0x277CC2120]))
    {
      v17 = 2;
    }

    else if (CFEqual(type, *MEMORY[0x277CC2180]))
    {
      v17 = 3;
    }

    else if (CFEqual(type, @"public.heic") || CFEqual(type, @"public.heif"))
    {
      v17 = 4;
    }

    else if (CFEqual(type, *MEMORY[0x277CC2088]))
    {
      v17 = 5;
    }

    else if (CFEqual(type, @"public.avif"))
    {
      v17 = 7;
    }

    else
    {
      v17 = 6;
    }
  }

  v16->_fileType = v17;
  Value = CFDictionaryGetValue(properties, *MEMORY[0x277CD3450]);
  v19 = CFDictionaryGetValue(properties, *MEMORY[0x277CD3448]);
  v20 = CFDictionaryGetValue(properties, *MEMORY[0x277CD2F38]);
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
    v25 = CFDictionaryGetValue(properties, *MEMORY[0x277CD2E40]);
    v26 = CFDictionaryGetValue(properties, *MEMORY[0x277CD33A0]);
    v27 = *MEMORY[0x277CD3368];
    if (CFDictionaryContainsKey(properties, *MEMORY[0x277CD3368]))
    {
      v29 = CFDictionaryGetValue(properties, v27);
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
  [self originalSize];
  v3 = v2 / [self downsamplingFactor];
  [self originalSize];
  v5 = v4;
  downsamplingFactor = [self downsamplingFactor];
  result.n64_u32[0] = v3;
  result.n64_u32[1] = v5 / downsamplingFactor;
  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  name = [(RIOTextureDescription *)self name];
  [(RIOTextureDescription *)self originalSize];
  v6 = v5;
  [(RIOTextureDescription *)self originalSize];
  v8 = v7;
  [(RIOTextureDescription *)self destinationSize];
  v10 = v9;
  [(RIOTextureDescription *)self destinationSize];
  v12 = [v3 stringWithFormat:@"%@: original (%d, %d), destination (%d, %d)", name, v6, v8, v10, v11];

  return v12;
}

+ (unint64_t)bytesPerComponentForColorModel:(int64_t)model
{
  if ((model - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_261994108[model - 1];
  }
}

+ (unint64_t)bytesPerComponentForPixelEncoding:(int64_t)encoding
{
  if ((encoding - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_261994138[encoding - 1];
  }
}

+ (int64_t)pixelEncodingForBitsPerComponent:(unint64_t)component
{
  v3 = 2;
  v4 = 3;
  if (component != 32)
  {
    v4 = 0;
  }

  if (component >= 0x11)
  {
    v3 = v4;
  }

  if (component >= 9)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

+ (unint64_t)bytesPerPixelForPixelFormat:(id)format
{
  var1 = format.var1;
  v4 = [RIOTextureDescription bytesPerComponentForColorModel:format.var0];
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