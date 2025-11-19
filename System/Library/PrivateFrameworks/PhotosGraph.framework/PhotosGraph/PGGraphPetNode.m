@interface PGGraphPetNode
+ (MANodeFilter)filterNameNotEmpty;
+ (MARelation)momentOfPet;
+ (id)filter;
+ (id)ownerOfPet;
+ (id)stringFromPetSpecies:(unint64_t)a3;
+ (signed)detectionTypeFromPetSpecies:(unint64_t)a3;
- (BOOL)hasProperties:(id)a3;
- (NSString)description;
- (NSString)featureIdentifier;
- (PGGraphPetNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (PGGraphPetNode)initWithLocalIdentifier:(id)a3 petSpecies:(unint64_t)a4 name:(id)a5 isFavorite:(BOOL)a6;
- (PGGraphPetNodeCollection)collection;
- (id)ownerNodes;
- (id)propertyDictionary;
- (id)stringDescription;
@end

@implementation PGGraphPetNode

- (id)stringDescription
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(PGGraphPetNode *)self name];
  if (![(__CFString *)v3 length])
  {
    v6 = [(PGGraphPetNode *)self localIdentifier];

    if ([(__CFString *)v6 length])
    {
      if ([(__CFString *)v6 length]< 9)
      {
        v3 = v6;
      }

      else
      {
        v3 = [(__CFString *)v6 substringToIndex:8];
      }
    }

    else
    {

      v7 = +[PGLogging sharedLogging];
      v8 = [v7 loggingConnection];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412290;
        v10 = self;
        _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "No identifiers for petNode %@", &v9, 0xCu);
      }

      v3 = @"unknown";
    }
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@|%@", v5, self->_localIdentifier];

  return v6;
}

- (PGGraphPetNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphPetNodeCollection alloc] initWithNode:self];

  return v2;
}

- (id)ownerNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__PGGraphPetNode_ownerNodes__block_invoke;
  v6[3] = &unk_278889240;
  v4 = v3;
  v7 = v4;
  [(PGGraphPetNode *)self enumerateOwnerNodesUsingBlock:v6];

  return v4;
}

- (NSString)description
{
  if (self->_isFavorite)
  {
    v3 = @"True";
  }

  else
  {
    v3 = @"False";
  }

  v4 = MEMORY[0x277CCAB68];
  petSpecies = self->_petSpecies;
  v6 = v3;
  v7 = [PGGraphPetNode stringFromPetSpecies:petSpecies];
  v8 = [v4 stringWithFormat:@"PGGraphPetNode %@ (%@) isFavorite: %@", v7, self->_localIdentifier, v6];

  if ([(NSString *)self->_name length])
  {
    [v8 appendFormat:@" (%@)", self->_name];
  }

  return v8;
}

- (id)propertyDictionary
{
  v10[4] = *MEMORY[0x277D85DE8];
  v10[0] = self->_localIdentifier;
  v9[0] = @"localIdentifier";
  v9[1] = @"anml";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_petSpecies];
  name = self->_name;
  v10[1] = v3;
  v10[2] = name;
  v9[2] = @"name";
  v9[3] = @"favorite";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFavorite];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectForKeyedSubscript:@"name"];
    v7 = v6;
    if (v6 && ![v6 isEqual:self->_name])
    {
      goto LABEL_13;
    }

    v8 = [v5 objectForKeyedSubscript:@"localIdentifier"];
    v7 = v8;
    if (v8)
    {
      if (![v8 isEqual:self->_localIdentifier])
      {
        goto LABEL_13;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"anml"];
    v7 = v9;
    if (v9)
    {
      if ([v9 unsignedIntegerValue] != self->_petSpecies)
      {
        goto LABEL_13;
      }
    }

    v10 = [v5 objectForKeyedSubscript:@"favorite"];
    v7 = v10;
    if (v10 && self->_isFavorite != [v10 BOOLValue])
    {
LABEL_13:
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (PGGraphPetNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v6 = a5;
  v7 = [v6 objectForKeyedSubscript:@"localIdentifier"];
  v8 = [v6 objectForKeyedSubscript:@"anml"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v6 objectForKeyedSubscript:@"name"];
  v11 = [v6 objectForKeyedSubscript:@"favorite"];

  v12 = [v11 BOOLValue];
  v13 = [(PGGraphPetNode *)self initWithLocalIdentifier:v7 petSpecies:v9 name:v10 isFavorite:v12];

  return v13;
}

- (PGGraphPetNode)initWithLocalIdentifier:(id)a3 petSpecies:(unint64_t)a4 name:(id)a5 isFavorite:(BOOL)a6
{
  v11 = a3;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = PGGraphPetNode;
  v13 = [(PGGraphNode *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_localIdentifier, a3);
    v14->_petSpecies = a4;
    objc_storeStrong(&v14->_name, a5);
    v14->_isFavorite = a6;
  }

  return v14;
}

+ (signed)detectionTypeFromPetSpecies:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (a3 == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

+ (id)stringFromPetSpecies:(unint64_t)a3
{
  v3 = @"Pet";
  if (a3 == 1)
  {
    v3 = @"Cat";
  }

  if (a3 == 2)
  {
    return @"Dog";
  }

  else
  {
    return v3;
  }
}

+ (id)ownerOfPet
{
  v2 = +[PGGraphIsOwnerOfPetEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)momentOfPet
{
  v2 = +[PGGraphPetPresentEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MANodeFilter)filterNameNotEmpty
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphPetNode filter];
  v8 = @"name";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:2 value:&stru_2843F5C58];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 filterBySettingProperties:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Pet" domain:304];

  return v2;
}

@end