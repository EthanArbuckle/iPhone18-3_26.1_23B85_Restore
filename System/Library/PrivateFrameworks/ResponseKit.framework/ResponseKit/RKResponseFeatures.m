@interface RKResponseFeatures
- (RKResponseFeatures)initWithFeatures:(id)a3 count:(int)a4 numOfElapsedDays:(double)a5 sourceAppCount:(double)a6 sourceNotificationCount:(double)a7 inputSourceCannedCount:(double)a8 inputSourceScribbleCount:(double)a9 inputSourceDictationCount:(double)a10 responseLength:(unint64_t)a11 sameRecipientCount:(int)a12;
@end

@implementation RKResponseFeatures

- (RKResponseFeatures)initWithFeatures:(id)a3 count:(int)a4 numOfElapsedDays:(double)a5 sourceAppCount:(double)a6 sourceNotificationCount:(double)a7 inputSourceCannedCount:(double)a8 inputSourceScribbleCount:(double)a9 inputSourceDictationCount:(double)a10 responseLength:(unint64_t)a11 sameRecipientCount:(int)a12
{
  v23 = a3;
  v27.receiver = self;
  v27.super_class = RKResponseFeatures;
  v24 = [(RKResponseFeatures *)&v27 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_response, a3);
    v25->_numOfElapsedDays = a5;
    v25->_normalizedSourceAppCount = a6;
    v25->_normalizedSourceNotificationCount = a7;
    v25->_normalizedInputMethodCannedCount = a8;
    v25->_normalizedInputMethodScribbleCount = a9;
    v25->_normalizedInputMethodDictationCount = a10;
    v25->_responseLength = a11;
    v25->_count = a4;
    v25->_sameRecipientCount = a12;
  }

  return v25;
}

@end