@interface SPRNFSessionProxy
+ (id)withSession:(id)session seid:(id)seid;
- (void)stateInformationWithReply:(id)reply;
- (void)transceiveWithCapdu:(id)capdu reply:(id)reply;
@end

@implementation SPRNFSessionProxy

+ (id)withSession:(id)session seid:(id)seid
{
  sessionCopy = session;
  seidCopy = seid;
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = sessionCopy;
  v9 = sessionCopy;

  v10 = v7[2];
  v7[2] = seidCopy;

  return v7;
}

- (void)stateInformationWithReply:(id)reply
{
  session = self->_session;
  v10 = 0;
  replyCopy = reply;
  v8 = objc_msgSend_stateInformationWithError_(session, v5, &v10, v6, v7);
  v9 = v10;
  replyCopy[2](replyCopy, v8, v9);
}

- (void)transceiveWithCapdu:(id)capdu reply:(id)reply
{
  session = self->_session;
  seid = self->_seid;
  v11 = 0;
  replyCopy = reply;
  v9 = objc_msgSend_transceive_forSEID_error_(session, v8, capdu, seid, &v11);
  v10 = v11;
  replyCopy[2](replyCopy, v9, v10);
}

@end