@interface BRCGenerationID
+ (id)newFromSqliteStatement:(sqlite3_stmt *)a3 atIndex:(int)a4;
+ (id)newFromSqliteValue:(sqlite3_value *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToGenerationID:(id)a3 orSignature:(id)a4;
- (BRCGenerationID)initWithCoder:(id)a3;
- (BRCGenerationID)initWithFSGenerationID:(unsigned int)a3;
- (BRCGenerationID)initWithSignature:(const void *)a3 length:(unint64_t)a4;
- (NSNumber)fsGenerationID;
- (NSString)generationIDString;
- (const)UTF8String;
- (void)encodeWithCoder:(id)a3;
- (void)sqliteBind:(sqlite3_stmt *)a3 index:(int)a4;
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
  v2 = [(BRCGenerationID *)self generationIDString];
  v3 = [v2 UTF8String];

  return v3;
}

- (BRCGenerationID)initWithSignature:(const void *)a3 length:(unint64_t)a4
{
  v4 = a4;
  if (a4)
  {
    v10.receiver = self;
    v10.super_class = BRCGenerationID;
    v6 = [(BRCGenerationID *)&v10 init];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a3 length:v4];
      signature = v6->_signature;
      v6->_signature = v7;
    }

    self = v6;
    v4 = self;
  }

  return v4;
}

- (BRCGenerationID)initWithFSGenerationID:(unsigned int)a3
{
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = BRCGenerationID;
    v4 = [(BRCGenerationID *)&v7 init];
    if (v4)
    {
      v4->_generationID = a3;
    }

    self = v4;
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  generationID = self->_generationID;
  v5 = a3;
  [v5 encodeInt32:generationID forKey:@"g"];
  [v5 encodeObject:self->_signature forKey:@"s"];
}

- (BRCGenerationID)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BRCGenerationID;
  v5 = [(BRCGenerationID *)&v9 init];
  if (v5)
  {
    v5->_generationID = [v4 decodeInt32ForKey:@"g"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"s"];
    signature = v5->_signature;
    v5->_signature = v6;
  }

  return v5;
}

+ (id)newFromSqliteValue:(sqlite3_value *)a3
{
  v5 = sqlite3_value_type(a3);
  v6 = [a1 alloc];
  if (v5 == 4)
  {
    v7 = sqlite3_value_blob(a3);
    v8 = sqlite3_value_bytes(a3);

    return [v6 initWithSignature:v7 length:v8];
  }

  else
  {
    v10 = sqlite3_value_int64(a3);

    return [v6 initWithFSGenerationID:v10];
  }
}

+ (id)newFromSqliteStatement:(sqlite3_stmt *)a3 atIndex:(int)a4
{
  v7 = sqlite3_column_type(a3, a4);
  v8 = [a1 alloc];
  if (v7 == 4)
  {
    v9 = sqlite3_column_blob(a3, a4);
    v10 = sqlite3_column_bytes(a3, a4);

    return [v8 initWithSignature:v9 length:v10];
  }

  else
  {
    v12 = sqlite3_column_int64(a3, a4);

    return [v8 initWithFSGenerationID:v12];
  }
}

- (void)sqliteBind:(sqlite3_stmt *)a3 index:(int)a4
{
  generationID = self->_generationID;
  if (generationID)
  {

    sqlite3_bind_int64(a3, a4, generationID);
  }

  else
  {
    signature = self->_signature;
    if (signature)
    {
      v9 = [(NSData *)signature bytes];
      v10 = [(NSData *)self->_signature length];

      sqlite3_bind_blob(a3, a4, v9, v10, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {

      sqlite3_bind_null(a3, a4);
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCGenerationID *)self isEqualToGenerationID:v4 orSignature:0];

  return v5;
}

- (BOOL)isEqualToGenerationID:(id)a3 orSignature:(id)a4
{
  v6 = a3;
  v7 = a4;
  generationID = self->_generationID;
  if (!generationID)
  {
    signature = self->_signature;
    if (signature)
    {
      if (v6)
      {
        if ([v6[2] isEqualToData:?])
        {
          v9 = 1;
          goto LABEL_11;
        }

        signature = self->_signature;
      }

      v9 = [v7 isEqualToData:signature];
      goto LABEL_11;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  v9 = generationID == *(v6 + 2);
LABEL_11:

  return v9;
}

@end