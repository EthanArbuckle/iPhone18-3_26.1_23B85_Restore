@interface PXFilterGroup
+ (id)groupWithName:(id)name filterIdentifiers:(id)identifiers;
- (BOOL)isEqual:(id)equal;
- (PXFilterGroup)init;
- (PXFilterGroup)initWithName:(id)name filterIdentifiers:(id)identifiers;
- (unint64_t)hash;
@end

@implementation PXFilterGroup

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy)
  {
    if (self == equalCopy)
    {
      v14 = 1;
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      name = [(PXFilterGroup *)self name];
      if (!name)
      {
        name2 = [(PXFilterGroup *)v7 name];
        if (!name2)
        {
          goto LABEL_8;
        }
      }

      name3 = [(PXFilterGroup *)self name];
      name4 = [(PXFilterGroup *)v7 name];
      v11 = [name3 isEqualToString:name4];

      if (name)
      {

        if (v11)
        {
LABEL_8:
          filterIdentifiers = [(PXFilterGroup *)self filterIdentifiers];
          filterIdentifiers2 = [(PXFilterGroup *)v7 filterIdentifiers];
          v14 = [filterIdentifiers isEqual:filterIdentifiers2];

LABEL_13:
          goto LABEL_14;
        }
      }

      else
      {

        if (v11)
        {
          goto LABEL_8;
        }
      }

      v14 = 0;
      goto LABEL_13;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (unint64_t)hash
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  filterIdentifiers = [(PXFilterGroup *)self filterIdentifiers];
  v4 = [filterIdentifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(filterIdentifiers);
        }

        v6 ^= [*(*(&v12 + 1) + 8 * i) hash];
      }

      v5 = [filterIdentifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  name = [(PXFilterGroup *)self name];
  v10 = [name hash];

  return v10 ^ v6;
}

- (PXFilterGroup)initWithName:(id)name filterIdentifiers:(id)identifiers
{
  nameCopy = name;
  identifiersCopy = identifiers;
  if (!identifiersCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFilterGroup.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"filterIdentifiers"}];
  }

  v16.receiver = self;
  v16.super_class = PXFilterGroup;
  v9 = [(PXFilterGroup *)&v16 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    name = v9->_name;
    v9->_name = v10;

    v12 = [identifiersCopy copy];
    filterIdentifiers = v9->_filterIdentifiers;
    v9->_filterIdentifiers = v12;
  }

  return v9;
}

- (PXFilterGroup)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFilterGroup.m" lineNumber:22 description:{@"%s is not available as initializer", "-[PXFilterGroup init]"}];

  abort();
}

+ (id)groupWithName:(id)name filterIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy filterIdentifiers:identifiersCopy];

  return v8;
}

@end