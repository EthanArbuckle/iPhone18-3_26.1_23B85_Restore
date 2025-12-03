@interface TTKConversationMessage
+ (id)fromJsonDict:(id)dict;
+ (id)messageWithText:(id)text senderId:(id)id;
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

+ (id)fromJsonDict:(id)dict
{
  dictCopy = dict;
  v4 = [dictCopy objectForKeyedSubscript:@"text"];
  v5 = [dictCopy objectForKeyedSubscript:@"senderId"];

  v6 = [TTKConversationMessage messageWithText:v4 senderId:v5];

  return v6;
}

+ (id)messageWithText:(id)text senderId:(id)id
{
  textCopy = text;
  idCopy = id;
  v8 = objc_alloc_init(TTKConversationMessage);
  p_isa = &v8->super.isa;
  if (v8)
  {
    objc_storeStrong(&v8->_text, text);
    objc_storeStrong(p_isa + 2, id);
  }

  return p_isa;
}

@end