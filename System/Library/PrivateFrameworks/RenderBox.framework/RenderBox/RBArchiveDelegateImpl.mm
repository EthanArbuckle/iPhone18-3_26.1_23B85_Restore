@interface RBArchiveDelegateImpl
- (CGFont)decodedCGFontWithData:(id)a3 error:(id *)a4;
- (RBArchiveDelegateImpl)initWithFlags:(unsigned int)a3;
- (id)decodedShaderLibraryWithData:(id)a3 error:(id *)a4;
- (id)encodedCGFontData:(CGFont *)a3 error:(id *)a4;
- (id)encodedImageData:(id)a3 error:(id *)a4;
- (id)encodedShaderLibraryData:(id)a3 error:(id *)a4;
- (void)decodedImageContentsWithData:(id)a3 type:(int *)a4 error:(id *)a5;
- (void)decodedMetadata:(id)a3;
@end

@implementation RBArchiveDelegateImpl

- (RBArchiveDelegateImpl)initWithFlags:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = RBArchiveDelegateImpl;
  result = [(RBArchiveDelegateImpl *)&v5 init];
  if (result)
  {
    result->_flags = a3;
  }

  return result;
}

- (void)decodedMetadata:(id)a3
{
  p = self->_metadata._p;
  if (p != a3)
  {

    self->_metadata._p = a3;
  }
}

- (id)encodedImageData:(id)a3 error:(id *)a4
{
  if (!a3.var1)
  {
    return 0;
  }

  var1 = a3.var1;
  v6 = *&a3.var0;
  if (self->_flags)
  {
    goto LABEL_19;
  }

  if (LOBYTE(a3.var0) == 1)
  {
    v12 = NSClassFromString(&cfstr_Caiosurfacecod.isa);
    if (v12)
    {
      v13 = v12;
      if ([(objc_class *)v12 instancesRespondToSelector:sel_initWithObject_])
      {
        v14 = [[v13 alloc] initWithObject:var1];
        if (v14)
        {
          v15 = v14;
          v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];

LABEL_16:
          if (v7)
          {
            return v7;
          }

          goto LABEL_19;
        }
      }
    }
  }

  else if (!LOBYTE(a3.var0))
  {
    v7 = [MEMORY[0x1E695DF88] data];
    v8 = CGImageDestinationCreateWithData(v7, @"public.png", 1uLL, 0);
    if (v8)
    {
      v9 = v8;
      CGImageDestinationAddImage(v8, var1, 0);
      v10 = CGImageDestinationFinalize(v9);
      CFRelease(v9);
      if (v7)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        return v7;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_19:
  RB::ImageDescription::ImageDescription(v18, v6, var1);
  v16 = [MEMORY[0x1E695DF90] dictionary];
  [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v6), @"type"}];
  [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", v18[0]), @"ident"}];
  [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", v18[1]), @"width"}];
  [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", v18[2]), @"height"}];
  if (v19 == 1)
  {
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"alpha"];
  }

  return [MEMORY[0x1E696ACB0] dataWithJSONObject:v16 options:0 error:a4];
}

- (void)decodedImageContentsWithData:(id)a3 type:(int *)a4 error:(id *)a5
{
  v7 = [a3 length];
  v25 = 0;
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  [a3 getBytes:&v25 length:1];
  if (v25 == 123)
  {
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 objectForKeyedSubscript:@"width"];
      v11 = [v9 objectForKeyedSubscript:@"height"];
      v12 = [v9 objectForKeyedSubscript:@"ident"];
      v13 = [v9 objectForKeyedSubscript:@"has_alpha"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v12 unsignedLongLongValue];
            [v10 unsignedLongLongValue];
            [v11 unsignedLongLongValue];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 BOOLValue];
            }

            RB::cg_image_create_placeholder(v14);
          }
        }
      }
    }
  }

  ImageAtIndex = 0;
  if (v8 >= 7 && v25 == 98)
  {
    [a3 getBytes:&v23 length:6];
    if (v23 != 1768714338 || v24 != 29811)
    {
      goto LABEL_15;
    }

    v20 = NSClassFromString(&cfstr_Caiosurfacecod.isa);
    ImageAtIndex = v20;
    if (v20)
    {
      if (![(objc_class *)v20 instancesRespondToSelector:sel_decodedObject])
      {
LABEL_15:
        ImageAtIndex = 0;
        goto LABEL_16;
      }

      v21 = objc_autoreleasePoolPush();
      v22 = [objc_msgSend(MEMORY[0x1E696ACD0] unarchivedObjectOfClass:ImageAtIndex fromData:a3 error:{0), "decodedObject"}];
      if (v22)
      {
        ImageAtIndex = CFRetain(v22);
      }

      else
      {
        ImageAtIndex = 0;
      }

      objc_autoreleasePoolPop(v21);
      if (ImageAtIndex)
      {
        *a4 = 1;
      }
    }
  }

