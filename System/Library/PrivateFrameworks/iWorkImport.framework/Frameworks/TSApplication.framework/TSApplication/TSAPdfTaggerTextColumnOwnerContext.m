@interface TSAPdfTaggerTextColumnOwnerContext
- (TSAPdfTaggerTextColumnOwnerContext)initWithStateOfTagger:(id)a3 columns:(id)a4 storage:(id)a5 limitSelection:(id)a6;
- (TSWPSelection)limitSelection;
- (TSWPStorage)storage;
@end

@implementation TSAPdfTaggerTextColumnOwnerContext

- (TSAPdfTaggerTextColumnOwnerContext)initWithStateOfTagger:(id)a3 columns:(id)a4 storage:(id)a5 limitSelection:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = TSAPdfTaggerTextColumnOwnerContext;
  v14 = [(TSAPdfTaggerContext *)&v17 initWithStateOfTagger:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_columns, a4);
    objc_storeWeak(&v15->_storage, v12);
    objc_storeWeak(&v15->_limitSelection, v13);
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