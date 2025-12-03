@interface RTISupplementalItemIcon
- (BOOL)isEqual:(id)equal;
- (RTISupplementalItemIcon)initWithCoder:(id)coder;
- (RTISupplementalItemIcon)initWithDataType:(id)type data:(id)data;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTISupplementalItemIcon

- (RTISupplementalItemIcon)initWithDataType:(id)type data:(id)data
{
  typeCopy = type;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = RTISupplementalItemIcon;
  v8 = [(RTISupplementalItemIcon *)&v14 init];
  if (v8)
  {
    v9 = [typeCopy copy];
    dataType = v8->_dataType;
    v8->_dataType = v9;

    v11 = [dataCopy copy];
    data = v8->_data;
    v8->_data = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  [coderCopy encodeObject:self->_dataType forKey:@"iconDataType"];
  [coderCopy encodeObject:self->_data forKey:@"iconData"];
}

- (RTISupplementalItemIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  if (self)
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconDataType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconData"];
    self = [(RTISupplementalItemIcon *)self initWithDataType:v5 data:v6];
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dataType = [(RTISupplementalItemIcon *)self dataType];
      dataType2 = [(RTISupplementalItemIcon *)equalCopy dataType];
      if ([dataType isEqualToString:dataType2])
      {
        data = [(RTISupplementalItemIcon *)self data];
        data2 = [(RTISupplementalItemIcon *)equalCopy data];
        v9 = [data isEqualToData:data2];
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
  dataType = [(RTISupplementalItemIcon *)self dataType];
  [v3 appendFormat:@", dataType=%@", dataType];

  data = [(RTISupplementalItemIcon *)self data];
  [v3 appendFormat:@", data=%@>", data];

  return v3;
}

@end