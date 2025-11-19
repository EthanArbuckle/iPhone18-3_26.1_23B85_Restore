@interface UINibKeyValuePair
- (UINibKeyValuePair)initWithCoder:(id)a3;
- (UINibKeyValuePair)initWithObject:(id)a3 keyPath:(id)a4 value:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UINibKeyValuePair

- (UINibKeyValuePair)initWithObject:(id)a3 keyPath:(id)a4 value:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = UINibKeyValuePair;
  v12 = [(UINibKeyValuePair *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->object, a3);
    v14 = [v10 copy];
    keyPath = v13->keyPath;
    v13->keyPath = v14;

    objc_storeStrong(&v13->value, a5);
  }

  return v13;
}

- (UINibKeyValuePair)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UINibKeyValuePair;
  v5 = [(UINibKeyValuePair *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UIObject"];
    object = v5->object;
    v5->object = v6;

    v8 = [v4 decodeObjectForKey:@"UIValue"];
    value = v5->value;
    v5->value = v8;

    v10 = [v4 decodeObjectForKey:@"UIKeyPath"];
    v11 = [v10 copy];
    keyPath = v5->keyPath;
    v5->keyPath = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  object = self->object;
  v5 = a3;
  [v5 encodeObject:object forKey:@"UIObject"];
  [v5 encodeObject:self->value forKey:@"UIValue"];
  [v5 encodeObject:self->keyPath forKey:@"UIKeyPath"];
}

@end