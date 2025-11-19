@interface WiFiAwareDataSessionIssueReport
- (BOOL)isEqual:(id)a3;
- (BOOL)rtpSequenceNumberEquals:(id)a3;
- (BOOL)rtpStartTimeEquals:(id)a3;
- (WiFiAwareDataSessionIssueReport)init;
- (WiFiAwareDataSessionIssueReport)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwareDataSessionIssueReport

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareDataSessionIssueReport *)self rtpSequenceNumber];
  [v4 encodeObject:v5 forKey:@"WiFiAwareDataSessionIssueReport.rtpSequenceNumber"];

  v6 = [(WiFiAwareDataSessionIssueReport *)self rtpStartTime];
  [v4 encodeObject:v6 forKey:@"WiFiAwareDataSessionIssueReport.rtpStartTime"];
}

- (WiFiAwareDataSessionIssueReport)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareDataSessionIssueReport *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionIssueReport.rtpSequenceNumber"];
    rtpSequenceNumber = v5->_rtpSequenceNumber;
    v5->_rtpSequenceNumber = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionIssueReport.rtpStartTime"];
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

- (BOOL)rtpSequenceNumberEquals:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareDataSessionIssueReport *)self rtpSequenceNumber];
  v6 = [v4 rtpSequenceNumber];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareDataSessionIssueReport *)self rtpSequenceNumber];
    v8 = [v4 rtpSequenceNumber];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)rtpStartTimeEquals:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareDataSessionIssueReport *)self rtpStartTime];
  v6 = [v4 rtpStartTime];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareDataSessionIssueReport *)self rtpStartTime];
    v8 = [v4 rtpStartTime];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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

  v5 = v4;
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
  v4 = [(WiFiAwareDataSessionIssueReport *)self rtpSequenceNumber];
  v5 = [(WiFiAwareDataSessionIssueReport *)self rtpStartTime];
  v6 = [v3 stringWithFormat:@"<WiFiAwareDataSessionIssueReport: rtpSequenceNumber:%@, rtpStartTime:%@>", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(WiFiAwareDataSessionIssueReport);
  v5 = [(WiFiAwareDataSessionIssueReport *)self rtpSequenceNumber];
  [(WiFiAwareDataSessionIssueReport *)v4 setRtpSequenceNumber:v5];

  v6 = [(WiFiAwareDataSessionIssueReport *)self rtpStartTime];
  [(WiFiAwareDataSessionIssueReport *)v4 setRtpStartTime:v6];

  return v4;
}

@end