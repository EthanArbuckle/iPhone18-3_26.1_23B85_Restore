@interface AFConversation(SiriUIFoundationAdditions)
- (id)sruif_itemsRelatedToIdentifier:()SiriUIFoundationAdditions;
@end

@implementation AFConversation(SiriUIFoundationAdditions)

- (id)sruif_itemsRelatedToIdentifier:()SiriUIFoundationAdditions
{
  v4 = a3;
  array = [MEMORY[0x277CBEB18] array];
  v6 = objc_alloc_init(MEMORY[0x277CCAA70]);
  v7 = [self numberOfChildrenForItemAtIndexPath:v6];

  v18 = v4;
  v8 = [self itemWithIdentifier:v4];
  aceObject = [v8 aceObject];
  refId = [aceObject refId];

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v12 = [MEMORY[0x277CCAA70] indexPathWithIndex:i];
      v13 = [self itemAtIndexPath:v12];

      aceObject2 = [v13 aceObject];
      refId2 = [aceObject2 refId];
      v16 = [refId2 isEqualToString:refId];

      if (v16)
      {
        [array addObject:v13];
      }
    }
  }

  return array;
}

@end