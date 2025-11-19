@interface PGCurationSetTrait
- (PGCurationSetTrait)initWithItems:(id)a3;
- (PGCurationSetTrait)initWithItems:(id)a3 negativeItems:(id)a4;
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

- (PGCurationSetTrait)initWithItems:(id)a3 negativeItems:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGCurationSetTrait;
  v9 = [(PGCurationTrait *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_items, a3);
    objc_storeStrong(&v10->_negativeItems, a4);
  }

  return v10;
}

- (PGCurationSetTrait)initWithItems:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(PGCurationSetTrait *)self initWithItems:v5 negativeItems:v6];

  return v7;
}

@end