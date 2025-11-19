@interface UIGraphicsImageRenderer
+ (CGContext)contextWithFormat:(id)a3;
+ (void)prepareCGContext:(CGContext *)a3 withRendererContext:(id)a4;
- (NSData)JPEGDataWithCompressionQuality:(CGFloat)compressionQuality actions:(UIGraphicsImageDrawingActions)actions;
- (NSData)PNGDataWithActions:(UIGraphicsImageDrawingActions)actions;
- (UIGraphicsImageRenderer)initWithBounds:(CGRect)a3;
- (UIGraphicsImageRenderer)initWithBounds:(CGRect)bounds format:(UIGraphicsImageRendererFormat *)format;
- (UIGraphicsImageRenderer)initWithSize:(CGSize)size;
- (UIGraphicsImageRenderer)initWithSize:(CGSize)size format:(UIGraphicsImageRendererFormat *)format;
- (UIImage)imageWithActions:(UIGraphicsImageDrawingActions)actions;
- (void)_prepareContextForReuse:(CGContext *)a3;
- (void)pushContext:(id)a3;
@end

@implementation UIGraphicsImageRenderer

- (void)pushContext:(id)a3
{
  v3 = a3;
  v4 = malloc_type_malloc(0x10uLL, 0x10000409B4BCFF8uLL);
  v5 = [v3 format];
  [v5 scale];
  *v4 = v6;

  v7 = [v3 format];
  v4[8] = [v7 opaque];

  v8 = [v3 CGContext];
  ContextStack = GetContextStack(1);
  v10 = CGContextRetain(v8);
  v11 = *ContextStack;
  v12 = &ContextStack[6 * *ContextStack];
  *(v12 + 1) = v10;
  v12[4] = 1;
  *(v12 + 3) = v4;
  *ContextStack = v11 + 1;
}

+ (CGContext)contextWithFormat:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  [v3 _contextScale];
  v5 = v4;
  [v3 bounds];
  v7 = vcvtpd_u64_f64(v5 * v6);
  v9 = vcvtpd_u64_f64(v5 * v8);
  v10 = [v3 preferredRange];
  v11 = 0;
  v12 = 0;
  if (v10 <= 99)
  {
    if (v10 <= 0)
    {
      if (v10 == -1)
      {
        v15 = [v3 _overrideColorSpace];
        if (v15)
        {
          Model = CGColorSpaceGetModel(v15);
          v13 = [v3 _overrideColorSpace];
          CGColorSpaceGetNumberOfComponents(v13);
          if (Model == kCGColorSpaceModelRGB)
          {
            v12 = [v3 _overrideBitsPerComponent];
            v17 = [v3 opaque];
            v14 = 0;
            if (v17)
            {
              v18 = 8198;
            }

            else
            {
              v18 = 8194;
            }

            if (v17)
            {
              v19 = 4101;
            }

            else
            {
              v19 = 4097;
            }

            if (v12 == 8)
            {
              v11 = v18;
            }

            else
            {
              v11 = v19;
            }
          }

          else
          {
            [v3 opaque];
            v12 = [v3 _overrideBitsPerComponent];
            v14 = 0;
            v11 = [v3 opaque] ^ 1;
          }
        }

        else
        {
          v12 = 0;
          v11 = 0;
          v13 = 0;
          v14 = 1;
        }
      }

      else
      {
        v12 = 0;
        v11 = 0;
        v13 = 0;
        v14 = v10 == 0;
      }

      goto LABEL_51;
    }

    if (v10 != 1)
    {
      v13 = 0;
      v14 = 0;
      if (v10 != 2)
      {
        goto LABEL_51;
      }

      if (qword_1ED49A730 != -1)
      {
        dispatch_once(&qword_1ED49A730, &__block_literal_global_119);
      }

      v13 = qword_1ED49A728;
      v14 = 0;
      if ([v3 opaque])
      {
        v11 = 8198;
      }

      else
      {
        v11 = 8194;
      }

      goto LABEL_50;
    }

    if (qword_1ED49A700 != -1)
    {
      dispatch_once(&qword_1ED49A700, &__block_literal_global_307);
    }

    v13 = _MergedGlobals_5_14;
    goto LABEL_43;
  }

  if (v10 <= 32765)
  {
    if (v10 == 100)
    {
      if (qword_1ED49A710 != -1)
      {
        dispatch_once(&qword_1ED49A710, &__block_literal_global_115_0);
      }

      v13 = qword_1ED49A708;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      if (v10 != 101)
      {
        goto LABEL_51;
      }

      if (qword_1ED49A720 != -1)
      {
        dispatch_once(&qword_1ED49A720, &__block_literal_global_117);
      }

      v13 = qword_1ED49A718;
    }

LABEL_43:
    v14 = 0;
    if ([v3 opaque])
    {
      v11 = 4357;
    }

    else
    {
      v11 = 4353;
    }

    v12 = 16;
    goto LABEL_51;
  }

  if (v10 == 32766)
  {
    [v3 opaque];
    if (qword_1ED49A740 != -1)
    {
      dispatch_once(&qword_1ED49A740, &__block_literal_global_121_0);
    }

    v13 = qword_1ED49A738;
    v14 = 0;
    v11 = [v3 opaque] ^ 1;
LABEL_50:
    v12 = 8;
    goto LABEL_51;
  }

  if (v10 == 0x7FFF)
  {
    v12 = 8;
  }

  else
  {
    v12 = 0;
  }

  if (v10 == 0x7FFF)
  {
    v11 = 7;
  }

  else
  {
    v11 = 0;
  }

  v13 = 0;
  v14 = 0;
