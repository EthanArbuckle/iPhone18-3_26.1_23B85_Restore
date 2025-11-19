@interface PCSIDSMessage
- (PCSIDSMessage)initWithMessage:(id)a3 idsContext:(id)a4 fromID:(id)a5;
@end

@implementation PCSIDSMessage

- (PCSIDSMessage)initWithMessage:(id)a3 idsContext:(id)a4 fromID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PCSIDSMessage;
  v12 = [(PCSIDSMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_message, a3);
    objc_storeStrong(&v13->_idsContext, a4);
    objc_storeStrong(&v13->_fromID, a5);
  }

  return v13;
}

@end