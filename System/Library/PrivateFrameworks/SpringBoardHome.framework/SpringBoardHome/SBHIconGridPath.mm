@interface SBHIconGridPath
- (BOOL)isEqual:(id)a3;
- (SBHIconGridPath)iconGridPathWithGridCellIndex:(unint64_t)a3;
- (SBHIconGridPath)iconGridPathWithListIdentifier:(id)a3 gridCellIndex:(unint64_t)a4;
- (SBHIconGridPath)initWithCoder:(id)a3;
- (SBHIconGridPath)initWithFolderIdentifier:(id)a3 listIdentifier:(id)a4 gridCellIndex:(unint64_t)a5 gridCellInfoOptions:(unint64_t)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBHIconGridPath

- (SBHIconGridPath)initWithFolderIdentifier:(id)a3 listIdentifier:(id)a4 gridCellIndex:(unint64_t)a5 gridCellInfoOptions:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = SBHIconGridPath;
  v12 = [(SBHIconGridPath *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    folderIdentifier = v12->_folderIdentifier;
    v12->_folderIdentifier = v13;

    v15 = [v11 copy];
    listIdentifier = v12->_listIdentifier;
    v12->_listIdentifier = v15;

    v12->_gridCellIndex = a5;
    v12->_gridCellInfoOptions = a6;
  }

  return v12;
}

- (SBHIconGridPath)iconGridPathWithListIdentifier:(id)a3 gridCellIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc(objc_opt_class());
  v8 = [(SBHIconGridPath *)self folderIdentifier];
  v9 = [v7 initWithFolderIdentifier:v8 listIdentifier:v6 gridCellIndex:a4 gridCellInfoOptions:{-[SBHIconGridPath gridCellInfoOptions](self, "gridCellInfoOptions")}];

  return v9;
}

- (SBHIconGridPath)iconGridPathWithGridCellIndex:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(SBHIconGridPath *)self folderIdentifier];
  v7 = [(SBHIconGridPath *)self listIdentifier];
  v8 = [v5 initWithFolderIdentifier:v6 listIdentifier:v7 gridCellIndex:a3 gridCellInfoOptions:{-[SBHIconGridPath gridCellInfoOptions](self, "gridCellInfoOptions")}];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  folderIdentifier = self->_folderIdentifier;
  v5 = a3;
  [v5 encodeObject:folderIdentifier forKey:@"folderIdentifier"];
  [v5 encodeObject:self->_listIdentifier forKey:@"listIdentifier"];
  [v5 encodeInteger:self->_gridCellIndex forKey:@"gridCellIndex"];
  [v5 encodeInteger:self->_gridCellInfoOptions forKey:@"gridCellInfoOptions"];
}

- (SBHIconGridPath)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"folderIdentifier"];

  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"listIdentifier"];

  v9 = [v4 decodeIntegerForKey:@"gridCellIndex"];
  v10 = [v4 decodeIntegerForKey:@"gridCellInfoOptions"];

  v11 = [(SBHIconGridPath *)self initWithFolderIdentifier:v6 listIdentifier:v8 gridCellIndex:v9 gridCellInfoOptions:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
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
  v2 = [(SBHIconGridPath *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHIconGridPath *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHIconGridPath *)self succinctDescriptionBuilder];
  v5 = [(SBHIconGridPath *)self folderIdentifier];
  [v4 appendString:v5 withName:@"folderIdentifier"];

  v6 = [(SBHIconGridPath *)self listIdentifier];
  [v4 appendString:v6 withName:@"listIdentifier"];

  v7 = [v4 appendUnsignedInteger:-[SBHIconGridPath gridCellIndex](self withName:{"gridCellIndex"), @"gridCellIndex"}];
  v8 = SBHStringForGridCellInfoOptions([(SBHIconGridPath *)self gridCellInfoOptions]);
  [v4 appendString:v8 withName:@"gridCellInfoOptions"];

  return v4;
}

@end