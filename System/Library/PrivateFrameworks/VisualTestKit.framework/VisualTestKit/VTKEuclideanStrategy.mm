@interface VTKEuclideanStrategy
- (double)differenceBetweenColor:(id)a3 andColor:(id)a4;
@end

@implementation VTKEuclideanStrategy

- (double)differenceBetweenColor:(id)a3 andColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 red];
  v8 = v7;
  [v5 red];
  v10 = (v8 - v9) * (v8 - v9);
  [v6 green];
  v12 = v11;
  [v5 green];
  v14 = v10 + (v12 - v13) * (v12 - v13);
  [v6 blue];
  v16 = v15;

  [v5 blue];
  v18 = v17;

  return sqrt(v14 + (v16 - v18) * (v16 - v18));
}

@end