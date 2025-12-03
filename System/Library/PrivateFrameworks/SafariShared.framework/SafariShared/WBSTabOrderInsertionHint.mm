@interface WBSTabOrderInsertionHint
- (WBSTabOrderInsertionHint)initWithTabToInsertAfter:(id)after insertionIndex:(unint64_t)index relation:(unint64_t)relation;
@end

@implementation WBSTabOrderInsertionHint

- (WBSTabOrderInsertionHint)initWithTabToInsertAfter:(id)after insertionIndex:(unint64_t)index relation:(unint64_t)relation
{
  afterCopy = after;
  v15.receiver = self;
  v15.super_class = WBSTabOrderInsertionHint;
  v10 = [(WBSTabOrderInsertionHint *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_tabToInsertAfter, after);
    indexCopy = 0x7FFFFFFFFFFFFFFFLL;
    if (afterCopy)
    {
      indexCopy = index;
    }

    v11->_insertionIndex = indexCopy;
    v11->_relationType = relation;
    v13 = v11;
  }

  return v11;
}

@end