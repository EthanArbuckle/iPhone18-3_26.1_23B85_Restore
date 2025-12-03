@interface BRCGenerationID
+ (id)newFromSqliteStatement:(sqlite3_stmt *)statement atIndex:(int)index;
+ (id)newFromSqliteValue:(sqlite3_value *)value;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToGenerationID:(id)d orSignature:(id)signature;
- (BRCGenerationID)initWithCoder:(id)coder;
- (BRCGenerationID)initWithFSGenerationID:(unsigned int)d;
- (BRCGenerationID)initWithSignature:(const void *)signature length:(unint64_t)length;
- (NSNumber)fsGenerationID;
- (NSString)generationIDString;
- (const)UTF8String;
- (void)encodeWithCoder:(id)coder;
- (void)sqliteBind:(sqlite3_stmt *)bind index:(int)index;
@end

@implementation BRCGenerationID

- (NSNumber)fsGenerationID
{
  if (self->_generationID)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)generationIDString
{
  if (self->_generationID)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%u", self->_generationID];
  }

  else
  {
    signature = self->_signature;
    if (signature)
    {
      v3 = [MEMORY[0x277CCACA8] brc_hexadecimalStringWithBytes:-[NSData bytes](signature length:{"bytes"), -[NSData length](self->_signature, "length")}];
    }

    else
    {
      v3 = @"<undef>";
    }
  }

  return v3;
}

- (const)UTF8String
{
  generationIDString = [(BRCGenerationID *)self generationIDString];
  uTF8String = [generationIDString UTF8String];

  return uTF8String;
}

- (BRCGenerationID)initWithSignature:(const void *)signature length:(unint64_t)length
{
  selfCopy = length;
  if (length)
  {
    v10.receiver = self;
    v10.super_class = BRCGenerationID;
    v6 = [(BRCGenerationID *)&v10 init];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:signature length:selfCopy];
      signature = v6->_signature;
      v6->_signature = v7;
    }

    self = v6;
    selfCopy = self;
  }

  return selfCopy;
}

- (BRCGenerationID)initWithFSGenerationID:(unsigned int)d
{
  if (d)
  {
    v7.receiver = self;
    v7.super_class = BRCGenerationID;
    v4 = [(BRCGenerationID *)&v7 init];
    if (v4)
    {
      v4->_generationID = d;
    }

    self = v4;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  generationID = self->_generationID;
  coderCopy = coder;
  [coderCopy encodeInt32:generationID forKey:@"g"];
  [coderCopy encodeObject:self->_signature forKey:@"s"];
}

- (BRCGenerationID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BRCGenerationID;
  v5 = [(BRCGenerationID *)&v9 init];
  if (v5)
  {
    v5->_generationID = [coderCopy decodeInt32ForKey:@"g"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"s"];
    signature = v5->_signature;
    v5->_signature = v6;
  }

  return v5;
}

+ (id)newFromSqliteValue:(sqlite3_value *)value
{
  v5 = sqlite3_value_type(value);
  v6 = [self alloc];
  if (v5 == 4)
  {
    v7 = sqlite3_value_blob(value);
    v8 = sqlite3_value_bytes(value);

    return [v6 initWithSignature:v7 length:v8];
  }

  else
  {
    v10 = sqlite3_value_int64(value);

    return [v6 initWithFSGenerationID:v10];
  }
}

+ (id)newFromSqliteStatement:(sqlite3_stmt *)statement atIndex:(int)index
{
  v7 = sqlite3_column_type(statement, index);
  v8 = [self alloc];
  if (v7 == 4)
  {
    v9 = sqlite3_column_blob(statement, index);
    v10 = sqlite3_column_bytes(statement, index);

    return [v8 initWithSignature:v9 length:v10];
  }

  else
  {
    v12 = sqlite3_column_int64(statement, index);

    return [v8 initWithFSGenerationID:v12];
  }
}

- (void)sqliteBind:(sqlite3_stmt *)bind index:(int)index
{
  generationID = self->_generationID;
  if (generationID)
  {

    sqlite3_bind_int64(bind, index, generationID);
  }

  else
  {
    signature = self->_signature;
    if (signature)
    {
      bytes = [(NSData *)signature bytes];
      v10 = [(NSData *)self->_signature length];

      sqlite3_bind_blob(bind, index, bytes, v10, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {

      sqlite3_bind_null(bind, index);
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCGenerationID *)self isEqualToGenerationID:equalCopy orSignature:0];

  return v5;
}

- (BOOL)isEqualToGenerationID:(id)d orSignature:(id)signature
{
  dCopy = d;
  signatureCopy = signature;
  generationID = self->_generationID;
  if (!generationID)
  {
    signature = self->_signature;
    if (signature)
    {
      if (dCopy)
      {
        if ([dCopy[2] isEqualToData:?])
        {
          v9 = 1;
          goto LABEL_11;
        }

        signature = self->_signature;
      }

      v9 = [signatureCopy isEqualToData:signature];
      goto LABEL_11;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_11;
  }

  if (!dCopy)
  {
    goto LABEL_8;
  }

  v9 = generationID == *(dCopy + 2);
LABEL_11:

  return v9;
}

@end