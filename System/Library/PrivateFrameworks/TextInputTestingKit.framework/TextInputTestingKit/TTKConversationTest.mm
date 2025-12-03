@interface TTKConversationTest
+ (id)fromJsonDict:(id)dict;
+ (id)testWithConversation:(id)conversation sendersToTest:(id)test warmupMessages:(unint64_t)messages adaptToSentMessages:(BOOL)sentMessages adaptToReceivedMessages:(BOOL)receivedMessages;
- (id)overridingJsonKeys:(id)keys;
- (id)toJsonDict;
@end

@implementation TTKConversationTest

- (id)overridingJsonKeys:(id)keys
{
  keysCopy = keys;
  toJsonDict = [(TTKConversationTest *)self toJsonDict];
  v6 = [toJsonDict mutableCopy];

  [v6 addEntriesFromDictionary:keysCopy];
  v7 = [TTKConversationTest fromJsonDict:v6];

  return v7;
}

- (id)toJsonDict
{
  v24 = *MEMORY[0x277D85DE8];
  v21[0] = @"conversation";
  v3 = self->_conversation;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        toJsonDict = [*(*(&v17 + 1) + 8 * i) toJsonDict];
        [v4 addObject:toJsonDict];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v22[0] = v4;
  v21[1] = @"sendersToTest";
  allObjects = [(NSSet *)self->_sendersToTest allObjects];
  v22[1] = allObjects;
  v21[2] = @"warmupMessages";
  v12 = [MEMORY[0x277CCABB0] numberWithInt:LODWORD(self->_warmupMessages)];
  v22[2] = v12;
  v21[3] = @"adaptToSentMessages";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_adaptToSentMessages];
  v22[3] = v13;
  v21[4] = @"adaptToReceivedMessages";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_adaptToReceivedMessages];
  v22[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];

  return v15;
}

+ (id)fromJsonDict:(id)dict
{
  v26 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v4 = [dictCopy objectForKeyedSubscript:@"warmupMessages"];

  if (v4)
  {
    v5 = [dictCopy objectForKeyedSubscript:@"warmupMessages"];
    intValue = [v5 intValue];

    v4 = intValue;
  }

  v7 = [dictCopy objectForKeyedSubscript:@"conversation"];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [TTKConversationMessage fromJsonDict:*(*(&v21 + 1) + 8 * i), v21];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v15 = [dictCopy objectForKeyedSubscript:@"sendersToTest"];
  v16 = [dictCopy objectForKeyedSubscript:@"adaptToSentMessages"];
  bOOLValue = [v16 BOOLValue];
  v18 = [dictCopy objectForKeyedSubscript:@"adaptToReceivedMessages"];
  v19 = +[TTKConversationTest testWithConversation:sendersToTest:warmupMessages:adaptToSentMessages:adaptToReceivedMessages:](TTKConversationTest, "testWithConversation:sendersToTest:warmupMessages:adaptToSentMessages:adaptToReceivedMessages:", v8, v15, v4, bOOLValue, [v18 BOOLValue]);

  return v19;
}

+ (id)testWithConversation:(id)conversation sendersToTest:(id)test warmupMessages:(unint64_t)messages adaptToSentMessages:(BOOL)sentMessages adaptToReceivedMessages:(BOOL)receivedMessages
{
  conversationCopy = conversation;
  testCopy = test;
  v14 = objc_alloc_init(TTKConversationTest);
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_conversation, conversation);
    v16 = [MEMORY[0x277CBEB98] setWithArray:testCopy];
    sendersToTest = v15->_sendersToTest;
    v15->_sendersToTest = v16;

    v15->_warmupMessages = messages;
    v15->_adaptToSentMessages = sentMessages;
    v15->_adaptToReceivedMessages = receivedMessages;
  }

  return v15;
}

@end