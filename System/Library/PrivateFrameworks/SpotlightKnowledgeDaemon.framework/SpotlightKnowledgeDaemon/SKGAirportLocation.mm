@interface SKGAirportLocation
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKGAirportLocation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    airportCode = [(SKGAirportLocation *)self airportCode];
    airportCode2 = [v5 airportCode];

    v8 = [airportCode isEqualToString:airportCode2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  airportCode = [(SKGAirportLocation *)self airportCode];
  lowercaseString = [airportCode lowercaseString];
  v4 = [lowercaseString hash];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  airportCode = [(SKGAirportLocation *)self airportCode];
  [(SKGEntity *)self score];
  v7 = [v3 stringWithFormat:@"<%@: %@ %f>", v4, airportCode, v6];

  return v7;
}

@end