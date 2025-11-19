@interface SBHIconRelativePath
- (BOOL)isEqual:(id)a3;
- (NSArray)priorIconIdentifiers;
- (NSArray)subsequentIconIdentifiers;
- (SBHIconRelativePath)iconRelativePathWithFolderIdentifier:(id)a3 listIdentifier:(id)a4;
- (SBHIconRelativePath)initWithCoder:(id)a3;
- (SBHIconRelativePath)initWithFolderIdentifier:(id)a3 listIdentifier:(id)a4 priorIconIdentifiers:(id)a5 subsequentIconIdentifiers:(id)a6 gridCellIndex:(unint64_t)a7 gridSize:(SBHIconGridSize)a8 gridCellInfoOptions:(unint64_t)a9;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBHIconRelativePath

- (SBHIconRelativePath)initWithFolderIdentifier:(id)a3 listIdentifier:(id)a4 priorIconIdentifiers:(id)a5 subsequentIconIdentifiers:(id)a6 gridCellIndex:(unint64_t)a7 gridSize:(SBHIconGridSize)a8 gridCellInfoOptions:(unint64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v29.receiver = self;
  v29.super_class = SBHIconRelativePath;
  v19 = [(SBHIconRelativePath *)&v29 init];
  if (v19)
  {
    v20 = [v15 copy];
    folderIdentifier = v19->_folderIdentifier;
    v19->_folderIdentifier = v20;

    v22 = [v16 copy];
    listIdentifier = v19->_listIdentifier;
    v19->_listIdentifier = v22;

    v24 = [v17 copy];
    priorIconIdentifiers = v19->_priorIconIdentifiers;
    v19->_priorIconIdentifiers = v24;

    v26 = [v18 copy];
    subsequentIconIdentifiers = v19->_subsequentIconIdentifiers;
    v19->_subsequentIconIdentifiers = v26;

    v19->_gridSize = a8;
    v19->_gridCellInfoOptions = a9;
    v19->_gridCellIndex = a7;
  }

  return v19;
}

- (SBHIconRelativePath)iconRelativePathWithFolderIdentifier:(id)a3 listIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_alloc(objc_opt_class()) initWithFolderIdentifier:v7 listIdentifier:v6 priorIconIdentifiers:self->_priorIconIdentifiers subsequentIconIdentifiers:self->_subsequentIconIdentifiers gridCellIndex:self->_gridCellIndex gridSize:*&self->_gridSize gridCellInfoOptions:self->_gridCellInfoOptions];

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

- (void)encodeWithCoder:(id)a3
{
  folderIdentifier = self->_folderIdentifier;
  v7 = a3;
  [v7 encodeObject:folderIdentifier forKey:@"folderIdentifier"];
  [v7 encodeObject:self->_listIdentifier forKey:@"listIdentifier"];
  [v7 encodeObject:self->_priorIconIdentifiers forKey:@"priorIconIdentifiers"];
  [v7 encodeObject:self->_subsequentIconIdentifiers forKey:@"subsequentIconIdentifiers"];
  [v7 encodeInteger:self->_gridCellIndex forKey:@"gridCellIndex"];
  LOWORD(v5) = self->_gridSize.columns;
  [v7 encodeDouble:@"gridSizeColumns" forKey:v5];
  LOWORD(v6) = self->_gridSize.rows;
  [v7 encodeDouble:@"gridSizeRows" forKey:v6];
  [v7 encodeInteger:self->_gridCellInfoOptions forKey:@"gridCellInfoOptions"];
}

- (SBHIconRelativePath)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"folderIdentifier"];

  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"listIdentifier"];

  v9 = objc_opt_self();
  v10 = [v4 decodeArrayOfObjectsOfClass:v9 forKey:@"priorIconIdentifiers"];

  v11 = objc_opt_self();
  v12 = [v4 decodeArrayOfObjectsOfClass:v11 forKey:@"subsequentIconIdentifiers"];

  v13 = [v4 decodeIntegerForKey:@"gridCellIndex"];
  [v4 decodeDoubleForKey:@"gridSizeColumns"];
  v15 = v14;
  [v4 decodeDoubleForKey:@"gridSizeRows"];
  v17 = v16;
  v18 = [v4 decodeIntegerForKey:@"gridCellInfoOptions"];

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
  v2 = [(SBHIconRelativePath *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHIconRelativePath *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHIconRelativePath *)self succinctDescriptionBuilder];
  v5 = [(SBHIconRelativePath *)self folderIdentifier];
  [v4 appendString:v5 withName:@"folderIdentifier"];

  v6 = [(SBHIconRelativePath *)self listIdentifier];
  [v4 appendString:v6 withName:@"listIdentifier"];

  v7 = [(SBHIconRelativePath *)self priorIconIdentifiers];
  v8 = [v7 componentsJoinedByString:{@", "}];
  [v4 appendString:v8 withName:@"priorIconIdentifiers"];

  v9 = [(SBHIconRelativePath *)self subsequentIconIdentifiers];
  v10 = [v9 componentsJoinedByString:{@", "}];
  [v4 appendString:v10 withName:@"subsequentIconIdentifiers"];

  v11 = [v4 appendUnsignedInteger:-[SBHIconRelativePath gridCellIndex](self withName:"gridCellIndex") format:{@"gridCellIndex", 0}];
  v12 = SBHStringForIconGridSize([(SBHIconRelativePath *)self gridSize]);
  [v4 appendString:v12 withName:@"gridSize"];

  v13 = [v4 appendUnsignedInteger:-[SBHIconRelativePath gridCellInfoOptions](self withName:"gridCellInfoOptions") format:{@"gridCellInfoOptions", 1}];

  return v4;
}

@end