@interface WBSTabOrderInsertionHint
- (WBSTabOrderInsertionHint)initWithTabToInsertAfter:(id)a3 insertionIndex:(unint64_t)a4 relation:(unint64_t)a5;
@end

@implementation WBSTabOrderInsertionHint

- (WBSTabOrderInsertionHint)initWithTabToInsertAfter:(id)a3 insertionIndex:(unint64_t)a4 relation:(unint64_t)a5
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = WBSTabOrderInsertionHint;
  v10 = [(WBSTabOrderInsertionHint *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_tabToInsertAfter, a3);
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (v9)
    {
      v12 = a4;
    }

    v11->_insertionIndex = v12;
    v11->_relationType = a5;
    v13 = v11;
  }

  return v11;
}

@end