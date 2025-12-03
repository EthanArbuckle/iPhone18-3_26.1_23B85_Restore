@interface PXSortOrderState
- (PXSortOrderState)initWithSortOrder:(unint64_t)order;
- (void)enumeratePossibleSortOrdersUsingBlock:(id)block;
- (void)setSortOrder:(unint64_t)order;
@end

@implementation PXSortOrderState

- (void)enumeratePossibleSortOrdersUsingBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  sortOrder = [(PXSortOrderState *)self sortOrder];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  possibleSortOrders = [(PXSortOrderState *)self possibleSortOrders];
  v7 = [possibleSortOrders countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(possibleSortOrders);
        }

        unsignedIntegerValue = [*(*(&v12 + 1) + 8 * v10) unsignedIntegerValue];
        blockCopy[2](blockCopy, unsignedIntegerValue, sortOrder == unsignedIntegerValue);
        ++v10;
      }

      while (v8 != v10);
      v8 = [possibleSortOrders countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)setSortOrder:(unint64_t)order
{
  if (self->_sortOrder != order)
  {
    self->_sortOrder = order;
    [(PXSortOrderState *)self signalChange:1];
  }
}

- (PXSortOrderState)initWithSortOrder:(unint64_t)order
{
  v8.receiver = self;
  v8.super_class = PXSortOrderState;
  v4 = [(PXSortOrderState *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_sortOrder = order;
    possibleSortOrders = v4->_possibleSortOrders;
    v4->_possibleSortOrders = &unk_1F19110C8;
  }

  return v5;
}

@end