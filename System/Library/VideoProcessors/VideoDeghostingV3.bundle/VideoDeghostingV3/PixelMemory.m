@interface PixelMemory
- (PixelMemory)initWithCvPixelBuffer:(__CVBuffer *)a3 skipClamp:(BOOL)a4 readOnly:(BOOL)a5;
- (__n128)readYCbCrValueAtX:(int)a3 Y:(int)a4;
- (double)readFourChannelAtX:(unsigned int)a3 Y:(unsigned int)a4;
- (float)ReadYValue8AtX:(int)a3 Y:(int)a4;
- (float)readBlurredYValueAtX:(int)a3 Y:(int)a4;
- (float)readFloatAtX:(int)a3 Y:(int)a4;
- (id)readYCbCrValueAtArrayX:(id)a3 ArrayY:(id)a4;
- (int16x4_t)SampleFourChannelAtX:(float)a3 Y:;
- (unsigned)readOneChannelAtX:(int)a3 Y:(int)a4 Channel:(char)a5;
- (void)dealloc;
- (void)writeCbCrValueCb:(signed __int16)a3 Cr:(signed __int16)a4 X:(int)a5 Y:(int)a6;
- (void)writeFloat:(float)a3 X:(int)a4 Y:(int)a5;
- (void)writeValue:(int)a3 X:(int)a4 Y:;
- (void)writeValue:(unsigned __int8)a3 X:(int)a4 Y:(int)a5 Channel:(char)a6;
- (void)writeYCbCrValue:(int)a3 X:(int)a4 Y:;
- (void)writeYValue:(signed __int16)a3 X:(int)a4 Y:(int)a5;
@end

@implementation PixelMemory

- (void)dealloc
{
  CVPixelBufferUnlockBaseAddress(self->_buf, self->_readBufferOnly);
  buf = self->_buf;
  if (buf)
  {
    CFRelease(buf);
  }

  v4.receiver = self;
  v4.super_class = PixelMemory;
  [(PixelMemory *)&v4 dealloc];
}

- (float)readFloatAtX:(int)a3 Y:(int)a4
{
  v4 = __PAIR64__(a4, a3);
  if (!self->_skipClamp)
  {
    v4 = vmax_s32(vmin_s32(__PAIR64__(a4, a3), vadd_s32(*&self->_width, -1)), 0);
  }

  return *&self->_pMemory[v4 * self->_bytePerPixel + HIDWORD(v4) * self->_stride];
}

- (unsigned)readOneChannelAtX:(int)a3 Y:(int)a4 Channel:(char)a5
{
  v5 = __PAIR64__(a4, a3);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(a4, a3), vadd_s32(*&self->_width, -1)), 0);
    v6 = self->_channels - 1;
    if (v6 >= a5)
    {
      v6 = a5;
    }

    *&a5 = v6 & ~(v6 >> 31);
  }

  return self->_pMemory[v5 * self->_bytePerPixel + HIDWORD(v5) * self->_stride + a5];
}

- (double)readFourChannelAtX:(unsigned int)a3 Y:(unsigned int)a4
{
  v4 = __PAIR64__(a4, a3);
  if ((*(a1 + 10) & 1) == 0)
  {
    v4 = vmax_s32(vmin_s32(__PAIR64__(a4, a3), vadd_s32(*(a1 + 12), -1)), 0);
  }

  v4.i32[0] = *(*(a1 + 48) + v4.i32[0] * *(a1 + 32) + v4.i32[1] * *(a1 + 20));
  *&result = vmovl_u8(v4).u64[0];
  return result;
}

- (void)writeValue:(unsigned __int8)a3 X:(int)a4 Y:(int)a5 Channel:(char)a6
{
  v6 = __PAIR64__(a5, a4);
  if (!self->_skipClamp)
  {
    v6 = vmax_s32(vmin_s32(__PAIR64__(a5, a4), vadd_s32(*&self->_width, -1)), 0);
    v7 = self->_channels - 1;
    if (v7 >= a6)
    {
      v7 = a6;
    }

    *&a6 = v7 & ~(v7 >> 31);
  }

  self->_pMemory[v6 * self->_bytePerPixel + HIDWORD(v6) * self->_stride + a6] = a3;
}

- (void)writeValue:(int)a3 X:(int)a4 Y:
{
  v5 = __PAIR64__(v4, a4);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(v4, a4), vadd_s32(*&self->_width, -1)), 0);
  }

  *&self->_pMemory[v5 * self->_bytePerPixel + HIDWORD(v5) * self->_stride] = a3;
}

- (void)writeFloat:(float)a3 X:(int)a4 Y:(int)a5
{
  v5 = __PAIR64__(a5, a4);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(a5, a4), vadd_s32(*&self->_width, -1)), 0);
  }

  *&self->_pMemory[v5 * self->_bytePerPixel + HIDWORD(v5) * self->_stride] = a3;
}

