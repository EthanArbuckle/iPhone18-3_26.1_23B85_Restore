@interface RTISupplementalItemIcon
- (BOOL)isEqual:(id)a3;
- (RTISupplementalItemIcon)initWithCoder:(id)a3;
- (RTISupplementalItemIcon)initWithDataType:(id)a3 data:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTISupplementalItemIcon

- (RTISupplementalItemIcon)initWithDataType:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RTISupplementalItemIcon;
  v8 = [(RTISupplementalItemIcon *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    dataType = v8->_dataType;
    v8->_dataType = v9;

    v11 = [v7 copy];
    data = v8->_data;
    v8->_data = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  [v4 encodeObject:self->_dataType forKey:@"iconDataType"];
  [v4 encodeObject:self->_data forKey:@"iconData"];
}

- (RTISupplementalItemIcon)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  if (self)
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconDataType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconData"];
    self = [(RTISupplementalItemIcon *)self initWithDataType:v5 data:v6];
  }

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RTISupplementalItemIcon *)self dataType];
      v6 = [(RTISupplementalItemIcon *)v4 dataType];
      if ([v5 isEqualToString:v6])
      {
        v7 = [(RTISupplementalItemIcon *)self data];
        v8 = [(RTISupplementalItemIcon *)v4 data];
        v9 = [v7 isEqualToData:v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];;
  v4 = [(RTISupplementalItemIcon *)self dataType];
  [v3 appendFormat:@", dataType=%@", v4];

  v5 = [(RTISupplementalItemIcon *)self data];
  [v3 appendFormat:@", data=%@>", v5];

  return v3;
}

@end