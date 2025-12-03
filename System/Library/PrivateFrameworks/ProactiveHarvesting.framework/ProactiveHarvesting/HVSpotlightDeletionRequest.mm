@interface HVSpotlightDeletionRequest
+ (id)_hashArrayForBundleIdentifier:(void *)identifier xIdentifier:(int)xIdentifier typeOfX:(void *)x inBloomFilter:(void *)filter hashArrayForReuse:;
+ (void)addDeletableContentWithBundleIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier uniqueIdentifier:(id)uniqueIdentifier toBloomFilter:(id)filter;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesBloomFilter:(id)filter;
- (HVSpotlightDeletionRequest)initWithBundleIdentifier:(id)identifier;
- (HVSpotlightDeletionRequest)initWithBundleIdentifier:(id)identifier domainSelection:(id)selection;
- (HVSpotlightDeletionRequest)initWithBundleIdentifier:(id)identifier purgedUniqueIdentifiers:(id)identifiers;
- (HVSpotlightDeletionRequest)initWithBundleIdentifier:(id)identifier uniqueIdentifiers:(id)identifiers;
- (HVSpotlightDeletionRequest)initWithCoder:(id)coder;
- (id)copyWithBundleIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)accessCriteriaUsingBundleIdentifierBlock:(id)block domainSelectionBlock:(id)selectionBlock incontrovertiblyDeletedUniqueIdentifiersBlock:(id)identifiersBlock purgedUniqueIdentifiersBlock:(id)uniqueIdentifiersBlock;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HVSpotlightDeletionRequest

- (id)copyWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__HVSpotlightDeletionRequest_copyWithBundleIdentifier___block_invoke;
  v17[3] = &unk_2789692E8;
  v19 = &v20;
  v18 = identifierCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__HVSpotlightDeletionRequest_copyWithBundleIdentifier___block_invoke_2;
  v14[3] = &unk_278969310;
  v16 = &v20;
  v15 = v18;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HVSpotlightDeletionRequest_copyWithBundleIdentifier___block_invoke_3;
  v11[3] = &unk_278969360;
  v13 = &v20;
  v12 = v15;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HVSpotlightDeletionRequest_copyWithBundleIdentifier___block_invoke_4;
  v8[3] = &unk_278969360;
  v10 = &v20;
  v5 = v12;
  v9 = v5;
  [(HVSpotlightDeletionRequest *)self accessCriteriaUsingBundleIdentifierBlock:v17 domainSelectionBlock:v14 incontrovertiblyDeletedUniqueIdentifiersBlock:v11 purgedUniqueIdentifiersBlock:v8];
  v6 = v21[5];

  _Block_object_dispose(&v20, 8);
  return v6;
}

uint64_t __55__HVSpotlightDeletionRequest_copyWithBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [[HVSpotlightDeletionRequest alloc] initWithBundleIdentifier:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __55__HVSpotlightDeletionRequest_copyWithBundleIdentifier___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[HVSpotlightDeletionRequest alloc] initWithBundleIdentifier:*(a1 + 32) domainSelection:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __55__HVSpotlightDeletionRequest_copyWithBundleIdentifier___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[HVSpotlightDeletionRequest alloc] initWithBundleIdentifier:*(a1 + 32) uniqueIdentifiers:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __55__HVSpotlightDeletionRequest_copyWithBundleIdentifier___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[HVSpotlightDeletionRequest alloc] initWithBundleIdentifier:*(a1 + 32) purgedUniqueIdentifiers:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (HVSpotlightDeletionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"b"];
  if (!v6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HVSpotlightDeletionRequest.m" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  if (v7)
  {
    v8 = [(HVSpotlightDeletionRequest *)self initWithBundleIdentifier:v6 domainSelection:v7];
  }

  else
  {
    v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"u"];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v9];
      if ([coderCopy decodeBoolForKey:@"p"])
      {
        v11 = [(HVSpotlightDeletionRequest *)self initWithBundleIdentifier:v6 purgedUniqueIdentifiers:v10];
      }

      else
      {
        v11 = [(HVSpotlightDeletionRequest *)self initWithBundleIdentifier:v6 uniqueIdentifiers:v10];
      }

      v8 = v11;
    }

    else
    {
      v8 = [(HVSpotlightDeletionRequest *)self initWithBundleIdentifier:v6];
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"b"];
  [coderCopy encodeObject:self->_domainSelection forKey:@"d"];
  allObjects = [(NSSet *)self->_uniqueIdentifiers allObjects];
  [coderCopy encodeObject:allObjects forKey:@"u"];

  [coderCopy encodeBool:self->_isPurge forKey:@"p"];
}

