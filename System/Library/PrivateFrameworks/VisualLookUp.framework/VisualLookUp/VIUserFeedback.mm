@interface VIUserFeedback
- (VIUserFeedback)initWithImage:(id)image userFeedbackPayload:(id)payload sfReportData:(id)data reportIdentifier:(id)identifier;
@end

@implementation VIUserFeedback

- (VIUserFeedback)initWithImage:(id)image userFeedbackPayload:(id)payload sfReportData:(id)data reportIdentifier:(id)identifier
{
  imageCopy = image;
  payloadCopy = payload;
  dataCopy = data;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = VIUserFeedback;
  v15 = [(VIUserFeedback *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_image, image);
    v17 = [payloadCopy copy];
    userFeedbackPayload = v16->_userFeedbackPayload;
    v16->_userFeedbackPayload = v17;

    v19 = [dataCopy copy];
    sfReportData = v16->_sfReportData;
    v16->_sfReportData = v19;

    v21 = [identifierCopy copy];
    reportIdentifier = v16->_reportIdentifier;
    v16->_reportIdentifier = v21;
  }

  return v16;
}

@end