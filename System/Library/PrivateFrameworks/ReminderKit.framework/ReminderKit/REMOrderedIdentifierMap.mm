@interface REMOrderedIdentifierMap
- (BOOL)isEqual:(id)equal;
- (REMOrderedIdentifierMap)init;
- (REMOrderedIdentifierMap)initWithCoder:(id)coder;
- (REMOrderedIdentifierMap)initWithOrderedIdentifiers:(id)identifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMOrderedIdentifierMap

- (REMOrderedIdentifierMap)init
{
  array = [MEMORY[0x1E695DEC8] array];
  v4 = [(REMOrderedIdentifierMap *)self initWithOrderedIdentifiers:array];

  return v4;
}

- (REMOrderedIdentifierMap)initWithOrderedIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v8.receiver = self;
  v8.super_class = REMOrderedIdentifierMap;
  v5 = [(REMOrderedIdentifierMap *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(REMOrderedIdentifierMap *)v5 setOrderedIdentifiers:identifiersCopy];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  orderedIdentifiers = [(REMOrderedIdentifierMap *)self orderedIdentifiers];
  [coderCopy encodeObject:orderedIdentifiers forKey:@"orderedIdentifiers"];
}

- (REMOrderedIdentifierMap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"orderedIdentifiers"];

  v6 = [(REMOrderedIdentifierMap *)self initWithOrderedIdentifiers:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [REMOrderedIdentifierMap alloc];
  orderedIdentifiers = [(REMOrderedIdentifierMap *)self orderedIdentifiers];
  v7 = [orderedIdentifiers copyWithZone:zone];
  v8 = [(REMOrderedIdentifierMap *)v5 initWithOrderedIdentifiers:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      orderedIdentifiers = [(REMOrderedIdentifierMap *)self orderedIdentifiers];
      orderedIdentifiers2 = [(REMOrderedIdentifierMap *)equalCopy orderedIdentifiers];
      v7 = [orderedIdentifiers isEqual:orderedIdentifiers2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end