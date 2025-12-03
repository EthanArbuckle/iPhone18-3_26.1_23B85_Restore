@interface RKResponseFeatures
- (RKResponseFeatures)initWithFeatures:(id)features count:(int)count numOfElapsedDays:(double)days sourceAppCount:(double)appCount sourceNotificationCount:(double)notificationCount inputSourceCannedCount:(double)cannedCount inputSourceScribbleCount:(double)scribbleCount inputSourceDictationCount:(double)self0 responseLength:(unint64_t)self1 sameRecipientCount:(int)self2;
@end

@implementation RKResponseFeatures

- (RKResponseFeatures)initWithFeatures:(id)features count:(int)count numOfElapsedDays:(double)days sourceAppCount:(double)appCount sourceNotificationCount:(double)notificationCount inputSourceCannedCount:(double)cannedCount inputSourceScribbleCount:(double)scribbleCount inputSourceDictationCount:(double)self0 responseLength:(unint64_t)self1 sameRecipientCount:(int)self2
{
  featuresCopy = features;
  v27.receiver = self;
  v27.super_class = RKResponseFeatures;
  v24 = [(RKResponseFeatures *)&v27 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_response, features);
    v25->_numOfElapsedDays = days;
    v25->_normalizedSourceAppCount = appCount;
    v25->_normalizedSourceNotificationCount = notificationCount;
    v25->_normalizedInputMethodCannedCount = cannedCount;
    v25->_normalizedInputMethodScribbleCount = scribbleCount;
    v25->_normalizedInputMethodDictationCount = dictationCount;
    v25->_responseLength = length;
    v25->_count = count;
    v25->_sameRecipientCount = recipientCount;
  }

  return v25;
}

@end