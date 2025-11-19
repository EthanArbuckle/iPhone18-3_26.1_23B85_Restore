@interface TSDMutableImageAdjustments
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSDMutableImageAdjustments

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(TSDImageAdjustments);
  *(result + 1) = *&self->super._exposure;
  *(result + 2) = *&self->super._saturation;
  *(result + 3) = *&self->super._contrast;
  *(result + 4) = *&self->super._highlights;
  *(result + 5) = *&self->super._shadows;
  *(result + 6) = *&self->super._sharpness;
  *(result + 7) = *&self->super._denoise;
  *(result + 8) = *&self->super._temperature;
  *(result + 9) = *&self->super._tint;
  *(result + 10) = *&self->super._bottomLevel;
  *(result + 11) = *&self->super._topLevel;
  *(result + 12) = *&self->super._gamma;
  *(result + 104) = self->super._enhance;
  *(result + 105) = self->super._representsSageAdjustments;
  return result;
}

@end