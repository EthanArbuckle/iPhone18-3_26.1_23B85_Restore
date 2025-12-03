@interface VUIFamilySharingMediaEntityIdentifier
- (BOOL)isEqual:(id)equal;
- (VUIFamilySharingMediaEntityIdentifier)init;
- (VUIFamilySharingMediaEntityIdentifier)initWithEntityIdentifier:(id)identifier mediaEntityType:(id)type;
- (unint64_t)hash;
@end

@implementation VUIFamilySharingMediaEntityIdentifier

- (VUIFamilySharingMediaEntityIdentifier)initWithEntityIdentifier:(id)identifier mediaEntityType:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  if (!identifierCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"objectIdentifier"}];
  }

  v14.receiver = self;
  v14.super_class = VUIFamilySharingMediaEntityIdentifier;
  v9 = [(VUIFamilySharingMediaEntityIdentifier *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_objectIdentifier, identifier);
    v11 = [typeCopy copy];
    mediaEntityType = v10->_mediaEntityType;
    v10->_mediaEntityType = v11;
  }

  return v10;
}

- (VUIFamilySharingMediaEntityIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (unint64_t)hash
{
  objectIdentifier = [(VUIFamilySharingMediaEntityIdentifier *)self objectIdentifier];
  v3 = [objectIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objectIdentifier = [(VUIFamilySharingMediaEntityIdentifier *)self objectIdentifier];
    objectIdentifier2 = [(VUIFamilySharingMediaEntityIdentifier *)v5 objectIdentifier];
    v8 = objectIdentifier;
    v9 = objectIdentifier2;
    v10 = v9;
    if (v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = 0;
      if (v8 && v9)
      {
        v11 = [v8 isEqual:v9];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end