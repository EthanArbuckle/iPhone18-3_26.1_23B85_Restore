@interface REDataImage
- (BOOL)isEqual:(id)a3;
- (REDataImage)initWithCoder:(id)a3;
- (REDataImage)initWithData:(id)a3 scale:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REDataImage

- (REDataImage)initWithData:(id)a3 scale:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = REDataImage;
  v7 = [(REDataImage *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    data = v7->_data;
    v7->_data = v8;

    v7->_scale = a4;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  data = self->_data;
  scale = self->_scale;

  return [v4 initWithData:data scale:scale];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 data];
    data = self->_data;
    if (v7 == data || ([v6 data], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToData:", self->_data)))
    {
      [v6 scale];
      *&v10 = v10 - self->_scale;
      v9 = fabsf(*&v10) < 0.00000011921;
      if (v7 == data)
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

- (REDataImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scale"];

  [v6 doubleValue];
  v7 = [(REDataImage *)self initWithData:v5 scale:?];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  data = self->_data;
  v5 = a3;
  [v5 encodeObject:data forKey:@"data"];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_scale];
  [v5 encodeObject:v6 forKey:@"scale"];
}

@end