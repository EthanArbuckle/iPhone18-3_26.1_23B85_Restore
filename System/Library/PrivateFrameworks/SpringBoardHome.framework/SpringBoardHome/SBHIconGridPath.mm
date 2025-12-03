@interface SBHIconGridPath
- (BOOL)isEqual:(id)equal;
- (SBHIconGridPath)iconGridPathWithGridCellIndex:(unint64_t)index;
- (SBHIconGridPath)iconGridPathWithListIdentifier:(id)identifier gridCellIndex:(unint64_t)index;
- (SBHIconGridPath)initWithCoder:(id)coder;
- (SBHIconGridPath)initWithFolderIdentifier:(id)identifier listIdentifier:(id)listIdentifier gridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBHIconGridPath

- (SBHIconGridPath)initWithFolderIdentifier:(id)identifier listIdentifier:(id)listIdentifier gridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options
{
  identifierCopy = identifier;
  listIdentifierCopy = listIdentifier;
  v18.receiver = self;
  v18.super_class = SBHIconGridPath;
  v12 = [(SBHIconGridPath *)&v18 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    folderIdentifier = v12->_folderIdentifier;
    v12->_folderIdentifier = v13;

    v15 = [listIdentifierCopy copy];
    listIdentifier = v12->_listIdentifier;
    v12->_listIdentifier = v15;

    v12->_gridCellIndex = index;
    v12->_gridCellInfoOptions = options;
  }

  return v12;
}

- (SBHIconGridPath)iconGridPathWithListIdentifier:(id)identifier gridCellIndex:(unint64_t)index
{
  identifierCopy = identifier;
  v7 = objc_alloc(objc_opt_class());
  folderIdentifier = [(SBHIconGridPath *)self folderIdentifier];
  v9 = [v7 initWithFolderIdentifier:folderIdentifier listIdentifier:identifierCopy gridCellIndex:index gridCellInfoOptions:{-[SBHIconGridPath gridCellInfoOptions](self, "gridCellInfoOptions")}];

  return v9;
}

- (SBHIconGridPath)iconGridPathWithGridCellIndex:(unint64_t)index
{
  v5 = objc_alloc(objc_opt_class());
  folderIdentifier = [(SBHIconGridPath *)self folderIdentifier];
  listIdentifier = [(SBHIconGridPath *)self listIdentifier];
  v8 = [v5 initWithFolderIdentifier:folderIdentifier listIdentifier:listIdentifier gridCellIndex:index gridCellInfoOptions:{-[SBHIconGridPath gridCellInfoOptions](self, "gridCellInfoOptions")}];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  folderIdentifier = self->_folderIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:folderIdentifier forKey:@"folderIdentifier"];
  [coderCopy encodeObject:self->_listIdentifier forKey:@"listIdentifier"];
  [coderCopy encodeInteger:self->_gridCellIndex forKey:@"gridCellIndex"];
  [coderCopy encodeInteger:self->_gridCellInfoOptions forKey:@"gridCellInfoOptions"];
}

- (SBHIconGridPath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"folderIdentifier"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"listIdentifier"];

  v9 = [coderCopy decodeIntegerForKey:@"gridCellIndex"];
  v10 = [coderCopy decodeIntegerForKey:@"gridCellInfoOptions"];

  v11 = [(SBHIconGridPath *)self initWithFolderIdentifier:v6 listIdentifier:v8 gridCellIndex:v9 gridCellInfoOptions:v10];
  return v11;
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
      v8 = BSEqualStrings() && BSEqualStrings() && self->_gridCellIndex == v7->_gridCellIndex && self->_gridCellInfoOptions == v7->_gridCellInfoOptions;
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
  succinctDescriptionBuilder = [(SBHIconGridPath *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHIconGridPath *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHIconGridPath *)self succinctDescriptionBuilder];
  folderIdentifier = [(SBHIconGridPath *)self folderIdentifier];
  [succinctDescriptionBuilder appendString:folderIdentifier withName:@"folderIdentifier"];

  listIdentifier = [(SBHIconGridPath *)self listIdentifier];
  [succinctDescriptionBuilder appendString:listIdentifier withName:@"listIdentifier"];

  v7 = [succinctDescriptionBuilder appendUnsignedInteger:-[SBHIconGridPath gridCellIndex](self withName:{"gridCellIndex"), @"gridCellIndex"}];
  v8 = SBHStringForGridCellInfoOptions([(SBHIconGridPath *)self gridCellInfoOptions]);
  [succinctDescriptionBuilder appendString:v8 withName:@"gridCellInfoOptions"];

  return succinctDescriptionBuilder;
}

@end