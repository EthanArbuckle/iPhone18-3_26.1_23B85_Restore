@interface AWDITesterCertHomeKitTestFinish
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasTestIterations:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasTestIterations:(BOOL)a3
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
  v3.super_class = AWDITesterCertHomeKitTestFinish;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDITesterCertHomeKitTestFinish description](&v3, sel_description), -[AWDITesterCertHomeKitTestFinish dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  accessoryManufacturer = self->_accessoryManufacturer;
  if (accessoryManufacturer)
  {
    [v3 setObject:accessoryManufacturer forKey:@"accessoryManufacturer"];
  }

  accessoryName = self->_accessoryName;
  if (accessoryName)
  {
    [v3 setObject:accessoryName forKey:@"accessoryName"];
  }

  testUUID = self->_testUUID;
  if (testUUID)
  {
    [v3 setObject:testUUID forKey:@"testUUID"];
  }

  testName = self->_testName;
  if (testName)
  {
    [v3 setObject:testName forKey:@"testName"];
  }

  testStatus = self->_testStatus;
  if (testStatus)
  {
    [v3 setObject:testStatus forKey:@"testStatus"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_testIterations), @"testIterations"}];
  }

  testResult = self->_testResult;
  if (testResult)
  {
    [v3 setObject:testResult forKey:@"testResult"];
  }

  testErrorDescription = self->_testErrorDescription;
  if (testErrorDescription)
  {
    [v3 setObject:testErrorDescription forKey:@"testErrorDescription"];
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 80) |= 1u;
  }

  if (self->_accessoryManufacturer)
  {
    [a3 setAccessoryManufacturer:?];
  }

  if (self->_accessoryName)
  {
    [a3 setAccessoryName:?];
  }

  if (self->_testUUID)
  {
    [a3 setTestUUID:?];
  }

  if (self->_testName)
  {
    [a3 setTestName:?];
  }

  if (self->_testStatus)
  {
    [a3 setTestStatus:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 10) = self->_testIterations;
    *(a3 + 80) |= 2u;
  }

  if (self->_testResult)
  {
    [a3 setTestResult:?];
  }

  if (self->_testErrorDescription)
  {

    [a3 setTestErrorDescription:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 80) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_accessoryManufacturer copyWithZone:a3];
  *(v6 + 24) = [(NSString *)self->_accessoryName copyWithZone:a3];

  *(v6 + 72) = [(NSString *)self->_testUUID copyWithZone:a3];
  *(v6 + 48) = [(NSString *)self->_testName copyWithZone:a3];

  *(v6 + 64) = [(NSString *)self->_testStatus copyWithZone:a3];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 40) = self->_testIterations;
    *(v6 + 80) |= 2u;
  }

  *(v6 + 56) = [(NSString *)self->_testResult copyWithZone:a3];
  *(v6 + 32) = [(NSString *)self->_testErrorDescription copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 80);
    if (*&self->_has)
    {
      if ((*(a3 + 80) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_26;
      }
    }

    else if (*(a3 + 80))
    {
LABEL_26:
      LOBYTE(v5) = 0;
      return v5;
    }

    accessoryManufacturer = self->_accessoryManufacturer;
    if (!(accessoryManufacturer | *(a3 + 2)) || (v5 = [(NSString *)accessoryManufacturer isEqual:?]) != 0)
    {
      accessoryName = self->_accessoryName;
      if (!(accessoryName | *(a3 + 3)) || (v5 = [(NSString *)accessoryName isEqual:?]) != 0)
      {
        testUUID = self->_testUUID;
        if (!(testUUID | *(a3 + 9)) || (v5 = [(NSString *)testUUID isEqual:?]) != 0)
        {
          testName = self->_testName;
          if (!(testName | *(a3 + 6)) || (v5 = [(NSString *)testName isEqual:?]) != 0)
          {
            testStatus = self->_testStatus;
            if (!(testStatus | *(a3 + 8)) || (v5 = [(NSString *)testStatus isEqual:?]) != 0)
            {
              v12 = *(a3 + 80);
              if ((*&self->_has & 2) != 0)
              {
                if ((*(a3 + 80) & 2) == 0 || self->_testIterations != *(a3 + 10))
                {
                  goto LABEL_26;
                }
              }

              else if ((*(a3 + 80) & 2) != 0)
              {
                goto LABEL_26;
              }

              testResult = self->_testResult;
              if (!(testResult | *(a3 + 7)) || (v5 = [(NSString *)testResult isEqual:?]) != 0)
              {
                testErrorDescription = self->_testErrorDescription;
                if (testErrorDescription | *(a3 + 4))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 80))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(AWDITesterCertHomeKitTestFinish *)self setAccessoryManufacturer:?];
  }

  if (*(a3 + 3))
  {
    [(AWDITesterCertHomeKitTestFinish *)self setAccessoryName:?];
  }

  if (*(a3 + 9))
  {
    [(AWDITesterCertHomeKitTestFinish *)self setTestUUID:?];
  }

  if (*(a3 + 6))
  {
    [(AWDITesterCertHomeKitTestFinish *)self setTestName:?];
  }

  if (*(a3 + 8))
  {
    [(AWDITesterCertHomeKitTestFinish *)self setTestStatus:?];
  }

  if ((*(a3 + 80) & 2) != 0)
  {
    self->_testIterations = *(a3 + 10);
    *&self->_has |= 2u;
  }

  if (*(a3 + 7))
  {
    [(AWDITesterCertHomeKitTestFinish *)self setTestResult:?];
  }

  if (*(a3 + 4))
  {

    [(AWDITesterCertHomeKitTestFinish *)self setTestErrorDescription:?];
  }
}

@end