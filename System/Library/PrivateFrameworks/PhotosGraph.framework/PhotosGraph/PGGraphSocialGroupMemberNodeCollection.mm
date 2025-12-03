@interface PGGraphSocialGroupMemberNodeCollection
+ (id)memberNodesForLocalIdentifier:(id)identifier inGraph:(id)graph;
+ (id)memberNodesForLocalIdentifiers:(id)identifiers inGraph:(id)graph;
- (NSArray)names;
- (NSSet)localIdentifiers;
- (NSSet)uuids;
- (PGGraphSocialGroupNodeCollection)socialGroupNodes;
- (id)memberNodeByLocalIdentifier;
- (id)socialGroupOfMember;
@end

@implementation PGGraphSocialGroupMemberNodeCollection

- (id)memberNodeByLocalIdentifier
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__PGGraphSocialGroupMemberNodeCollection_memberNodeByLocalIdentifier__block_invoke;
  v6[3] = &unk_27888B4A8;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateNodesUsingBlock:v6];

  return v4;
}

void __69__PGGraphSocialGroupMemberNodeCollection_memberNodeByLocalIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 localIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (NSArray)names
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__PGGraphSocialGroupMemberNodeCollection_names__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];

  return v4;
}

void __47__PGGraphSocialGroupMemberNodeCollection_names__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([(__CFString *)v5 length])
  {
    v4 = v5;
  }

  else
  {
    v4 = @"Unnamed";
  }

  [*(a1 + 32) addObject:v4];
}

- (PGGraphSocialGroupNodeCollection)socialGroupNodes
{
  socialGroupOfMember = [(PGGraphSocialGroupMemberNodeCollection *)self socialGroupOfMember];
  v4 = [(MANodeCollection *)PGGraphSocialGroupNodeCollection nodesRelatedToNodes:self withRelation:socialGroupOfMember];

  return v4;
}

- (NSSet)uuids
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  personNodes = [(PGGraphSocialGroupMemberNodeCollection *)self personNodes];
  uuids = [personNodes uuids];
  [v3 unionSet:uuids];

  petNodes = [(PGGraphSocialGroupMemberNodeCollection *)self petNodes];
  uuids2 = [petNodes uuids];
  [v3 unionSet:uuids2];

  return v3;
}

- (NSSet)localIdentifiers
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  personNodes = [(PGGraphSocialGroupMemberNodeCollection *)self personNodes];
  localIdentifiers = [personNodes localIdentifiers];
  [v3 unionSet:localIdentifiers];

  petNodes = [(PGGraphSocialGroupMemberNodeCollection *)self petNodes];
  localIdentifiers2 = [petNodes localIdentifiers];
  [v3 unionSet:localIdentifiers2];

  return v3;
}

- (id)socialGroupOfMember
{
  v2 = +[PGGraphBelongsToEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (id)memberNodesForLocalIdentifier:(id)identifier inGraph:(id)graph
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB98];
  identifierCopy = identifier;
  v7 = MEMORY[0x277CBEA60];
  graphCopy = graph;
  identifierCopy2 = identifier;
  v10 = [v7 arrayWithObjects:&identifierCopy count:1];
  v11 = [v6 setWithArray:{v10, identifierCopy, v16}];

  v12 = [self memberNodesForLocalIdentifiers:v11 inGraph:graphCopy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)memberNodesForLocalIdentifiers:(id)identifiers inGraph:(id)graph
{
  graphCopy = graph;
  identifiersCopy = identifiers;
  v7 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:identifiersCopy inGraph:graphCopy];
  v8 = [PGGraphPetNodeCollection petNodesForLocalIdentifiers:identifiersCopy inGraph:graphCopy];

  v9 = [PGGraphSocialGroupMemberNodeCollection alloc];
  elementIdentifiers = [v7 elementIdentifiers];
  elementIdentifiers2 = [v8 elementIdentifiers];
  v12 = [elementIdentifiers identifierSetByFormingUnion:elementIdentifiers2];
  v13 = [(MAElementCollection *)v9 initWithGraph:graphCopy elementIdentifiers:v12];

  return v13;
}

@end