@interface _UITraitStorageList
- (_UITraitStorageList)initWithCoder:(id)coder;
- (_UITraitStorageList)initWithTopLevelObject:(id)object traitStorages:(id)storages descendants:(id)descendants;
- (id)description;
- (id)topLevelObject;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UITraitStorageList

- (_UITraitStorageList)initWithTopLevelObject:(id)object traitStorages:(id)storages descendants:(id)descendants
{
  objectCopy = object;
  storagesCopy = storages;
  descendantsCopy = descendants;
  if ([descendantsCopy containsObject:objectCopy])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITraitStorage.m" lineNumber:205 description:@"retained descendants should not include the top level object."];
  }

  v20.receiver = self;
  v20.super_class = _UITraitStorageList;
  v12 = [(_UITraitStorageList *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_topLevelObject, objectCopy);
    v14 = [storagesCopy copy];
    traitStorages = v13->_traitStorages;
    v13->_traitStorages = v14;

    v16 = [descendantsCopy copy];
    descendants = v13->_descendants;
    v13->_descendants = v16;
  }

  return v13;
}

- (_UITraitStorageList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _UITraitStorageList;
  v5 = [(_UITraitStorageList *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UITopLevelObject"];
    objc_storeWeak(&v5->_topLevelObject, v6);

    v7 = [coderCopy decodeObjectForKey:@"UITraitStorages"];
    traitStorages = v5->_traitStorages;
    v5->_traitStorages = v7;

    v9 = [coderCopy decodeObjectForKey:@"UIDescendants"];
    descendants = v5->_descendants;
    v5->_descendants = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  WeakRetained = objc_loadWeakRetained(&self->_topLevelObject);
  [coderCopy encodeConditionalObject:WeakRetained forKey:@"UITopLevelObject"];

  [coderCopy encodeObject:self->_traitStorages forKey:@"UITraitStorages"];
  [coderCopy encodeObject:self->_descendants forKey:@"UIDescendants"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  WeakRetained = objc_loadWeakRetained(&self->_topLevelObject);
  v7 = [v3 stringWithFormat:@"<%@: %p topLevelObject=%@, traitStorages=%@, descendants=%@>", v5, self, WeakRetained, self->_traitStorages, self->_descendants];;

  return v7;
}

- (id)topLevelObject
{
  WeakRetained = objc_loadWeakRetained(&self->_topLevelObject);

  return WeakRetained;
}

@end