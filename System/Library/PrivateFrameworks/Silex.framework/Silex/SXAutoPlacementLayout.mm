@interface SXAutoPlacementLayout
- (NSString)description;
- (id)marginWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXAutoPlacementLayout

- (id)marginWithValue:(id)a3 withType:(int)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 5)
  {
    v10 = [SXMargin alloc];
    v11 = [(SXJSONObject *)self specificationVersion];
    v9 = [(SXJSONObject *)v10 initWithJSONObject:v7 andVersion:v11];
  }

  else if (a4 == 2)
  {
    [v6 floatValue];
    v9 = [[SXAutoPlacementMargin alloc] initWithTop:v8 bottom:1, v8, 1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(SXAutoPlacementLayout *)self margin];
  v5 = [v4 top];
  v6 = [(SXAutoPlacementLayout *)self margin];
  [v6 top];
  v8 = v7;
  v9 = [(SXAutoPlacementLayout *)self margin];
  v10 = [v9 bottom];
  v11 = [(SXAutoPlacementLayout *)self margin];
  [v11 bottom];
  [v3 appendFormat:@"top margin: %f(%lu) bottom margin: %f(%lu)", v5, v8, v10, v12];

  [v3 appendString:@">"];

  return v3;
}

@end