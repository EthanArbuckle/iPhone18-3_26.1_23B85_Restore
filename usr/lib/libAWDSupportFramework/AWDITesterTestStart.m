@interface AWDITesterTestStart
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

@implementation AWDITesterTestStart

- (void)dealloc
{
  [(AWDITesterTestStart *)self setTestName:0];
  [(AWDITesterTestStart *)self setUniqueKey:0];
  v3.receiver = self;
  v3.super_class = AWDITesterTestStart;
  [(AWDITesterTestStart *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDITesterTestStart;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDITesterTestStart description](&v3, sel_description), -[AWDITesterTestStart dictionaryRepresentation](self, "dictionaryRepresentation")];
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
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 32) |= 1u;
  }

  if (self->_testName)
  {
    [a3 setTestName:?];
  }

  if (self->_uniqueKey)
  {

    [a3 setUniqueKey:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 32) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_testName copyWithZone:a3];
  *(v6 + 24) = [(NSString *)self->_uniqueKey copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 32);
    if (*&self->_has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_11;
      }
    }

    else if (*(a3 + 32))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    testName = self->_testName;
    if (!(testName | *(a3 + 2)) || (v5 = [(NSString *)testName isEqual:?]) != 0)
    {
      uniqueKey = self->_uniqueKey;
      if (uniqueKey | *(a3 + 3))
      {

        LOBYTE(v5) = [(NSString *)uniqueKey isEqual:?];
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

  v4 = [(NSString *)self->_testName hash]^ v3;
  return v4 ^ [(NSString *)self->_uniqueKey hash];
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 32))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(AWDITesterTestStart *)self setTestName:?];
  }

  if (*(a3 + 3))
  {

    [(AWDITesterTestStart *)self setUniqueKey:?];
  }
}

@end