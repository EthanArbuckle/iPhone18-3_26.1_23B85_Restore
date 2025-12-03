@interface _UIRelationshipTraitStorageRecord
- (_UIRelationshipTraitStorageRecord)initWithCoder:(id)coder;
- (_UIRelationshipTraitStorageRecord)initWithTraitCollection:(id)collection addedObjects:(id)objects removedObjects:(id)removedObjects;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIRelationshipTraitStorageRecord

- (_UIRelationshipTraitStorageRecord)initWithTraitCollection:(id)collection addedObjects:(id)objects removedObjects:(id)removedObjects
{
  collectionCopy = collection;
  objectsCopy = objects;
  removedObjectsCopy = removedObjects;
  v19.receiver = self;
  v19.super_class = _UIRelationshipTraitStorageRecord;
  v12 = [(_UIRelationshipTraitStorageRecord *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_traitCollection, collection);
    v14 = [objectsCopy copy];
    addedObjects = v13->_addedObjects;
    v13->_addedObjects = v14;

    v16 = [removedObjectsCopy copy];
    removedObjects = v13->_removedObjects;
    v13->_removedObjects = v16;
  }

  return v13;
}

- (_UIRelationshipTraitStorageRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _UIRelationshipTraitStorageRecord;
  v5 = [(_UIRelationshipTraitStorageRecord *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UITraitCollection"];
    traitCollection = v5->_traitCollection;
    v5->_traitCollection = v6;

    v8 = [coderCopy decodeObjectForKey:@"UIAddedObjects"];
    addedObjects = v5->_addedObjects;
    v5->_addedObjects = v8;

    v10 = [coderCopy decodeObjectForKey:@"UIRemovedObjects"];
    removedObjects = v5->_removedObjects;
    v5->_removedObjects = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  traitCollection = self->_traitCollection;
  coderCopy = coder;
  [coderCopy encodeObject:traitCollection forKey:@"UITraitCollection"];
  [coderCopy encodeObject:self->_addedObjects forKey:@"UIAddedObjects"];
  [coderCopy encodeObject:self->_removedObjects forKey:@"UIRemovedObjects"];
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