@interface SCUIReportSensitiveMedia
- (BOOL)isEqual:(id)equal;
- (SCUIReportSensitiveMedia)initWithURL:(id)l UTIType:(id)type identifier:(id)identifier dateReceived:(id)received isSensitive:(id)sensitive wasImpetusOfReport:(BOOL)report;
@end

@implementation SCUIReportSensitiveMedia

- (SCUIReportSensitiveMedia)initWithURL:(id)l UTIType:(id)type identifier:(id)identifier dateReceived:(id)received isSensitive:(id)sensitive wasImpetusOfReport:(BOOL)report
{
  lCopy = l;
  typeCopy = type;
  identifierCopy = identifier;
  receivedCopy = received;
  sensitiveCopy = sensitive;
  v29.receiver = self;
  v29.super_class = SCUIReportSensitiveMedia;
  v20 = [(SCUIReportSensitiveMedia *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_url, l);
    objc_storeStrong(&v21->_UTIType, type);
    v22 = [receivedCopy copy];
    dateReceived = v21->_dateReceived;
    v21->_dateReceived = v22;

    v24 = [identifierCopy copy];
    identifier = v21->_identifier;
    v21->_identifier = v24;

    v26 = [sensitiveCopy copy];
    isSensitive = v21->_isSensitive;
    v21->_isSensitive = v26;

    v21->_wasImpetusOfReport = report;
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SCUIReportSensitiveMedia;
    if ([(SCUIReportSensitiveMedia *)&v14 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      v6 = [(SCUIReportSensitiveMedia *)self url];
      v7 = [(SCUIReportSensitiveMedia *)v5 url];
      if ([v6 isEqual:v7])
      {
        uTIType = [(SCUIReportSensitiveMedia *)self UTIType];
        uTIType2 = [(SCUIReportSensitiveMedia *)v5 UTIType];
        if ([uTIType isEqual:uTIType2])
        {
          dateReceived = [(SCUIReportSensitiveMedia *)self dateReceived];
          dateReceived2 = [(SCUIReportSensitiveMedia *)v5 dateReceived];
          v12 = [dateReceived isEqual:dateReceived2];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end