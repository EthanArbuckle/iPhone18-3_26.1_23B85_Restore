@interface AWDITesterTestFinish
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

@implementation AWDITesterTestFinish

- (void)dealloc
{
  [(AWDITesterTestFinish *)self setTestName:0];
  [(AWDITesterTestFinish *)self setUniqueKey:0];
  v3.receiver = self;
  v3.super_class = AWDITesterTestFinish;
  [(AWDITesterTestFinish *)&v3 dealloc];
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
  v3.super_class = AWDITesterTestFinish;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDITesterTestFinish description](&v3, sel_description), -[AWDITesterTestFinish dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  uniqueKey = self->_uniqueKey;
  if (uniqueKey)
  {
    [dictionary setObject:uniqueKey forKey:@"uniqueKey"];
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

  if (self->_uniqueKey)
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
    *(to + 40) |= 1u;
  }

  if (self->_testName)
  {
    [to setTestName:?];
  }

  if (self->_uniqueKey)
  {
    [to setUniqueKey:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 6) = self->_testStatus;
    *(to + 40) |= 2u;
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

  *(v6 + 16) = [(NSString *)self->_testName copyWithZone:zone];
  *(v6 + 32) = [(NSString *)self->_uniqueKey copyWithZone:zone];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_testStatus;
    *(v6 + 40) |= 2u;
  }

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
        goto LABEL_15;
      }
    }

    else if (*(equal + 40))
    {
LABEL_15:
      LOBYTE(v5) = 0;
      return v5;
    }

    testName = self->_testName;
    if (!(testName | *(equal + 2)) || (v5 = [(NSString *)testName isEqual:?]) != 0)
    {
      uniqueKey = self->_uniqueKey;
      if (!(uniqueKey | *(equal + 4)) || (v5 = [(NSString *)uniqueKey isEqual:?]) != 0)
      {
        LOBYTE(v5) = (*(equal + 40) & 2) == 0;
        if ((*&self->_has & 2) != 0)
        {
          if ((*(equal + 40) & 2) == 0 || self->_testStatus != *(equal + 6))
          {
            goto LABEL_15;
          }

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

  v4 = [(NSString *)self->_testName hash];
  v5 = [(NSString *)self->_uniqueKey hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_testStatus;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
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
    [(AWDITesterTestFinish *)self setTestName:?];
  }

  if (*(from + 4))
  {
    [(AWDITesterTestFinish *)self setUniqueKey:?];
  }

  if ((*(from + 40) & 2) != 0)
  {
    self->_testStatus = *(from + 6);
    *&self->_has |= 2u;
  }
}

@end