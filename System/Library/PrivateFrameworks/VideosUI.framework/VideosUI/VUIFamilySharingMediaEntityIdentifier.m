@interface VUIFamilySharingMediaEntityIdentifier
- (BOOL)isEqual:(id)a3;
- (VUIFamilySharingMediaEntityIdentifier)init;
- (VUIFamilySharingMediaEntityIdentifier)initWithEntityIdentifier:(id)a3 mediaEntityType:(id)a4;
- (unint64_t)hash;
@end

@implementation VUIFamilySharingMediaEntityIdentifier

- (VUIFamilySharingMediaEntityIdentifier)initWithEntityIdentifier:(id)a3 mediaEntityType:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"objectIdentifier"}];
  }

  v14.receiver = self;
  v14.super_class = VUIFamilySharingMediaEntityIdentifier;
  v9 = [(VUIFamilySharingMediaEntityIdentifier *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_objectIdentifier, a3);
    v11 = [v8 copy];
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
  v2 = [(VUIFamilySharingMediaEntityIdentifier *)self objectIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(VUIFamilySharingMediaEntityIdentifier *)self objectIdentifier];
    v7 = [(VUIFamilySharingMediaEntityIdentifier *)v5 objectIdentifier];
    v8 = v6;
    v9 = v7;
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