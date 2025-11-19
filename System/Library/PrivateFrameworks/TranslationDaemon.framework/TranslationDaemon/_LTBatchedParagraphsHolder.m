@interface _LTBatchedParagraphsHolder
- (_LTBatchedParagraphsHolder)init;
- (id)paragraphs;
- (void)completeAllAndCleanWithError:(id)a3;
- (void)insertParagraph:(id)a3 withId:(id)a4;
- (void)removeParagraphWithId:(id)a3;
@end

@implementation _LTBatchedParagraphsHolder

- (_LTBatchedParagraphsHolder)init
{
  v9.receiver = self;
  v9.super_class = _LTBatchedParagraphsHolder;
  v2 = [(_LTBatchedParagraphsHolder *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    paragraphs = v2->_paragraphs;
    v2->_paragraphs = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    orderedParagraphIds = v2->_orderedParagraphIds;
    v2->_orderedParagraphIds = v5;

    v7 = v2;
  }

  return v2;
}

- (void)insertParagraph:(id)a3 withId:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_paragraphs objectForKey:v6];

  if (!v7)
  {
    [(NSMutableArray *)self->_orderedParagraphIds addObject:v6];
  }

  [(NSMutableDictionary *)self->_paragraphs setObject:v8 forKeyedSubscript:v6];
}

- (void)removeParagraphWithId:(id)a3
{
  paragraphs = self->_paragraphs;
  v5 = a3;
  [(NSMutableDictionary *)paragraphs removeObjectForKey:v5];
  [(NSMutableArray *)self->_orderedParagraphIds removeObject:v5];
}

- (id)paragraphs
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_orderedParagraphIds;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_paragraphs objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i), v13];
        v10 = [v9 requestParagraph];

        if (v10)
        {
          [v3 addObject:v10];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)completeAllAndCleanWithError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSMutableDictionary *)self->_paragraphs allValues];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 completion];

        if (v11)
        {
          v12 = [v10 completion];
          (v12)[2](v12, 0, v4);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_paragraphs removeAllObjects];
  [(NSMutableArray *)self->_orderedParagraphIds removeAllObjects];

  v13 = *MEMORY[0x277D85DE8];
}

@end