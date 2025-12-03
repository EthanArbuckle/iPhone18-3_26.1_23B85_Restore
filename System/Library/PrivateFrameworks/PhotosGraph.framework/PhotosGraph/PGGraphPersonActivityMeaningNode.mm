@interface PGGraphPersonActivityMeaningNode
+ (MARelation)momentOfPersonActivity;
+ (id)filter;
+ (id)filterWithActivityLabels:(id)labels;
+ (id)filterWithPersonLocalIdentifiers:(id)identifiers label:(id)label;
+ (id)personOfPersonActivity;
- (BOOL)hasProperties:(id)properties;
- (NSString)featureIdentifier;
- (PGGraphPersonActivityMeaningNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphPersonActivityMeaningNode)initWithPersonLocalIdentifier:(id)identifier activity:(id)activity;
- (PGGraphPersonActivityMeaningNodeCollection)collection;
- (id)propertyDictionary;
@end

@implementation PGGraphPersonActivityMeaningNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  label = [(PGGraphPersonActivityMeaningNode *)self label];
  personLocalIdentifier = [(PGGraphPersonActivityMeaningNode *)self personLocalIdentifier];
  v8 = [v3 stringWithFormat:@"%@|%@|%@", v5, label, personLocalIdentifier];

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

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count] && (objc_msgSend(v5, "objectForKeyedSubscript:", @"id"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    stringValue = [v6 stringValue];
    v9 = stringValue == self->_personLocalIdentifier;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (PGGraphPersonActivityMeaningNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  labelCopy = label;
  v8 = [properties objectForKeyedSubscript:@"identifier"];
  v9 = [(PGGraphPersonActivityMeaningNode *)self initWithPersonLocalIdentifier:v8 activity:labelCopy];

  return v9;
}

- (PGGraphPersonActivityMeaningNode)initWithPersonLocalIdentifier:(id)identifier activity:(id)activity
{
  identifierCopy = identifier;
  activityCopy = activity;
  v12.receiver = self;
  v12.super_class = PGGraphPersonActivityMeaningNode;
  v9 = [(PGGraphNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_personLocalIdentifier, identifier);
    objc_storeStrong(&v10->_label, activity);
  }

  return v10;
}

+ (id)filterWithActivityLabels:(id)labels
{
  v3 = MEMORY[0x277D22C78];
  labelsCopy = labels;
  v5 = [v3 alloc];
  v6 = [v5 initWithLabels:labelsCopy domain:701 properties:MEMORY[0x277CBEC10]];

  return v6;
}

+ (id)filterWithPersonLocalIdentifiers:(id)identifiers label:(id)label
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D22C78];
  labelCopy = label;
  identifiersCopy = identifiers;
  v8 = [v5 alloc];
  v13 = @"identifier";
  v14[0] = identifiersCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v10 = [v8 initWithLabel:labelCopy domain:701 properties:v9];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)personOfPersonActivity
{
  v2 = +[PGGraphPracticesActivityEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MARelation)momentOfPersonActivity
{
  v2 = +[PGGraphPersonActivityMeaningEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:701];

  return v2;
}

@end