@interface MFSearchResponseQueue
- (BOOL)addItem:(id)item;
- (BOOL)flush;
- (MFSearchResponseQueue)init;
- (void)dealloc;
@end

@implementation MFSearchResponseQueue

- (MFSearchResponseQueue)init
{
  v6.receiver = self;
  v6.super_class = MFSearchResponseQueue;
  v2 = [(MFBaseSyncResponseQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
    indexSet = v2->indexSet;
    v2->indexSet = v3;
  }

  return v2;
}

- (BOOL)addItem:(id)item
{
  v18 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if ([itemCopy responseType] == 14)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    searchResults = [itemCopy searchResults];
    v6 = [searchResults countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = *v14;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(searchResults);
        }

        unsignedIntValue = [*(*(&v13 + 1) + 8 * i) unsignedIntValue];
        if ([(NSMutableIndexSet *)self->indexSet count]>= self->limit)
        {
          firstIndex = [(NSMutableIndexSet *)self->indexSet firstIndex];
          if (firstIndex >= unsignedIntValue)
          {
            continue;
          }

          [(NSMutableIndexSet *)self->indexSet removeIndex:firstIndex];
        }

        [(NSMutableIndexSet *)self->indexSet addIndex:unsignedIntValue];
      }

      v6 = [searchResults countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (!v6)
      {
LABEL_13:

        break;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)flush
{
  indexSet = self->indexSet;
  if (indexSet)
  {
    lastIndex = [(NSMutableIndexSet *)indexSet lastIndex];
    if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = lastIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSMutableIndexSet *)self->indexSet indexLessThanIndex:i])
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        v9.receiver = self;
        v9.super_class = MFSearchResponseQueue;
        [(MFBufferedQueue *)&v9 addItem:v6];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MFSearchResponseQueue;
  return [(MFBufferedQueue *)&v8 flush];
}

- (void)dealloc
{
  indexSet = self->indexSet;
  self->indexSet = 0;

  v4.receiver = self;
  v4.super_class = MFSearchResponseQueue;
  [(MFBaseSyncResponseQueue *)&v4 dealloc];
}

@end