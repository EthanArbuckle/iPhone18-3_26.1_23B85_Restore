@interface VIUserFeedback
- (VIUserFeedback)initWithImage:(id)a3 userFeedbackPayload:(id)a4 sfReportData:(id)a5 reportIdentifier:(id)a6;
@end

@implementation VIUserFeedback

- (VIUserFeedback)initWithImage:(id)a3 userFeedbackPayload:(id)a4 sfReportData:(id)a5 reportIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = VIUserFeedback;
  v15 = [(VIUserFeedback *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_image, a3);
    v17 = [v12 copy];
    userFeedbackPayload = v16->_userFeedbackPayload;
    v16->_userFeedbackPayload = v17;

    v19 = [v13 copy];
    sfReportData = v16->_sfReportData;
    v16->_sfReportData = v19;

    v21 = [v14 copy];
    reportIdentifier = v16->_reportIdentifier;
    v16->_reportIdentifier = v21;
  }

  return v16;
}

@end