@interface VTKPixelMatchStrategy
- (double)antiAliasingDifferenceBetweenColor:(id)a3 andColor:(id)a4;
- (double)differenceBetweenColor:(id)a3 andColor:(id)a4;
@end

@implementation VTKPixelMatchStrategy

- (double)differenceBetweenColor:(id)a3 andColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 red];
  v8 = v7;
  [v6 green];
  v10 = v9;
  [v6 blue];
  v12 = v11;

  [v5 red];
  v14 = v13;
  [v5 green];
  v16 = v15;
  [v5 blue];
  v18 = v17;

  return pixelMatchDifferenceBetweenColor(v8, v10, v12, v14, v16, v18);
}

- (double)antiAliasingDifferenceBetweenColor:(id)a3 andColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 red];
  v8 = v7;
  [v6 green];
  v10 = v9;
  [v6 blue];
  v12 = v11;

  [v5 red];
  v14 = v13;
  [v5 green];
  v16 = v15;
  [v5 blue];
  v18 = v17;

  return pixelMatchAntiAliasingDifferenceBetweenColor(v8, v10, v12, v14, v16, v18);
}

@end