LABEL_16:
  if (ImageAtIndex)
  {
LABEL_19:
    CFAutorelease(ImageAtIndex);
    return ImageAtIndex;
  }

LABEL_17:
  v17 = CGImageSourceCreateWithData(a3, 0);
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v17, 0, 0);
  *a4 = 0;
  CFRelease(v18);
  if (ImageAtIndex)
  {
    goto LABEL_19;
  }

  return ImageAtIndex;
}

- (id)encodedCGFontData:(CGFont *)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = CGFontCopyPostScriptName(a3);
  if (v7)
  {
    v8 = v7;
    [v6 setObject:v7 forKeyedSubscript:@"postscriptName"];
  }

  else
  {
    v9 = CGFontCopyURL();
    if (!v9)
    {
      goto LABEL_6;
    }

    v8 = v9;
    [v6 setObject:v9 forKeyedSubscript:@"URL"];
  }

  CFRelease(v8);
LABEL_6:
  v10 = MEMORY[0x1E696ACB0];

  return [v10 dataWithJSONObject:v6 options:0 error:a4];
}

- (CGFont)decodedCGFontWithData:(id)a3 error:(id *)a4
{
  v14 = 0;
  if ([a3 length] && (objc_msgSend(a3, "getBytes:length:", &v14, 1), v14 == 123))
  {
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:a4];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v7 = [v6 objectForKeyedSubscript:@"postscriptName"];
    if (v7)
    {
      RB::cg_font_create_with_name(v7, &arg);
      v8 = arg;
      if (!arg)
      {
        return v8;
      }

      goto LABEL_9;
    }

    v11 = [v6 objectForKeyedSubscript:@"URL"];
    if (!v11)
    {
      return 0;
    }

    v9 = CGDataProviderCreateWithURL(v11);
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v9 = CGDataProviderCreateWithCFData(a3);
    if (!v9)
    {
      return 0;
    }
  }

  v10 = v9;
  v8 = CGFontCreateWithDataProvider(v9);
  CFRelease(v10);
  if (v8)
  {
LABEL_9:
    CFAutorelease(v8);
  }

  return v8;
}

- (id)encodedShaderLibraryData:(id)a3 error:(id *)a4
{
  result = [(RBDecodedFontMetadata *)a3 fontUID];
  if (result)
  {
    v5 = result;
    result = 0;
    v6 = *(v5 + 6);
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        return *(v5 + 2);
      }

      else if (v6 == 4)
      {
        v8 = *(v5 + 2);

        return [v8 dataUsingEncoding:4];
      }
    }

    else
    {
      if (v6)
      {
        if (v6 != 1)
        {
          return result;
        }

        v7 = *(v5 + 2);
      }

      else
      {
        v7 = [*(v5 + 2) URLForResource:@"default" withExtension:@"metallib"];
      }

      v9 = MEMORY[0x1E695DEF0];

      return [v9 dataWithContentsOfURL:v7];
    }
  }

  return result;
}

- (id)decodedShaderLibraryWithData:(id)a3 error:(id *)a4
{
  if ([a3 length] >= 5 && (v5 = objc_msgSend(a3, "bytes"), *v5 == 77) && v5[1] == 84 && v5[2] == 76 && v5[3] == 66)
  {

    return [RBShaderLibrary libraryWithData:a3];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:a3 encoding:4];
    if (v7)
    {
      v8 = [RBShaderLibrary libraryWithSource:v7];
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }
}

@end