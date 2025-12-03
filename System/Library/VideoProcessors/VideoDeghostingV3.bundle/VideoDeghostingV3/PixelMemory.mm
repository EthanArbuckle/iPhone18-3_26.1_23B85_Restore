@interface PixelMemory
- (PixelMemory)initWithCvPixelBuffer:(__CVBuffer *)buffer skipClamp:(BOOL)clamp readOnly:(BOOL)only;
- (__n128)readYCbCrValueAtX:(int)x Y:(int)y;
- (double)readFourChannelAtX:(unsigned int)x Y:(unsigned int)y;
- (float)ReadYValue8AtX:(int)x Y:(int)y;
- (float)readBlurredYValueAtX:(int)x Y:(int)y;
- (float)readFloatAtX:(int)x Y:(int)y;
- (id)readYCbCrValueAtArrayX:(id)x ArrayY:(id)y;
- (int16x4_t)SampleFourChannelAtX:(float)x Y:;
- (unsigned)readOneChannelAtX:(int)x Y:(int)y Channel:(char)channel;
- (void)dealloc;
- (void)writeCbCrValueCb:(signed __int16)cb Cr:(signed __int16)cr X:(int)x Y:(int)y;
- (void)writeFloat:(float)float X:(int)x Y:(int)y;
- (void)writeValue:(int)value X:(int)x Y:;
- (void)writeValue:(unsigned __int8)value X:(int)x Y:(int)y Channel:(char)channel;
- (void)writeYCbCrValue:(int)value X:(int)x Y:;
- (void)writeYValue:(signed __int16)value X:(int)x Y:(int)y;
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

- (float)readFloatAtX:(int)x Y:(int)y
{
  v4 = __PAIR64__(y, x);
  if (!self->_skipClamp)
  {
    v4 = vmax_s32(vmin_s32(__PAIR64__(y, x), vadd_s32(*&self->_width, -1)), 0);
  }

  return *&self->_pMemory[v4 * self->_bytePerPixel + HIDWORD(v4) * self->_stride];
}

- (unsigned)readOneChannelAtX:(int)x Y:(int)y Channel:(char)channel
{
  v5 = __PAIR64__(y, x);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(y, x), vadd_s32(*&self->_width, -1)), 0);
    channelCopy = self->_channels - 1;
    if (channelCopy >= channel)
    {
      channelCopy = channel;
    }

    *&channel = channelCopy & ~(channelCopy >> 31);
  }

  return self->_pMemory[v5 * self->_bytePerPixel + HIDWORD(v5) * self->_stride + channel];
}

- (double)readFourChannelAtX:(unsigned int)x Y:(unsigned int)y
{
  v4 = __PAIR64__(y, x);
  if ((*(self + 10) & 1) == 0)
  {
    v4 = vmax_s32(vmin_s32(__PAIR64__(y, x), vadd_s32(*(self + 12), -1)), 0);
  }

  v4.i32[0] = *(*(self + 48) + v4.i32[0] * *(self + 32) + v4.i32[1] * *(self + 20));
  *&result = vmovl_u8(v4).u64[0];
  return result;
}

- (void)writeValue:(unsigned __int8)value X:(int)x Y:(int)y Channel:(char)channel
{
  v6 = __PAIR64__(y, x);
  if (!self->_skipClamp)
  {
    v6 = vmax_s32(vmin_s32(__PAIR64__(y, x), vadd_s32(*&self->_width, -1)), 0);
    channelCopy = self->_channels - 1;
    if (channelCopy >= channel)
    {
      channelCopy = channel;
    }

    *&channel = channelCopy & ~(channelCopy >> 31);
  }

  self->_pMemory[v6 * self->_bytePerPixel + HIDWORD(v6) * self->_stride + channel] = value;
}

- (void)writeValue:(int)value X:(int)x Y:
{
  v5 = __PAIR64__(v4, x);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(v4, x), vadd_s32(*&self->_width, -1)), 0);
  }

  *&self->_pMemory[v5 * self->_bytePerPixel + HIDWORD(v5) * self->_stride] = value;
}

