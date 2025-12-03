@interface PGCurationSetTrait
- (PGCurationSetTrait)initWithItems:(id)items;
- (PGCurationSetTrait)initWithItems:(id)items negativeItems:(id)negativeItems;
- (id)debugDescription;
@end

@implementation PGCurationSetTrait

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = PGCurationSetTrait;
  v4 = [(PGCurationTrait *)&v10 debugDescription];
  items = self->_items;
  v6 = [(NSSet *)self->_negativeItems count];
  v7 = @" ";
  if (!v6)
  {
    v7 = &stru_2843F5C58;
  }

  v8 = [v3 stringWithFormat:@"%@ %@%@%@", v4, items, v7, self->_negativeItems];

  return v8;
}

- (PGCurationSetTrait)initWithItems:(id)items negativeItems:(id)negativeItems
{
  itemsCopy = items;
  negativeItemsCopy = negativeItems;
  v12.receiver = self;
  v12.super_class = PGCurationSetTrait;
  v9 = [(PGCurationTrait *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_items, items);
    objc_storeStrong(&v10->_negativeItems, negativeItems);
  }

  return v10;
}

- (PGCurationSetTrait)initWithItems:(id)items
{
  v4 = MEMORY[0x277CBEB98];
  itemsCopy = items;
  v6 = [v4 set];
  v7 = [(PGCurationSetTrait *)self initWithItems:itemsCopy negativeItems:v6];

  return v7;
}

@end