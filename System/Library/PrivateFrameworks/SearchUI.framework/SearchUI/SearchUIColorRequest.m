@interface SearchUIColorRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToColorRequest:(id)a3;
- (unint64_t)hash;
@end

@implementation SearchUIColorRequest

- (unint64_t)hash
{
  v3 = [(SearchUIColorRequest *)self sfColor];
  v4 = [v3 hash];
  v5 = [(SearchUIColorRequest *)self appearance];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SearchUIColorRequest *)self isEqualToColorRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToColorRequest:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v5 = [(SearchUIColorRequest *)self sfColor];
    v6 = [(SearchUIColorRequest *)v4 sfColor];
    if ([v5 isEqual:v6])
    {
      v7 = [(SearchUIColorRequest *)self appearance];
      v8 = [(SearchUIColorRequest *)v4 appearance];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end