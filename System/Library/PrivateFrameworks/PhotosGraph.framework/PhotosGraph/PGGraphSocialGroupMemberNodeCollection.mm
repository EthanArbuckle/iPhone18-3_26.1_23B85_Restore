@interface PGGraphSocialGroupMemberNodeCollection
+ (id)memberNodesForLocalIdentifier:(id)a3 inGraph:(id)a4;
+ (id)memberNodesForLocalIdentifiers:(id)a3 inGraph:(id)a4;
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
  v3 = [(PGGraphSocialGroupMemberNodeCollection *)self socialGroupOfMember];
  v4 = [(MANodeCollection *)PGGraphSocialGroupNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (NSSet)uuids
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v4 = [(PGGraphSocialGroupMemberNodeCollection *)self personNodes];
  v5 = [v4 uuids];
  [v3 unionSet:v5];

  v6 = [(PGGraphSocialGroupMemberNodeCollection *)self petNodes];
  v7 = [v6 uuids];
  [v3 unionSet:v7];

  return v3;
}

- (NSSet)localIdentifiers
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v4 = [(PGGraphSocialGroupMemberNodeCollection *)self personNodes];
  v5 = [v4 localIdentifiers];
  [v3 unionSet:v5];

  v6 = [(PGGraphSocialGroupMemberNodeCollection *)self petNodes];
  v7 = [v6 localIdentifiers];
  [v3 unionSet:v7];

  return v3;
}

- (id)socialGroupOfMember
{
  v2 = +[PGGraphBelongsToEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (id)memberNodesForLocalIdentifier:(id)a3 inGraph:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB98];
  v15 = a3;
  v7 = MEMORY[0x277CBEA60];
  v8 = a4;
  v9 = a3;
  v10 = [v7 arrayWithObjects:&v15 count:1];
  v11 = [v6 setWithArray:{v10, v15, v16}];

  v12 = [a1 memberNodesForLocalIdentifiers:v11 inGraph:v8];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)memberNodesForLocalIdentifiers:(id)a3 inGraph:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:v6 inGraph:v5];
  v8 = [PGGraphPetNodeCollection petNodesForLocalIdentifiers:v6 inGraph:v5];

  v9 = [PGGraphSocialGroupMemberNodeCollection alloc];
  v10 = [v7 elementIdentifiers];
  v11 = [v8 elementIdentifiers];
  v12 = [v10 identifierSetByFormingUnion:v11];
  v13 = [(MAElementCollection *)v9 initWithGraph:v5 elementIdentifiers:v12];

  return v13;
}

@end