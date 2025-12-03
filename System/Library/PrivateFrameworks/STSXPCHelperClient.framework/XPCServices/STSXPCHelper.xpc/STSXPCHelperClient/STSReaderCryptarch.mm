@interface STSReaderCryptarch
- (STSReaderCryptarch)initWithCoder:(id)coder;
- (STSReaderCryptarch)initWithCurve:(unint64_t)curve variant:(unint64_t)variant privateKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSReaderCryptarch

- (void)encodeWithCoder:(id)coder
{
  curve = self->_curve;
  coderCopy = coder;
  [coderCopy encodeInteger:curve forKey:@"curve"];
  [coderCopy encodeInteger:self->_variant forKey:@"variant"];
  [coderCopy encodeObject:self->_privateKey forKey:@"privateKey"];
}

- (STSReaderCryptarch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STSReaderCryptarch;
  v5 = [(STSReaderCryptarch *)&v9 init];
  if (v5)
  {
    v5->_curve = [coderCopy decodeIntegerForKey:@"curve"];
    v5->_variant = [coderCopy decodeIntegerForKey:@"variant"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateKey"];
    privateKey = v5->_privateKey;
    v5->_privateKey = v6;
  }

  return v5;
}

- (STSReaderCryptarch)initWithCurve:(unint64_t)curve variant:(unint64_t)variant privateKey:(id)key
{
  keyCopy = key;
  v13.receiver = self;
  v13.super_class = STSReaderCryptarch;
  v10 = [(STSReaderCryptarch *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_curve = curve;
    v10->_variant = variant;
    objc_storeStrong(&v10->_privateKey, key);
  }

  return v11;
}

@end