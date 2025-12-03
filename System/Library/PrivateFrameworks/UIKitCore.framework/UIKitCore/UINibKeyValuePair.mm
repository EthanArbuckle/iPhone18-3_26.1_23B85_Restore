@interface UINibKeyValuePair
- (UINibKeyValuePair)initWithCoder:(id)coder;
- (UINibKeyValuePair)initWithObject:(id)object keyPath:(id)path value:(id)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UINibKeyValuePair

- (UINibKeyValuePair)initWithObject:(id)object keyPath:(id)path value:(id)value
{
  objectCopy = object;
  pathCopy = path;
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = UINibKeyValuePair;
  v12 = [(UINibKeyValuePair *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->object, object);
    v14 = [pathCopy copy];
    keyPath = v13->keyPath;
    v13->keyPath = v14;

    objc_storeStrong(&v13->value, value);
  }

  return v13;
}

- (UINibKeyValuePair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = UINibKeyValuePair;
  v5 = [(UINibKeyValuePair *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIObject"];
    object = v5->object;
    v5->object = v6;

    v8 = [coderCopy decodeObjectForKey:@"UIValue"];
    value = v5->value;
    v5->value = v8;

    v10 = [coderCopy decodeObjectForKey:@"UIKeyPath"];
    v11 = [v10 copy];
    keyPath = v5->keyPath;
    v5->keyPath = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  object = self->object;
  coderCopy = coder;
  [coderCopy encodeObject:object forKey:@"UIObject"];
  [coderCopy encodeObject:self->value forKey:@"UIValue"];
  [coderCopy encodeObject:self->keyPath forKey:@"UIKeyPath"];
}

@end