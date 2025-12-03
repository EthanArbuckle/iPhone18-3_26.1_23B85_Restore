@interface STCoreDataChange
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCoreDataChange:(id)change;
- (STCoreDataChange)initWithChangeIdentifier:(id)identifier primaryType:(int64_t)type secondaryType:(int64_t)secondaryType;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation STCoreDataChange

- (STCoreDataChange)initWithChangeIdentifier:(id)identifier primaryType:(int64_t)type secondaryType:(int64_t)secondaryType
{
  v12.receiver = self;
  v12.super_class = STCoreDataChange;
  identifierCopy = identifier;
  v8 = [(STCoreDataChange *)&v12 init];
  v9 = [identifierCopy copy];

  changeIdentifier = v8->_changeIdentifier;
  v8->_changeIdentifier = v9;

  v8->_primaryType = type;
  v8->_secondaryType = secondaryType;
  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  changeIdentifier = [(STCoreDataChange *)self changeIdentifier];
  primaryType = [(STCoreDataChange *)self primaryType];
  v6 = @"Unknown";
  if (primaryType == 1)
  {
    v6 = @"Configuration";
  }

  if (primaryType == 2)
  {
    v7 = @"Device State";
  }

  else
  {
    v7 = v6;
  }

  v8 = [NSString stringWithFormat:@"<%@ { Change Identifier: %@, PrimaryType: %@, SecondaryType: %ld }>", v3, changeIdentifier, v7, [(STCoreDataChange *)self secondaryType]];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  changeIdentifier = self->_changeIdentifier;
  primaryType = self->_primaryType;
  secondaryType = self->_secondaryType;

  return [v4 initWithChangeIdentifier:changeIdentifier primaryType:primaryType secondaryType:secondaryType];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STCoreDataChange *)self isEqualToCoreDataChange:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToCoreDataChange:(id)change
{
  changeCopy = change;
  if (self == changeCopy)
  {
    v9 = 1;
  }

  else
  {
    changeIdentifier = [(STCoreDataChange *)self changeIdentifier];
    changeIdentifier2 = [(STCoreDataChange *)changeCopy changeIdentifier];
    if ([changeIdentifier isEqual:changeIdentifier2] && (v7 = -[STCoreDataChange primaryType](self, "primaryType"), v7 == -[STCoreDataChange primaryType](changeCopy, "primaryType")))
    {
      secondaryType = [(STCoreDataChange *)self secondaryType];
      v9 = secondaryType == [(STCoreDataChange *)changeCopy secondaryType];
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
  changeIdentifier = [(STCoreDataChange *)self changeIdentifier];
  v4 = [changeIdentifier hash];
  primaryType = [(STCoreDataChange *)self primaryType];
  v6 = [(STCoreDataChange *)self secondaryType]+ primaryType;

  return v4 + v6;
}

@end