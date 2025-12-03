@interface _LTBatchedParagraphsHolder
- (_LTBatchedParagraphsHolder)init;
- (id)paragraphs;
- (void)completeAllAndCleanWithError:(id)error;
- (void)insertParagraph:(id)paragraph withId:(id)id;
- (void)removeParagraphWithId:(id)id;
@end

@implementation _LTBatchedParagraphsHolder

- (_LTBatchedParagraphsHolder)init
{
  v9.receiver = self;
  v9.super_class = _LTBatchedParagraphsHolder;
  v2 = [(_LTBatchedParagraphsHolder *)&v9 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    paragraphs = v2->_paragraphs;
    v2->_paragraphs = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    orderedParagraphIds = v2->_orderedParagraphIds;
    v2->_orderedParagraphIds = array;

    v7 = v2;
  }

  return v2;
}

- (void)insertParagraph:(id)paragraph withId:(id)id
{
  paragraphCopy = paragraph;
  idCopy = id;
  v7 = [(NSMutableDictionary *)self->_paragraphs objectForKey:idCopy];

  if (!v7)
  {
    [(NSMutableArray *)self->_orderedParagraphIds addObject:idCopy];
  }

  [(NSMutableDictionary *)self->_paragraphs setObject:paragraphCopy forKeyedSubscript:idCopy];
}

- (void)removeParagraphWithId:(id)id
{
  paragraphs = self->_paragraphs;
  idCopy = id;
  [(NSMutableDictionary *)paragraphs removeObjectForKey:idCopy];
  [(NSMutableArray *)self->_orderedParagraphIds removeObject:idCopy];
}

- (id)paragraphs
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
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
        requestParagraph = [v9 requestParagraph];

        if (requestParagraph)
        {
          [array addObject:requestParagraph];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)completeAllAndCleanWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_paragraphs allValues];
  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        completion = [v10 completion];

        if (completion)
        {
          completion2 = [v10 completion];
          (completion2)[2](completion2, 0, errorCopy);
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_paragraphs removeAllObjects];
  [(NSMutableArray *)self->_orderedParagraphIds removeAllObjects];

  v13 = *MEMORY[0x277D85DE8];
}

@end