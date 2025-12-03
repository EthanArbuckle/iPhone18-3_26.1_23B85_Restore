@interface WiFiAwareDataSessionIssueReport
- (BOOL)isEqual:(id)equal;
- (BOOL)rtpSequenceNumberEquals:(id)equals;
- (BOOL)rtpStartTimeEquals:(id)equals;
- (WiFiAwareDataSessionIssueReport)init;
- (WiFiAwareDataSessionIssueReport)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwareDataSessionIssueReport

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rtpSequenceNumber = [(WiFiAwareDataSessionIssueReport *)self rtpSequenceNumber];
  [coderCopy encodeObject:rtpSequenceNumber forKey:@"WiFiAwareDataSessionIssueReport.rtpSequenceNumber"];

  rtpStartTime = [(WiFiAwareDataSessionIssueReport *)self rtpStartTime];
  [coderCopy encodeObject:rtpStartTime forKey:@"WiFiAwareDataSessionIssueReport.rtpStartTime"];
}

- (WiFiAwareDataSessionIssueReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WiFiAwareDataSessionIssueReport *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionIssueReport.rtpSequenceNumber"];
    rtpSequenceNumber = v5->_rtpSequenceNumber;
    v5->_rtpSequenceNumber = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionIssueReport.rtpStartTime"];
    rtpStartTime = v5->_rtpStartTime;
    v5->_rtpStartTime = v8;
  }

  return v5;
}

- (WiFiAwareDataSessionIssueReport)init
{
  v7.receiver = self;
  v7.super_class = WiFiAwareDataSessionIssueReport;
  v2 = [(WiFiAwareDataSessionIssueReport *)&v7 init];
  v3 = v2;
  if (v2)
  {
    rtpSequenceNumber = v2->_rtpSequenceNumber;
    v2->_rtpSequenceNumber = 0;

    rtpStartTime = v3->_rtpStartTime;
    v3->_rtpStartTime = 0;
  }

  return v3;
}

- (BOOL)rtpSequenceNumberEquals:(id)equals
{
  equalsCopy = equals;
  rtpSequenceNumber = [(WiFiAwareDataSessionIssueReport *)self rtpSequenceNumber];
  rtpSequenceNumber2 = [equalsCopy rtpSequenceNumber];
  if (rtpSequenceNumber == rtpSequenceNumber2)
  {
    v9 = 1;
  }

  else
  {
    rtpSequenceNumber3 = [(WiFiAwareDataSessionIssueReport *)self rtpSequenceNumber];
    rtpSequenceNumber4 = [equalsCopy rtpSequenceNumber];
    v9 = [rtpSequenceNumber3 isEqual:rtpSequenceNumber4];
  }

  return v9;
}

- (BOOL)rtpStartTimeEquals:(id)equals
{
  equalsCopy = equals;
  rtpStartTime = [(WiFiAwareDataSessionIssueReport *)self rtpStartTime];
  rtpStartTime2 = [equalsCopy rtpStartTime];
  if (rtpStartTime == rtpStartTime2)
  {
    v9 = 1;
  }

  else
  {
    rtpStartTime3 = [(WiFiAwareDataSessionIssueReport *)self rtpStartTime];
    rtpStartTime4 = [equalsCopy rtpStartTime];
    v9 = [rtpStartTime3 isEqual:rtpStartTime4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 0;
LABEL_7:
    v6 = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_9;
  }

  v5 = equalCopy;
  if ([(WiFiAwareDataSessionIssueReport *)self rtpSequenceNumberEquals:v5]&& [(WiFiAwareDataSessionIssueReport *)self rtpStartTimeEquals:v5])
  {
    goto LABEL_7;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  rtpSequenceNumber = [(WiFiAwareDataSessionIssueReport *)self rtpSequenceNumber];
  rtpStartTime = [(WiFiAwareDataSessionIssueReport *)self rtpStartTime];
  v6 = [v3 stringWithFormat:@"<WiFiAwareDataSessionIssueReport: rtpSequenceNumber:%@, rtpStartTime:%@>", rtpSequenceNumber, rtpStartTime];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(WiFiAwareDataSessionIssueReport);
  rtpSequenceNumber = [(WiFiAwareDataSessionIssueReport *)self rtpSequenceNumber];
  [(WiFiAwareDataSessionIssueReport *)v4 setRtpSequenceNumber:rtpSequenceNumber];

  rtpStartTime = [(WiFiAwareDataSessionIssueReport *)self rtpStartTime];
  [(WiFiAwareDataSessionIssueReport *)v4 setRtpStartTime:rtpStartTime];

  return v4;
}

@end