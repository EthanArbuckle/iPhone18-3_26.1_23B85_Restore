@interface TPSSerializableObject
- (TPSSerializableObject)initWithCoder:(id)coder;
- (TPSSerializableObject)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
@end

@implementation TPSSerializableObject

- (TPSSerializableObject)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [dictionaryCopy count])
  {
    v7.receiver = self;
    v7.super_class = TPSSerializableObject;
    self = [(TPSSerializableObject *)&v7 init];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (TPSSerializableObject)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = TPSSerializableObject;
  return [(TPSSerializableObject *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [v4 allocWithZone:zone];
}

- (id)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@: ", self];

  return v2;
}

@end