- (id)description
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__HVSpotlightDeletionRequest_description__block_invoke;
  v10[3] = &unk_278968A18;
  v10[4] = &v11;
  v8[4] = &v11;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__HVSpotlightDeletionRequest_description__block_invoke_2;
  v9[3] = &unk_278968A90;
  v9[4] = &v11;
  v7[4] = &v11;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__HVSpotlightDeletionRequest_description__block_invoke_3;
  v8[3] = &unk_278968AB8;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HVSpotlightDeletionRequest_description__block_invoke_4;
  v7[3] = &unk_278968AB8;
  [(HVSpotlightDeletionRequest *)self accessCriteriaUsingBundleIdentifierBlock:v10 domainSelectionBlock:v9 incontrovertiblyDeletedUniqueIdentifiersBlock:v8 purgedUniqueIdentifiersBlock:v7];
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 initWithFormat:@"<%@ %@>", v4, v12[5]];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void __41__HVSpotlightDeletionRequest_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"bundleIdentifier: %@", v4];

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __41__HVSpotlightDeletionRequest_description__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:@"bundleIdentifier: %@, domainSelection: %@", v7, v6];

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __41__HVSpotlightDeletionRequest_description__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:@"bundleIdentifier: %@, incontrovertiblyDeletedUniqueIdentifiers: %@", v7, v6];

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __41__HVSpotlightDeletionRequest_description__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:@"bundleIdentifier: %@, purgedUniqueIdentifiers: %@", v7, v6];

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleIdentifier hash];
  v4 = [(_PASDomainSelection *)self->_domainSelection hash]- v3 + 32 * v3;
  v5 = [(NSSet *)self->_uniqueIdentifiers hash];
  return self->_isPurge - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        if (!self)
        {
LABEL_20:

          goto LABEL_21;
        }

        v7 = self->_bundleIdentifier;
        v8 = v7;
        if (v7 == v6->_bundleIdentifier)
        {
        }

        else
        {
          v9 = [(NSString *)v7 isEqual:?];

          if ((v9 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v10 = self->_domainSelection;
        v11 = v10;
        if (v10 == v6->_domainSelection)
        {
        }

        else
        {
          v12 = [(_PASDomainSelection *)v10 isEqual:?];

          if ((v12 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v13 = self->_uniqueIdentifiers;
        v14 = v13;
        if (v13 == v6->_uniqueIdentifiers)
        {
        }

        else
        {
          v15 = [(NSSet *)v13 isEqual:?];

          if ((v15 & 1) == 0)
          {
LABEL_17:
            LOBYTE(self) = 0;
            goto LABEL_20;
          }
        }

        LOBYTE(self) = self->_isPurge == v6->_isPurge;
        goto LABEL_20;
      }
    }

    LOBYTE(self) = 0;
  }

LABEL_21:

  return self;
}

- (BOOL)matchesBloomFilter:(id)filter
{
  filterCopy = filter;
  v5 = objc_autoreleasePoolPush();
  bundleIdentifier = [(HVSpotlightDeletionRequest *)self bundleIdentifier];
  v7 = [HVSpotlightDeletionRequest _hashArrayForBundleIdentifier:bundleIdentifier xIdentifier:&stru_28474C1D0 typeOfX:98 inBloomFilter:filterCopy hashArrayForReuse:0];

  if ([filterCopy getWithHashes:v7])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__HVSpotlightDeletionRequest_matchesBloomFilter___block_invoke;
    v18[3] = &unk_278968A18;
    v18[4] = &v19;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__HVSpotlightDeletionRequest_matchesBloomFilter___block_invoke_2;
    v14[3] = &unk_278968A40;
    v17 = &v19;
    v15 = filterCopy;
    v16 = v7;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__HVSpotlightDeletionRequest_matchesBloomFilter___block_invoke_3;
    v10[3] = &unk_278968A68;
    v13 = &v19;
    v11 = v15;
    v12 = v16;
    [(HVSpotlightDeletionRequest *)self accessCriteriaUsingBundleIdentifierBlock:v18 domainSelectionBlock:v14 uniqueIdentifiersBlock:v10];
    v8 = *(v20 + 24);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v8 & 1;
}

+ (id)_hashArrayForBundleIdentifier:(void *)identifier xIdentifier:(int)xIdentifier typeOfX:(void *)x inBloomFilter:(void *)filter hashArrayForReuse:
{
  xCopy = x;
  filterCopy = filter;
  identifierCopy = identifier;
  v13 = a2;
  objc_opt_self();
  v14 = objc_autoreleasePoolPush();
  v15 = _PASRepairString();

  v16 = _PASRepairString();

  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@\n%c\n%@", v15, xIdentifier, v16];
  v18 = _PASRepairString();

  v19 = [xCopy computeHashesForString:v18 reuse:filterCopy];

  objc_autoreleasePoolPop(v14);

  return v19;
}

void __49__HVSpotlightDeletionRequest_matchesBloomFilter___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 allDomains];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 32);
        v12 = [HVSpotlightDeletionRequest _hashArrayForBundleIdentifier:v5 xIdentifier:*(*(&v14 + 1) + 8 * i) typeOfX:100 inBloomFilter:v11 hashArrayForReuse:*(a1 + 40)];
        *(*(*(a1 + 48) + 8) + 24) = [v11 getWithHashes:v12];

        if (*(*(*(a1 + 48) + 8) + 24))
        {

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

void __49__HVSpotlightDeletionRequest_matchesBloomFilter___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 32);
        v12 = [HVSpotlightDeletionRequest _hashArrayForBundleIdentifier:v5 xIdentifier:*(*(&v14 + 1) + 8 * i) typeOfX:117 inBloomFilter:v11 hashArrayForReuse:*(a1 + 40)];
        *(*(*(a1 + 48) + 8) + 24) = [v11 getWithHashes:{v12, v14}];

        if (*(*(*(a1 + 48) + 8) + 24))
        {

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessCriteriaUsingBundleIdentifierBlock:(id)block domainSelectionBlock:(id)selectionBlock incontrovertiblyDeletedUniqueIdentifiersBlock:(id)identifiersBlock purgedUniqueIdentifiersBlock:(id)uniqueIdentifiersBlock
{
  blockCopy = block;
  selectionBlockCopy = selectionBlock;
  identifiersBlockCopy = identifiersBlock;
  uniqueIdentifiersBlockCopy = uniqueIdentifiersBlock;
  if (self->_domainSelection)
  {
    selectionBlockCopy[2](selectionBlockCopy, self->_bundleIdentifier);
  }

  else if (self->_uniqueIdentifiers)
  {
    self->_isPurge;
    v13 = MEMORY[0x238381E60]();
    (v13)[2](v13, self->_bundleIdentifier, self->_uniqueIdentifiers);
  }

  else
  {
    blockCopy[2](blockCopy, self->_bundleIdentifier);
  }
}

- (HVSpotlightDeletionRequest)initWithBundleIdentifier:(id)identifier purgedUniqueIdentifiers:(id)identifiers
{
  result = [(HVSpotlightDeletionRequest *)self initWithBundleIdentifier:identifier uniqueIdentifiers:identifiers];
  if (result)
  {
    result->_isPurge = 1;
  }

  return result;
}

- (HVSpotlightDeletionRequest)initWithBundleIdentifier:(id)identifier uniqueIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v8 = [(HVSpotlightDeletionRequest *)self initWithBundleIdentifier:identifier];
  if (v8)
  {
    if (!identifiersCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v8 file:@"HVSpotlightDeletionRequest.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"uniqueIdentifiers"}];
    }

    v9 = [identifiersCopy copy];
    uniqueIdentifiers = v8->_uniqueIdentifiers;
    v8->_uniqueIdentifiers = v9;
  }

  return v8;
}

