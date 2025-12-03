@interface VUICollectionChange
- (VUICollectionChange)initWithChangeKind:(unint64_t)kind sourceIndexes:(id)indexes destinationIndexes:(id)destinationIndexes;
- (id)description;
@end

@implementation VUICollectionChange

- (VUICollectionChange)initWithChangeKind:(unint64_t)kind sourceIndexes:(id)indexes destinationIndexes:(id)destinationIndexes
{
  indexesCopy = indexes;
  destinationIndexesCopy = destinationIndexes;
  v17.receiver = self;
  v17.super_class = VUICollectionChange;
  v10 = [(VUICollectionChange *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_changeKind = kind;
    v12 = [indexesCopy copy];
    sourceIndexes = v11->_sourceIndexes;
    v11->_sourceIndexes = v12;

    v14 = [destinationIndexesCopy copy];
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

  changeKind = [(VUICollectionChange *)self changeKind];
  if (changeKind > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_279E21568[changeKind];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"changeKind", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x277CCACA8];
  sourceIndexes = [(VUICollectionChange *)self sourceIndexes];
  v10 = [v8 stringWithFormat:@"%@=%@", @"sourceIndexes", sourceIndexes];
  [v3 addObject:v10];

  v11 = MEMORY[0x277CCACA8];
  destinationIndexes = [(VUICollectionChange *)self destinationIndexes];
  v13 = [v11 stringWithFormat:@"%@=%@", @"destinationIndexes", destinationIndexes];
  [v3 addObject:v13];

  v14 = MEMORY[0x277CCACA8];
  updateChangeSet = [(VUICollectionChange *)self updateChangeSet];
  v16 = [v14 stringWithFormat:@"%@=%@", @"updateChangeSet", updateChangeSet];
  [v3 addObject:v16];

  v17 = MEMORY[0x277CCACA8];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v17 stringWithFormat:@"<%@>", v18];

  return v19;
}

@end