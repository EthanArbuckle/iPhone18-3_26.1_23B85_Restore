@interface PGGraphNamedLocationNodeCollection
+ (id)locationNodeWithName:(id)a3 inGraph:(id)a4;
+ (id)locationNodesWithCIDINames:(id)a3 inGraph:(id)a4;
- (NSArray)names;
@end

@implementation PGGraphNamedLocationNodeCollection

+ (id)locationNodesWithCIDINames:(id)a3 inGraph:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = +[PGGraphNamedLocationNode filter];
  v15 = @"name";
  v9 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:8 value:v7];

  v16[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v11 = [v8 filterBySettingProperties:v10];

  v12 = [a1 nodesMatchingFilter:v11 inGraph:v6];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)locationNodeWithName:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphNamedLocationNode filterWithName:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

- (NSArray)names
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__PGGraphNamedLocationNodeCollection_names__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];

  return v4;
}

@end