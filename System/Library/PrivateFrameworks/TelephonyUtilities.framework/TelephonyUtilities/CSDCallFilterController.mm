@interface CSDCallFilterController
- (BOOL)containsOutgoingRestrictedHandle:(id)handle forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously;
- (BOOL)containsRecentsRestrictedHandle:(id)handle;
- (BOOL)containsRestrictedHandle:(id)handle;
- (BOOL)isUnknownAddress:(id)address normalizedAddress:(id)normalizedAddress forBundleIdentifier:(id)identifier;
- (BOOL)isUnknownCaller:(id)caller;
- (BOOL)shouldFilterIncomingCall:(id)call from:(id)from;
- (BOOL)shouldRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously;
- (BOOL)willRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier;
- (CSDCallFilterController)init;
- (int64_t)filterStatusForAddresses:(id)addresses withBundleIdentifier:(id)identifier;
- (void)addCallFilter:(id)filter;
- (void)removeCallFilter:(id)filter;
@end

@implementation CSDCallFilterController

- (CSDCallFilterController)init
{
  v7.receiver = self;
  v7.super_class = CSDCallFilterController;
  v2 = [(CSDCallFilterController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableArray);
    filters = v3->_filters;
    v3->_filters = v4;
  }

  return v3;
}

- (void)addCallFilter:(id)filter
{
  filterCopy = filter;
  os_unfair_lock_lock(&self->_accessorLock);
  filters = [(CSDCallFilterController *)self filters];
  [filters addObject:filterCopy];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)removeCallFilter:(id)filter
{
  filterCopy = filter;
  os_unfair_lock_lock(&self->_accessorLock);
  filters = [(CSDCallFilterController *)self filters];
  [filters removeObject:filterCopy];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)containsOutgoingRestrictedHandle:(id)handle forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously
{
  handleCopy = handle;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  filters = [(CSDCallFilterController *)self filters];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10023DEDC;
  v15[3] = &unk_10061F618;
  v11 = handleCopy;
  v16 = v11;
  v12 = identifierCopy;
  v17 = v12;
  synchronouslyCopy = synchronously;
  v13 = [filters tu_containsObjectPassingTest:v15];

  os_unfair_lock_unlock(&self->_accessorLock);
  return v13;
}

- (BOOL)containsRecentsRestrictedHandle:(id)handle
{
  handleCopy = handle;
  os_unfair_lock_lock(&self->_accessorLock);
  filters = [(CSDCallFilterController *)self filters];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10023DFCC;
  v9[3] = &unk_10061F640;
  v6 = handleCopy;
  v10 = v6;
  v7 = [filters tu_containsObjectPassingTest:v9];

  os_unfair_lock_unlock(&self->_accessorLock);
  return v7;
}

- (BOOL)containsRestrictedHandle:(id)handle
{
  handleCopy = handle;
  os_unfair_lock_lock(&self->_accessorLock);
  filters = [(CSDCallFilterController *)self filters];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10023E0B8;
  v9[3] = &unk_10061F640;
  v6 = handleCopy;
  v10 = v6;
  v7 = [filters tu_containsObjectPassingTest:v9];

  os_unfair_lock_unlock(&self->_accessorLock);
  return v7;
}

- (int64_t)filterStatusForAddresses:(id)addresses withBundleIdentifier:(id)identifier
{
  addressesCopy = addresses;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  filters = [(CSDCallFilterController *)self filters];
  v9 = [filters countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(filters);
      }

      v12 = [*(*(&v14 + 1) + 8 * v11) filterStatusForAddresses:addressesCopy withBundleIdentifier:identifierCopy];
      if (v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [filters countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  os_unfair_lock_unlock(&self->_accessorLock);
  return v12;
}

- (BOOL)isUnknownAddress:(id)address normalizedAddress:(id)normalizedAddress forBundleIdentifier:(id)identifier
{
  addressCopy = address;
  normalizedAddressCopy = normalizedAddress;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  filters = [(CSDCallFilterController *)self filters];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10023E360;
  v16[3] = &unk_10061F668;
  v12 = addressCopy;
  v17 = v12;
  v13 = normalizedAddressCopy;
  v18 = v13;
  v14 = identifierCopy;
  v19 = v14;
  LOBYTE(identifierCopy) = [filters tu_containsObjectPassingTest:v16];

  os_unfair_lock_unlock(&self->_accessorLock);
  return identifierCopy;
}

- (BOOL)isUnknownCaller:(id)caller
{
  callerCopy = caller;
  os_unfair_lock_lock(&self->_accessorLock);
  filters = [(CSDCallFilterController *)self filters];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10023E450;
  v9[3] = &unk_10061F640;
  v6 = callerCopy;
  v10 = v6;
  v7 = [filters tu_containsObjectPassingTest:v9];

  os_unfair_lock_unlock(&self->_accessorLock);
  return v7;
}

- (BOOL)shouldFilterIncomingCall:(id)call from:(id)from
{
  callCopy = call;
  fromCopy = from;
  os_unfair_lock_lock(&self->_accessorLock);
  filters = [(CSDCallFilterController *)self filters];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10023E640;
  v23[3] = &unk_10061F690;
  v9 = callCopy;
  v24 = v9;
  v10 = fromCopy;
  v25 = v10;
  v11 = [filters tu_containsObjectPassingTest:v23];

  if (v11)
  {
    goto LABEL_2;
  }

  filters2 = [(CSDCallFilterController *)self filters];
  if (![filters2 tu_containsObjectPassingTest:&stru_10061F6D0])
  {

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  filters3 = [(CSDCallFilterController *)self filters];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10023E7A0;
  v20 = &unk_10061F690;
  v21 = v9;
  v22 = v10;
  v15 = [filters3 tu_containsObjectPassingTest:&v17];

  if (v15)
  {
    goto LABEL_9;
  }

LABEL_2:
  if (![v9 filteredOutReason])
  {
    [v9 setFilteredOutReason:2];
  }

  v12 = 1;
LABEL_10:

  os_unfair_lock_unlock(&self->_accessorLock);
  return v12;
}

- (BOOL)shouldRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously
{
  addressesCopy = addresses;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  filters = [(CSDCallFilterController *)self filters];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10023E9C8;
  v15[3] = &unk_10061F618;
  v11 = addressesCopy;
  v16 = v11;
  v12 = identifierCopy;
  v17 = v12;
  synchronouslyCopy = synchronously;
  v13 = [filters tu_containsObjectPassingTest:v15];

  os_unfair_lock_unlock(&self->_accessorLock);
  return v13;
}

- (BOOL)willRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier
{
  addressesCopy = addresses;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  filters = [(CSDCallFilterController *)self filters];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10023EAE4;
  v13[3] = &unk_10061F690;
  v9 = addressesCopy;
  v14 = v9;
  v10 = identifierCopy;
  v15 = v10;
  v11 = [filters tu_containsObjectPassingTest:v13];

  os_unfair_lock_unlock(&self->_accessorLock);
  return v11;
}

@end