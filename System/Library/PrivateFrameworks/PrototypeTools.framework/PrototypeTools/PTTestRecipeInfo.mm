@interface PTTestRecipeInfo
- (BOOL)isEqual:(id)a3;
- (NSString)uniqueIdentifier;
- (PTTestRecipeInfo)initWithCoder:(id)a3;
- (PTTestRecipeInfo)initWithTestRecipe:(id)a3 domainInfo:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PTTestRecipeInfo

- (PTTestRecipeInfo)initWithTestRecipe:(id)a3 domainInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = PTTestRecipeInfo;
  v8 = [(PTTestRecipeInfo *)&v26 init];
  if (v8)
  {
    v9 = [v7 uniqueIdentifier];
    domainIdentifier = v8->_domainIdentifier;
    v8->_domainIdentifier = v9;

    v11 = [v6 title];
    title = v8->_title;
    v8->_title = v11;

    v13 = MEMORY[0x277CCACA8];
    v14 = [v7 domainGroupName];
    v15 = [v7 domainName];
    v16 = [v13 stringWithFormat:@"%@ – %@: %@", v14, v15, v8->_title];
    recipeDescription = v8->_recipeDescription;
    v8->_recipeDescription = v16;

    v18 = [MEMORY[0x277CCAB58] indexSet];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__PTTestRecipeInfo_initWithTestRecipe_domainInfo___block_invoke;
    v23[3] = &unk_27835EEC8;
    v24 = v6;
    v25 = v18;
    v19 = v18;
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
    v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [(NSString *)self->_title componentsSeparatedByCharactersInSet:v4];
    v6 = [v5 componentsJoinedByString:&stru_282FA6D50];

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", self->_domainIdentifier, v6];
    v8 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v7;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  return uniqueIdentifier;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
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
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendString:self->_title];
  v5 = [v3 appendString:self->_domainIdentifier];
  v6 = [v3 appendObject:self->_events];
  v7 = [v3 appendString:self->_recipeDescription];
  v8 = [v3 hash];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  domainIdentifier = self->_domainIdentifier;
  v5 = a3;
  [v5 encodeObject:domainIdentifier forKey:@"domainIdentifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_events forKey:@"events"];
  [v5 encodeObject:self->_recipeDescription forKey:@"description"];
}

- (PTTestRecipeInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PTTestRecipeInfo;
  v5 = [(PTTestRecipeInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domainIdentifier"];
    domainIdentifier = v5->_domainIdentifier;
    v5->_domainIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"events"];
    events = v5->_events;
    v5->_events = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    recipeDescription = v5->_recipeDescription;
    v5->_recipeDescription = v12;
  }

  return v5;
}

@end