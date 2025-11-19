@interface MFSearchResponseQueue
- (BOOL)addItem:(id)a3;
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

- (BOOL)addItem:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 responseType] == 14)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 searchResults];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) unsignedIntValue];
        if ([(NSMutableIndexSet *)self->indexSet count]>= self->limit)
        {
          v10 = [(NSMutableIndexSet *)self->indexSet firstIndex];
          if (v10 >= v9)
          {
            continue;
          }

          [(NSMutableIndexSet *)self->indexSet removeIndex:v10];
        }

        [(NSMutableIndexSet *)self->indexSet addIndex:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    v4 = [(NSMutableIndexSet *)indexSet lastIndex];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v4; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSMutableIndexSet *)self->indexSet indexLessThanIndex:i])
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