- (int16x4_t)SampleFourChannelAtX:(float)a3 Y:
{
  v8 = floorf(a2);
  LODWORD(v3) = vcvtms_s32_f32(a2);
  v9 = floorf(a3);
  LODWORD(v4) = vcvtms_s32_f32(a3);
  [a1 readFourChannelAtX:v3 Y:v4];
  v11 = v10;
  [a1 readFourChannelAtX:(v3 + 1) Y:v4];
  v13 = v12;
  [a1 readFourChannelAtX:v3 Y:(v4 + 1)];
  v15 = v14;
  [a1 readFourChannelAtX:(v3 + 1) Y:(v4 + 1)];
  v16 = vdupq_n_s32(0x4B400000u);
  v17 = vdupq_n_s32(0xCB400000);
  v18 = vaddq_f32(vorrq_s8(vmovl_u16((v11 & 0xFF00FF00FF00FFLL)), v16), v17);
  v19 = vaddq_f32(vorrq_s8(vmovl_u16((v13 & 0xFF00FF00FF00FFLL)), v16), v17);
  v20 = vaddq_f32(vorrq_s8(vmovl_u16((v15 & 0xFF00FF00FF00FFLL)), v16), v17);
  v22 = vaddq_f32(vorrq_s8(vmovl_u16((v21 & 0xFF00FF00FF00FFLL)), v16), v17);
  *v16.i32 = a2 - v8;
  return vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v22, *v16.i32), v20, 1.0 - *v16.i32), a3 - v9), vmlaq_n_f32(vmulq_n_f32(v19, *v16.i32), v18, 1.0 - *v16.i32), 1.0 - (a3 - v9)), 0), vdupq_n_s32(0x437F0000u))));
}

- (__n128)readYCbCrValueAtX:(int)a3 Y:(int)a4
{
  v4 = (*(a1 + 56) + *(a1 + 24) * (a4 / 2) + 4 * (a3 / 2));
  result.n128_f32[0] = (*(*(a1 + 48) + *(a1 + 20) * a4 + 2 * a3) >> 6);
  result.n128_f32[1] = (*v4 >> 6);
  result.n128_f32[2] = (v4[1] >> 6);
  return result;
}

- (void)writeYCbCrValue:(int)a3 X:(int)a4 Y:
{
  v5 = __PAIR64__(a4, a3);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(a4, a3), vadd_s32(*&self->_width, -1)), 0);
  }

  *&self->_pMemory[2 * v5 + HIDWORD(v5) * self->_stride] = *&v4 << 6;
  v6.i32[0] = (a3 + (a3 >> 31)) & 0xFFFFFFFE;
  v6.i32[1] = a4 / 2;
  v7 = v6;
  if (!self->_skipClamp)
  {
    v7 = vmax_s32(vmin_s32(v6, vadd_s32(*&self->_width, -1)), 0);
  }

  *&self->_pMemoryPlane2[4 * v7.i32[0] + v7.i32[1] * self->_stridePlane2] = *(&v4 + 1) << 6;
  if (self->_skipClamp)
  {
    v8 = 2;
  }

  else
  {
    channels = self->_channels;
    v6 = vmax_s32(vmin_s32(v6, vadd_s32(*&self->_width, -1)), 0);
    if (channels >= 3)
    {
      channels = 3;
    }

    if (channels <= 1)
    {
      LOBYTE(channels) = 1;
    }

    v8 = (channels - 1);
  }

  *&self->_pMemoryPlane2[4 * v6.i32[0] + v6.i32[1] * self->_stridePlane2 + v8] = *(&v4 + 2) << 6;
}

- (void)writeYValue:(signed __int16)a3 X:(int)a4 Y:(int)a5
{
  v5 = __PAIR64__(a5, a4);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(a5, a4), vadd_s32(*&self->_width, -1)), 0);
  }

  *&self->_pMemory[2 * v5 + HIDWORD(v5) * self->_stride] = a3 << 6;
}

- (void)writeCbCrValueCb:(signed __int16)a3 Cr:(signed __int16)a4 X:(int)a5 Y:(int)a6
{
  v6 = __PAIR64__(a6, a5);
  v7 = __PAIR64__(a6, a5);
  if (!self->_skipClamp)
  {
    v7 = vmax_s32(vmin_s32(__PAIR64__(a6, a5), vadd_s32(*&self->_width, -1)), 0);
  }

  *&self->_pMemoryPlane2[2 * v7 + HIDWORD(v7) * self->_stridePlane2] = a3 << 6;
  if (self->_skipClamp)
  {
    v8 = 2;
  }

  else
  {
    channels = self->_channels;
    v6 = vmax_s32(vmin_s32(__PAIR64__(a6, a5), vadd_s32(*&self->_width, -1)), 0);
    if (channels >= 3)
    {
      channels = 3;
    }

    if (channels <= 1)
    {
      LOBYTE(channels) = 1;
    }

    v8 = (channels - 1);
  }

  *&self->_pMemoryPlane2[2 * v6 + HIDWORD(v6) * self->_stridePlane2 + v8] = a4 << 6;
}

