@interface SRDConnection
- (SRDConnection)initWithLocale:(__CFLocale *)locale flags:(unint64_t)flags delegate:(id)delegate;
@end

@implementation SRDConnection

- (SRDConnection)initWithLocale:(__CFLocale *)locale flags:(unint64_t)flags delegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = SRDConnection;
  v9 = [(SRDConnection *)&v11 init];
  if (v9)
  {
    v9->_locale = CFRetain(locale);
    v9->_flags = flags;
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v9->_recognitionSystem = RXRecognitionSystemCreateWithServiceClient(0, locale, flags, delegateCopy);
  }

  return v9;
}

@end