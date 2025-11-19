@interface TTKConversationMessage
+ (id)fromJsonDict:(id)a3;
+ (id)messageWithText:(id)a3 senderId:(id)a4;
- (id)toJsonDict;
@end

@implementation TTKConversationMessage

- (id)toJsonDict
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"text";
  v5[1] = @"senderId";
  senderId = self->_senderId;
  v6[0] = self->_text;
  v6[1] = senderId;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

+ (id)fromJsonDict:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"text"];
  v5 = [v3 objectForKeyedSubscript:@"senderId"];

  v6 = [TTKConversationMessage messageWithText:v4 senderId:v5];

  return v6;
}

+ (id)messageWithText:(id)a3 senderId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(TTKConversationMessage);
  p_isa = &v8->super.isa;
  if (v8)
  {
    objc_storeStrong(&v8->_text, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

@end