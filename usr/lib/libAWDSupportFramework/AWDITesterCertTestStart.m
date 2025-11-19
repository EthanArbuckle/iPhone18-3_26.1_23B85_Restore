@interface AWDITesterCertTestStart
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

  accessoryName = self->_accessoryName;
  if (accessoryName)
  {
    [v3 setObject:accessoryName forKey:@"accessoryName"];
  }

  accessoryType = self->_accessoryType;
  if (accessoryType)
  {
    [v3 setObject:accessoryType forKey:@"accessoryType"];
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

  if (self->_accessoryName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessoryType)
  {

    PBDataWriterWriteStringField();
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

  if (self->_accessoryName)
  {
    [a3 setAccessoryName:?];
  }

  if (self->_accessoryType)
  {

    [a3 setAccessoryType:?];
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

  *(v6 + 32) = [(NSString *)self->_testName copyWithZone:a3];
  *(v6 + 16) = [(NSString *)self->_accessoryName copyWithZone:a3];

  *(v6 + 24) = [(NSString *)self->_accessoryType copyWithZone:a3];
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
        goto LABEL_13;
      }
    }

    else if (*(a3 + 40))
    {
LABEL_13:
      LOBYTE(v5) = 0;
      return v5;
    }

    testName = self->_testName;
    if (!(testName | *(a3 + 4)) || (v5 = [(NSString *)testName isEqual:?]) != 0)
    {
      accessoryName = self->_accessoryName;
      if (!(accessoryName | *(a3 + 2)) || (v5 = [(NSString *)accessoryName isEqual:?]) != 0)
      {
        accessoryType = self->_accessoryType;
        if (accessoryType | *(a3 + 3))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 40))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 4))
  {
    [(AWDITesterCertTestStart *)self setTestName:?];
  }

  if (*(a3 + 2))
  {
    [(AWDITesterCertTestStart *)self setAccessoryName:?];
  }

  if (*(a3 + 3))
  {

    [(AWDITesterCertTestStart *)self setAccessoryType:?];
  }
}

@end