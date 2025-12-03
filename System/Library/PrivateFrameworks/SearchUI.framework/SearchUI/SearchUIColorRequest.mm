@interface SearchUIColorRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToColorRequest:(id)request;
- (unint64_t)hash;
@end

@implementation SearchUIColorRequest

- (unint64_t)hash
{
  sfColor = [(SearchUIColorRequest *)self sfColor];
  v4 = [sfColor hash];
  appearance = [(SearchUIColorRequest *)self appearance];
  v6 = [appearance hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SearchUIColorRequest *)self isEqualToColorRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToColorRequest:(id)request
{
  requestCopy = request;
  if (self == requestCopy)
  {
    v9 = 1;
  }

  else
  {
    sfColor = [(SearchUIColorRequest *)self sfColor];
    sfColor2 = [(SearchUIColorRequest *)requestCopy sfColor];
    if ([sfColor isEqual:sfColor2])
    {
      appearance = [(SearchUIColorRequest *)self appearance];
      appearance2 = [(SearchUIColorRequest *)requestCopy appearance];
      v9 = [appearance isEqual:appearance2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end