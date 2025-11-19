@interface _UITraitStorage
- (_UITraitStorage)initWithCoder:(id)a3;
- (_UITraitStorage)initWithObject:(id)a3 keyPath:(id)a4;
- (id)_propertyDescriptionString;
- (id)description;
- (id)object;
- (void)applyRecordsMatchingTraitCollection:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UITraitStorage

- (_UITraitStorage)initWithObject:(id)a3 keyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _UITraitStorage;
  v8 = [(_UITraitStorage *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_object, v6);
    v10 = [v7 copy];
    keyPath = v9->_keyPath;
    v9->_keyPath = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    records = v9->_records;
    v9->_records = v12;
  }

  return v9;
}

- (_UITraitStorage)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UITraitStorage;
  v5 = [(_UITraitStorage *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UIObject"];
    objc_storeWeak(&v5->_object, v6);

    v7 = [v4 decodeObjectForKey:@"UIKeyPath"];
    keyPath = v5->_keyPath;
    v5->_keyPath = v7;

    v9 = [v4 decodeObjectForKey:@"UIRecords"];
    records = v5->_records;
    v5->_records = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_object);
  [v5 encodeConditionalObject:WeakRetained forKey:@"UIObject"];

  [v5 encodeObject:self->_keyPath forKey:@"UIKeyPath"];
  [v5 encodeObject:self->_records forKey:@"UIRecords"];
}

- (void)applyRecordsMatchingTraitCollection:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UITraitStorage.m" lineNumber:287 description:@"Abstract"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_UITraitStorage *)self _propertyDescriptionString];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, v6];;

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