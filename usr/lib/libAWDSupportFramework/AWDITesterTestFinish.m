@interface AWDITesterTestFinish
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasTestStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasTestStatus:(BOOL)a3
{
  if (a3)
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  testName = self->_testName;
  if (testName)
  {
    [v3 setObject:testName forKey:@"testName"];
  }

  uniqueKey = self->_uniqueKey;
  if (uniqueKey)
  {
    [v3 setObject:uniqueKey forKey:@"uniqueKey"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_testStatus), @"testStatus"}];
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 40) |= 1u;
  }

  if (self->_testName)
  {
    [a3 setTestName:?];
  }

  if (self->_uniqueKey)
  {
    [a3 setUniqueKey:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 6) = self->_testStatus;
    *(a3 + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 40) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_testName copyWithZone:a3];
  *(v6 + 32) = [(NSString *)self->_uniqueKey copyWithZone:a3];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_testStatus;
    *(v6 + 40) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 40);
    if (*&self->_has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_15;
      }
    }

    else if (*(a3 + 40))
    {
LABEL_15:
      LOBYTE(v5) = 0;
      return v5;
    }

    testName = self->_testName;
    if (!(testName | *(a3 + 2)) || (v5 = [(NSString *)testName isEqual:?]) != 0)
    {
      uniqueKey = self->_uniqueKey;
      if (!(uniqueKey | *(a3 + 4)) || (v5 = [(NSString *)uniqueKey isEqual:?]) != 0)
      {
        LOBYTE(v5) = (*(a3 + 40) & 2) == 0;
        if ((*&self->_has & 2) != 0)
        {
          if ((*(a3 + 40) & 2) == 0 || self->_testStatus != *(a3 + 6))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 40))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(AWDITesterTestFinish *)self setTestName:?];
  }

  if (*(a3 + 4))
  {
    [(AWDITesterTestFinish *)self setUniqueKey:?];
  }

  if ((*(a3 + 40) & 2) != 0)
  {
    self->_testStatus = *(a3 + 6);
    *&self->_has |= 2u;
  }
}

@end