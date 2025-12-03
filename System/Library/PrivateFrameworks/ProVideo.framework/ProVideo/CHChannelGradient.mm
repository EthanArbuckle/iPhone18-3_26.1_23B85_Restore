@interface CHChannelGradient
- (void)getGradientAtTime:(id *)time inColorSpace:(CGColorSpace *)space asChars:(unsigned __int8)chars[4] samples:(unsigned int)samples;
- (void)getGradientAtTime:(id *)time inColorSpace:(CGColorSpace *)space asFloats:(float)floats[4] samples:(unsigned int)samples;
- (void)getGradientAtTime:(id *)time inColorSpace:(CGColorSpace *)space asShorts:(unsigned __int16)shorts[4] samples:(unsigned int)samples;
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

- (void)getGradientAtTime:(id *)time inColorSpace:(CGColorSpace *)space asChars:(unsigned __int8)chars[4] samples:(unsigned int)samples
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v11 = 0;
  }

  (*(*v11 + 336))(&v12, v11, time);
  OZChannelGradient::getGradient(v11, &v12, space, chars, samples, 0, &kPCNoToneMapMethod);
}

- (void)getGradientAtTime:(id *)time inColorSpace:(CGColorSpace *)space asShorts:(unsigned __int16)shorts[4] samples:(unsigned int)samples
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v11 = 0;
  }

  (*(*v11 + 336))(&v12, v11, time);
  OZChannelGradient::getGradient(v11, &v12, space, shorts, samples, 0, &kPCNoToneMapMethod);
}

- (void)getGradientAtTime:(id *)time inColorSpace:(CGColorSpace *)space asFloats:(float)floats[4] samples:(unsigned int)samples
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v11 = 0;
  }

  (*(*v11 + 336))(&v12, v11, time);
  OZChannelGradient::getGradient(v11, &v12, space, floats, samples, 0, &kPCNoToneMapMethod);
}

@end