@interface PXActivityCoordinatorRecord
- (BOOL)isEqual:(id)a3;
- (PXActivityCoordinatorItem)item;
- (PXActivityCoordinatorRecord)initWithItem:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 item];
    WeakRetained = objc_loadWeakRetained(&self->_item);
    v7 = v5 == WeakRetained;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PXActivityCoordinatorRecord)initWithItem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXActivityCoordinatorRecord;
  v5 = [(PXActivityCoordinatorRecord *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_item, v4);
  }

  return v6;
}

@end