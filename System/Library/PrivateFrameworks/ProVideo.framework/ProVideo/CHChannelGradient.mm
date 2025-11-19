@interface CHChannelGradient
- (void)getGradientAtTime:(id *)a3 inColorSpace:(CGColorSpace *)a4 asChars:(unsigned __int8)a5[4] samples:(unsigned int)a6;
- (void)getGradientAtTime:(id *)a3 inColorSpace:(CGColorSpace *)a4 asFloats:(float)a5[4] samples:(unsigned int)a6;
- (void)getGradientAtTime:(id *)a3 inColorSpace:(CGColorSpace *)a4 asShorts:(unsigned __int16)a5[4] samples:(unsigned int)a6;
- (void)ozChannel;
@end

@implementation CHChannelGradient

- (void)ozChannel
{
  result = self->super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (void)getGradientAtTime:(id *)a3 inColorSpace:(CGColorSpace *)a4 asChars:(unsigned __int8)a5[4] samples:(unsigned int)a6
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v11 = 0;
  }

  (*(*v11 + 336))(&v12, v11, a3);
  OZChannelGradient::getGradient(v11, &v12, a4, a5, a6, 0, &kPCNoToneMapMethod);
}

- (void)getGradientAtTime:(id *)a3 inColorSpace:(CGColorSpace *)a4 asShorts:(unsigned __int16)a5[4] samples:(unsigned int)a6
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v11 = 0;
  }

  (*(*v11 + 336))(&v12, v11, a3);
  OZChannelGradient::getGradient(v11, &v12, a4, a5, a6, 0, &kPCNoToneMapMethod);
}

- (void)getGradientAtTime:(id *)a3 inColorSpace:(CGColorSpace *)a4 asFloats:(float)a5[4] samples:(unsigned int)a6
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v11 = 0;
  }

  (*(*v11 + 336))(&v12, v11, a3);
  OZChannelGradient::getGradient(v11, &v12, a4, a5, a6, 0, &kPCNoToneMapMethod);
}

@end