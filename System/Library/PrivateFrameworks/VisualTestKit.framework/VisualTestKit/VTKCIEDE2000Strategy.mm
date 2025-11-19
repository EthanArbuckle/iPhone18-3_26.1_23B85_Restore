@interface VTKCIEDE2000Strategy
+ (void)getLightness:(double *)a3 A:(double *)a4 B:(double *)a5 alpha:(double *)a6 fromColor:(id)a7;
- (double)differenceBetweenColor:(id)a3 andColor:(id)a4;
@end

@implementation VTKCIEDE2000Strategy

- (double)differenceBetweenColor:(id)a3 andColor:(id)a4
{
  v15 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v12 = 0;
  v5 = a4;
  v6 = a3;
  [objc_opt_class() getLightness:&v15 A:&v14 B:&v13 alpha:&v12 fromColor:v6];

  v10 = 0.0;
  v11 = 0.0;
  v8 = 0;
  v9 = 0.0;
  [objc_opt_class() getLightness:&v11 A:&v10 B:&v9 alpha:&v8 fromColor:v5];

  [objc_opt_class() CIEDE2000_L1:v15 A1:v14 B1:v13 L2:v11 A2:v10 B2:{v9, v8}];
  return result;
}

+ (void)getLightness:(double *)a3 A:(double *)a4 B:(double *)a5 alpha:(double *)a6 fromColor:(id)a7
{
  v20 = 0.0;
  v21 = 0.0;
  v19 = 0.0;
  v11 = a7;
  [v11 red];
  v13 = v12;
  [v11 green];
  v15 = v14;
  [v11 blue];
  rgbToXYZr(&v21, &v20, &v19, v13, v15, v16);
  [v11 alpha];
  v18 = v17;

  *a6 = v18;
}

@end