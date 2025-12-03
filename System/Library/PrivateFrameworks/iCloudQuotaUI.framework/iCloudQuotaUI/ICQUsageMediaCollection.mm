@interface ICQUsageMediaCollection
- (void)removeItemAtIndex:(unint64_t)index;
- (void)setItemSizes:(id)sizes;
- (void)setItems:(id)items;
- (void)sortItemsByMediaKey:(id)key;
@end

@implementation ICQUsageMediaCollection

- (void)removeItemAtIndex:(unint64_t)index
{
  v5 = [(NSMutableArray *)self->_itemSizes objectAtIndexedSubscript:?];
  [v5 floatValue];
  self->_totalSize = self->_totalSize - v6;

  [(NSMutableArray *)self->_items removeObjectAtIndex:index];
  itemSizes = self->_itemSizes;

  [(NSMutableArray *)itemSizes removeObjectAtIndex:index];
}

- (void)sortItemsByMediaKey:(id)key
{
  if ([(ICQUsageMediaCollection *)self isGrouped])
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:self->_itemSizes forKeys:self->_items];
    items = self->_items;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__ICQUsageMediaCollection_sortItemsByMediaKey___block_invoke;
    v8[3] = &unk_27A65AF08;
    v9 = v4;
    v6 = v4;
    [(NSMutableArray *)items sortUsingComparator:v8];
    [(NSMutableArray *)self->_itemSizes sortUsingComparator:&__block_literal_global_16];
  }

  else
  {
    v7 = self->_items;

    [(NSMutableArray *)v7 sortUsingComparator:&__block_literal_global_75];
  }
}

uint64_t __47__ICQUsageMediaCollection_sortItemsByMediaKey___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKey:a3];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v7 compare:v8];
  return v9;
}

uint64_t __47__ICQUsageMediaCollection_sortItemsByMediaKey___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x277CD5748];
  v5 = a2;
  v6 = [a3 valueForProperty:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &unk_288479C48;
  }

  v9 = v8;

  v10 = [v5 valueForProperty:v4];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &unk_288479C48;
  }

  v12 = v11;

  v13 = [v9 compare:v12];
  return v13;
}

- (void)setItems:(id)items
{
  if (self->_items != items)
  {
    v5 = [items mutableCopy];
    items = self->_items;
    self->_items = v5;
  }
}

- (void)setItemSizes:(id)sizes
{
  if (self->_itemSizes != sizes)
  {
    v5 = [sizes mutableCopy];
    itemSizes = self->_itemSizes;
    self->_itemSizes = v5;
  }
}

@end