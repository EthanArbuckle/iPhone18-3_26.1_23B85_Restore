@interface TSAPdfTaggerTextColumnOwnerContext
- (TSAPdfTaggerTextColumnOwnerContext)initWithStateOfTagger:(id)tagger columns:(id)columns storage:(id)storage limitSelection:(id)selection;
- (TSWPSelection)limitSelection;
- (TSWPStorage)storage;
@end

@implementation TSAPdfTaggerTextColumnOwnerContext

- (TSAPdfTaggerTextColumnOwnerContext)initWithStateOfTagger:(id)tagger columns:(id)columns storage:(id)storage limitSelection:(id)selection
{
  columnsCopy = columns;
  storageCopy = storage;
  selectionCopy = selection;
  v17.receiver = self;
  v17.super_class = TSAPdfTaggerTextColumnOwnerContext;
  v14 = [(TSAPdfTaggerContext *)&v17 initWithStateOfTagger:tagger];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_columns, columns);
    objc_storeWeak(&v15->_storage, storageCopy);
    objc_storeWeak(&v15->_limitSelection, selectionCopy);
  }

  return v15;
}

- (TSWPStorage)storage
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  return WeakRetained;
}

- (TSWPSelection)limitSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_limitSelection);

  return WeakRetained;
}

@end