@interface REMOrderedIdentifierMap
- (BOOL)isEqual:(id)a3;
- (REMOrderedIdentifierMap)init;
- (REMOrderedIdentifierMap)initWithCoder:(id)a3;
- (REMOrderedIdentifierMap)initWithOrderedIdentifiers:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMOrderedIdentifierMap

- (REMOrderedIdentifierMap)init
{
  v3 = [MEMORY[0x1E695DEC8] array];
  v4 = [(REMOrderedIdentifierMap *)self initWithOrderedIdentifiers:v3];

  return v4;
}

- (REMOrderedIdentifierMap)initWithOrderedIdentifiers:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = REMOrderedIdentifierMap;
  v5 = [(REMOrderedIdentifierMap *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(REMOrderedIdentifierMap *)v5 setOrderedIdentifiers:v4];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMOrderedIdentifierMap *)self orderedIdentifiers];
  [v4 encodeObject:v5 forKey:@"orderedIdentifiers"];
}

- (REMOrderedIdentifierMap)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"orderedIdentifiers"];

  v6 = [(REMOrderedIdentifierMap *)self initWithOrderedIdentifiers:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [REMOrderedIdentifierMap alloc];
  v6 = [(REMOrderedIdentifierMap *)self orderedIdentifiers];
  v7 = [v6 copyWithZone:a3];
  v8 = [(REMOrderedIdentifierMap *)v5 initWithOrderedIdentifiers:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(REMOrderedIdentifierMap *)self orderedIdentifiers];
      v6 = [(REMOrderedIdentifierMap *)v4 orderedIdentifiers];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end