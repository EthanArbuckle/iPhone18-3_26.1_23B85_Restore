@interface AMBNRBuffers
+ (int)createAMBNRPyramidForWidth:(int)width height:(int)height startingLevel:(int)level pyramid:(id)pyramid metal:(id)metal scratchBuffer:(id)buffer offset:(unint64_t *)offset;
+ (unint64_t)calculateBytesRequiredForAMBNRPyramidWithWidth:(int)width height:(int)height startingLevel:(int)level;
- (AMBNRBuffers)init;
- (void)releaseBuffers;
- (void)releasePyramidsBottom;
@end

@implementation AMBNRBuffers

- (AMBNRBuffers)init
{
  v11.receiver = self;
  v11.super_class = AMBNRBuffers;
  v2 = [(AMBNRBuffers *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(PyramidStorage_NRF);
    pyramid = v2->pyramid;
    v2->pyramid = v3;

    v2->pyramid->levels = 4;
    v5 = objc_alloc_init(PyramidStorage_NRF);
    noiseMapPyramid = v2->noiseMapPyramid;
    v2->noiseMapPyramid = v5;

    v2->noiseMapPyramid->levels = 4;
    v7 = objc_alloc_init(PyramidStorage_NRF);
    sharpeningPyramid = v2->sharpeningPyramid;
    v2->sharpeningPyramid = v7;

    v2->sharpeningPyramid->levels = 4;
    v9 = v2;
  }

  return v2;
}

- (void)releaseBuffers
{
  objc_msgSend_releaseBuffers(self->pyramid, a2, v2, v3);
  objc_msgSend_releaseBuffers(self->noiseMapPyramid, v5, v6, v7);
  sharpeningPyramid = self->sharpeningPyramid;

  objc_msgSend_releaseBuffers(sharpeningPyramid, v8, v9, v10);
}

- (void)releasePyramidsBottom
{
  objc_msgSend_clearLevel_(self->pyramid, a2, 0, v2);
  objc_msgSend_clearLevel_(self->noiseMapPyramid, v4, 0, v5);
  sharpeningPyramid = self->sharpeningPyramid;

  objc_msgSend_clearLevel_(sharpeningPyramid, v6, 0, v7);
}

+ (unint64_t)calculateBytesRequiredForAMBNRPyramidWithWidth:(int)width height:(int)height startingLevel:(int)level
{
  if (width)
  {
    sub_2958927C4();
    return v12;
  }

  if (height)
  {
    sub_295892870();
    return v12;
  }

  if (level <= 3)
  {
    result = 0;
    v6 = height >> level;
    v7 = width >> level;
    v8 = level - 4;
    while (1)
    {
      if (v7)
      {
        sub_29589291C();
        return v12;
      }

      if (v6)
      {
        break;
      }

      v9 = (2 * v7 + 63) & 0xFFFFFFC0;
      v7 >>= 1;
      v10 = v6 + (v6 >> 1);
      v6 >>= 1;
      result += v9 * v10;
      if (__CFADD__(v8++, 1))
      {
        return result;
      }
    }

    sub_2958929C8();
    return v12;
  }

  return 0;
}

+ (int)createAMBNRPyramidForWidth:(int)width height:(int)height startingLevel:(int)level pyramid:(id)pyramid metal:(id)metal scratchBuffer:(id)buffer offset:(unint64_t *)offset
{
  LODWORD(i) = level;
  pyramidCopy = pyramid;
  metalCopy = metal;
  bufferCopy = buffer;
  if (width)
  {
    sub_295892A74(&v29);
LABEL_20:
    v27 = v29;
    goto LABEL_15;
  }

  if (height)
  {
    sub_295892B20(&v29);
    goto LABEL_20;
  }

  pyramidCopy[2] = 4;
  if (pyramidCopy[2] > i)
  {
    v18 = height >> i;
    v19 = width >> i;
    for (i = i; i < pyramidCopy[2]; ++i)
    {
      if (v19)
      {
        sub_295892BCC(&v29);
        goto LABEL_20;
      }

      if (v18)
      {
        sub_295892C78(&v29);
        goto LABEL_20;
      }

      if (bufferCopy)
      {
        v20 = objc_msgSend_aliasAMBNRPyramidLevel_lvl_width_height_metal_scratchBuffer_offset_(AMBNRBuffers, v16, pyramidCopy, i, v19, v18, metalCopy, bufferCopy, offset);
        if (v20)
        {
          sub_295892D24(v20, &v29);
          goto LABEL_20;
        }

        *(pyramidCopy + i + 664) = 1;
        v19 >>= 1;
        v18 >>= 1;
      }

      else
      {
        PixelBuffer = CreatePixelBuffer();
        if (!PixelBuffer)
        {
          sub_295892EA4(&v29);
          goto LABEL_20;
        }

        v22 = PixelBuffer;
        v19 >>= 1;
        v18 >>= 1;
        v23 = CreatePixelBuffer();
        v24 = metalCopy;
        v26 = objc_msgSend_setPixelBufferForLuma_optionalChroma_level_metal_(pyramidCopy, v25, v22, v23, i, metalCopy);
        CFRelease(v22);
        CFRelease(v23);
        if (v26)
        {
          sub_295892DF8(&v29);
          v27 = v29;
          metalCopy = v24;
          goto LABEL_15;
        }

        metalCopy = v24;
      }
    }
  }

  v27 = 0;
LABEL_15:

  return v27;
}

@end