- (void)writeFloat:(float)float X:(int)x Y:(int)y
{
  v5 = __PAIR64__(y, x);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(y, x), vadd_s32(*&self->_width, -1)), 0);
  }

  *&self->_pMemory[v5 * self->_bytePerPixel + HIDWORD(v5) * self->_stride] = float;
}

- (int16x4_t)SampleFourChannelAtX:(float)x Y:
{
  v8 = floorf(a2);
  LODWORD(v3) = vcvtms_s32_f32(a2);
  v9 = floorf(x);
  LODWORD(v4) = vcvtms_s32_f32(x);
  [self readFourChannelAtX:v3 Y:v4];
  v11 = v10;
  [self readFourChannelAtX:(v3 + 1) Y:v4];
  v13 = v12;
  [self readFourChannelAtX:v3 Y:(v4 + 1)];
  v15 = v14;
  [self readFourChannelAtX:(v3 + 1) Y:(v4 + 1)];
  v16 = vdupq_n_s32(0x4B400000u);
  v17 = vdupq_n_s32(0xCB400000);
  v18 = vaddq_f32(vorrq_s8(vmovl_u16((v11 & 0xFF00FF00FF00FFLL)), v16), v17);
  v19 = vaddq_f32(vorrq_s8(vmovl_u16((v13 & 0xFF00FF00FF00FFLL)), v16), v17);
  v20 = vaddq_f32(vorrq_s8(vmovl_u16((v15 & 0xFF00FF00FF00FFLL)), v16), v17);
  v22 = vaddq_f32(vorrq_s8(vmovl_u16((v21 & 0xFF00FF00FF00FFLL)), v16), v17);
  *v16.i32 = a2 - v8;
  return vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v22, *v16.i32), v20, 1.0 - *v16.i32), x - v9), vmlaq_n_f32(vmulq_n_f32(v19, *v16.i32), v18, 1.0 - *v16.i32), 1.0 - (x - v9)), 0), vdupq_n_s32(0x437F0000u))));
}

- (__n128)readYCbCrValueAtX:(int)x Y:(int)y
{
  v4 = (*(self + 56) + *(self + 24) * (y / 2) + 4 * (x / 2));
  result.n128_f32[0] = (*(*(self + 48) + *(self + 20) * y + 2 * x) >> 6);
  result.n128_f32[1] = (*v4 >> 6);
  result.n128_f32[2] = (v4[1] >> 6);
  return result;
}

- (void)writeYCbCrValue:(int)value X:(int)x Y:
{
  v5 = __PAIR64__(x, value);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(x, value), vadd_s32(*&self->_width, -1)), 0);
  }

  *&self->_pMemory[2 * v5 + HIDWORD(v5) * self->_stride] = *&v4 << 6;
  v6.i32[0] = (value + (value >> 31)) & 0xFFFFFFFE;
  v6.i32[1] = x / 2;
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

- (void)writeYValue:(signed __int16)value X:(int)x Y:(int)y
{
  v5 = __PAIR64__(y, x);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(y, x), vadd_s32(*&self->_width, -1)), 0);
  }

  *&self->_pMemory[2 * v5 + HIDWORD(v5) * self->_stride] = value << 6;
}

