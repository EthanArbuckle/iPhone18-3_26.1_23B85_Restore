@interface PLPositionalBGRAImageTable
- (CGImage)createImageWithIdentifier:(id)a3 orIndex:(unint64_t)a4;
- (void)getImageDataOffset:(int64_t *)a3 size:(CGSize *)a4 bytesPerRow:(unint64_t *)a5 fromEntryFooter:(PLImageTableEntryFooter_s *)a6;
@end

@implementation PLPositionalBGRAImageTable

- (CGImage)createImageWithIdentifier:(id)a3 orIndex:(unint64_t)a4
{
  if (self->super.super._readOnly)
  {
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  else if (self->super.super._entryCapacity <= a4)
  {
    return 0;
  }

  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v6 = malloc_type_malloc([(PLPositionalTable *)self entryLength], 0xA1E8F139uLL);
  if (!v6)
  {
    return v6;
  }

  if (![(PLPositionalImageTable *)self readImageDataAtIndex:a4 intoBuffer:v6 bytesRead:&v18 imageWidth:&v22 + 4 imageHeight:&v22 imageDataWidth:&v21 + 4 imageDataHeight:&v21 startingOffset:&v19 bytesPerRow:&v20 uuidBytes:0])
  {
    free(v6);
    return 0;
  }

  v7 = [(PLPositionalTable *)self entryLength];
  v9 = v22;
  v8 = SHIDWORD(v22);
  v10 = [(PLPositionalImageTable *)self formatMaxBytesPerRow];
  v11 = v19;
  v12 = self;
  if (_create5551BGRACGImageFromImageData_s_onceToken != -1)
  {
    dispatch_once(&_create5551BGRACGImageFromImageData_s_onceToken, &__block_literal_global_11482);
  }

  v13 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v14 = v13[1];
  *v13 = v6;
  v13[1] = v12;
  v15 = v12;

  v16 = CGDataProviderCreateWithData(v13, v6 + v11, v7 - v11 - 28, _freeCGImageDataProviderBuffer);
  v6 = CGImageCreate(v8, v9, 5uLL, 0x10uLL, v10, _create5551BGRACGImageFromImageData_s_colorSpace, 0x1006u, v16, 0, 0, kCGRenderingIntentDefault);

  CGDataProviderRelease(v16);
  return v6;
}

- (void)getImageDataOffset:(int64_t *)a3 size:(CGSize *)a4 bytesPerRow:(unint64_t *)a5 fromEntryFooter:(PLImageTableEntryFooter_s *)a6
{
  v11 = [(PLPositionalImageTable *)self formatSideLen];
  if ([(PLPositionalImageTable *)self formatIsCropped])
  {
    v12 = 0;
  }

  else
  {
    var1 = a6->var1;
    v14 = v11 >= var1;
    v15 = v11 - var1;
    if (v15 != 0 && v14)
    {
      v12 = [(PLPositionalImageTable *)self formatBytesPerPixel]* (v15 >> 1);
    }

    else
    {
      v12 = 0;
    }

    if (a6->var2 < v11)
    {
      v16 = [(PLPositionalImageTable *)self format];
      v17 = [v16 tableFormatBytesPerRowForWidth:v11];

      v12 += v17 * ((v11 - a6->var2 + 1) >> 1);
    }
  }

  v18 = [(PLPositionalImageTable *)self formatSideLen];
  *a3 = v12;
  *a5 = [(PLPositionalImageTable *)self formatMaxBytesPerRow];
  a4->width = v18;
  a4->height = v18;
}

@end