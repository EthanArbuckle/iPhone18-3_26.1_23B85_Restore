@interface _UIColorAttributeTraitStorage
- (_UIColorAttributeTraitStorage)initWithCoder:(id)coder;
- (_UIColorAttributeTraitStorage)initWithObject:(id)object keyPath:(id)path color:(id)color;
- (id)_propertyDescriptionString;
- (void)applyRecordsMatchingTraitCollection:(id)collection;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIColorAttributeTraitStorage

- (_UIColorAttributeTraitStorage)initWithObject:(id)object keyPath:(id)path color:(id)color
{
  colorCopy = color;
  v13.receiver = self;
  v13.super_class = _UIColorAttributeTraitStorage;
  v10 = [(_UITraitStorage *)&v13 initWithObject:object keyPath:path];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_namedColor, color);
  }

  return v11;
}

- (void)applyRecordsMatchingTraitCollection:(id)collection
{
  collectionCopy = collection;
  object = [(_UITraitStorage *)self object];
  v5 = [(_UICoreUICatalogColorWrapper *)self->_namedColor _uikit_valueForTraitCollection:collectionCopy];

  keyPath = [(_UITraitStorage *)self keyPath];
  [object _uikit_applyValueFromTraitStorage:v5 forKeyPath:keyPath];
}

- (_UIColorAttributeTraitStorage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _UIColorAttributeTraitStorage;
  v5 = [(_UITraitStorage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UINamedColor"];
    namedColor = v5->_namedColor;
    v5->_namedColor = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIColorAttributeTraitStorage;
  coderCopy = coder;
  [(_UITraitStorage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_namedColor forKey:{@"UINamedColor", v5.receiver, v5.super_class}];
}

- (id)_propertyDescriptionString
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = _UIColorAttributeTraitStorage;
  _propertyDescriptionString = [(_UITraitStorage *)&v7 _propertyDescriptionString];
  v5 = [v3 stringWithFormat:@"%@, namedColor=%@", _propertyDescriptionString, self->_namedColor];

  return v5;
}

@end