@interface PGGraphHomeWorkNode
+ (MANodeFilter)homeFilter;
+ (MANodeFilter)workFilter;
+ (MARelation)addressOfHomeWork;
+ (MARelation)ownerOfHomeWork;
+ (id)filter;
- (BOOL)hasProperties:(id)properties;
- (CLLocationCoordinate2D)coordinate;
- (NSString)featureIdentifier;
- (NSString)localizedName;
- (PGGraphHomeWorkNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphHomeWorkNode)initWithLabel:(id)label uuid:(id)uuid;
- (PGGraphHomeWorkNodeCollection)collection;
- (id)propertyDictionary;
- (unint64_t)featureType;
@end

@implementation PGGraphHomeWorkNode

- (NSString)featureIdentifier
{
  array = [MEMORY[0x277CBEB18] array];
  collection = [(PGGraphHomeWorkNode *)self collection];
  ownerNodes = [collection ownerNodes];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __40__PGGraphHomeWorkNode_featureIdentifier__block_invoke;
  v17 = &unk_278889240;
  v18 = array;
  v6 = array;
  [ownerNodes enumerateNodesUsingBlock:&v14];

  [v6 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  label = [(PGGraphHomeWorkNode *)self label];
  v11 = [v6 componentsJoinedByString:@"|"];
  v12 = [v7 stringWithFormat:@"%@|%@|%@", v9, label, v11, v14, v15, v16, v17];

  return v12;
}

void __40__PGGraphHomeWorkNode_featureIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 featureIdentifier];
  [v2 addObject:v3];
}

- (unint64_t)featureType
{
  if ([(PGGraphHomeWorkNode *)self isHome])
  {
    return 30;
  }

  else
  {
    return 31;
  }
}

- (CLLocationCoordinate2D)coordinate
{
  p_centroidCoordinate = &self->_centroidCoordinate;
  if (!CLLocationCoordinate2DIsValid(self->_centroidCoordinate))
  {
    collection = [(PGGraphHomeWorkNode *)self collection];
    addressNodes = [collection addressNodes];
    [addressNodes centroidCoordinate];
    p_centroidCoordinate->latitude = v6;
    p_centroidCoordinate->longitude = v7;
  }

  latitude = p_centroidCoordinate->latitude;
  longitude = p_centroidCoordinate->longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (PGGraphHomeWorkNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphHomeWorkNodeCollection alloc] initWithNode:self];

  return v2;
}

- (NSString)localizedName
{
  label = [(PGGraphHomeWorkNode *)self label];
  v4 = [label isEqualToString:@"Home"];

  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"PGHomeSearchableText";
LABEL_5:
    v10 = [v5 localizedStringForKey:v7 value:v7 table:@"Localizable"];

    goto LABEL_7;
  }

  label2 = [(PGGraphHomeWorkNode *)self label];
  v9 = [label2 isEqualToString:@"Work"];

  if (v9)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"PGWorkSearchableText";
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)propertyDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  uuid = self->_uuid;
  v6 = @"id";
  v7[0] = uuid;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"id"];
    v7 = v6;
    v8 = !v6 || [v6 isEqual:self->_uuid];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (PGGraphHomeWorkNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  labelCopy = label;
  v8 = [properties objectForKeyedSubscript:@"id"];
  v9 = [(PGGraphHomeWorkNode *)self initWithLabel:labelCopy uuid:v8];

  return v9;
}

- (PGGraphHomeWorkNode)initWithLabel:(id)label uuid:(id)uuid
{
  labelCopy = label;
  uuidCopy = uuid;
  v12.receiver = self;
  v12.super_class = PGGraphHomeWorkNode;
  v8 = [(PGGraphNode *)&v12 init];
  if (v8)
  {
    v9 = [labelCopy copy];
    v10 = *(v8 + 7);
    *(v8 + 7) = v9;

    objc_storeStrong(v8 + 4, uuid);
    *(v8 + 40) = *MEMORY[0x277CE4278];
  }

  return v8;
}

+ (MARelation)addressOfHomeWork
{
  v2 = +[PGGraphIsHomeWorkEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MARelation)ownerOfHomeWork
{
  v2 = +[PGGraphIsOwnedByEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MANodeFilter)workFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Work" domain:202];

  return v2;
}

+ (MANodeFilter)homeFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Home" domain:202];

  return v2;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:202];

  return v2;
}

@end