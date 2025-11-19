@interface SEProxyWithManagerSession
- (void)setSession:(void *)a3 seid:;
- (void)transceive:(id)a3 callback:(id)a4;
@end

@implementation SEProxyWithManagerSession

- (void)transceive:(id)a3 callback:(id)a4
{
  session = self->_session;
  seid = self->_seid;
  v11 = 0;
  v7 = a4;
  v8 = a3;
  v9 = [(NFSecureElementManagerSession *)session transceive:v8 forSEID:seid error:&v11];
  v10 = v11;
  NSLog(&cfstr_SeservClientRe.isa, v8, v9, v10);

  v7[2](v7, v9, v10);
}

- (void)setSession:(void *)a3 seid:
{
  v7 = a2;
  v6 = a3;
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
    objc_storeStrong((a1 + 16), a3);
  }
}

@end