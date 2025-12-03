@interface ICDelegateToken
- (BOOL)expiresBeforeDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpired;
- (ICDelegateToken)initWithCoder:(id)coder;
- (ICDelegateToken)initWithType:(int64_t)type data:(id)data expirationDate:(id)date;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICDelegateToken

- (void)encodeWithCoder:(id)coder
{
  data = self->_data;
  coderCopy = coder;
  [coderCopy encodeObject:data forKey:@"d"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"e"];
  [coderCopy encodeInteger:self->_type forKey:@"t"];
}

- (ICDelegateToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = ICDelegateToken;
    v6 = [(ICDelegateToken *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_data, v5);
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"e"];
      expirationDate = v7->_expirationDate;
      v7->_expirationDate = v8;

      v7->_type = [coderCopy decodeIntegerForKey:@"t"];
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_type != equalCopy[2])
  {
    goto LABEL_11;
  }

  expirationDate = self->_expirationDate;
  v6 = equalCopy[3];
  if (expirationDate != v6)
  {
    v7 = 0;
    if (!expirationDate || !v6)
    {
      goto LABEL_12;
    }

    if (![(NSDate *)expirationDate isEqualToDate:?])
    {
LABEL_11:
      v7 = 0;
      goto LABEL_12;
    }
  }

  data = self->_data;
  v9 = equalCopy[1];
  if (data == v9)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (data && v9)
    {
      v7 = [(NSData *)data isEqualToData:?];
    }
  }

LABEL_12:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_data hash];
  v4 = [(NSDate *)self->_expirationDate hash];
  v5 = 1;
  if (self->_type == 1)
  {
    v5 = 2;
  }

  return v4 ^ v3 ^ v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  type = self->_type;
  if (type == 1)
  {
    v6 = @"Type: CloudCredentials";
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    v6 = @"Type: PICRequest";
  }

  [v3 addObject:v6];
LABEL_6:
  if (self->_expirationDate)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expires: %@", self->_expirationDate];
    [v4 addObject:v7];
  }

  if (self->_data)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Data: %ld Bytes", -[NSData length](self->_data, "length")];
    [v4 addObject:v8];
  }

  v9 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = ICDelegateToken;
  v10 = [(ICDelegateToken *)&v14 description];
  v11 = [v4 componentsJoinedByString:@" "];;
  v12 = [v9 stringWithFormat:@"%@ [%@]", v10, v11];

  return v12;
}

- (BOOL)isExpired
{
  if (!self->_expirationDate)
  {
    return 0;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v4 = [(NSDate *)self->_expirationDate compare:v3]== NSOrderedAscending;

  return v4;
}

- (BOOL)expiresBeforeDate:(id)date
{
  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    LOBYTE(expirationDate) = [(NSDate *)expirationDate compare:date]== NSOrderedAscending;
  }

  return expirationDate;
}

- (ICDelegateToken)initWithType:(int64_t)type data:(id)data expirationDate:(id)date
{
  dataCopy = data;
  dateCopy = date;
  v10 = dateCopy;
  if (type != 1 || dateCopy)
  {
    v17.receiver = self;
    v17.super_class = ICDelegateToken;
    v11 = [(ICDelegateToken *)&v17 init];
    if (v11)
    {
      v12 = [dataCopy copy];
      data = v11->_data;
      v11->_data = v12;

      v14 = [v10 copy];
      expirationDate = v11->_expirationDate;
      v11->_expirationDate = v14;

      v11->_type = type;
    }
  }

  else
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Missing required expirationDate"];
    v11 = 0;
  }

  return v11;
}

@end