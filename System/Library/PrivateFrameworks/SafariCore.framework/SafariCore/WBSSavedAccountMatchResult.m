@interface WBSSavedAccountMatchResult
+ (BOOL)shouldEvaluateAccountsToConsiderEquivalentForUserName:(id)a3 atURL:(id)a4;
- (NSArray)matchesForPasswordAutoFill;
- (NSArray)orderedMatches;
- (WBSSavedAccountMatchResult)initWithExactMatches:(id)a3 potentialMatches:(id)a4 associatedDomainMatches:(id)a5 nearbyDeviceOptions:(id)a6;
- (id)accountsToConsiderEquivalentForUserName:(id)a3 atURL:(id)a4;
- (id)debugDescription;
- (unint64_t)count;
- (void)addUniqueHostUserToMatches;
@end

@implementation WBSSavedAccountMatchResult

- (WBSSavedAccountMatchResult)initWithExactMatches:(id)a3 potentialMatches:(id)a4 associatedDomainMatches:(id)a5 nearbyDeviceOptions:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = WBSSavedAccountMatchResult;
  v14 = [(WBSSavedAccountMatchResult *)&v27 init];
  if (v14)
  {
    v15 = [v10 copy];
    v16 = v15;
    v17 = MEMORY[0x1E695E0F0];
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v14->_exactMatches, v18);

    v19 = [v11 copy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v17;
    }

    objc_storeStrong(&v14->_potentialMatches, v21);

    v22 = [v12 copy];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v17;
    }

    objc_storeStrong(&v14->_associatedDomainMatches, v24);

    objc_storeStrong(&v14->_nearbyDeviceOptions, a6);
    v25 = v14;
  }

  return v14;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p exactMatches = %@; potentialMatches = %@; associatedDomainMatches = %@; nearbyDevice = %@>", v5, self, self->_exactMatches, self->_potentialMatches, self->_associatedDomainMatches, self->_nearbyDeviceOptions];;

  return v6;
}

- (unint64_t)count
{
  v3 = [(NSArray *)self->_exactMatches count];
  v4 = [(NSArray *)self->_potentialMatches count]+ v3;
  return v4 + [(NSArray *)self->_associatedDomainMatches count];
}

- (NSArray)matchesForPasswordAutoFill
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 addObjectsFromArray:self->_exactMatches];
  [v3 addObjectsFromArray:self->_potentialMatches];
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = [v3 safari_mapObjectsUsingBlock:&__block_literal_global_62];
  v6 = [v4 initWithArray:v5];

  associatedDomainMatches = self->_associatedDomainMatches;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__WBSSavedAccountMatchResult_matchesForPasswordAutoFill__block_invoke_2;
  v12[3] = &unk_1E7CF4428;
  v13 = v6;
  v8 = v6;
  v9 = [(NSArray *)associatedDomainMatches safari_filterObjectsUsingBlock:v12];
  [v3 addObjectsFromArray:v9];

  v10 = [v3 copy];

  return v10;
}

WBSPair *__56__WBSSavedAccountMatchResult_matchesForPasswordAutoFill__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [WBSPair alloc];
  v4 = [v2 user];
  v5 = [v2 password];

  v6 = [(WBSPair *)v3 initWithFirst:v4 second:v5];

  return v6;
}

uint64_t __56__WBSSavedAccountMatchResult_matchesForPasswordAutoFill__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [WBSPair alloc];
  v5 = [v3 user];
  v6 = [v3 password];

  v7 = [(WBSPair *)v4 initWithFirst:v5 second:v6];
  LODWORD(v2) = [v2 containsObject:v7];

  return v2 ^ 1;
}

- (NSArray)orderedMatches
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 addObjectsFromArray:self->_exactMatches];
  [v3 addObjectsFromArray:self->_potentialMatches];
  [v3 addObjectsFromArray:self->_associatedDomainMatches];
  v4 = [v3 copy];

  return v4;
}

