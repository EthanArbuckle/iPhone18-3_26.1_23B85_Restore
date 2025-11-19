@interface PGGraphPersonActivityMeaningNode
+ (MARelation)momentOfPersonActivity;
+ (id)filter;
+ (id)filterWithActivityLabels:(id)a3;
+ (id)filterWithPersonLocalIdentifiers:(id)a3 label:(id)a4;
+ (id)personOfPersonActivity;
- (BOOL)hasProperties:(id)a3;
- (NSString)featureIdentifier;
- (PGGraphPersonActivityMeaningNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (PGGraphPersonActivityMeaningNode)initWithPersonLocalIdentifier:(id)a3 activity:(id)a4;
- (PGGraphPersonActivityMeaningNodeCollection)collection;
- (id)propertyDictionary;
@end

@implementation PGGraphPersonActivityMeaningNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PGGraphPersonActivityMeaningNode *)self label];
  v7 = [(PGGraphPersonActivityMeaningNode *)self personLocalIdentifier];
  v8 = [v3 stringWithFormat:@"%@|%@|%@", v5, v6, v7];

  return v8;
}

- (PGGraphPersonActivityMeaningNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphPersonActivityMeaningNodeCollection alloc] initWithNode:self];

  return v2;
}

- (id)propertyDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  personLocalIdentifier = self->_personLocalIdentifier;
  v6 = @"identifier";
  v7[0] = personLocalIdentifier;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count] && (objc_msgSend(v5, "objectForKeyedSubscript:", @"id"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [v6 stringValue];
    v9 = v8 == self->_personLocalIdentifier;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (PGGraphPersonActivityMeaningNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v7 = a3;
  v8 = [a5 objectForKeyedSubscript:@"identifier"];
  v9 = [(PGGraphPersonActivityMeaningNode *)self initWithPersonLocalIdentifier:v8 activity:v7];

  return v9;
}

- (PGGraphPersonActivityMeaningNode)initWithPersonLocalIdentifier:(id)a3 activity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGGraphPersonActivityMeaningNode;
  v9 = [(PGGraphNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_personLocalIdentifier, a3);
    objc_storeStrong(&v10->_label, a4);
  }

  return v10;
}

+ (id)filterWithActivityLabels:(id)a3
{
  v3 = MEMORY[0x277D22C78];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithLabels:v4 domain:701 properties:MEMORY[0x277CBEC10]];

  return v6;
}

+ (id)filterWithPersonLocalIdentifiers:(id)a3 label:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D22C78];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v13 = @"identifier";
  v14[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v10 = [v8 initWithLabel:v6 domain:701 properties:v9];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)personOfPersonActivity
{
  v2 = +[PGGraphPracticesActivityEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)momentOfPersonActivity
{
  v2 = +[PGGraphPersonActivityMeaningEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:701];

  return v2;
}

@end