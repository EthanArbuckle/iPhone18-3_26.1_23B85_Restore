@interface AWDITesterCertTestStart
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

@implementation AWDITesterCertTestStart

- (void)dealloc
{
  [(AWDITesterCertTestStart *)self setTestName:0];
  [(AWDITesterCertTestStart *)self setAccessoryName:0];
  [(AWDITesterCertTestStart *)self setAccessoryType:0];
  v3.receiver = self;
  v3.super_class = AWDITesterCertTestStart;
  [(AWDITesterCertTestStart *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDITesterCertTestStart;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDITesterCertTestStart description](&v3, sel_description), -[AWDITesterCertTestStart dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  testName = self->_testName;
  if (testName)
  {
    [dictionary setObject:testName forKey:@"testName"];
  }

  accessoryName = self->_accessoryName;
  if (accessoryName)
  {
    [dictionary setObject:accessoryName forKey:@"accessoryName"];
  }

  accessoryType = self->_accessoryType;
  if (accessoryType)
  {
    [dictionary setObject:accessoryType forKey:@"accessoryType"];
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

  if (self->_testName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessoryName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessoryType)
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

  if (self->_testName)
  {
    [to setTestName:?];
  }

  if (self->_accessoryName)
  {
    [to setAccessoryName:?];
  }

  if (self->_accessoryType)
  {

    [to setAccessoryType:?];
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

  *(v6 + 32) = [(NSString *)self->_testName copyWithZone:zone];
  *(v6 + 16) = [(NSString *)self->_accessoryName copyWithZone:zone];

  *(v6 + 24) = [(NSString *)self->_accessoryType copyWithZone:zone];
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

    testName = self->_testName;
    if (!(testName | *(equal + 4)) || (v5 = [(NSString *)testName isEqual:?]) != 0)
    {
      accessoryName = self->_accessoryName;
      if (!(accessoryName | *(equal + 2)) || (v5 = [(NSString *)accessoryName isEqual:?]) != 0)
      {
        accessoryType = self->_accessoryType;
        if (accessoryType | *(equal + 3))
        {

          LOBYTE(v5) = [(NSString *)accessoryType isEqual:?];
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

  v4 = [(NSString *)self->_testName hash]^ v3;
  v5 = [(NSString *)self->_accessoryName hash];
  return v4 ^ v5 ^ [(NSString *)self->_accessoryType hash];
}

- (void)mergeFrom:(id)from
{
  if (*(from + 40))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 4))
  {
    [(AWDITesterCertTestStart *)self setTestName:?];
  }

  if (*(from + 2))
  {
    [(AWDITesterCertTestStart *)self setAccessoryName:?];
  }

  if (*(from + 3))
  {

    [(AWDITesterCertTestStart *)self setAccessoryType:?];
  }
}

@end