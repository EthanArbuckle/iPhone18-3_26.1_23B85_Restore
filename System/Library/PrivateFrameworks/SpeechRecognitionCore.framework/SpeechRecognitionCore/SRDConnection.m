@interface SRDConnection
- (SRDConnection)initWithLocale:(__CFLocale *)a3 flags:(unint64_t)a4 delegate:(id)a5;
@end

@implementation SRDConnection

- (SRDConnection)initWithLocale:(__CFLocale *)a3 flags:(unint64_t)a4 delegate:(id)a5
{
  v8 = a5;
  v11.receiver = self;
  v11.super_class = SRDConnection;
  v9 = [(SRDConnection *)&v11 init];
  if (v9)
  {
    v9->_locale = CFRetain(a3);
    v9->_flags = a4;
    objc_storeWeak(&v9->_delegate, v8);
    v9->_recognitionSystem = RXRecognitionSystemCreateWithServiceClient(0, a3, a4, v8);
  }

  return v9;
}

@end