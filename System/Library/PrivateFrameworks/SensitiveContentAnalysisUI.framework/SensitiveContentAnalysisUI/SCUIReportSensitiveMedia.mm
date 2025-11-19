@interface SCUIReportSensitiveMedia
- (BOOL)isEqual:(id)a3;
- (SCUIReportSensitiveMedia)initWithURL:(id)a3 UTIType:(id)a4 identifier:(id)a5 dateReceived:(id)a6 isSensitive:(id)a7 wasImpetusOfReport:(BOOL)a8;
@end

@implementation SCUIReportSensitiveMedia

- (SCUIReportSensitiveMedia)initWithURL:(id)a3 UTIType:(id)a4 identifier:(id)a5 dateReceived:(id)a6 isSensitive:(id)a7 wasImpetusOfReport:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v29.receiver = self;
  v29.super_class = SCUIReportSensitiveMedia;
  v20 = [(SCUIReportSensitiveMedia *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_url, a3);
    objc_storeStrong(&v21->_UTIType, a4);
    v22 = [v18 copy];
    dateReceived = v21->_dateReceived;
    v21->_dateReceived = v22;

    v24 = [v17 copy];
    identifier = v21->_identifier;
    v21->_identifier = v24;

    v26 = [v19 copy];
    isSensitive = v21->_isSensitive;
    v21->_isSensitive = v26;

    v21->_wasImpetusOfReport = a8;
  }

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SCUIReportSensitiveMedia;
    if ([(SCUIReportSensitiveMedia *)&v14 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(SCUIReportSensitiveMedia *)self url];
      v7 = [(SCUIReportSensitiveMedia *)v5 url];
      if ([v6 isEqual:v7])
      {
        v8 = [(SCUIReportSensitiveMedia *)self UTIType];
        v9 = [(SCUIReportSensitiveMedia *)v5 UTIType];
        if ([v8 isEqual:v9])
        {
          v10 = [(SCUIReportSensitiveMedia *)self dateReceived];
          v11 = [(SCUIReportSensitiveMedia *)v5 dateReceived];
          v12 = [v10 isEqual:v11];
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