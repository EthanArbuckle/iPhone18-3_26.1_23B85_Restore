@interface RKConversationTurn
- (RKConversationTurn)initWithString:(id)string senderID:(id)d timestamp:(id)timestamp;
@end

@implementation RKConversationTurn

- (RKConversationTurn)initWithString:(id)string senderID:(id)d timestamp:(id)timestamp
{
  stringCopy = string;
  dCopy = d;
  timestampCopy = timestamp;
  v15.receiver = self;
  v15.super_class = RKConversationTurn;
  v12 = [(RKConversationTurn *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_text, string);
    objc_storeStrong(&v13->_senderId, d);
    objc_storeStrong(&v13->_timestamp, timestamp);
  }

  return v13;
}

@end