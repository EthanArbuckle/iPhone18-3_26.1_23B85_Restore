@interface SBHIconRelativePath
- (BOOL)isEqual:(id)equal;
- (NSArray)priorIconIdentifiers;
- (NSArray)subsequentIconIdentifiers;
- (SBHIconRelativePath)iconRelativePathWithFolderIdentifier:(id)identifier listIdentifier:(id)listIdentifier;
- (SBHIconRelativePath)initWithCoder:(id)coder;
- (SBHIconRelativePath)initWithFolderIdentifier:(id)identifier listIdentifier:(id)listIdentifier priorIconIdentifiers:(id)identifiers subsequentIconIdentifiers:(id)iconIdentifiers gridCellIndex:(unint64_t)index gridSize:(SBHIconGridSize)size gridCellInfoOptions:(unint64_t)options;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBHIconRelativePath

- (SBHIconRelativePath)initWithFolderIdentifier:(id)identifier listIdentifier:(id)listIdentifier priorIconIdentifiers:(id)identifiers subsequentIconIdentifiers:(id)iconIdentifiers gridCellIndex:(unint64_t)index gridSize:(SBHIconGridSize)size gridCellInfoOptions:(unint64_t)options
{
  identifierCopy = identifier;
  listIdentifierCopy = listIdentifier;
  identifiersCopy = identifiers;
  iconIdentifiersCopy = iconIdentifiers;
  v29.receiver = self;
  v29.super_class = SBHIconRelativePath;
  v19 = [(SBHIconRelativePath *)&v29 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    folderIdentifier = v19->_folderIdentifier;
    v19->_folderIdentifier = v20;

    v22 = [listIdentifierCopy copy];
    listIdentifier = v19->_listIdentifier;
    v19->_listIdentifier = v22;

    v24 = [identifiersCopy copy];
    priorIconIdentifiers = v19->_priorIconIdentifiers;
    v19->_priorIconIdentifiers = v24;

    v26 = [iconIdentifiersCopy copy];
    subsequentIconIdentifiers = v19->_subsequentIconIdentifiers;
    v19->_subsequentIconIdentifiers = v26;

    v19->_gridSize = size;
    v19->_gridCellInfoOptions = options;
    v19->_gridCellIndex = index;
  }

  return v19;
}

- (SBHIconRelativePath)iconRelativePathWithFolderIdentifier:(id)identifier listIdentifier:(id)listIdentifier
{
  listIdentifierCopy = listIdentifier;
  identifierCopy = identifier;
  v8 = [objc_alloc(objc_opt_class()) initWithFolderIdentifier:identifierCopy listIdentifier:listIdentifierCopy priorIconIdentifiers:self->_priorIconIdentifiers subsequentIconIdentifiers:self->_subsequentIconIdentifiers gridCellIndex:self->_gridCellIndex gridSize:*&self->_gridSize gridCellInfoOptions:self->_gridCellInfoOptions];

  return v8;
}

