@interface _SUIAShockwaveColorOverlayConfiguration
- (BOOL)usesGaussianBlurMaskingTechnique;
- (CAColorMatrix)colorMatrix;
- (CGPoint)colorMaskCenter;
- (CGRect)colorMaskDonutFrame;
- (double)colorBlurRadius;
- (double)colorMaskBlurRadius;
- (double)colorMaskScale;
- (double)colorMatrixOpacity;
- (void)_setColorBlurRadius:(double)a3;
- (void)_setColorMaskBlurRadius:(double)a3;
- (void)_setColorMaskCenter:(CGPoint)a3;
- (void)_setColorMaskDonutFrame:(CGRect)a3;
- (void)_setColorMaskScale:(double)a3;
- (void)_setColorMatrix:(CAColorMatrix *)a3;
- (void)_setColorMatrixOpacity:(double)a3;
- (void)_setUsesGaussianBlurMaskingTechnique:(BOOL)a3;
@end

@implementation _SUIAShockwaveColorOverlayConfiguration

- (void)_setColorMaskDonutFrame:(CGRect)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v5 = a3;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"colorMaskDonutFrame"];
}

- (CGRect)colorMaskDonutFrame
{
  v7 = 0u;
  v8 = 0u;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"colorMaskDonutFrame"];
  [v2 getValue:&v7 size:32];

  v4 = *(&v7 + 1);
  v3 = *&v7;
  v6 = *(&v8 + 1);
  v5 = *&v8;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_setColorMatrix:(CAColorMatrix *)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = *&a3->var12;
  v7[2] = *&a3->var8;
  v7[3] = v4;
  v7[4] = *&a3->var16;
  v5 = *&a3->var4;
  v7[0] = *&a3->var0;
  v7[1] = v5;
  v6 = [MEMORY[0x277CCAE60] valueWithBytes:v7 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  [(NSMutableDictionary *)propertyDictionary setObject:v6 forKey:@"colorMatrix"];
}

- (CAColorMatrix)colorMatrix
{
  *&retstr->var12 = 0u;
  *&retstr->var16 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var0 = 0u;
  v5 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"colorMatrix"];
  [v5 getValue:retstr size:80];

  return result;
}

- (void)_setColorMatrixOpacity:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"colorMatrixOpacity"];
}

- (double)colorMatrixOpacity
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"colorMatrixOpacity"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setColorBlurRadius:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"colorBlurRadius"];
}

- (double)colorBlurRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"colorBlurRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setUsesGaussianBlurMaskingTechnique:(BOOL)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"usesGaussianBlurMaskingTechnique"];
}

- (BOOL)usesGaussianBlurMaskingTechnique
{
  v4 = 0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"usesGaussianBlurMaskingTechnique"];
  [v2 getValue:&v4 size:1];

  return v4;
}

- (void)_setColorMaskBlurRadius:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"colorMaskBlurRadius"];
}

- (double)colorMaskBlurRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"colorMaskBlurRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setColorMaskScale:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"colorMaskScale"];
}

- (double)colorMaskScale
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"colorMaskScale"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setColorMaskCenter:(CGPoint)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v5 = a3;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&v5 objCType:"{CGPoint=dd}"];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"colorMaskCenter"];
}

- (CGPoint)colorMaskCenter
{
  v5 = 0.0;
  v6 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"colorMaskCenter"];
  [v2 getValue:&v5 size:16];

  v3 = v5;
  v4 = v6;
  result.y = v4;
  result.x = v3;
  return result;
}

@end