@interface TSTTableDataList
- (TSTTableDataList)initWithType:(int)type context:(id)context;
- (id)allRichTextPayloadStorages;
- (unint64_t)flushableSize;
- (void)dealloc;
- (void)p_setupWithType:(int)type nextKeyID:(unsigned int)d;
@end

@implementation TSTTableDataList

- (void)p_setupWithType:(int)type nextKeyID:(unsigned int)d
{
  v4 = *&type;
  self->mListType = type;
  self->mNextID = d;
  self->mData = objc_alloc_init(TSTIntegerKeyDict);
  if ([(TSTTableDataList *)self supportsIDMapForType:v4])
  {
    v6 = objc_alloc_init(TSTTableDataObjectKeyDict);
  }

  else
  {
    v6 = 0;
  }

  self->mIDs = v6;
}

- (TSTTableDataList)initWithType:(int)type context:(id)context
{
  v4 = *&type;
  v8.receiver = self;
  v8.super_class = TSTTableDataList;
  v5 = [(TSPObject *)&v8 initWithContext:context];
  v6 = v5;
  if (v5)
  {
    [(TSTTableDataList *)v5 p_setupWithType:v4 nextKeyID:1];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableDataList;
  [(TSTTableDataList *)&v3 dealloc];
}

- (unint64_t)flushableSize
{
  v2 = [(TSTIntegerKeyDict *)self->mData count];
  v3 = objc_opt_class();
  return class_getInstanceSize(v3) * v2;
}

- (id)allRichTextPayloadStorages
{
  allValues = [(TSTIntegerKeyDict *)self->mData allValues];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(allValues, "count")}];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__TSTTableDataList_allRichTextPayloadStorages__block_invoke;
  v5[3] = &unk_279D47AD0;
  v5[4] = v3;
  [allValues enumerateObjectsUsingBlock:v5];
  return v3;
}

uint64_t __46__TSTTableDataList_allRichTextPayloadStorages__block_invoke(uint64_t a1)
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = [*(result + 16) storage];

    return [v3 addObject:v4];
  }

  return result;
}

@end