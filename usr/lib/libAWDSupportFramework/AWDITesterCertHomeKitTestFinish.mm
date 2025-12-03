@interface AWDITesterCertHomeKitTestFinish
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasTestIterations:(BOOL)iterations;
- (void)writeTo:(id)to;
@end

@implementation AWDITesterCertHomeKitTestFinish

- (void)dealloc
{
  [(AWDITesterCertHomeKitTestFinish *)self setAccessoryManufacturer:0];
  [(AWDITesterCertHomeKitTestFinish *)self setAccessoryName:0];
  [(AWDITesterCertHomeKitTestFinish *)self setTestUUID:0];
  [(AWDITesterCertHomeKitTestFinish *)self setTestName:0];
  [(AWDITesterCertHomeKitTestFinish *)self setTestStatus:0];
  [(AWDITesterCertHomeKitTestFinish *)self setTestResult:0];
  [(AWDITesterCertHomeKitTestFinish *)self setTestErrorDescription:0];
  v3.receiver = self;
  v3.super_class = AWDITesterCertHomeKitTestFinish;
  [(AWDITesterCertHomeKitTestFinish *)&v3 dealloc];
}

- (void)setHasTestIterations:(BOOL)iterations
{
  if (iterations)
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
  v3.super_class = AWDITesterCertHomeKitTestFinish;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDITesterCertHomeKitTestFinish description](&v3, sel_description), -[AWDITesterCertHomeKitTestFinish dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  testStatus = self->_testStatus;
  if (testStatus)
  {
    [dictionary setObject:testStatus forKey:@"testStatus"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_testIterations), @"testIterations"}];
  }

  testResult = self->_testResult;
  if (testResult)
  {
    [dictionary setObject:testResult forKey:@"testResult"];
  }

  testErrorDescription = self->_testErrorDescription;
  if (testErrorDescription)
  {
    [dictionary setObject:testErrorDescription forKey:@"testErrorDescription"];
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

  if (self->_testStatus)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    testIterations = self->_testIterations;
    PBDataWriterWriteUint32Field();
  }

  if (self->_testResult)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_testErrorDescription)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 80) |= 1u;
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

  if (self->_testStatus)
  {
    [to setTestStatus:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 10) = self->_testIterations;
    *(to + 80) |= 2u;
  }

  if (self->_testResult)
  {
    [to setTestResult:?];
  }

  if (self->_testErrorDescription)
  {

    [to setTestErrorDescription:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 80) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_accessoryManufacturer copyWithZone:zone];
  *(v6 + 24) = [(NSString *)self->_accessoryName copyWithZone:zone];

  *(v6 + 72) = [(NSString *)self->_testUUID copyWithZone:zone];
  *(v6 + 48) = [(NSString *)self->_testName copyWithZone:zone];

  *(v6 + 64) = [(NSString *)self->_testStatus copyWithZone:zone];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 40) = self->_testIterations;
    *(v6 + 80) |= 2u;
  }

  *(v6 + 56) = [(NSString *)self->_testResult copyWithZone:zone];
  *(v6 + 32) = [(NSString *)self->_testErrorDescription copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 80);
    if (*&self->_has)
    {
      if ((*(equal + 80) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_26;
      }
    }

    else if (*(equal + 80))
    {
LABEL_26:
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
        if (!(testUUID | *(equal + 9)) || (v5 = [(NSString *)testUUID isEqual:?]) != 0)
        {
          testName = self->_testName;
          if (!(testName | *(equal + 6)) || (v5 = [(NSString *)testName isEqual:?]) != 0)
          {
            testStatus = self->_testStatus;
            if (!(testStatus | *(equal + 8)) || (v5 = [(NSString *)testStatus isEqual:?]) != 0)
            {
              v12 = *(equal + 80);
              if ((*&self->_has & 2) != 0)
              {
                if ((*(equal + 80) & 2) == 0 || self->_testIterations != *(equal + 10))
                {
                  goto LABEL_26;
                }
              }

              else if ((*(equal + 80) & 2) != 0)
              {
                goto LABEL_26;
              }

              testResult = self->_testResult;
              if (!(testResult | *(equal + 7)) || (v5 = [(NSString *)testResult isEqual:?]) != 0)
              {
                testErrorDescription = self->_testErrorDescription;
                if (testErrorDescription | *(equal + 4))
                {

                  LOBYTE(v5) = [(NSString *)testErrorDescription isEqual:?];
                }

                else
                {
                  LOBYTE(v5) = 1;
                }
              }
            }
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

  v4 = [(NSString *)self->_accessoryManufacturer hash];
  v5 = [(NSString *)self->_accessoryName hash];
  v6 = [(NSString *)self->_testUUID hash];
  v7 = [(NSString *)self->_testName hash];
  v8 = [(NSString *)self->_testStatus hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_testIterations;
  }

  else
  {
    v9 = 0;
  }

  v10 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v11 = [(NSString *)self->_testResult hash];
  return v10 ^ v11 ^ [(NSString *)self->_testErrorDescription hash];
}

- (void)mergeFrom:(id)from
{
  if (*(from + 80))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 2))
  {
    [(AWDITesterCertHomeKitTestFinish *)self setAccessoryManufacturer:?];
  }

  if (*(from + 3))
  {
    [(AWDITesterCertHomeKitTestFinish *)self setAccessoryName:?];
  }

  if (*(from + 9))
  {
    [(AWDITesterCertHomeKitTestFinish *)self setTestUUID:?];
  }

  if (*(from + 6))
  {
    [(AWDITesterCertHomeKitTestFinish *)self setTestName:?];
  }

  if (*(from + 8))
  {
    [(AWDITesterCertHomeKitTestFinish *)self setTestStatus:?];
  }

  if ((*(from + 80) & 2) != 0)
  {
    self->_testIterations = *(from + 10);
    *&self->_has |= 2u;
  }

  if (*(from + 7))
  {
    [(AWDITesterCertHomeKitTestFinish *)self setTestResult:?];
  }

  if (*(from + 4))
  {

    [(AWDITesterCertHomeKitTestFinish *)self setTestErrorDescription:?];
  }
}

@end