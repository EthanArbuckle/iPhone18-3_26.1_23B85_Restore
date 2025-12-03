@interface _UIStretchableShadow
+ (CGImage)shadowWithRadius:(double)radius cornerRadius:(double)cornerRadius isContinuousCorner:(BOOL)corner white:(double)white;
+ (id)_generateShadowWithRadius:(double)radius cornerRadius:(double)cornerRadius isContinuousCorner:(BOOL)corner color:(id)color;
@end

@implementation _UIStretchableShadow

+ (CGImage)shadowWithRadius:(double)radius cornerRadius:(double)cornerRadius isContinuousCorner:(BOOL)corner white:(double)white
{
  cornerCopy = corner;
  if (_MergedGlobals_1001 != -1)
  {
    dispatch_once(&_MergedGlobals_1001, &__block_literal_global_51);
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f-%f-%f", *&radius, *&cornerRadius, *&white];
  cGImage = [qword_1ED49C900 objectForKey:v11];
  if (!cGImage)
  {
    v13 = [UIColor colorWithWhite:white alpha:1.0];
    v14 = [self _generateShadowWithRadius:cornerCopy cornerRadius:v13 isContinuousCorner:radius color:cornerRadius];

    cGImage = [v14 CGImage];
    [qword_1ED49C900 setObject:cGImage forKey:v11];
  }

  return cGImage;
}

+ (id)_generateShadowWithRadius:(double)radius cornerRadius:(double)cornerRadius isContinuousCorner:(BOOL)corner color:(id)color
{
  v8 = radius + radius;
  v9 = radius + radius + cornerRadius + radius + radius + cornerRadius;
  v11 = radius + radius + v9;
  cGColor = [color CGColor];
  _UIGraphicsBeginImageContextWithOptions(0, 0, v8 + v8 + v9, v8 + v8 + v9, 1.0);
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v10 = v8 + v8 + v9;
  v15 = (v10 - v9) * 0.5;
  v21.width = 0.0;
  v21.height = v11;
  CGContextSetShadowWithColor(v14, v21, v8, cGColor);
  CGContextSetFillColorWithColor(v14, cGColor);
  if (cornerRadius <= 0.0)
  {
    v22.origin.x = (v10 - v9) * 0.5;
    v22.origin.y = -v9;
    v22.size.width = v9;
    v22.size.height = v9;
    CGContextFillRect(v14, v22);
  }

  else
  {
    v16 = -v9;
    if (corner)
    {
      [UIBezierPath _continuousRoundedRectBezierPath:-1 withRoundedCorners:16 cornerRadius:v15 segments:v16, v9, v9, cornerRadius, cornerRadius];
    }

    else
    {
      [UIBezierPath bezierPathWithRoundedRect:v15 cornerRadius:v16, v9, v9, cornerRadius];
    }
    v17 = ;
    CGContextAddPath(v14, [v17 CGPath]);
    CGContextFillPath(v14);
  }

  v18 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();

  return v18;
}

@end