- (void)writeCbCrValueCb:(signed __int16)cb Cr:(signed __int16)cr X:(int)x Y:(int)y
{
  v6 = __PAIR64__(y, x);
  v7 = __PAIR64__(y, x);
  if (!self->_skipClamp)
  {
    v7 = vmax_s32(vmin_s32(__PAIR64__(y, x), vadd_s32(*&self->_width, -1)), 0);
  }

  *&self->_pMemoryPlane2[2 * v7 + HIDWORD(v7) * self->_stridePlane2] = cb << 6;
  if (self->_skipClamp)
  {
    v8 = 2;
  }

  else
  {
    channels = self->_channels;
    v6 = vmax_s32(vmin_s32(__PAIR64__(y, x), vadd_s32(*&self->_width, -1)), 0);
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

  *&self->_pMemoryPlane2[2 * v6 + HIDWORD(v6) * self->_stridePlane2 + v8] = cr << 6;
}

- (id)readYCbCrValueAtArrayX:(id)x ArrayY:(id)y
{
  xCopy = x;
  yCopy = y;
  v8 = +[NSMutableArray array];
  if ([xCopy count])
  {
    v9 = 0;
    do
    {
      v10 = [xCopy objectAtIndexedSubscript:v9];
      intValue = [v10 intValue];

      v12 = [yCopy objectAtIndexedSubscript:v9];
      intValue2 = [v12 intValue];

      v14 = &self->_pMemoryPlane2[4 * (intValue / 2) + self->_stridePlane2 * (intValue2 / 2)];
      *&v15 = (*&self->_pMemory[2 * intValue + self->_stride * intValue2] >> 6);
      *(&v15 + 1) = (*v14 >> 6);
      *(&v15 + 2) = (*(v14 + 1) >> 6);
      v18 = v15;
      v16 = [NSData dataWithBytes:&v18 length:16];
      [v8 addObject:v16];

      ++v9;
    }

    while ([xCopy count] > v9);
  }

  return v8;
}

- (float)readBlurredYValueAtX:(int)x Y:(int)y
{
  if (x <= 2)
  {
    xCopy = 2;
  }

  else
  {
    xCopy = x;
  }

  LODWORD(v5) = self->_width - 1;
  if (v5 >= x + 2)
  {
    v5 = (x + 2);
  }

  else
  {
    v5 = v5;
  }

  result = 0.0;
  if (xCopy - 2 <= v5)
  {
    if (y <= 2)
    {
      yCopy = 2;
    }

    else
    {
      yCopy = y;
    }

    v8 = yCopy - 2;
    v9 = y + 2;
    if (self->_height - 1 < y + 2)
    {
      v9 = self->_height - 1;
    }

    v10 = yCopy - 2;
    v11 = xCopy - 2;
    v12 = yCopy - 3;
    v13 = 2 * xCopy - 4;
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

- (float)ReadYValue8AtX:(int)x Y:(int)y
{
  LOBYTE(v4) = self->_pMemory[2 * x + 1 + self->_stride * y];
  *&v4 = v4 / 255.0;
  LODWORD(result) = v4;
  return result;
}

- (PixelMemory)initWithCvPixelBuffer:(__CVBuffer *)buffer skipClamp:(BOOL)clamp readOnly:(BOOL)only
{
  selfCopy = self;
  if (!buffer)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_38;
  }

  onlyCopy = only;
  v26.receiver = self;
  v26.super_class = PixelMemory;
  v9 = [(PixelMemory *)&v26 init];
  selfCopy = v9;
  if (!v9)
  {
LABEL_38:
    v24 = 0;
    goto LABEL_36;
  }

  v9->_buf = buffer;
  v9->_width = CVPixelBufferGetWidth(buffer);
  selfCopy->_height = CVPixelBufferGetHeight(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  selfCopy->_format = PixelFormatType;
  if (PixelFormatType == 2019963440 || PixelFormatType == 2016686640)
  {
    selfCopy->_stride = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 1uLL);
    v13 = 24;
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(buffer);
    v13 = 20;
  }

  *(&selfCopy->super.isa + v13) = BytesPerRowOfPlane;
  CVPixelBufferRetain(selfCopy->_buf);
  format = selfCopy->_format;
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
  selfCopy->_channels = v18;
  if (format == 1278226488)
  {
    v19 = 1;
  }

  else
  {
    v19 = 4;
  }

  selfCopy->_bytePerPixel = v19;
  selfCopy->_readBufferOnly = onlyCopy;
  CVPixelBufferLockBaseAddress(buffer, onlyCopy);
  v20 = selfCopy->_format;
  if (v20 == 2019963440 || v20 == 2016686640)
  {
    selfCopy->_pMemory = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 1uLL);
    v23 = 56;
  }

  else
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddress(buffer);
    v23 = 48;
  }

  *(&selfCopy->super.isa + v23) = BaseAddressOfPlane;
  selfCopy->_skipClamp = clamp;
  selfCopy = selfCopy;
  v24 = selfCopy;
LABEL_36:

  return v24;
}

@end