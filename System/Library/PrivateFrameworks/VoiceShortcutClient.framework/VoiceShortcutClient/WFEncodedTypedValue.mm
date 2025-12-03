@interface WFEncodedTypedValue
- (BOOL)isEqual:(id)equal;
- (WFEncodedTypedValue)initWithBSXPCCoder:(id)coder;
- (WFEncodedTypedValue)initWithCoder:(id)coder;
- (WFEncodedTypedValue)initWithData:(id)data;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFEncodedTypedValue

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  data = [(WFEncodedTypedValue *)self data];
  [coderCopy encodeObject:data forKey:@"data"];
}

- (WFEncodedTypedValue)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  v6 = [(WFEncodedTypedValue *)self initWithData:v5];
  return v6;
}

- (WFEncodedTypedValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  v6 = [(WFEncodedTypedValue *)self initWithData:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(WFEncodedTypedValue *)self data];
  [coderCopy encodeObject:data forKey:@"data"];
}

- (unint64_t)hash
{
  data = [(WFEncodedTypedValue *)self data];
  v3 = [data hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      data = [(WFEncodedTypedValue *)self data];
      data2 = [(WFEncodedTypedValue *)v6 data];
      v9 = data;
      v10 = data2;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqual:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (WFEncodedTypedValue)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = WFEncodedTypedValue;
  v6 = [(WFEncodedTypedValue *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
    v8 = v7;
  }

  return v7;
}

@end