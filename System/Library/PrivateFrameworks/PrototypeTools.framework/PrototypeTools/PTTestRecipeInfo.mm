@interface PTTestRecipeInfo
- (BOOL)isEqual:(id)equal;
- (NSString)uniqueIdentifier;
- (PTTestRecipeInfo)initWithCoder:(id)coder;
- (PTTestRecipeInfo)initWithTestRecipe:(id)recipe domainInfo:(id)info;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PTTestRecipeInfo

- (PTTestRecipeInfo)initWithTestRecipe:(id)recipe domainInfo:(id)info
{
  recipeCopy = recipe;
  infoCopy = info;
  v26.receiver = self;
  v26.super_class = PTTestRecipeInfo;
  v8 = [(PTTestRecipeInfo *)&v26 init];
  if (v8)
  {
    uniqueIdentifier = [infoCopy uniqueIdentifier];
    domainIdentifier = v8->_domainIdentifier;
    v8->_domainIdentifier = uniqueIdentifier;

    title = [recipeCopy title];
    title = v8->_title;
    v8->_title = title;

    v13 = MEMORY[0x277CCACA8];
    domainGroupName = [infoCopy domainGroupName];
    domainName = [infoCopy domainName];
    v16 = [v13 stringWithFormat:@"%@ – %@: %@", domainGroupName, domainName, v8->_title];
    recipeDescription = v8->_recipeDescription;
    v8->_recipeDescription = v16;

    indexSet = [MEMORY[0x277CCAB58] indexSet];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__PTTestRecipeInfo_initWithTestRecipe_domainInfo___block_invoke;
    v23[3] = &unk_27835EEC8;
    v24 = recipeCopy;
    v25 = indexSet;
    v19 = indexSet;
    PTPrototypingEnumerateHardwareEventsWithBlock(v23);
    v20 = [v19 copy];
    events = v8->_events;
    v8->_events = v20;
  }

  return v8;
}

uint64_t __50__PTTestRecipeInfo_initWithTestRecipe_domainInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _wantsEvent:a2];
  if (result)
  {
    v5 = *(a1 + 40);

    return [v5 addIndex:a2];
  }

  return result;
}

- (NSString)uniqueIdentifier
{
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [(NSString *)self->_title componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
    v6 = [v5 componentsJoinedByString:&stru_282FA6D50];

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", self->_domainIdentifier, v6];
    v8 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v7;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  return uniqueIdentifier;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && BSEqualStrings() && BSEqualStrings() && BSEqualObjects())
  {
    v4 = BSEqualStrings();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendString:self->_title];
  v5 = [builder appendString:self->_domainIdentifier];
  v6 = [builder appendObject:self->_events];
  v7 = [builder appendString:self->_recipeDescription];
  v8 = [builder hash];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  domainIdentifier = self->_domainIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:domainIdentifier forKey:@"domainIdentifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_events forKey:@"events"];
  [coderCopy encodeObject:self->_recipeDescription forKey:@"description"];
}

- (PTTestRecipeInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PTTestRecipeInfo;
  v5 = [(PTTestRecipeInfo *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domainIdentifier"];
    domainIdentifier = v5->_domainIdentifier;
    v5->_domainIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"events"];
    events = v5->_events;
    v5->_events = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    recipeDescription = v5->_recipeDescription;
    v5->_recipeDescription = v12;
  }

  return v5;
}

@end