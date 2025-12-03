@interface AWDITesterCertApplePayTestSubmission
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

@implementation AWDITesterCertApplePayTestSubmission

- (void)dealloc
{
  [(AWDITesterCertApplePayTestSubmission *)self setAccessoryName:0];
  [(AWDITesterCertApplePayTestSubmission *)self setTestUUID:0];
  [(AWDITesterCertApplePayTestSubmission *)self setTestName:0];
  v3.receiver = self;
  v3.super_class = AWDITesterCertApplePayTestSubmission;
  [(AWDITesterCertApplePayTestSubmission *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDITesterCertApplePayTestSubmission;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDITesterCertApplePayTestSubmission description](&v3, sel_description), -[AWDITesterCertApplePayTestSubmission dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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
    *(to + 40) |= 1u;
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
    *(v5 + 40) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_accessoryName copyWithZone:zone];
  *(v6 + 32) = [(NSString *)self->_testUUID copyWithZone:zone];

  *(v6 + 24) = [(NSString *)self->_testName copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 40);
    if (*&self->_has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_13;
      }
    }

    else if (*(equal + 40))
    {
LABEL_13:
      LOBYTE(v5) = 0;
      return v5;
    }

    accessoryName = self->_accessoryName;
    if (!(accessoryName | *(equal + 2)) || (v5 = [(NSString *)accessoryName isEqual:?]) != 0)
    {
      testUUID = self->_testUUID;
      if (!(testUUID | *(equal + 4)) || (v5 = [(NSString *)testUUID isEqual:?]) != 0)
      {
        testName = self->_testName;
        if (testName | *(equal + 3))
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

  v4 = [(NSString *)self->_accessoryName hash]^ v3;
  v5 = [(NSString *)self->_testUUID hash];
  return v4 ^ v5 ^ [(NSString *)self->_testName hash];
}

- (void)mergeFrom:(id)from
{
  if (*(from + 40))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 2))
  {
    [(AWDITesterCertApplePayTestSubmission *)self setAccessoryName:?];
  }

  if (*(from + 4))
  {
    [(AWDITesterCertApplePayTestSubmission *)self setTestUUID:?];
  }

  if (*(from + 3))
  {

    [(AWDITesterCertApplePayTestSubmission *)self setTestName:?];
  }
}

@end