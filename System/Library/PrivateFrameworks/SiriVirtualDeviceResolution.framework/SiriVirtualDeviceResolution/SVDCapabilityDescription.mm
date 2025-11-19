@interface SVDCapabilityDescription
- (SVDCapabilityDescription)initWithBacking:(id)a3;
- (SVDCapabilityDescription)initWithCoder:(id)a3;
- (SVDCapabilityDescription)initWithKey:(id)a3 valueRangeWithLowerBound:(double)a4 upperBound:(double)a5;
- (SVDCapabilityDescription)initWithKey:(id)a3 valueSet:(id)a4;
@end

@implementation SVDCapabilityDescription

- (SVDCapabilityDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SVDCapabilityDescription;
  v5 = [(SVDCapabilityDescription *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVDCapabilityDescriptionBacking"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDCapabilityDescription)initWithBacking:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SVDCapabilityDescription;
  v6 = [(SVDCapabilityDescription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backing, a3);
  }

  return v7;
}

- (SVDCapabilityDescription)initWithKey:(id)a3 valueRangeWithLowerBound:(double)a4 upperBound:(double)a5
{
  v8 = a3;
  v9 = [[_TtC27SiriVirtualDeviceResolution21CapabilityDescription alloc] initWithKey:v8 lowerbound:a4 upperbound:a5];

  v10 = [(SVDCapabilityDescription *)self initWithBacking:v9];
  return v10;
}

- (SVDCapabilityDescription)initWithKey:(id)a3 valueSet:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_TtC27SiriVirtualDeviceResolution21CapabilityDescription alloc] initWithKey:v7 valueSet:v6];

  v9 = [(SVDCapabilityDescription *)self initWithBacking:v8];
  return v9;
}

@end