@interface SKGNamedLocation
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKGNamedLocation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    location = [(SKGNamedLocation *)self location];
    location2 = [v5 location];
    if ([location isEqualToString:location2])
    {
      v10.receiver = self;
      v10.super_class = SKGNamedLocation;
      v8 = [(SKGEntity *)&v10 isEqual:v5];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  location = [(SKGNamedLocation *)self location];
  lowercaseString = [location lowercaseString];
  v4 = [lowercaseString hash];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  location = [(SKGNamedLocation *)self location];
  [(SKGEntity *)self score];
  v7 = [v3 stringWithFormat:@"<%@: %@ %f>", v4, location, v6];

  return v7;
}

@end