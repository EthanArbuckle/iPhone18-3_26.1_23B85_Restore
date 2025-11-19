@interface AMBNRBuffers
+ (int)createAMBNRPyramidForWidth:(int)a3 height:(int)a4 startingLevel:(int)a5 pyramid:(id)a6 metal:(id)a7 scratchBuffer:(id)a8 offset:(unint64_t *)a9;
+ (unint64_t)calculateBytesRequiredForAMBNRPyramidWithWidth:(int)a3 height:(int)a4 startingLevel:(int)a5;
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

+ (unint64_t)calculateBytesRequiredForAMBNRPyramidWithWidth:(int)a3 height:(int)a4 startingLevel:(int)a5
{
  if (a3)
  {
    sub_2958927C4();
    return v12;
  }

  if (a4)
  {
    sub_295892870();
    return v12;
  }

  if (a5 <= 3)
  {
    result = 0;
    v6 = a4 >> a5;
    v7 = a3 >> a5;
    v8 = a5 - 4;
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

+ (int)createAMBNRPyramidForWidth:(int)a3 height:(int)a4 startingLevel:(int)a5 pyramid:(id)a6 metal:(id)a7 scratchBuffer:(id)a8 offset:(unint64_t *)a9
{
  LODWORD(i) = a5;
  v14 = a6;
  v15 = a7;
  v17 = a8;
  if (a3)
  {
    sub_295892A74(&v29);
LABEL_20:
    v27 = v29;
    goto LABEL_15;
  }

  if (a4)
  {
    sub_295892B20(&v29);
    goto LABEL_20;
  }

  v14[2] = 4;
  if (v14[2] > i)
  {
    v18 = a4 >> i;
    v19 = a3 >> i;
    for (i = i; i < v14[2]; ++i)
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

      if (v17)
      {
        v20 = objc_msgSend_aliasAMBNRPyramidLevel_lvl_width_height_metal_scratchBuffer_offset_(AMBNRBuffers, v16, v14, i, v19, v18, v15, v17, a9);
        if (v20)
        {
          sub_295892D24(v20, &v29);
          goto LABEL_20;
        }

        *(v14 + i + 664) = 1;
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
        v24 = v15;
        v26 = objc_msgSend_setPixelBufferForLuma_optionalChroma_level_metal_(v14, v25, v22, v23, i, v15);
        CFRelease(v22);
        CFRelease(v23);
        if (v26)
        {
          sub_295892DF8(&v29);
          v27 = v29;
          v15 = v24;
          goto LABEL_15;
        }

        v15 = v24;
      }
    }
  }

  v27 = 0;
LABEL_15:

  return v27;
}

@end