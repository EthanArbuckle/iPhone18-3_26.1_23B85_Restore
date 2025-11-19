@interface PGGraphContactNodeCollection
+ (id)contactNodeForContactIdentifier:(id)a3 inGraph:(id)a4;
+ (id)contactNodesForContactIdentifiers:(id)a3 inGraph:(id)a4;
@end

@implementation PGGraphContactNodeCollection

+ (id)contactNodesForContactIdentifiers:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphContactNode filterWithContactIdentifiers:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

+ (id)contactNodeForContactIdentifier:(id)a3 inGraph:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v14 count:1];
  v10 = [PGGraphContactNode filterWithContactIdentifiers:v9, v14, v15];

  v11 = [a1 nodesMatchingFilter:v10 inGraph:v7];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end