@interface RTIDataPayload
+ (RTIDataPayload)payloadWithData:(id)a3;
+ (RTIDataPayload)payloadWithData:(id)a3 version:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (RTIDataPayload)initWithCoder:(id)a3;
- (RTIDataPayload)initWithData:(id)a3 version:(unint64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTIDataPayload

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if (([v6 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  [v6 encodeInt32:LODWORD(self->_version) forKey:@"payloadVersion"];
  v4 = [(RTIDataPayload *)self data];

  if (v4)
  {
    v5 = [(RTIDataPayload *)self data];
    [v6 encodeObject:v5 forKey:@"payloadData"];
  }
}

- (RTIDataPayload)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v9.receiver = self;
  v9.super_class = RTIDataPayload;
  v5 = [(RTIDataPayload *)&v9 init];
  if (v5)
  {
    v5->_version = [v4 decodeInt32ForKey:@"payloadVersion"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payloadData"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

+ (RTIDataPayload)payloadWithData:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithData:v4 version:1];

  return v5;
}

+ (RTIDataPayload)payloadWithData:(id)a3 version:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithData:v6 version:a4];

  return v7;
}

- (RTIDataPayload)initWithData:(id)a3 version:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = RTIDataPayload;
  v8 = [(RTIDataPayload *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_version = a4;
    objc_storeStrong(&v8->_data, a3);
  }

  return v9;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; version = %lul", -[RTIDataPayload version](self, "version")];
  if (self->_data)
  {
    v4 = [(RTIDataPayload *)self data];
    [v3 appendFormat:@"; data length = %lul", objc_msgSend(v4, "length")];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTIDataPayload *)self version];
      if (v6 == [(RTIDataPayload *)v5 version])
      {
        v7 = [(RTIDataPayload *)self data];
        v8 = [(RTIDataPayload *)v5 data];
        if (v7 == v8)
        {
          v11 = 1;
        }

        else
        {
          v9 = [(RTIDataPayload *)self data];
          v10 = [(RTIDataPayload *)v5 data];
          v11 = [v9 isEqual:v10];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end