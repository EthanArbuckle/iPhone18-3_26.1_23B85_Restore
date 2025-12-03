@interface PLPositionalBGRAImageTable
- (CGImage)createImageWithIdentifier:(id)identifier orIndex:(unint64_t)index;
- (void)getImageDataOffset:(int64_t *)offset size:(CGSize *)size bytesPerRow:(unint64_t *)row fromEntryFooter:(PLImageTableEntryFooter_s *)footer;
@end

@implementation PLPositionalBGRAImageTable

- (CGImage)createImageWithIdentifier:(id)identifier orIndex:(unint64_t)index
{
  if (self->super.super._readOnly)
  {
    if (index == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  else if (self->super.super._entryCapacity <= index)
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

  if (![(PLPositionalImageTable *)self readImageDataAtIndex:index intoBuffer:v6 bytesRead:&v18 imageWidth:&v22 + 4 imageHeight:&v22 imageDataWidth:&v21 + 4 imageDataHeight:&v21 startingOffset:&v19 bytesPerRow:&v20 uuidBytes:0])
  {
    free(v6);
    return 0;
  }

  entryLength = [(PLPositionalTable *)self entryLength];
  v9 = v22;
  v8 = SHIDWORD(v22);
  formatMaxBytesPerRow = [(PLPositionalImageTable *)self formatMaxBytesPerRow];
  v11 = v19;
  selfCopy = self;
  if (_create5551BGRACGImageFromImageData_s_onceToken != -1)
  {
    dispatch_once(&_create5551BGRACGImageFromImageData_s_onceToken, &__block_literal_global_11482);
  }

  v13 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v14 = v13[1];
  *v13 = v6;
  v13[1] = selfCopy;
  v15 = selfCopy;

  v16 = CGDataProviderCreateWithData(v13, v6 + v11, entryLength - v11 - 28, _freeCGImageDataProviderBuffer);
  v6 = CGImageCreate(v8, v9, 5uLL, 0x10uLL, formatMaxBytesPerRow, _create5551BGRACGImageFromImageData_s_colorSpace, 0x1006u, v16, 0, 0, kCGRenderingIntentDefault);

  CGDataProviderRelease(v16);
  return v6;
}

- (void)getImageDataOffset:(int64_t *)offset size:(CGSize *)size bytesPerRow:(unint64_t *)row fromEntryFooter:(PLImageTableEntryFooter_s *)footer
{
  formatSideLen = [(PLPositionalImageTable *)self formatSideLen];
  if ([(PLPositionalImageTable *)self formatIsCropped])
  {
    v12 = 0;
  }

  else
  {
    var1 = footer->var1;
    v14 = formatSideLen >= var1;
    v15 = formatSideLen - var1;
    if (v15 != 0 && v14)
    {
      v12 = [(PLPositionalImageTable *)self formatBytesPerPixel]* (v15 >> 1);
    }

    else
    {
      v12 = 0;
    }

    if (footer->var2 < formatSideLen)
    {
      format = [(PLPositionalImageTable *)self format];
      v17 = [format tableFormatBytesPerRowForWidth:formatSideLen];

      v12 += v17 * ((formatSideLen - footer->var2 + 1) >> 1);
    }
  }

  formatSideLen2 = [(PLPositionalImageTable *)self formatSideLen];
  *offset = v12;
  *row = [(PLPositionalImageTable *)self formatMaxBytesPerRow];
  size->width = formatSideLen2;
  size->height = formatSideLen2;
}

@end