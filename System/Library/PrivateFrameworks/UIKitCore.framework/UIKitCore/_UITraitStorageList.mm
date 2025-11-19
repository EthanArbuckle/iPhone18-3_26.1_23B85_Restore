@interface _UITraitStorageList
- (_UITraitStorageList)initWithCoder:(id)a3;
- (_UITraitStorageList)initWithTopLevelObject:(id)a3 traitStorages:(id)a4 descendants:(id)a5;
- (id)description;
- (id)topLevelObject;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UITraitStorageList

- (_UITraitStorageList)initWithTopLevelObject:(id)a3 traitStorages:(id)a4 descendants:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v11 containsObject:v9])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UITraitStorage.m" lineNumber:205 description:@"retained descendants should not include the top level object."];
  }

  v20.receiver = self;
  v20.super_class = _UITraitStorageList;
  v12 = [(_UITraitStorageList *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_topLevelObject, v9);
    v14 = [v10 copy];
    traitStorages = v13->_traitStorages;
    v13->_traitStorages = v14;

    v16 = [v11 copy];
    descendants = v13->_descendants;
    v13->_descendants = v16;
  }

  return v13;
}

- (_UITraitStorageList)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UITraitStorageList;
  v5 = [(_UITraitStorageList *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UITopLevelObject"];
    objc_storeWeak(&v5->_topLevelObject, v6);

    v7 = [v4 decodeObjectForKey:@"UITraitStorages"];
    traitStorages = v5->_traitStorages;
    v5->_traitStorages = v7;

    v9 = [v4 decodeObjectForKey:@"UIDescendants"];
    descendants = v5->_descendants;
    v5->_descendants = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_topLevelObject);
  [v5 encodeConditionalObject:WeakRetained forKey:@"UITopLevelObject"];

  [v5 encodeObject:self->_traitStorages forKey:@"UITraitStorages"];
  [v5 encodeObject:self->_descendants forKey:@"UIDescendants"];
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