LABEL_51:
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();

  if (v7)
  {
    v21 = v9 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else if (v14)
  {
    v23 = [v3 opaque];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __45__UIGraphicsImageRenderer_contextWithFormat___block_invoke;
    v27[3] = &__block_descriptor_33_e93_B36__0_CGBitmapContextContentInfo_IiIBBf_8__CGBitmapContextInfo_IQQQQiII__CGColorSpace_BIf_28l;
    v28 = v23;
    v24 = _Block_copy(v27);
    v29 = *MEMORY[0x1E695F080];
    v30[0] = &unk_1EFE30B98;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v22 = CGBitmapContextCreateWithCallbacks();
  }

  else
  {
    v22 = CGBitmapContextCreate(0, v7, v9, v12, AlignedBytesPerRow, v13, v11);
  }

  return v22;
}

uint64_t __45__UIGraphicsImageRenderer_contextWithFormat___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) != 1)
  {
    return 1;
  }

  if (*(a2 + 13) != 1)
  {
    return 1;
  }

  v3 = *(a3 + 44) - 2;
  if (v3 > 2)
  {
    return 1;
  }

  result = 0;
  *(a3 + 44) = dword_18A67C9F0[v3];
  *(a3 + 64) = 0;
  return result;
}

+ (void)prepareCGContext:(CGContext *)a3 withRendererContext:(id)a4
{
  v5 = a4;
  v6 = [v5 format];
  Type = CGContextGetType();
  [v6 _contextScale];
  v9 = v8;
  if (Type == 9)
  {
    [v6 bounds];
    Width = vcvtpd_u64_f64(v9 * v10);
    Height = vcvtpd_u64_f64(v9 * v12);
  }

  else
  {
    Width = CGBitmapContextGetWidth(a3);
    Height = CGBitmapContextGetHeight(a3);
  }

  v22.size.width = Width;
  v14 = Height;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.height = Height;
  CGContextClearRect(a3, v22);
  CGContextTranslateCTM(a3, 0.0, v14);
  CGContextScaleCTM(a3, v9, -v9);
  v15 = [v5 format];

  [v15 bounds];
  v17 = v16;
  v19 = v18;

  if (v17 != *MEMORY[0x1E695EFF8] || v19 != *(MEMORY[0x1E695EFF8] + 8))
  {
    CGContextTranslateCTM(a3, -v17, -v19);
  }

  CGContextGetCTM(&v21, a3);
  CGContextSetBaseCTM();
}

- (void)_prepareContextForReuse:(CGContext *)a3
{
  if (CGContextGetType() == 9)
  {

    CGContextClear();
  }
}

- (UIGraphicsImageRenderer)initWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = +[UIGraphicsImageRendererFormat preferredFormat];
  v7 = [(UIGraphicsImageRenderer *)self initWithSize:v6 format:width, height];

  return v7;
}

- (UIGraphicsImageRenderer)initWithSize:(CGSize)size format:(UIGraphicsImageRendererFormat *)format
{
  v5.receiver = self;
  v5.super_class = UIGraphicsImageRenderer;
  return [(UIGraphicsRenderer *)&v5 initWithBounds:format format:0.0, 0.0, size.width, size.height];
}

- (UIGraphicsImageRenderer)initWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[UIGraphicsImageRendererFormat preferredFormat];
  v9 = [(UIGraphicsImageRenderer *)self initWithBounds:v8 format:x, y, width, height];

  return v9;
}

- (UIGraphicsImageRenderer)initWithBounds:(CGRect)bounds format:(UIGraphicsImageRendererFormat *)format
{
  v5.receiver = self;
  v5.super_class = UIGraphicsImageRenderer;
  return [(UIGraphicsRenderer *)&v5 initWithBounds:format format:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
}

- (UIImage)imageWithActions:(UIGraphicsImageDrawingActions)actions
{
  v4 = actions;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__107;
  v14 = __Block_byref_object_dispose__107;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__UIGraphicsImageRenderer_imageWithActions___block_invoke;
  v9[3] = &unk_1E710BE30;
  v9[4] = &v10;
  [(UIGraphicsRenderer *)self runDrawingActions:v4 completionActions:v9 error:0];
  v5 = v11[5];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = objc_alloc_init(UIImage);
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __44__UIGraphicsImageRenderer_imageWithActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 currentImage];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (NSData)PNGDataWithActions:(UIGraphicsImageDrawingActions)actions
{
  v4 = actions;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__107;
  v14 = __Block_byref_object_dispose__107;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__UIGraphicsImageRenderer_PNGDataWithActions___block_invoke;
  v9[3] = &unk_1E710BE30;
  v9[4] = &v10;
  [(UIGraphicsRenderer *)self runDrawingActions:v4 completionActions:v9 error:0];
  v5 = v11[5];
  if (v5)
  {
    v6 = UIImagePNGRepresentation(v5);
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __46__UIGraphicsImageRenderer_PNGDataWithActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 currentImage];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (NSData)JPEGDataWithCompressionQuality:(CGFloat)compressionQuality actions:(UIGraphicsImageDrawingActions)actions
{
  v6 = actions;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__107;
  v16 = __Block_byref_object_dispose__107;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__UIGraphicsImageRenderer_JPEGDataWithCompressionQuality_actions___block_invoke;
  v11[3] = &unk_1E710BE30;
  v11[4] = &v12;
  [(UIGraphicsRenderer *)self runDrawingActions:v6 completionActions:v11 error:0];
  v7 = v13[5];
  if (v7)
  {
    v8 = _UIImageJPEGRepresentation(v7, 0, compressionQuality);
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __66__UIGraphicsImageRenderer_JPEGDataWithCompressionQuality_actions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 currentImage];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end