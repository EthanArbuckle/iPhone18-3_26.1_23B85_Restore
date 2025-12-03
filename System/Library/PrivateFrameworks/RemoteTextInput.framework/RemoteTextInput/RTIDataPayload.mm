@interface RTIDataPayload
+ (RTIDataPayload)payloadWithData:(id)data;
+ (RTIDataPayload)payloadWithData:(id)data version:(unint64_t)version;
- (BOOL)isEqual:(id)equal;
- (RTIDataPayload)initWithCoder:(id)coder;
- (RTIDataPayload)initWithData:(id)data version:(unint64_t)version;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTIDataPayload

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  [coderCopy encodeInt32:LODWORD(self->_version) forKey:@"payloadVersion"];
  data = [(RTIDataPayload *)self data];

  if (data)
  {
    data2 = [(RTIDataPayload *)self data];
    [coderCopy encodeObject:data2 forKey:@"payloadData"];
  }
}

- (RTIDataPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v9.receiver = self;
  v9.super_class = RTIDataPayload;
  v5 = [(RTIDataPayload *)&v9 init];
  if (v5)
  {
    v5->_version = [coderCopy decodeInt32ForKey:@"payloadVersion"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payloadData"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

+ (RTIDataPayload)payloadWithData:(id)data
{
  dataCopy = data;
  v5 = [[self alloc] initWithData:dataCopy version:1];

  return v5;
}

+ (RTIDataPayload)payloadWithData:(id)data version:(unint64_t)version
{
  dataCopy = data;
  v7 = [[self alloc] initWithData:dataCopy version:version];

  return v7;
}

- (RTIDataPayload)initWithData:(id)data version:(unint64_t)version
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = RTIDataPayload;
  v8 = [(RTIDataPayload *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_version = version;
    objc_storeStrong(&v8->_data, data);
  }

  return v9;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; version = %lul", -[RTIDataPayload version](self, "version")];
  if (self->_data)
  {
    data = [(RTIDataPayload *)self data];
    [v3 appendFormat:@"; data length = %lul", objc_msgSend(data, "length")];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      version = [(RTIDataPayload *)self version];
      if (version == [(RTIDataPayload *)v5 version])
      {
        data = [(RTIDataPayload *)self data];
        data2 = [(RTIDataPayload *)v5 data];
        if (data == data2)
        {
          v11 = 1;
        }

        else
        {
          data3 = [(RTIDataPayload *)self data];
          data4 = [(RTIDataPayload *)v5 data];
          v11 = [data3 isEqual:data4];
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