- (HVSpotlightDeletionRequest)initWithBundleIdentifier:(id)identifier domainSelection:(id)selection
{
  selectionCopy = selection;
  v8 = [(HVSpotlightDeletionRequest *)self initWithBundleIdentifier:identifier];
  if (v8)
  {
    if (!selectionCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v8 file:@"HVSpotlightDeletionRequest.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"domainSelection"}];
    }

    v9 = [selectionCopy copy];
    domainSelection = v8->_domainSelection;
    v8->_domainSelection = v9;
  }

  return v8;
}

- (HVSpotlightDeletionRequest)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self && (v12.receiver = self, v12.super_class = HVSpotlightDeletionRequest, (v6 = [(HVSpotlightDeletionRequest *)&v12 init]) != 0))
  {
    v7 = v6;
    v6->_isPurge = 0;
    if (!identifierCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"HVSpotlightDeletionRequest.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
    }

    v8 = [identifierCopy copy];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)addDeletableContentWithBundleIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier uniqueIdentifier:(id)uniqueIdentifier toBloomFilter:(id)filter
{
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  filterCopy = filter;
  v13 = objc_autoreleasePoolPush();
  v14 = [(HVSpotlightDeletionRequest *)self _hashArrayForBundleIdentifier:identifierCopy xIdentifier:&stru_28474C1D0 typeOfX:98 inBloomFilter:filterCopy hashArrayForReuse:0];
  [filterCopy setWithHashes:v14];
  v15 = [(HVSpotlightDeletionRequest *)self _hashArrayForBundleIdentifier:identifierCopy xIdentifier:uniqueIdentifierCopy typeOfX:117 inBloomFilter:filterCopy hashArrayForReuse:v14];

  [filterCopy setWithHashes:v15];
  if (domainIdentifierCopy)
  {
    while (1)
    {
      v16 = v15;
      v17 = objc_autoreleasePoolPush();
      v15 = [(HVSpotlightDeletionRequest *)self _hashArrayForBundleIdentifier:identifierCopy xIdentifier:domainIdentifierCopy typeOfX:100 inBloomFilter:filterCopy hashArrayForReuse:v15];

      [filterCopy setWithHashes:v15];
      v18 = [domainIdentifierCopy rangeOfString:@"." options:6];
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v19 = [domainIdentifierCopy substringToIndex:v18];

      objc_autoreleasePoolPop(v17);
      domainIdentifierCopy = v19;
      if (!v19)
      {
        goto LABEL_6;
      }
    }

    objc_autoreleasePoolPop(v17);
  }

LABEL_6:

  objc_autoreleasePoolPop(v13);
}

@end