@interface _UIUpdateVisibleCellsContext
- (_UIUpdateVisibleCellsContext)init;
- (id)description;
- (void)addPreferredAttributes:(uint64_t)a1;
@end

@implementation _UIUpdateVisibleCellsContext

- (_UIUpdateVisibleCellsContext)init
{
  v12.receiver = self;
  v12.super_class = _UIUpdateVisibleCellsContext;
  v2 = [(_UIUpdateVisibleCellsContext *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sizes = v2->_sizes;
    v2->_sizes = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    indexPaths = v2->_indexPaths;
    v2->_indexPaths = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
    sectionIndexes = v2->_sectionIndexes;
    v2->_sectionIndexes = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    attributes = v2->_attributes;
    v2->_attributes = v9;

    v2->_visibleCellsRefCount = 0;
  }

  return v2;
}

- (void)addPreferredAttributes:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:sel_addPreferredAttributes_ object:a1 file:@"UICollectionViewLayout.m" lineNumber:3080 description:{@"Invalid parameter not satisfying: %@", @"attributes"}];
  }

  [a2 size];
  v5 = v4;
  v7 = v6;
  v12 = [a2 indexPath];
  if (v12)
  {
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:sel_addPreferredAttributes_ object:a1 file:@"UICollectionViewLayout.m" lineNumber:3084 description:{@"Received preferred attributes without an index path. Attributes: %@", a2}];

    if (a2)
    {
LABEL_6:
      if (a2[288])
      {
        v8 = *(a1 + 8);
        v9 = [MEMORY[0x1E696B098] valueWithCGSize:{v5, v7}];
        [v8 addObject:v9];

        [*(a1 + 24) addObject:v12];
      }
    }
  }

  [*(a1 + 32) addIndex:{objc_msgSend(v12, "section")}];
  [*(a1 + 16) addObject:a2];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@:%p ", v5, self];

  if ([(NSMutableArray *)self->_sizes count])
  {
    v6 = 0;
    do
    {
      if (v6)
      {
        [v3 appendString:@"; "];
      }

      v7 = [(NSMutableArray *)self->_sizes objectAtIndexedSubscript:v6];
      [v7 CGSizeValue];
      v9 = v8;
      v11 = v10;

      v12 = [(NSMutableArray *)self->_indexPaths objectAtIndexedSubscript:v6];
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "section")}];
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "item")}];
      v18.width = v9;
      v18.height = v11;
      v15 = NSStringFromCGSize(v18);
      [v3 appendFormat:@"(%@, %@) -> %@", v13, v14, v15];

      ++v6;
    }

    while (v6 < [(NSMutableArray *)self->_sizes count]);
  }

  [v3 appendString:@">"];

  return v3;
}

@end