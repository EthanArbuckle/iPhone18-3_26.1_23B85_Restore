@interface PXActivityCoordinatorRecord
- (BOOL)isEqual:(id)equal;
- (PXActivityCoordinatorItem)item;
- (PXActivityCoordinatorRecord)initWithItem:(id)item;
- (unint64_t)hash;
@end

@implementation PXActivityCoordinatorRecord

- (PXActivityCoordinatorItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v3 = [WeakRetained hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    item = [equalCopy item];
    WeakRetained = objc_loadWeakRetained(&self->_item);
    v7 = item == WeakRetained;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PXActivityCoordinatorRecord)initWithItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = PXActivityCoordinatorRecord;
  v5 = [(PXActivityCoordinatorRecord *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_item, itemCopy);
  }

  return v6;
}

@end