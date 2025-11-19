@interface STSReaderCryptarch
- (STSReaderCryptarch)initWithCoder:(id)a3;
- (STSReaderCryptarch)initWithCurve:(unint64_t)a3 variant:(unint64_t)a4 privateKey:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSReaderCryptarch

- (void)encodeWithCoder:(id)a3
{
  curve = self->_curve;
  v5 = a3;
  [v5 encodeInteger:curve forKey:@"curve"];
  [v5 encodeInteger:self->_variant forKey:@"variant"];
  [v5 encodeObject:self->_privateKey forKey:@"privateKey"];
}

- (STSReaderCryptarch)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STSReaderCryptarch;
  v5 = [(STSReaderCryptarch *)&v9 init];
  if (v5)
  {
    v5->_curve = [v4 decodeIntegerForKey:@"curve"];
    v5->_variant = [v4 decodeIntegerForKey:@"variant"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateKey"];
    privateKey = v5->_privateKey;
    v5->_privateKey = v6;
  }

  return v5;
}

- (STSReaderCryptarch)initWithCurve:(unint64_t)a3 variant:(unint64_t)a4 privateKey:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = STSReaderCryptarch;
  v10 = [(STSReaderCryptarch *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_curve = a3;
    v10->_variant = a4;
    objc_storeStrong(&v10->_privateKey, a5);
  }

  return v11;
}

@end