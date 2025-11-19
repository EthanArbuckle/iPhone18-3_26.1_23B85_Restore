@interface WFEncodedTypedValue
- (BOOL)isEqual:(id)a3;
- (WFEncodedTypedValue)initWithBSXPCCoder:(id)a3;
- (WFEncodedTypedValue)initWithCoder:(id)a3;
- (WFEncodedTypedValue)initWithData:(id)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFEncodedTypedValue

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFEncodedTypedValue *)self data];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (WFEncodedTypedValue)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  v6 = [(WFEncodedTypedValue *)self initWithData:v5];
  return v6;
}

- (WFEncodedTypedValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  v6 = [(WFEncodedTypedValue *)self initWithData:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFEncodedTypedValue *)self data];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (unint64_t)hash
{
  v2 = [(WFEncodedTypedValue *)self data];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(WFEncodedTypedValue *)self data];
      v8 = [(WFEncodedTypedValue *)v6 data];
      v9 = v7;
      v10 = v8;
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

- (WFEncodedTypedValue)initWithData:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFEncodedTypedValue;
  v6 = [(WFEncodedTypedValue *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
    v8 = v7;
  }

  return v7;
}

@end