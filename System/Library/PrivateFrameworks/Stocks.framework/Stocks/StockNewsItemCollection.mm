@interface StockNewsItemCollection
- (StockNewsItemCollection)initWithArchiveArray:(id)a3;
- (id)archiveArray;
@end

@implementation StockNewsItemCollection

- (StockNewsItemCollection)initWithArchiveArray:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = StockNewsItemCollection;
  v5 = [(StockNewsItemCollection *)&v22 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v19;
      do
      {
        v12 = 0;
        v13 = v10;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v18 + 1) + 8 * v12);
          v15 = [StockNewsItem alloc];
          v10 = [(StockNewsItem *)v15 initWithArchiveDictionary:v14, v18];

          if (v10)
          {
            [(NSArray *)v6 addObject:v10];
          }

          ++v12;
          v13 = v10;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v9);
    }

    newsItems = v5->_newsItems;
    v5->_newsItems = v6;
  }

  return v5;
}

- (id)archiveArray
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_newsItems, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_newsItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) archiveDictionary];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end