@interface _UIStretchableShadow
+ (CGImage)shadowWithRadius:(double)a3 cornerRadius:(double)a4 isContinuousCorner:(BOOL)a5 white:(double)a6;
+ (id)_generateShadowWithRadius:(double)a3 cornerRadius:(double)a4 isContinuousCorner:(BOOL)a5 color:(id)a6;
@end

@implementation _UIStretchableShadow

+ (CGImage)shadowWithRadius:(double)a3 cornerRadius:(double)a4 isContinuousCorner:(BOOL)a5 white:(double)a6
{
  v7 = a5;
  if (_MergedGlobals_1001 != -1)
  {
    dispatch_once(&_MergedGlobals_1001, &__block_literal_global_51);
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f-%f-%f", *&a3, *&a4, *&a6];
  v12 = [qword_1ED49C900 objectForKey:v11];
  if (!v12)
  {
    v13 = [UIColor colorWithWhite:a6 alpha:1.0];
    v14 = [a1 _generateShadowWithRadius:v7 cornerRadius:v13 isContinuousCorner:a3 color:a4];

    v12 = [v14 CGImage];
    [qword_1ED49C900 setObject:v12 forKey:v11];
  }

  return v12;
}

+ (id)_generateShadowWithRadius:(double)a3 cornerRadius:(double)a4 isContinuousCorner:(BOOL)a5 color:(id)a6
{
  v8 = a3 + a3;
  v9 = a3 + a3 + a4 + a3 + a3 + a4;
  v11 = a3 + a3 + v9;
  v12 = [a6 CGColor];
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
  CGContextSetShadowWithColor(v14, v21, v8, v12);
  CGContextSetFillColorWithColor(v14, v12);
  if (a4 <= 0.0)
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
    if (a5)
    {
      [UIBezierPath _continuousRoundedRectBezierPath:-1 withRoundedCorners:16 cornerRadius:v15 segments:v16, v9, v9, a4, a4];
    }

    else
    {
      [UIBezierPath bezierPathWithRoundedRect:v15 cornerRadius:v16, v9, v9, a4];
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