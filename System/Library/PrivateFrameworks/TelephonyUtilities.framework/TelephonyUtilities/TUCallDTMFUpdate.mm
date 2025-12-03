@interface TUCallDTMFUpdate
- (TUCallDTMFUpdate)initWithCoder:(id)coder;
- (TUCallDTMFUpdate)initWithDigits:(id)digits;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUCallDTMFUpdate

- (TUCallDTMFUpdate)initWithDigits:(id)digits
{
  digitsCopy = digits;
  v11.receiver = self;
  v11.super_class = TUCallDTMFUpdate;
  v5 = [(TUCallDTMFUpdate *)&v11 init];
  if (v5)
  {
    if (!digitsCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUCallDTMFUpdate initWithDigits:]", @"digits"}];
    }

    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = uUID;

    v8 = [digitsCopy copy];
    digits = v5->_digits;
    v5->_digits = v8;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  digits = [(TUCallDTMFUpdate *)self digits];
  v6 = [v3 stringWithFormat:@"<%@ %p digits=%@>", v4, self, digits];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  uUID = [(TUCallDTMFUpdate *)self UUID];
  v7 = [uUID copyWithZone:zone];
  [v5 setUUID:v7];

  digits = [(TUCallDTMFUpdate *)self digits];
  v9 = [digits copyWithZone:zone];
  [v5 setDigits:v9];

  return v5;
}

- (TUCallDTMFUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TUCallDTMFUpdate;
  v5 = [(TUCallDTMFUpdate *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"digits"];
    digits = v5->_digits;
    v5->_digits = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(TUCallDTMFUpdate *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"UUID"];

  digits = [(TUCallDTMFUpdate *)self digits];
  [coderCopy encodeObject:digits forKey:@"digits"];
}

@end