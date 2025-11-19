@interface RKConversationTurn
- (RKConversationTurn)initWithString:(id)a3 senderID:(id)a4 timestamp:(id)a5;
@end

@implementation RKConversationTurn

- (RKConversationTurn)initWithString:(id)a3 senderID:(id)a4 timestamp:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = RKConversationTurn;
  v12 = [(RKConversationTurn *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_text, a3);
    objc_storeStrong(&v13->_senderId, a4);
    objc_storeStrong(&v13->_timestamp, a5);
  }

  return v13;
}

@end