- (id)readYCbCrValueAtArrayX:(id)a3 ArrayY:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  if ([v6 count])
  {
    v9 = 0;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:v9];
      v11 = [v10 intValue];

      v12 = [v7 objectAtIndexedSubscript:v9];
      v13 = [v12 intValue];

      v14 = &self->_pMemoryPlane2[4 * (v11 / 2) + self->_stridePlane2 * (v13 / 2)];
      *&v15 = (*&self->_pMemory[2 * v11 + self->_stride * v13] >> 6);
      *(&v15 + 1) = (*v14 >> 6);
      *(&v15 + 2) = (*(v14 + 1) >> 6);
      v18 = v15;
      v16 = [NSData dataWithBytes:&v18 length:16];
      [v8 addObject:v16];

      ++v9;
    }

    while ([v6 count] > v9);
  }

  return v8;
}

- (float)readBlurredYValueAtX:(int)a3 Y:(int)a4
{
  if (a3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = a3;
  }

  LODWORD(v5) = self->_width - 1;
  if (v5 >= a3 + 2)
  {
    v5 = (a3 + 2);
  }

  else
  {
    v5 = v5;
  }

  result = 0.0;
  if (v4 - 2 <= v5)
  {
    if (a4 <= 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = a4;
    }

    v8 = v7 - 2;
    v9 = a4 + 2;
    if (self->_height - 1 < a4 + 2)
    {
      v9 = self->_height - 1;
    }

    v10 = v7 - 2;
    v11 = v4 - 2;
    v12 = v7 - 3;
    v13 = 2 * v4 - 4;
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      if (v8 <= v9)
      {
        stride = self->_stride;
        v17 = &self->_pMemory[v13 + v10 * stride];
        v18 = v12;
        do
        {
          v14 = v14 + (*v17 >> 6);
          v15 = v15 + 1.0;
          ++v18;
          v17 += stride;
        }

        while (v18 < v9);
      }

      v13 += 2;
    }

    while (v11++ < v5);
    result = 0.0;
    if (v15 > 4.0)
    {
      return v14 / (v15 * 1023.0);
    }
  }

  return result;
}

- (float)ReadYValue8AtX:(int)a3 Y:(int)a4
{
  LOBYTE(v4) = self->_pMemory[2 * a3 + 1 + self->_stride * a4];
  *&v4 = v4 / 255.0;
  LODWORD(result) = v4;
  return result;
}

- (PixelMemory)initWithCvPixelBuffer:(__CVBuffer *)a3 skipClamp:(BOOL)a4 readOnly:(BOOL)a5
{
  v5 = self;
  if (!a3)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_38;
  }

  v6 = a5;
  v26.receiver = self;
  v26.super_class = PixelMemory;
  v9 = [(PixelMemory *)&v26 init];
  v5 = v9;
  if (!v9)
  {
LABEL_38:
    v24 = 0;
    goto LABEL_36;
  }

  v9->_buf = a3;
  v9->_width = CVPixelBufferGetWidth(a3);
  v5->_height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v5->_format = PixelFormatType;
  if (PixelFormatType == 2019963440 || PixelFormatType == 2016686640)
  {
    v5->_stride = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
    v13 = 24;
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a3);
    v13 = 20;
  }

  *(&v5->super.isa + v13) = BytesPerRowOfPlane;
  CVPixelBufferRetain(v5->_buf);
  format = v5->_format;
  if (format != 1111970369 && format != 1278226481)
  {
    if (format == 1278226488 || format == 1278226534)
    {
      v18 = 1;
      goto LABEL_26;
    }

    if (format != 2019963440 && format != 2016686640)
    {
      goto LABEL_38;
    }
  }

  if (format == 1278226481)
  {
    v18 = 1;
  }

  else
  {
    v18 = 4;
  }

LABEL_26:
  v5->_channels = v18;
  if (format == 1278226488)
  {
    v19 = 1;
  }

  else
  {
    v19 = 4;
  }

  v5->_bytePerPixel = v19;
  v5->_readBufferOnly = v6;
  CVPixelBufferLockBaseAddress(a3, v6);
  v20 = v5->_format;
  if (v20 == 2019963440 || v20 == 2016686640)
  {
    v5->_pMemory = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
    v23 = 56;
  }

  else
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddress(a3);
    v23 = 48;
  }

  *(&v5->super.isa + v23) = BaseAddressOfPlane;
  v5->_skipClamp = a4;
  v5 = v5;
  v24 = v5;
LABEL_36:

  return v24;
}

@end