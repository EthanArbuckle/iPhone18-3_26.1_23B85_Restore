@interface VUISidebandMediaEntityIdentifier
- (BOOL)isEqual:(id)equal;
- (VUISidebandMediaEntityIdentifier)init;
- (VUISidebandMediaEntityIdentifier)initWithManagedObjectID:(id)d mediaEntityType:(id)type;
- (unint64_t)hash;
@end

@implementation VUISidebandMediaEntityIdentifier

- (VUISidebandMediaEntityIdentifier)initWithManagedObjectID:(id)d mediaEntityType:(id)type
{
  dCopy = d;
  typeCopy = type;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"managedObjectID"}];
  }

  v14.receiver = self;
  v14.super_class = VUISidebandMediaEntityIdentifier;
  v9 = [(VUISidebandMediaEntityIdentifier *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_managedObjectID, d);
    v11 = [typeCopy copy];
    mediaEntityType = v10->_mediaEntityType;
    v10->_mediaEntityType = v11;
  }

  return v10;
}

- (VUISidebandMediaEntityIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (unint64_t)hash
{
  managedObjectID = [(VUISidebandMediaEntityIdentifier *)self managedObjectID];
  v3 = [managedObjectID hash];

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
    managedObjectID = [(VUISidebandMediaEntityIdentifier *)self managedObjectID];
    managedObjectID2 = [(VUISidebandMediaEntityIdentifier *)v5 managedObjectID];
    v8 = managedObjectID;
    v9 = managedObjectID2;
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