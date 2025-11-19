@interface STCoreDataChange
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCoreDataChange:(id)a3;
- (STCoreDataChange)initWithChangeIdentifier:(id)a3 primaryType:(int64_t)a4 secondaryType:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation STCoreDataChange

- (STCoreDataChange)initWithChangeIdentifier:(id)a3 primaryType:(int64_t)a4 secondaryType:(int64_t)a5
{
  v12.receiver = self;
  v12.super_class = STCoreDataChange;
  v7 = a3;
  v8 = [(STCoreDataChange *)&v12 init];
  v9 = [v7 copy];

  changeIdentifier = v8->_changeIdentifier;
  v8->_changeIdentifier = v9;

  v8->_primaryType = a4;
  v8->_secondaryType = a5;
  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STCoreDataChange *)self changeIdentifier];
  v5 = [(STCoreDataChange *)self primaryType];
  v6 = @"Unknown";
  if (v5 == 1)
  {
    v6 = @"Configuration";
  }

  if (v5 == 2)
  {
    v7 = @"Device State";
  }

  else
  {
    v7 = v6;
  }

  v8 = [NSString stringWithFormat:@"<%@ { Change Identifier: %@, PrimaryType: %@, SecondaryType: %ld }>", v3, v4, v7, [(STCoreDataChange *)self secondaryType]];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  changeIdentifier = self->_changeIdentifier;
  primaryType = self->_primaryType;
  secondaryType = self->_secondaryType;

  return [v4 initWithChangeIdentifier:changeIdentifier primaryType:primaryType secondaryType:secondaryType];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STCoreDataChange *)self isEqualToCoreDataChange:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToCoreDataChange:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v5 = [(STCoreDataChange *)self changeIdentifier];
    v6 = [(STCoreDataChange *)v4 changeIdentifier];
    if ([v5 isEqual:v6] && (v7 = -[STCoreDataChange primaryType](self, "primaryType"), v7 == -[STCoreDataChange primaryType](v4, "primaryType")))
    {
      v8 = [(STCoreDataChange *)self secondaryType];
      v9 = v8 == [(STCoreDataChange *)v4 secondaryType];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(STCoreDataChange *)self changeIdentifier];
  v4 = [v3 hash];
  v5 = [(STCoreDataChange *)self primaryType];
  v6 = [(STCoreDataChange *)self secondaryType]+ v5;

  return v4 + v6;
}

@end