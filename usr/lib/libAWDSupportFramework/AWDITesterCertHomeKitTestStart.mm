@interface AWDITesterCertHomeKitTestStart
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDITesterCertHomeKitTestStart

- (void)dealloc
{
  [(AWDITesterCertHomeKitTestStart *)self setAccessoryManufacturer:0];
  [(AWDITesterCertHomeKitTestStart *)self setAccessoryName:0];
  [(AWDITesterCertHomeKitTestStart *)self setTestUUID:0];
  [(AWDITesterCertHomeKitTestStart *)self setTestName:0];
  v3.receiver = self;
  v3.super_class = AWDITesterCertHomeKitTestStart;
  [(AWDITesterCertHomeKitTestStart *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDITesterCertHomeKitTestStart;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDITesterCertHomeKitTestStart description](&v3, sel_description), -[AWDITesterCertHomeKitTestStart dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  accessoryManufacturer = self->_accessoryManufacturer;
  if (accessoryManufacturer)
  {
    [dictionary setObject:accessoryManufacturer forKey:@"accessoryManufacturer"];
  }

  accessoryName = self->_accessoryName;
  if (accessoryName)
  {
    [dictionary setObject:accessoryName forKey:@"accessoryName"];
  }

  testUUID = self->_testUUID;
  if (testUUID)
  {
    [dictionary setObject:testUUID forKey:@"testUUID"];
  }

  testName = self->_testName;
  if (testName)
  {
    [dictionary setObject:testName forKey:@"testName"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 48) |= 1u;
  }

  if (self->_accessoryManufacturer)
  {
    [to setAccessoryManufacturer:?];
  }

  if (self->_accessoryName)
  {
    [to setAccessoryName:?];
  }

  if (self->_testUUID)
  {
    [to setTestUUID:?];
  }

  if (self->_testName)
  {

    [to setTestName:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_accessoryManufacturer copyWithZone:zone];
  *(v6 + 24) = [(NSString *)self->_accessoryName copyWithZone:zone];

  *(v6 + 40) = [(NSString *)self->_testUUID copyWithZone:zone];
  *(v6 + 32) = [(NSString *)self->_testName copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 48);
    if (*&self->_has)
    {
      if ((*(equal + 48) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_15;
      }
    }

    else if (*(equal + 48))
    {
LABEL_15:
      LOBYTE(v5) = 0;
      return v5;
    }

    accessoryManufacturer = self->_accessoryManufacturer;
    if (!(accessoryManufacturer | *(equal + 2)) || (v5 = [(NSString *)accessoryManufacturer isEqual:?]) != 0)
    {
      accessoryName = self->_accessoryName;
      if (!(accessoryName | *(equal + 3)) || (v5 = [(NSString *)accessoryName isEqual:?]) != 0)
      {
        testUUID = self->_testUUID;
        if (!(testUUID | *(equal + 5)) || (v5 = [(NSString *)testUUID isEqual:?]) != 0)
        {
          testName = self->_testName;
          if (testName | *(equal + 4))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 48))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 2))
  {
    [(AWDITesterCertHomeKitTestStart *)self setAccessoryManufacturer:?];
  }

  if (*(from + 3))
  {
    [(AWDITesterCertHomeKitTestStart *)self setAccessoryName:?];
  }

  if (*(from + 5))
  {
    [(AWDITesterCertHomeKitTestStart *)self setTestUUID:?];
  }

  if (*(from + 4))
  {

    [(AWDITesterCertHomeKitTestStart *)self setTestName:?];
  }
}

@end