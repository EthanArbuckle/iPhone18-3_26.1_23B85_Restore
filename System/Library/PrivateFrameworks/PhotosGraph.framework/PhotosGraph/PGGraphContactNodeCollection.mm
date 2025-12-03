@interface PGGraphContactNodeCollection
+ (id)contactNodeForContactIdentifier:(id)identifier inGraph:(id)graph;
+ (id)contactNodesForContactIdentifiers:(id)identifiers inGraph:(id)graph;
@end

@implementation PGGraphContactNodeCollection

+ (id)contactNodesForContactIdentifiers:(id)identifiers inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [PGGraphContactNode filterWithContactIdentifiers:identifiers];
  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  return v8;
}

+ (id)contactNodeForContactIdentifier:(id)identifier inGraph:(id)graph
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = MEMORY[0x277CBEA60];
  graphCopy = graph;
  identifierCopy2 = identifier;
  v9 = [v6 arrayWithObjects:&identifierCopy count:1];
  v10 = [PGGraphContactNode filterWithContactIdentifiers:v9, identifierCopy, v15];

  v11 = [self nodesMatchingFilter:v10 inGraph:graphCopy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end