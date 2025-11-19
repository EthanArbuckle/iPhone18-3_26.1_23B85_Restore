@interface SPRNFSessionProxy
+ (id)withSession:(id)a3 seid:(id)a4;
- (void)stateInformationWithReply:(id)a3;
- (void)transceiveWithCapdu:(id)a3 reply:(id)a4;
@end

@implementation SPRNFSessionProxy

+ (id)withSession:(id)a3 seid:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = v5;
  v9 = v5;

  v10 = v7[2];
  v7[2] = v6;

  return v7;
}

- (void)stateInformationWithReply:(id)a3
{
  session = self->_session;
  v10 = 0;
  v4 = a3;
  v8 = objc_msgSend_stateInformationWithError_(session, v5, &v10, v6, v7);
  v9 = v10;
  v4[2](v4, v8, v9);
}

- (void)transceiveWithCapdu:(id)a3 reply:(id)a4
{
  session = self->_session;
  seid = self->_seid;
  v11 = 0;
  v7 = a4;
  v9 = objc_msgSend_transceive_forSEID_error_(session, v8, a3, seid, &v11);
  v10 = v11;
  v7[2](v7, v9, v10);
}

@end