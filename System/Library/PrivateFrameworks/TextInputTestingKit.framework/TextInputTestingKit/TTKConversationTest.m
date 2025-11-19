@interface TTKConversationTest
+ (id)fromJsonDict:(id)a3;
+ (id)testWithConversation:(id)a3 sendersToTest:(id)a4 warmupMessages:(unint64_t)a5 adaptToSentMessages:(BOOL)a6 adaptToReceivedMessages:(BOOL)a7;
- (id)overridingJsonKeys:(id)a3;
- (id)toJsonDict;
@end

@implementation TTKConversationTest

- (id)overridingJsonKeys:(id)a3
{
  v4 = a3;
  v5 = [(TTKConversationTest *)self toJsonDict];
  v6 = [v5 mutableCopy];

  [v6 addEntriesFromDictionary:v4];
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

        v10 = [*(*(&v17 + 1) + 8 * i) toJsonDict];
        [v4 addObject:v10];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v22[0] = v4;
  v21[1] = @"sendersToTest";
  v11 = [(NSSet *)self->_sendersToTest allObjects];
  v22[1] = v11;
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

+ (id)fromJsonDict:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"warmupMessages"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"warmupMessages"];
    v6 = [v5 intValue];

    v4 = v6;
  }

  v7 = [v3 objectForKeyedSubscript:@"conversation"];
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

  v15 = [v3 objectForKeyedSubscript:@"sendersToTest"];
  v16 = [v3 objectForKeyedSubscript:@"adaptToSentMessages"];
  v17 = [v16 BOOLValue];
  v18 = [v3 objectForKeyedSubscript:@"adaptToReceivedMessages"];
  v19 = +[TTKConversationTest testWithConversation:sendersToTest:warmupMessages:adaptToSentMessages:adaptToReceivedMessages:](TTKConversationTest, "testWithConversation:sendersToTest:warmupMessages:adaptToSentMessages:adaptToReceivedMessages:", v8, v15, v4, v17, [v18 BOOLValue]);

  return v19;
}

+ (id)testWithConversation:(id)a3 sendersToTest:(id)a4 warmupMessages:(unint64_t)a5 adaptToSentMessages:(BOOL)a6 adaptToReceivedMessages:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = objc_alloc_init(TTKConversationTest);
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_conversation, a3);
    v16 = [MEMORY[0x277CBEB98] setWithArray:v13];
    sendersToTest = v15->_sendersToTest;
    v15->_sendersToTest = v16;

    v15->_warmupMessages = a5;
    v15->_adaptToSentMessages = a6;
    v15->_adaptToReceivedMessages = a7;
  }

  return v15;
}

@end