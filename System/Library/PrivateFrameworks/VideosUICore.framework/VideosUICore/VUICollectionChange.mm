@interface VUICollectionChange
- (VUICollectionChange)initWithChangeKind:(unint64_t)a3 sourceIndexes:(id)a4 destinationIndexes:(id)a5;
- (id)description;
@end

@implementation VUICollectionChange

- (VUICollectionChange)initWithChangeKind:(unint64_t)a3 sourceIndexes:(id)a4 destinationIndexes:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = VUICollectionChange;
  v10 = [(VUICollectionChange *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_changeKind = a3;
    v12 = [v8 copy];
    sourceIndexes = v11->_sourceIndexes;
    v11->_sourceIndexes = v12;

    v14 = [v9 copy];
    destinationIndexes = v11->_destinationIndexes;
    v11->_destinationIndexes = v14;
  }

  return v11;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21.receiver = self;
  v21.super_class = VUICollectionChange;
  v4 = [(VUICollectionChange *)&v21 description];
  [v3 addObject:v4];

  v5 = [(VUICollectionChange *)self changeKind];
  if (v5 > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_279E21568[v5];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"changeKind", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x277CCACA8];
  v9 = [(VUICollectionChange *)self sourceIndexes];
  v10 = [v8 stringWithFormat:@"%@=%@", @"sourceIndexes", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x277CCACA8];
  v12 = [(VUICollectionChange *)self destinationIndexes];
  v13 = [v11 stringWithFormat:@"%@=%@", @"destinationIndexes", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x277CCACA8];
  v15 = [(VUICollectionChange *)self updateChangeSet];
  v16 = [v14 stringWithFormat:@"%@=%@", @"updateChangeSet", v15];
  [v3 addObject:v16];

  v17 = MEMORY[0x277CCACA8];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v17 stringWithFormat:@"<%@>", v18];

  return v19;
}

@end