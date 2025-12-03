@interface SCUIReportMessage
- (SCUIReportMessage)initWithDate:(id)date senderAccountID:(id)d senderDisplayName:(id)name body:(id)body attachmentIdentifiers:(id)identifiers;
@end

@implementation SCUIReportMessage

- (SCUIReportMessage)initWithDate:(id)date senderAccountID:(id)d senderDisplayName:(id)name body:(id)body attachmentIdentifiers:(id)identifiers
{
  dateCopy = date;
  dCopy = d;
  nameCopy = name;
  bodyCopy = body;
  identifiersCopy = identifiers;
  v29.receiver = self;
  v29.super_class = SCUIReportMessage;
  v17 = [(SCUIReportMessage *)&v29 init];
  if (v17)
  {
    v18 = [dateCopy copy];
    date = v17->_date;
    v17->_date = v18;

    v20 = [dCopy copy];
    senderAccountID = v17->_senderAccountID;
    v17->_senderAccountID = v20;

    v22 = [nameCopy copy];
    senderDisplayName = v17->_senderDisplayName;
    v17->_senderDisplayName = v22;

    v24 = [bodyCopy copy];
    body = v17->_body;
    v17->_body = v24;

    v26 = [identifiersCopy copy];
    attachmentIdentifiers = v17->_attachmentIdentifiers;
    v17->_attachmentIdentifiers = v26;
  }

  return v17;
}

@end