- (NSArray)priorIconIdentifiers
{
  if (self->_priorIconIdentifiers)
  {
    return self->_priorIconIdentifiers;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (NSArray)subsequentIconIdentifiers
{
  if (self->_subsequentIconIdentifiers)
  {
    return self->_subsequentIconIdentifiers;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)encodeWithCoder:(id)coder
{
  folderIdentifier = self->_folderIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:folderIdentifier forKey:@"folderIdentifier"];
  [coderCopy encodeObject:self->_listIdentifier forKey:@"listIdentifier"];
  [coderCopy encodeObject:self->_priorIconIdentifiers forKey:@"priorIconIdentifiers"];
  [coderCopy encodeObject:self->_subsequentIconIdentifiers forKey:@"subsequentIconIdentifiers"];
  [coderCopy encodeInteger:self->_gridCellIndex forKey:@"gridCellIndex"];
  LOWORD(v5) = self->_gridSize.columns;
  [coderCopy encodeDouble:@"gridSizeColumns" forKey:v5];
  LOWORD(v6) = self->_gridSize.rows;
  [coderCopy encodeDouble:@"gridSizeRows" forKey:v6];
  [coderCopy encodeInteger:self->_gridCellInfoOptions forKey:@"gridCellInfoOptions"];
}

- (SBHIconRelativePath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"folderIdentifier"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"listIdentifier"];

  v9 = objc_opt_self();
  v10 = [coderCopy decodeArrayOfObjectsOfClass:v9 forKey:@"priorIconIdentifiers"];

  v11 = objc_opt_self();
  v12 = [coderCopy decodeArrayOfObjectsOfClass:v11 forKey:@"subsequentIconIdentifiers"];

  v13 = [coderCopy decodeIntegerForKey:@"gridCellIndex"];
  [coderCopy decodeDoubleForKey:@"gridSizeColumns"];
  v15 = v14;
  [coderCopy decodeDoubleForKey:@"gridSizeRows"];
  v17 = v16;
  v18 = [coderCopy decodeIntegerForKey:@"gridCellInfoOptions"];

  v19 = [(SBHIconRelativePath *)self initWithFolderIdentifier:v6 listIdentifier:v8 priorIconIdentifiers:v10 subsequentIconIdentifiers:v12 gridCellIndex:v13 gridSize:v15 | (v17 << 16) gridCellInfoOptions:v18];
  return v19;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_folderIdentifier hash];
  v4 = [(NSString *)self->_listIdentifier hash]+ v3;
  v5 = [(NSArray *)self->_priorIconIdentifiers hash];
  return v4 + v5 + [(NSArray *)self->_subsequentIconIdentifiers hash]+ self->_gridCellIndex + self->_gridSize.columns + self->_gridSize.rows + self->_gridCellInfoOptions;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      v8 = BSEqualStrings() && BSEqualStrings() && BSEqualArrays() && BSEqualArrays() && self->_gridCellIndex == v7->_gridCellIndex && SBHIconGridSizeEqualToIconGridSize(*&self->_gridSize, *&v7->_gridSize) && self->_gridCellInfoOptions == v7->_gridCellInfoOptions;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHIconRelativePath *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHIconRelativePath *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHIconRelativePath *)self succinctDescriptionBuilder];
  folderIdentifier = [(SBHIconRelativePath *)self folderIdentifier];
  [succinctDescriptionBuilder appendString:folderIdentifier withName:@"folderIdentifier"];

  listIdentifier = [(SBHIconRelativePath *)self listIdentifier];
  [succinctDescriptionBuilder appendString:listIdentifier withName:@"listIdentifier"];

  priorIconIdentifiers = [(SBHIconRelativePath *)self priorIconIdentifiers];
  v8 = [priorIconIdentifiers componentsJoinedByString:{@", "}];
  [succinctDescriptionBuilder appendString:v8 withName:@"priorIconIdentifiers"];

  subsequentIconIdentifiers = [(SBHIconRelativePath *)self subsequentIconIdentifiers];
  v10 = [subsequentIconIdentifiers componentsJoinedByString:{@", "}];
  [succinctDescriptionBuilder appendString:v10 withName:@"subsequentIconIdentifiers"];

  v11 = [succinctDescriptionBuilder appendUnsignedInteger:-[SBHIconRelativePath gridCellIndex](self withName:"gridCellIndex") format:{@"gridCellIndex", 0}];
  v12 = SBHStringForIconGridSize([(SBHIconRelativePath *)self gridSize]);
  [succinctDescriptionBuilder appendString:v12 withName:@"gridSize"];

  v13 = [succinctDescriptionBuilder appendUnsignedInteger:-[SBHIconRelativePath gridCellInfoOptions](self withName:"gridCellInfoOptions") format:{@"gridCellInfoOptions", 1}];

  return succinctDescriptionBuilder;
}

@end