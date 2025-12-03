@interface AWDITesterCertApplePayTestStart
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

@implementation AWDITesterCertApplePayTestStart

- (void)dealloc
{
  [(AWDITesterCertApplePayTestStart *)self setTestUUID:0];
  [(AWDITesterCertApplePayTestStart *)self setTestName:0];
  v3.receiver = self;
  v3.super_class = AWDITesterCertApplePayTestStart;
  [(AWDITesterCertApplePayTestStart *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDITesterCertApplePayTestStart;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDITesterCertApplePayTestStart description](&v3, sel_description), -[AWDITesterCertApplePayTestStart dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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
    *(to + 32) |= 1u;
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
    *(v5 + 32) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_testUUID copyWithZone:zone];
  *(v6 + 16) = [(NSString *)self->_testName copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 32);
    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_11;
      }
    }

    else if (*(equal + 32))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    testUUID = self->_testUUID;
    if (!(testUUID | *(equal + 3)) || (v5 = [(NSString *)testUUID isEqual:?]) != 0)
    {
      testName = self->_testName;
      if (testName | *(equal + 2))
      {

        LOBYTE(v5) = [(NSString *)testName isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
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

  v4 = [(NSString *)self->_testUUID hash]^ v3;
  return v4 ^ [(NSString *)self->_testName hash];
}

- (void)mergeFrom:(id)from
{
  if (*(from + 32))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 3))
  {
    [(AWDITesterCertApplePayTestStart *)self setTestUUID:?];
  }

  if (*(from + 2))
  {

    [(AWDITesterCertApplePayTestStart *)self setTestName:?];
  }
}

@end