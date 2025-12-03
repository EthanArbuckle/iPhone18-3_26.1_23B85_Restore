@interface TILanguageModelOfflineLearningStrategyResponseKit
- (BOOL)learnMessages:(id)messages withRecipientRecords:(id)records;
- (TILanguageModelOfflineLearningStrategyResponseKit)initWithClientIdentifier:(id)identifier andDirectory:(id)directory;
- (id)filterMessages:(id)messages;
- (id)messagesClusteredByRecipient:(id)recipient;
- (void)didFinishLearning;
@end

@implementation TILanguageModelOfflineLearningStrategyResponseKit

- (void)didFinishLearning
{
  learningTask = [(TILanguageModelOfflineLearningStrategyResponseKit *)self learningTask];
  isCancelled = [learningTask isCancelled];

  if ((isCancelled & 1) == 0)
  {
    trainer = self->_trainer;

    [(RKMessageResponseManager *)trainer flushDynamicData];
  }
}

- (id)filterMessages:(id)messages
{
  v3 = MEMORY[0x277CBEAA8];
  messagesCopy = messages;
  date = [v3 date];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__TILanguageModelOfflineLearningStrategyResponseKit_filterMessages___block_invoke;
  v10[3] = &unk_278732EF8;
  v11 = date;
  v6 = date;
  v7 = [messagesCopy indexesOfObjectsPassingTest:v10];
  v8 = [messagesCopy objectsAtIndexes:v7];

  return v8;
}

BOOL __68__TILanguageModelOfflineLearningStrategyResponseKit_filterMessages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 body];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 dateSent];
    v7 = [v6 laterDate:*(a1 + 32)];
    v8 = v7 == *(a1 + 32);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)learnMessages:(id)messages withRecipientRecords:(id)records
{
  v24 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v7 = [(TILanguageModelOfflineLearningStrategyResponseKit *)self messagesClusteredByRecipient:messages];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [recordsCopy objectForKey:v12];
        v14 = [v13 objectForKey:@"compositeName"];
        if (v14)
        {
          v15 = [(NSMutableDictionary *)self->_recipientModels objectForKey:v14];
          if (!v15)
          {
            v15 = [[TIRecipientModel alloc] initWithCompositeName:v14 andTrainer:self->_trainer];
            [(NSMutableDictionary *)self->_recipientModels setObject:v15 forKey:v14];
          }

          v16 = [v7 objectForKey:v12];
          [(TIRecipientModel *)v15 handleMessages:v16];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)messagesClusteredByRecipient:(id)recipient
{
  v20 = *MEMORY[0x277D85DE8];
  recipientCopy = recipient;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = recipientCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        recipient = [v10 recipient];
        if (recipient)
        {
          array = [dictionary objectForKey:recipient];
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            [dictionary setObject:array forKey:recipient];
          }

          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (TILanguageModelOfflineLearningStrategyResponseKit)initWithClientIdentifier:(id)identifier andDirectory:(id)directory
{
  identifierCopy = identifier;
  directoryCopy = directory;
  v16.receiver = self;
  v16.super_class = TILanguageModelOfflineLearningStrategyResponseKit;
  v8 = [(TILanguageModelOfflineLearningStrategyResponseKit *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    recipientModels = v8->_recipientModels;
    v8->_recipientModels = v9;

    v11 = [TILanguageModelOfflineLearningTask taskWithClientIdentifier:identifierCopy oneTimeTask:0];
    learningTask = v8->_learningTask;
    v8->_learningTask = v11;

    objc_storeStrong(&v8->_directory, directory);
    v13 = [objc_alloc(MEMORY[0x277D46BD8]) initWithDynamicDataURL:v8->_directory];
    trainer = v8->_trainer;
    v8->_trainer = v13;
  }

  return v8;
}

@end