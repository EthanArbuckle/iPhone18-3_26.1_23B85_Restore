@interface TUCallDTMFUpdate
- (TUCallDTMFUpdate)initWithCoder:(id)a3;
- (TUCallDTMFUpdate)initWithDigits:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCallDTMFUpdate

- (TUCallDTMFUpdate)initWithDigits:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TUCallDTMFUpdate;
  v5 = [(TUCallDTMFUpdate *)&v11 init];
  if (v5)
  {
    if (!v4)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUCallDTMFUpdate initWithDigits:]", @"digits"}];
    }

    v6 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 copy];
    digits = v5->_digits;
    v5->_digits = v8;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TUCallDTMFUpdate *)self digits];
  v6 = [v3 stringWithFormat:@"<%@ %p digits=%@>", v4, self, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(TUCallDTMFUpdate *)self UUID];
  v7 = [v6 copyWithZone:a3];
  [v5 setUUID:v7];

  v8 = [(TUCallDTMFUpdate *)self digits];
  v9 = [v8 copyWithZone:a3];
  [v5 setDigits:v9];

  return v5;
}

- (TUCallDTMFUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TUCallDTMFUpdate;
  v5 = [(TUCallDTMFUpdate *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"digits"];
    digits = v5->_digits;
    v5->_digits = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUCallDTMFUpdate *)self UUID];
  [v4 encodeObject:v5 forKey:@"UUID"];

  v6 = [(TUCallDTMFUpdate *)self digits];
  [v4 encodeObject:v6 forKey:@"digits"];
}

@end