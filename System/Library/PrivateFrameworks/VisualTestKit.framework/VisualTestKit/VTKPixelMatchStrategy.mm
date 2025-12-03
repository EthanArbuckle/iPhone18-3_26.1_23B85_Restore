@interface VTKPixelMatchStrategy
- (double)antiAliasingDifferenceBetweenColor:(id)color andColor:(id)andColor;
- (double)differenceBetweenColor:(id)color andColor:(id)andColor;
@end

@implementation VTKPixelMatchStrategy

- (double)differenceBetweenColor:(id)color andColor:(id)andColor
{
  andColorCopy = andColor;
  colorCopy = color;
  [colorCopy red];
  v8 = v7;
  [colorCopy green];
  v10 = v9;
  [colorCopy blue];
  v12 = v11;

  [andColorCopy red];
  v14 = v13;
  [andColorCopy green];
  v16 = v15;
  [andColorCopy blue];
  v18 = v17;

  return pixelMatchDifferenceBetweenColor(v8, v10, v12, v14, v16, v18);
}

- (double)antiAliasingDifferenceBetweenColor:(id)color andColor:(id)andColor
{
  andColorCopy = andColor;
  colorCopy = color;
  [colorCopy red];
  v8 = v7;
  [colorCopy green];
  v10 = v9;
  [colorCopy blue];
  v12 = v11;

  [andColorCopy red];
  v14 = v13;
  [andColorCopy green];
  v16 = v15;
  [andColorCopy blue];
  v18 = v17;

  return pixelMatchAntiAliasingDifferenceBetweenColor(v8, v10, v12, v14, v16, v18);
}

@end