- (void)addUniqueHostUserToMatches
{
  v3 = MEMORY[0x1E696AB50];
  v4 = [(WBSSavedAccountMatchResult *)self orderedMatches];
  v5 = [v4 safari_mapObjectsUsingBlock:&__block_literal_global_8_0];
  v6 = [v3 setWithArray:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__WBSSavedAccountMatchResult_addUniqueHostUserToMatches__block_invoke_2;
  aBlock[3] = &unk_1E7CF4450;
  v16 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9 = [(NSArray *)self->_exactMatches safari_mapObjectsUsingBlock:v8];
  exactMatches = self->_exactMatches;
  self->_exactMatches = v9;

  v11 = [(NSArray *)self->_potentialMatches safari_mapObjectsUsingBlock:v8];
  potentialMatches = self->_potentialMatches;
  self->_potentialMatches = v11;

  v13 = [(NSArray *)self->_associatedDomainMatches safari_mapObjectsUsingBlock:v8];
  associatedDomainMatches = self->_associatedDomainMatches;
  self->_associatedDomainMatches = v13;
}

WBSPair *__56__WBSSavedAccountMatchResult_addUniqueHostUserToMatches__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [WBSPair alloc];
  v4 = [v2 user];
  v5 = [v2 host];

  v6 = [(WBSPair *)v3 initWithFirst:v4 second:v5];

  return v6;
}

id __56__WBSSavedAccountMatchResult_addUniqueHostUserToMatches__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [WBSPair alloc];
  v6 = [v3 user];
  v7 = [v3 host];
  v8 = [(WBSPair *)v5 initWithFirst:v6 second:v7];
  [v3 setHasUniqueHostAndUser:{objc_msgSend(v4, "countForObject:", v8) < 2}];

  return v3;
}

- (id)accountsToConsiderEquivalentForUserName:(id)a3 atURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() shouldEvaluateAccountsToConsiderEquivalentForUserName:v6 atURL:v7];

  if (v8)
  {
    v9 = [v6 lowercaseString];

    if ([v9 hasSuffix:@"@gmail.com"])
    {
      v10 = [(WBSSavedAccountMatchResult *)self exactMatches];
      v11 = [(WBSSavedAccountMatchResult *)self associatedDomainMatches];
      v12 = [v10 arrayByAddingObjectsFromArray:v11];

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __76__WBSSavedAccountMatchResult_accountsToConsiderEquivalentForUserName_atURL___block_invoke;
      v15[3] = &unk_1E7CF4478;
      v6 = v9;
      v16 = v6;
      v13 = [v12 safari_mapAndFilterObjectsUsingBlock:v15];
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
      v6 = v9;
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

id __76__WBSSavedAccountMatchResult_accountsToConsiderEquivalentForUserName_atURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 user];
  v5 = [v4 lowercaseString];
  v6 = [v5 stringByAppendingString:@"@gmail.com"];

  if ([*(a1 + 32) isEqualToString:v6])
  {
    v7 = [v3 savedAccount];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)shouldEvaluateAccountsToConsiderEquivalentForUserName:(id)a3 atURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v5 length])
  {
    goto LABEL_7;
  }

  v7 = [v6 host];
  v8 = [v7 length];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v5 lowercaseString];
  v10 = [v9 hasSuffix:@"@gmail.com"];

  if (v10)
  {
    if (shouldEvaluateAccountsToConsiderEquivalentForUserName_atURL__once != -1)
    {
      +[WBSSavedAccountMatchResult shouldEvaluateAccountsToConsiderEquivalentForUserName:atURL:];
    }

    v11 = shouldEvaluateAccountsToConsiderEquivalentForUserName_atURL__googleHosts;
    v12 = [v6 host];
    v13 = [v12 lowercaseString];
    v14 = [v11 containsObject:v13];
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  return v14;
}

void __90__WBSSavedAccountMatchResult_shouldEvaluateAccountsToConsiderEquivalentForUserName_atURL___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F308EBC8];
  v1 = shouldEvaluateAccountsToConsiderEquivalentForUserName_atURL__googleHosts;
  shouldEvaluateAccountsToConsiderEquivalentForUserName_atURL__googleHosts = v0;
}

@end