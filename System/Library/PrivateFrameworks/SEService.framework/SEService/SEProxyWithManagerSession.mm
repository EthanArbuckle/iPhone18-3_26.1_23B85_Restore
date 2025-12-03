@interface SEProxyWithManagerSession
- (void)setSession:(void *)session seid:;
- (void)transceive:(id)transceive callback:(id)callback;
@end

@implementation SEProxyWithManagerSession

- (void)transceive:(id)transceive callback:(id)callback
{
  session = self->_session;
  seid = self->_seid;
  v11 = 0;
  callbackCopy = callback;
  transceiveCopy = transceive;
  v9 = [(NFSecureElementManagerSession *)session transceive:transceiveCopy forSEID:seid error:&v11];
  v10 = v11;
  NSLog(&cfstr_SeservClientRe.isa, transceiveCopy, v9, v10);

  callbackCopy[2](callbackCopy, v9, v10);
}

- (void)setSession:(void *)session seid:
{
  v7 = a2;
  sessionCopy = session;
  if (self)
  {
    objc_storeStrong((self + 8), a2);
    objc_storeStrong((self + 16), session);
  }
}

@end