@interface VoiceDialResultHandlerContext
- (VoiceDialResultHandlerContext)init;
- (void)dealloc;
@end

@implementation VoiceDialResultHandlerContext

- (VoiceDialResultHandlerContext)init
{
  v3.receiver = self;
  v3.super_class = VoiceDialResultHandlerContext;
  result = [(VoiceDialResultHandlerContext *)&v3 init];
  if (result)
  {
    *&result->_requiredNameMatchType = -1;
    *&result->_allNamesMatchedType = 257;
    result->_matchedLabelType = 2;
    result->_resultStatus = 0;
  }

  return result;
}

- (void)dealloc
{
  resultPerson = self->_resultPerson;
  if (resultPerson)
  {
    CFRelease(resultPerson);
  }

  contactInfo = self->_contactInfo;
  if (contactInfo)
  {
    CFRelease(contactInfo);
  }

  v5.receiver = self;
  v5.super_class = VoiceDialResultHandlerContext;
  [(VoiceDialResultHandlerContext *)&v5 dealloc];
}

@end