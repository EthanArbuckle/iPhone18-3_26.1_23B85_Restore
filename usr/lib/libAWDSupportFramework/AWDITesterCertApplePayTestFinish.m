@interface AWDITesterCertApplePayTestFinish
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

@implementation AWDITesterCertApplePayTestFinish

- (void)dealloc
{
  [(AWDITesterCertApplePayTestFinish *)self setTestUUID:0];
  [(AWDITesterCertApplePayTestFinish *)self setTestName:0];
  [(AWDITesterCertApplePayTestFinish *)self setTestStatus:0];
  [(AWDITesterCertApplePayTestFinish *)self setTestResult:0];
  [(AWDITesterCertApplePayTestFinish *)self setTestErrorDescription:0];
  v3.receiver = self;
  v3.super_class = AWDITesterCertApplePayTestFinish;
  [(AWDITesterCertApplePayTestFinish *)&v3 dealloc];
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
  v3.super_class = AWDITesterCertApplePayTestFinish;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDITesterCertApplePayTestFinish description](&v3, sel_description), -[AWDITesterCertApplePayTestFinish dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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
    *(a3 + 64) |= 1u;
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
    *(a3 + 6) = self->_testIterations;
    *(a3 + 64) |= 2u;
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
    *(v5 + 64) |= 1u;
  }

  *(v6 + 56) = [(NSString *)self->_testUUID copyWithZone:a3];
  *(v6 + 32) = [(NSString *)self->_testName copyWithZone:a3];

  *(v6 + 48) = [(NSString *)self->_testStatus copyWithZone:a3];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_testIterations;
    *(v6 + 64) |= 2u;
  }

  *(v6 + 40) = [(NSString *)self->_testResult copyWithZone:a3];
  *(v6 + 16) = [(NSString *)self->_testErrorDescription copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 64);
    if (*&self->_has)
    {
      if ((*(a3 + 64) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_22;
      }
    }

    else if (*(a3 + 64))
    {
LABEL_22:
      LOBYTE(v5) = 0;
      return v5;
    }

    testUUID = self->_testUUID;
    if (!(testUUID | *(a3 + 7)) || (v5 = [(NSString *)testUUID isEqual:?]) != 0)
    {
      testName = self->_testName;
      if (!(testName | *(a3 + 4)) || (v5 = [(NSString *)testName isEqual:?]) != 0)
      {
        testStatus = self->_testStatus;
        if (!(testStatus | *(a3 + 6)) || (v5 = [(NSString *)testStatus isEqual:?]) != 0)
        {
          v10 = *(a3 + 64);
          if ((*&self->_has & 2) != 0)
          {
            if ((*(a3 + 64) & 2) == 0 || self->_testIterations != *(a3 + 6))
            {
              goto LABEL_22;
            }
          }

          else if ((*(a3 + 64) & 2) != 0)
          {
            goto LABEL_22;
          }

          testResult = self->_testResult;
          if (!(testResult | *(a3 + 5)) || (v5 = [(NSString *)testResult isEqual:?]) != 0)
          {
            testErrorDescription = self->_testErrorDescription;
            if (testErrorDescription | *(a3 + 2))
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

  v4 = [(NSString *)self->_testUUID hash];
  v5 = [(NSString *)self->_testName hash];
  v6 = [(NSString *)self->_testStatus hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_testIterations;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(NSString *)self->_testResult hash];
  return v8 ^ v9 ^ [(NSString *)self->_testErrorDescription hash];
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 64))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 7))
  {
    [(AWDITesterCertApplePayTestFinish *)self setTestUUID:?];
  }

  if (*(a3 + 4))
  {
    [(AWDITesterCertApplePayTestFinish *)self setTestName:?];
  }

  if (*(a3 + 6))
  {
    [(AWDITesterCertApplePayTestFinish *)self setTestStatus:?];
  }

  if ((*(a3 + 64) & 2) != 0)
  {
    self->_testIterations = *(a3 + 6);
    *&self->_has |= 2u;
  }

  if (*(a3 + 5))
  {
    [(AWDITesterCertApplePayTestFinish *)self setTestResult:?];
  }

  if (*(a3 + 2))
  {

    [(AWDITesterCertApplePayTestFinish *)self setTestErrorDescription:?];
  }
}

@end