@interface TPSSerializableObject
- (TPSSerializableObject)initWithCoder:(id)a3;
- (TPSSerializableObject)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
@end

@implementation TPSSerializableObject

- (TPSSerializableObject)initWithDictionary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
  {
    v7.receiver = self;
    v7.super_class = TPSSerializableObject;
    self = [(TPSSerializableObject *)&v7 init];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TPSSerializableObject)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = TPSSerializableObject;
  return [(TPSSerializableObject *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [v4 allocWithZone:a3];
}

- (id)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@: ", self];

  return v2;
}

@end