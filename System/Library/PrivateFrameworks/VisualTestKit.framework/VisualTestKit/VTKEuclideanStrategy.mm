@interface VTKEuclideanStrategy
- (double)differenceBetweenColor:(id)color andColor:(id)andColor;
@end

@implementation VTKEuclideanStrategy

- (double)differenceBetweenColor:(id)color andColor:(id)andColor
{
  andColorCopy = andColor;
  colorCopy = color;
  [colorCopy red];
  v8 = v7;
  [andColorCopy red];
  v10 = (v8 - v9) * (v8 - v9);
  [colorCopy green];
  v12 = v11;
  [andColorCopy green];
  v14 = v10 + (v12 - v13) * (v12 - v13);
  [colorCopy blue];
  v16 = v15;

  [andColorCopy blue];
  v18 = v17;

  return sqrt(v14 + (v16 - v18) * (v16 - v18));
}

@end