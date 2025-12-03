@interface PVObject
- (PVObject)initWithLocalIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PVObject

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"\n%@ <%p>:\n", objc_opt_class(), self];
  [v3 appendFormat:@"  localIdentifier        : %@\n", self->_localIdentifier];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  localIdentifier = self->_localIdentifier;

  return [v4 initWithLocalIdentifier:localIdentifier];
}

- (PVObject)initWithLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = PVObject;
  v5 = [(PVObject *)&v10 init];
  if (v5)
  {
    if ([(PVObject *)v5 isMemberOfClass:objc_opt_class()])
    {

      v9 = [MEMORY[0x277CBEAD8] exceptionWithName:@"AbstractClass" reason:@"'PVObject' cannot be directly instantiated. Use a subclass." userInfo:0];
      objc_exception_throw(v9);
    }

    v6 = [identifierCopy copy];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v6;
  }

  return v5;
}

@end