@interface PXSortOrderState
- (PXSortOrderState)initWithSortOrder:(unint64_t)a3;
- (void)enumeratePossibleSortOrdersUsingBlock:(id)a3;
- (void)setSortOrder:(unint64_t)a3;
@end

@implementation PXSortOrderState

- (void)enumeratePossibleSortOrdersUsingBlock:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXSortOrderState *)self sortOrder];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(PXSortOrderState *)self possibleSortOrders];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) unsignedIntegerValue];
        v4[2](v4, v11, v5 == v11);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)setSortOrder:(unint64_t)a3
{
  if (self->_sortOrder != a3)
  {
    self->_sortOrder = a3;
    [(PXSortOrderState *)self signalChange:1];
  }
}

- (PXSortOrderState)initWithSortOrder:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = PXSortOrderState;
  v4 = [(PXSortOrderState *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_sortOrder = a3;
    possibleSortOrders = v4->_possibleSortOrders;
    v4->_possibleSortOrders = &unk_1F19110C8;
  }

  return v5;
}

@end