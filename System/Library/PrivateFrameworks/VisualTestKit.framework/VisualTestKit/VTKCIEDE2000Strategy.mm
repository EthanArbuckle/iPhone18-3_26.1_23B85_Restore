@interface VTKCIEDE2000Strategy
+ (void)getLightness:(double *)lightness A:(double *)a B:(double *)b alpha:(double *)alpha fromColor:(id)color;
- (double)differenceBetweenColor:(id)color andColor:(id)andColor;
@end

@implementation VTKCIEDE2000Strategy

- (double)differenceBetweenColor:(id)color andColor:(id)andColor
{
  v15 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v12 = 0;
  andColorCopy = andColor;
  colorCopy = color;
  [objc_opt_class() getLightness:&v15 A:&v14 B:&v13 alpha:&v12 fromColor:colorCopy];

  v10 = 0.0;
  v11 = 0.0;
  v8 = 0;
  v9 = 0.0;
  [objc_opt_class() getLightness:&v11 A:&v10 B:&v9 alpha:&v8 fromColor:andColorCopy];

  [objc_opt_class() CIEDE2000_L1:v15 A1:v14 B1:v13 L2:v11 A2:v10 B2:{v9, v8}];
  return result;
}

+ (void)getLightness:(double *)lightness A:(double *)a B:(double *)b alpha:(double *)alpha fromColor:(id)color
{
  v20 = 0.0;
  v21 = 0.0;
  v19 = 0.0;
  colorCopy = color;
  [colorCopy red];
  v13 = v12;
  [colorCopy green];
  v15 = v14;
  [colorCopy blue];
  rgbToXYZr(&v21, &v20, &v19, v13, v15, v16);
  [colorCopy alpha];
  v18 = v17;

  *alpha = v18;
}

@end