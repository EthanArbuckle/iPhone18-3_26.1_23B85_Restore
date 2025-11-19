@interface AWDITesterCertHomeKitTestSubmission
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDITesterCertHomeKitTestSubmission

- (void)dealloc
{
  [(AWDITesterCertHomeKitTestSubmission *)self setAccessoryManufacturer:0];
  [(AWDITesterCertHomeKitTestSubmission *)self setAccessoryName:0];
  [(AWDITesterCertHomeKitTestSubmission *)self setTestUUID:0];
  [(AWDITesterCertHomeKitTestSubmission *)self setTestName:0];
  v3.receiver = self;
  v3.super_class = AWDITesterCertHomeKitTestSubmission;
  [(AWDITesterCertHomeKitTestSubmission *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDITesterCertHomeKitTestSubmission;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDITesterCertHomeKitTestSubmission description](&v3, sel_description), -[AWDITesterCertHomeKitTestSubmission dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  accessoryManufacturer = self->_accessoryManufacturer;
  if (accessoryManufacturer)
  {
    [v3 setObject:accessoryManufacturer forKey:@"accessoryManufacturer"];
  }

  accessoryName = self->_accessoryName;
  if (accessoryName)
  {
    [v3 setObject:accessoryName forKey:@"accessoryName"];
  }

  testUUID = self->_testUUID;
  if (testUUID)
  {
    [v3 setObject:testUUID forKey:@"testUUID"];
  }

  testName = self->_testName;
  if (testName)
  {
    [v3 setObject:testName forKey:@"testName"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_accessoryManufacturer)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessoryName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_testUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_testName)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 48) |= 1u;
  }

  if (self->_accessoryManufacturer)
  {
    [a3 setAccessoryManufacturer:?];
  }

  if (self->_accessoryName)
  {
    [a3 setAccessoryName:?];
  }

  if (self->_testUUID)
  {
    [a3 setTestUUID:?];
  }

  if (self->_testName)
  {

    [a3 setTestName:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_accessoryManufacturer copyWithZone:a3];
  *(v6 + 24) = [(NSString *)self->_accessoryName copyWithZone:a3];

  *(v6 + 40) = [(NSString *)self->_testUUID copyWithZone:a3];
  *(v6 + 32) = [(NSString *)self->_testName copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 48);
    if (*&self->_has)
    {
      if ((*(a3 + 48) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_15;
      }
    }

    else if (*(a3 + 48))
    {
LABEL_15:
      LOBYTE(v5) = 0;
      return v5;
    }

    accessoryManufacturer = self->_accessoryManufacturer;
    if (!(accessoryManufacturer | *(a3 + 2)) || (v5 = [(NSString *)accessoryManufacturer isEqual:?]) != 0)
    {
      accessoryName = self->_accessoryName;
      if (!(accessoryName | *(a3 + 3)) || (v5 = [(NSString *)accessoryName isEqual:?]) != 0)
      {
        testUUID = self->_testUUID;
        if (!(testUUID | *(a3 + 5)) || (v5 = [(NSString *)testUUID isEqual:?]) != 0)
        {
          testName = self->_testName;
          if (testName | *(a3 + 4))
          {

            LOBYTE(v5) = [(NSString *)testName isEqual:?];
          }

          else
          {
            LOBYTE(v5) = 1;
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_accessoryManufacturer hash]^ v3;
  v5 = [(NSString *)self->_accessoryName hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_testUUID hash];
  return v6 ^ [(NSString *)self->_testName hash];
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 48))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(AWDITesterCertHomeKitTestSubmission *)self setAccessoryManufacturer:?];
  }

  if (*(a3 + 3))
  {
    [(AWDITesterCertHomeKitTestSubmission *)self setAccessoryName:?];
  }

  if (*(a3 + 5))
  {
    [(AWDITesterCertHomeKitTestSubmission *)self setTestUUID:?];
  }

  if (*(a3 + 4))
  {

    [(AWDITesterCertHomeKitTestSubmission *)self setTestName:?];
  }
}

@end