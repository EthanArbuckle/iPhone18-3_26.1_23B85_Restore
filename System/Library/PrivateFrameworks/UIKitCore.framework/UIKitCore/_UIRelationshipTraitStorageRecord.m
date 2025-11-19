@interface _UIRelationshipTraitStorageRecord
- (_UIRelationshipTraitStorageRecord)initWithCoder:(id)a3;
- (_UIRelationshipTraitStorageRecord)initWithTraitCollection:(id)a3 addedObjects:(id)a4 removedObjects:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIRelationshipTraitStorageRecord

- (_UIRelationshipTraitStorageRecord)initWithTraitCollection:(id)a3 addedObjects:(id)a4 removedObjects:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = _UIRelationshipTraitStorageRecord;
  v12 = [(_UIRelationshipTraitStorageRecord *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_traitCollection, a3);
    v14 = [v10 copy];
    addedObjects = v13->_addedObjects;
    v13->_addedObjects = v14;

    v16 = [v11 copy];
    removedObjects = v13->_removedObjects;
    v13->_removedObjects = v16;
  }

  return v13;
}

- (_UIRelationshipTraitStorageRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UIRelationshipTraitStorageRecord;
  v5 = [(_UIRelationshipTraitStorageRecord *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UITraitCollection"];
    traitCollection = v5->_traitCollection;
    v5->_traitCollection = v6;

    v8 = [v4 decodeObjectForKey:@"UIAddedObjects"];
    addedObjects = v5->_addedObjects;
    v5->_addedObjects = v8;

    v10 = [v4 decodeObjectForKey:@"UIRemovedObjects"];
    removedObjects = v5->_removedObjects;
    v5->_removedObjects = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  traitCollection = self->_traitCollection;
  v5 = a3;
  [v5 encodeObject:traitCollection forKey:@"UITraitCollection"];
  [v5 encodeObject:self->_addedObjects forKey:@"UIAddedObjects"];
  [v5 encodeObject:self->_removedObjects forKey:@"UIRemovedObjects"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p traitCollection=%@, addedObjects=%@, removedObjects=%@>", v5, self, self->_traitCollection, self->_addedObjects, self->_removedObjects];;

  return v6;
}

@end