@interface SVDCapabilityDescription
- (SVDCapabilityDescription)initWithBacking:(id)backing;
- (SVDCapabilityDescription)initWithCoder:(id)coder;
- (SVDCapabilityDescription)initWithKey:(id)key valueRangeWithLowerBound:(double)bound upperBound:(double)upperBound;
- (SVDCapabilityDescription)initWithKey:(id)key valueSet:(id)set;
@end

@implementation SVDCapabilityDescription

- (SVDCapabilityDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SVDCapabilityDescription;
  v5 = [(SVDCapabilityDescription *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVDCapabilityDescriptionBacking"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDCapabilityDescription)initWithBacking:(id)backing
{
  backingCopy = backing;
  v9.receiver = self;
  v9.super_class = SVDCapabilityDescription;
  v6 = [(SVDCapabilityDescription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backing, backing);
  }

  return v7;
}

- (SVDCapabilityDescription)initWithKey:(id)key valueRangeWithLowerBound:(double)bound upperBound:(double)upperBound
{
  keyCopy = key;
  v9 = [[_TtC27SiriVirtualDeviceResolution21CapabilityDescription alloc] initWithKey:keyCopy lowerbound:bound upperbound:upperBound];

  v10 = [(SVDCapabilityDescription *)self initWithBacking:v9];
  return v10;
}

- (SVDCapabilityDescription)initWithKey:(id)key valueSet:(id)set
{
  setCopy = set;
  keyCopy = key;
  v8 = [[_TtC27SiriVirtualDeviceResolution21CapabilityDescription alloc] initWithKey:keyCopy valueSet:setCopy];

  v9 = [(SVDCapabilityDescription *)self initWithBacking:v8];
  return v9;
}

@end