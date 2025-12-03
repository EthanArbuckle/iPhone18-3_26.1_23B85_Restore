@interface AWDITesterCertApplePayTestFinish
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
  v3.super_class = AWDITesterCertApplePayTestFinish;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDITesterCertApplePayTestFinish description](&v3, sel_description), -[AWDITesterCertApplePayTestFinish dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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
    *(to + 64) |= 1u;
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
    *(to + 6) = self->_testIterations;
    *(to + 64) |= 2u;
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
    *(v5 + 64) |= 1u;
  }

  *(v6 + 56) = [(NSString *)self->_testUUID copyWithZone:zone];
  *(v6 + 32) = [(NSString *)self->_testName copyWithZone:zone];

  *(v6 + 48) = [(NSString *)self->_testStatus copyWithZone:zone];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_testIterations;
    *(v6 + 64) |= 2u;
  }

  *(v6 + 40) = [(NSString *)self->_testResult copyWithZone:zone];
  *(v6 + 16) = [(NSString *)self->_testErrorDescription copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 64);
    if (*&self->_has)
    {
      if ((*(equal + 64) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_22;
      }
    }

    else if (*(equal + 64))
    {
LABEL_22:
      LOBYTE(v5) = 0;
      return v5;
    }

    testUUID = self->_testUUID;
    if (!(testUUID | *(equal + 7)) || (v5 = [(NSString *)testUUID isEqual:?]) != 0)
    {
      testName = self->_testName;
      if (!(testName | *(equal + 4)) || (v5 = [(NSString *)testName isEqual:?]) != 0)
      {
        testStatus = self->_testStatus;
        if (!(testStatus | *(equal + 6)) || (v5 = [(NSString *)testStatus isEqual:?]) != 0)
        {
          v10 = *(equal + 64);
          if ((*&self->_has & 2) != 0)
          {
            if ((*(equal + 64) & 2) == 0 || self->_testIterations != *(equal + 6))
            {
              goto LABEL_22;
            }
          }

          else if ((*(equal + 64) & 2) != 0)
          {
            goto LABEL_22;
          }

          testResult = self->_testResult;
          if (!(testResult | *(equal + 5)) || (v5 = [(NSString *)testResult isEqual:?]) != 0)
          {
            testErrorDescription = self->_testErrorDescription;
            if (testErrorDescription | *(equal + 2))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 64))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 7))
  {
    [(AWDITesterCertApplePayTestFinish *)self setTestUUID:?];
  }

  if (*(from + 4))
  {
    [(AWDITesterCertApplePayTestFinish *)self setTestName:?];
  }

  if (*(from + 6))
  {
    [(AWDITesterCertApplePayTestFinish *)self setTestStatus:?];
  }

  if ((*(from + 64) & 2) != 0)
  {
    self->_testIterations = *(from + 6);
    *&self->_has |= 2u;
  }

  if (*(from + 5))
  {
    [(AWDITesterCertApplePayTestFinish *)self setTestResult:?];
  }

  if (*(from + 2))
  {

    [(AWDITesterCertApplePayTestFinish *)self setTestErrorDescription:?];
  }
}

@end