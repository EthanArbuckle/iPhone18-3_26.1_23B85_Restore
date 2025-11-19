@interface SCUIReportMessage
- (SCUIReportMessage)initWithDate:(id)a3 senderAccountID:(id)a4 senderDisplayName:(id)a5 body:(id)a6 attachmentIdentifiers:(id)a7;
@end

@implementation SCUIReportMessage

- (SCUIReportMessage)initWithDate:(id)a3 senderAccountID:(id)a4 senderDisplayName:(id)a5 body:(id)a6 attachmentIdentifiers:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = SCUIReportMessage;
  v17 = [(SCUIReportMessage *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    date = v17->_date;
    v17->_date = v18;

    v20 = [v13 copy];
    senderAccountID = v17->_senderAccountID;
    v17->_senderAccountID = v20;

    v22 = [v14 copy];
    senderDisplayName = v17->_senderDisplayName;
    v17->_senderDisplayName = v22;

    v24 = [v15 copy];
    body = v17->_body;
    v17->_body = v24;

    v26 = [v16 copy];
    attachmentIdentifiers = v17->_attachmentIdentifiers;
    v17->_attachmentIdentifiers = v26;
  }

  return v17;
}

@end