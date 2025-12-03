@interface SKGTrackingNumber
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKGTrackingNumber

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    trackingNumber = [(SKGTrackingNumber *)self trackingNumber];
    trackingNumber2 = [v5 trackingNumber];
    if ([trackingNumber isEqualToString:trackingNumber2])
    {
      v10.receiver = self;
      v10.super_class = SKGTrackingNumber;
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
  trackingNumber = [(SKGTrackingNumber *)self trackingNumber];
  lowercaseString = [trackingNumber lowercaseString];
  v4 = [lowercaseString hash];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  trackingNumber = [(SKGTrackingNumber *)self trackingNumber];
  [(SKGEntity *)self score];
  v7 = [v3 stringWithFormat:@"<%@: %@ %f", v4, trackingNumber, v6];

  return v7;
}

@end