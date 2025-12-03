@interface _UIAttributeTraitStorageRecord
- (_UIAttributeTraitStorageRecord)initWithCoder:(id)coder;
- (_UIAttributeTraitStorageRecord)initWithTraitCollection:(id)collection value:(id)value;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIAttributeTraitStorageRecord

- (_UIAttributeTraitStorageRecord)initWithTraitCollection:(id)collection value:(id)value
{
  collectionCopy = collection;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = _UIAttributeTraitStorageRecord;
  v9 = [(_UIAttributeTraitStorageRecord *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_traitCollection, collection);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

- (_UIAttributeTraitStorageRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _UIAttributeTraitStorageRecord;
  v5 = [(_UIAttributeTraitStorageRecord *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UITraitCollection"];
    traitCollection = v5->_traitCollection;
    v5->_traitCollection = v6;

    v8 = [coderCopy decodeObjectForKey:@"UIValue"];
    value = v5->_value;
    v5->_value = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  traitCollection = self->_traitCollection;
  coderCopy = coder;
  [coderCopy encodeObject:traitCollection forKey:@"UITraitCollection"];
  [coderCopy encodeObject:self->_value forKey:@"UIValue"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p traitCollection=%@, value=%@>", v5, self, self->_traitCollection, self->_value];;

  return v6;
}

@end