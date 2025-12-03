@interface SXAutoPlacementLayout
- (NSString)description;
- (id)marginWithValue:(id)value withType:(int)type;
@end

@implementation SXAutoPlacementLayout

- (id)marginWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v7 = valueCopy;
  if (type == 5)
  {
    v10 = [SXMargin alloc];
    specificationVersion = [(SXJSONObject *)self specificationVersion];
    v9 = [(SXJSONObject *)v10 initWithJSONObject:v7 andVersion:specificationVersion];
  }

  else if (type == 2)
  {
    [valueCopy floatValue];
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
  margin = [(SXAutoPlacementLayout *)self margin];
  v5 = [margin top];
  margin2 = [(SXAutoPlacementLayout *)self margin];
  [margin2 top];
  v8 = v7;
  margin3 = [(SXAutoPlacementLayout *)self margin];
  bottom = [margin3 bottom];
  margin4 = [(SXAutoPlacementLayout *)self margin];
  [margin4 bottom];
  [v3 appendFormat:@"top margin: %f(%lu) bottom margin: %f(%lu)", v5, v8, bottom, v12];

  [v3 appendString:@">"];

  return v3;
}

@end