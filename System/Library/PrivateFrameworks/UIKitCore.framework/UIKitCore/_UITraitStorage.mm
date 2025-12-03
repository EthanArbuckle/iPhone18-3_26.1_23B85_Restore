@interface _UITraitStorage
- (_UITraitStorage)initWithCoder:(id)coder;
- (_UITraitStorage)initWithObject:(id)object keyPath:(id)path;
- (id)_propertyDescriptionString;
- (id)description;
- (id)object;
- (void)applyRecordsMatchingTraitCollection:(id)collection;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UITraitStorage

- (_UITraitStorage)initWithObject:(id)object keyPath:(id)path
{
  objectCopy = object;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = _UITraitStorage;
  v8 = [(_UITraitStorage *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_object, objectCopy);
    v10 = [pathCopy copy];
    keyPath = v9->_keyPath;
    v9->_keyPath = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    records = v9->_records;
    v9->_records = v12;
  }

  return v9;
}

- (_UITraitStorage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _UITraitStorage;
  v5 = [(_UITraitStorage *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIObject"];
    objc_storeWeak(&v5->_object, v6);

    v7 = [coderCopy decodeObjectForKey:@"UIKeyPath"];
    keyPath = v5->_keyPath;
    v5->_keyPath = v7;

    v9 = [coderCopy decodeObjectForKey:@"UIRecords"];
    records = v5->_records;
    v5->_records = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  WeakRetained = objc_loadWeakRetained(&self->_object);
  [coderCopy encodeConditionalObject:WeakRetained forKey:@"UIObject"];

  [coderCopy encodeObject:self->_keyPath forKey:@"UIKeyPath"];
  [coderCopy encodeObject:self->_records forKey:@"UIRecords"];
}

- (void)applyRecordsMatchingTraitCollection:(id)collection
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UITraitStorage.m" lineNumber:287 description:@"Abstract"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  _propertyDescriptionString = [(_UITraitStorage *)self _propertyDescriptionString];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, _propertyDescriptionString];;

  return v7;
}

- (id)_propertyDescriptionString
{
  v3 = MEMORY[0x1E696AEC0];
  WeakRetained = objc_loadWeakRetained(&self->_object);
  v5 = [v3 stringWithFormat:@"object=%@, keyPath=%@, records=%@", WeakRetained, self->_keyPath, self->_records];

  return v5;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end