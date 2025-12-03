@interface AWDITesterCertTestFinish
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasTestStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation AWDITesterCertTestFinish

- (void)dealloc
{
  [(AWDITesterCertTestFinish *)self setTestName:0];
  [(AWDITesterCertTestFinish *)self setAccessoryName:0];
  [(AWDITesterCertTestFinish *)self setAccessoryType:0];
  v3.receiver = self;
  v3.super_class = AWDITesterCertTestFinish;
  [(AWDITesterCertTestFinish *)&v3 dealloc];
}

- (void)setHasTestStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDITesterCertTestFinish;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDITesterCertTestFinish description](&v3, sel_description), -[AWDITesterCertTestFinish dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_testStatus), @"testStatus"}];
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

  if ((*&self->_has & 2) != 0)
  {
    testStatus = self->_testStatus;

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 44) |= 1u;
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

  if ((*&self->_has & 2) != 0)
  {
    *(to + 10) = self->_testStatus;
    *(to + 44) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 44) |= 1u;
  }

  *(v6 + 32) = [(NSString *)self->_testName copyWithZone:zone];
  *(v6 + 16) = [(NSString *)self->_accessoryName copyWithZone:zone];

  *(v6 + 24) = [(NSString *)self->_accessoryType copyWithZone:zone];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 40) = self->_testStatus;
    *(v6 + 44) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 44);
    if (*&self->_has)
    {
      if ((*(equal + 44) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_17;
      }
    }

    else if (*(equal + 44))
    {
LABEL_17:
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
        if (!(accessoryType | *(equal + 3)) || (v5 = [(NSString *)accessoryType isEqual:?]) != 0)
        {
          LOBYTE(v5) = (*(equal + 44) & 2) == 0;
          if ((*&self->_has & 2) != 0)
          {
            if ((*(equal + 44) & 2) == 0 || self->_testStatus != *(equal + 10))
            {
              goto LABEL_17;
            }

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

  v4 = [(NSString *)self->_testName hash];
  v5 = [(NSString *)self->_accessoryName hash];
  v6 = [(NSString *)self->_accessoryType hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_testStatus;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 44))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 4))
  {
    [(AWDITesterCertTestFinish *)self setTestName:?];
  }

  if (*(from + 2))
  {
    [(AWDITesterCertTestFinish *)self setAccessoryName:?];
  }

  if (*(from + 3))
  {
    [(AWDITesterCertTestFinish *)self setAccessoryType:?];
  }

  if ((*(from + 44) & 2) != 0)
  {
    self->_testStatus = *(from + 10);
    *&self->_has |= 2u;
  }
}

@end