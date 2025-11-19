@interface ACTBackspaceMentalCursor
- (ACTBackspaceMentalCursor)init;
- (id)description;
@end

@implementation ACTBackspaceMentalCursor

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"<%@>", v4];

  return v5;
}

- (ACTBackspaceMentalCursor)init
{
  v3.receiver = self;
  v3.super_class = ACTBackspaceMentalCursor;
  return [(ACTBackspaceMentalCursor *)&v3 init];
}

@end