@interface REDataImage
- (BOOL)isEqual:(id)equal;
- (REDataImage)initWithCoder:(id)coder;
- (REDataImage)initWithData:(id)data scale:(double)scale;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REDataImage

- (REDataImage)initWithData:(id)data scale:(double)scale
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = REDataImage;
  v7 = [(REDataImage *)&v11 init];
  if (v7)
  {
    v8 = [dataCopy copy];
    data = v7->_data;
    v7->_data = v8;

    v7->_scale = scale;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  data = self->_data;
  scale = self->_scale;

  return [v4 initWithData:data scale:scale];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    data = [v6 data];
    data = self->_data;
    if (data == data || ([v6 data], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToData:", self->_data)))
    {
      [v6 scale];
      *&v10 = v10 - self->_scale;
      v9 = fabsf(*&v10) < 0.00000011921;
      if (data == data)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (REDataImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scale"];

  [v6 doubleValue];
  v7 = [(REDataImage *)self initWithData:v5 scale:?];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  data = self->_data;
  coderCopy = coder;
  [coderCopy encodeObject:data forKey:@"data"];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_scale];
  [coderCopy encodeObject:v6 forKey:@"scale"];
}

@end