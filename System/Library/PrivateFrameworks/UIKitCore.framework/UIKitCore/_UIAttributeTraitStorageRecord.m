@interface _UIAttributeTraitStorageRecord
- (_UIAttributeTraitStorageRecord)initWithCoder:(id)a3;
- (_UIAttributeTraitStorageRecord)initWithTraitCollection:(id)a3 value:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIAttributeTraitStorageRecord

- (_UIAttributeTraitStorageRecord)initWithTraitCollection:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _UIAttributeTraitStorageRecord;
  v9 = [(_UIAttributeTraitStorageRecord *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_traitCollection, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

- (_UIAttributeTraitStorageRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UIAttributeTraitStorageRecord;
  v5 = [(_UIAttributeTraitStorageRecord *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UITraitCollection"];
    traitCollection = v5->_traitCollection;
    v5->_traitCollection = v6;

    v8 = [v4 decodeObjectForKey:@"UIValue"];
    value = v5->_value;
    v5->_value = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  traitCollection = self->_traitCollection;
  v5 = a3;
  [v5 encodeObject:traitCollection forKey:@"UITraitCollection"];
  [v5 encodeObject:self->_value forKey:@"UIValue"];
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