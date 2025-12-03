@interface TSPContainedObject
- (TSPContainedObject)initWithOwner:(id)owner;
- (TSPObject)owner;
- (void)willModify;
- (void)willModifyForUpgrade;
@end

@implementation TSPContainedObject

- (TSPContainedObject)initWithOwner:(id)owner
{
  ownerCopy = owner;
  v8.receiver = self;
  v8.super_class = TSPContainedObject;
  v5 = [(TSPContainedObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owner, ownerCopy);
  }

  return v6;
}

- (void)willModify
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  objc_msgSend_willModify(WeakRetained, v2, v3);
}

- (void)willModifyForUpgrade
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  objc_msgSend_willModifyForUpgrade(WeakRetained, v2, v3);
}

- (TSPObject)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end