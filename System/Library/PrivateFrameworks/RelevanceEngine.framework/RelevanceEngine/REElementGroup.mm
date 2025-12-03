@interface REElementGroup
+ (id)adjoiningElementGroupWithIdentifier:(id)identifier;
+ (id)topElementGroupWithIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (REElementGroup)initWithGroupIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation REElementGroup

- (REElementGroup)initWithGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = REElementGroup;
  v5 = [(REElementGroup *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v6;
  }

  return v5;
}

+ (id)topElementGroupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [objc_alloc(objc_opt_class()) initWithGroupIdentifier:identifierCopy];

  [v4 setBehavior:1];
  [v4 setMaxElementCount:1];

  return v4;
}

+ (id)adjoiningElementGroupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [objc_alloc(objc_opt_class()) initWithGroupIdentifier:identifierCopy];

  [v4 setBehavior:1];
  [v4 setMaxElementCount:-1];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (self->_behavior == v5->_behavior && self->_maxElementCount == v5->_maxElementCount)
      {
        groupIdentifier = self->_groupIdentifier;
        v8 = v5->_groupIdentifier;
        v9 = groupIdentifier;
        v10 = v9;
        if (v9 == v8)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSString *)v9 isEqual:v8];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithGroupIdentifier:self->_groupIdentifier];
  [v4 setBehavior:self->_behavior];
  [v4 setMaxElementCount:self->_maxElementCount];
  return v4;
}

@end