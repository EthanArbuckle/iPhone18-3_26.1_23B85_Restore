@interface SRAsset
+ (id)assetWithLocaleIdentifier:(id)identifier contentType:(id)type deliveryType:(int64_t)deliveryType path:(id)path;
+ (id)assetWithLocaleIdentifier:(id)identifier contentType:(id)type deliveryType:(int64_t)deliveryType resourceRoot:(id)root pathNames:(id)names;
- (SRAsset)initWithLocaleIdentifier:(id)identifier contentType:(id)type deliveryType:(int64_t)deliveryType paths:(id)paths;
- (id)description;
@end

@implementation SRAsset

+ (id)assetWithLocaleIdentifier:(id)identifier contentType:(id)type deliveryType:(int64_t)deliveryType resourceRoot:(id)root pathNames:(id)names
{
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  typeCopy = type;
  rootCopy = root;
  namesCopy = names;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = namesCopy;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", rootCopy, v18];
        [v12 setObject:v19 forKeyedSubscript:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  if ([v12 count])
  {
    v21 = typeCopy;
    v20 = identifierCopy;
    v22 = [[SRAsset alloc] initWithLocaleIdentifier:identifierCopy contentType:typeCopy deliveryType:deliveryType paths:v12];
  }

  else
  {
    v22 = 0;
    v21 = typeCopy;
    v20 = identifierCopy;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)assetWithLocaleIdentifier:(id)identifier contentType:(id)type deliveryType:(int64_t)deliveryType path:(id)path
{
  identifierCopy = identifier;
  typeCopy = type;
  v11 = MEMORY[0x1E695DF90];
  pathCopy = path;
  v13 = objc_alloc_init(v11);
  v14 = [MEMORY[0x1E695DFF8] URLWithString:pathCopy];

  lastPathComponent = [v14 lastPathComponent];
  if (lastPathComponent)
  {
    path = [v14 path];
    [v13 setObject:path forKeyedSubscript:lastPathComponent];
  }

  if ([v13 count])
  {
    v17 = [[SRAsset alloc] initWithLocaleIdentifier:identifierCopy contentType:typeCopy deliveryType:deliveryType paths:v13];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (SRAsset)initWithLocaleIdentifier:(id)identifier contentType:(id)type deliveryType:(int64_t)deliveryType paths:(id)paths
{
  identifierCopy = identifier;
  typeCopy = type;
  pathsCopy = paths;
  v21.receiver = self;
  v21.super_class = SRAsset;
  v13 = [(SRAsset *)&v21 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    localeIdentifier = v13->_localeIdentifier;
    v13->_localeIdentifier = v14;

    v16 = [typeCopy copy];
    contentType = v13->_contentType;
    v13->_contentType = v16;

    v13->_deliveryType = deliveryType;
    v18 = [pathsCopy copy];
    paths = v13->_paths;
    v13->_paths = v18;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  deliveryTypeString = [(SRAsset *)self deliveryTypeString];
  localeIdentifier = self->_localeIdentifier;
  contentType = self->_contentType;
  allKeys = [(NSDictionary *)self->_paths allKeys];
  v8 = [allKeys componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"%@:%@:%@\n\t <%@>", deliveryTypeString, localeIdentifier, contentType, v8];

  return v9;
}

@end