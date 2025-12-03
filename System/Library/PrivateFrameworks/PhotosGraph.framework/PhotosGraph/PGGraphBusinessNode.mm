@interface PGGraphBusinessNode
+ (MARelation)categoryOfBusiness;
+ (MARelation)momentOfBusiness;
+ (MARelation)publicEventOfBusiness;
+ (id)filter;
+ (id)filterWithMuid:(unint64_t)muid;
- (BOOL)hasProperties:(id)properties;
- (CLLocationCoordinate2D)coordinates;
- (NSSet)businessCategories;
- (NSSet)publicEventNodes;
- (NSString)featureIdentifier;
- (PGGraphBusinessNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphBusinessNode)initWithMuid:(unint64_t)muid name:(id)name venueCapacity:(int64_t)capacity coordinates:(CLLocationCoordinate2D)coordinates radius:(double)radius;
- (PGGraphBusinessNodeCollection)collection;
- (PPNamedEntity)pg_namedEntity;
- (id)associatedNodesForRemoval;
- (id)keywordDescription;
- (id)propertyDictionary;
@end

@implementation PGGraphBusinessNode

- (PPNamedEntity)pg_namedEntity
{
  name = [(PGGraphBusinessNode *)self name];
  v3 = name;
  if (name && [name length])
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    v6 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v3 category:2 language:localeIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CLLocationCoordinate2D)coordinates
{
  latitude = self->_coordinates.latitude;
  longitude = self->_coordinates.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uUID = [(PGGraphBusinessNode *)self UUID];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, uUID];

  return v7;
}

- (PGGraphBusinessNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphBusinessNodeCollection alloc] initWithNode:self];

  return v2;
}

- (id)associatedNodesForRemoval
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__PGGraphBusinessNode_associatedNodesForRemoval__block_invoke;
  v6[3] = &unk_2788840D8;
  v4 = v3;
  v7 = v4;
  [(PGGraphBusinessNode *)self enumerateBusinessCategoryNodesUsingBlock:v6];

  return v4;
}

void __48__PGGraphBusinessNode_associatedNodesForRemoval__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 countOfEdgesWithLabel:@"BUSINESSCATEGORY" domain:504] == 1)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)keywordDescription
{
  v15[1] = *MEMORY[0x277D85DE8];
  businessCategories = [(PGGraphBusinessNode *)self businessCategories];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_localizedCompare_];
  v15[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v6 = [businessCategories sortedArrayUsingDescriptors:v5];

  venueCapacity = [(PGGraphBusinessNode *)self venueCapacity];
  if (venueCapacity == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = @"N/A";
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", venueCapacity];
  }

  v9 = MEMORY[0x277CCACA8];
  name = [(PGGraphBusinessNode *)self name];
  v11 = [v6 componentsJoinedByString:{@", "}];
  v12 = [v9 stringWithFormat:@"%@ [%@] [cap:%@]", name, v11, v8];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSSet)publicEventNodes
{
  collection = [(PGGraphBusinessNode *)self collection];
  publicEventNodes = [collection publicEventNodes];
  temporarySet = [publicEventNodes temporarySet];

  return temporarySet;
}

- (NSSet)businessCategories
{
  collection = [(PGGraphBusinessNode *)self collection];
  categoryNodes = [collection categoryNodes];
  labels = [categoryNodes labels];

  return labels;
}

- (id)propertyDictionary
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"muid";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_muid];
  name = self->_name;
  v13[0] = v3;
  v13[1] = name;
  v12[1] = @"name";
  v12[2] = @"venueCapacity";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_venueCapacity];
  v13[2] = v5;
  v12[3] = @"latitude";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_coordinates.latitude];
  v13[3] = v6;
  v12[4] = @"longitude";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_coordinates.longitude];
  v13[4] = v7;
  v12[5] = @"radius";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_radius];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"muid"];
    v7 = v6;
    if (v6 && [v6 unsignedIntegerValue] != self->_muid)
    {
      goto LABEL_15;
    }

    v8 = [v5 objectForKeyedSubscript:@"name"];
    v7 = v8;
    if (v8)
    {
      if (![v8 isEqual:self->_name])
      {
        goto LABEL_15;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"venueCapacity"];
    v7 = v9;
    if (v9)
    {
      if ([v9 integerValue] != self->_venueCapacity)
      {
        goto LABEL_15;
      }
    }

    v10 = [v5 objectForKeyedSubscript:@"latitude"];
    v7 = v10;
    if (v10)
    {
      [v10 doubleValue];
      if (v11 != self->_coordinates.latitude)
      {
        goto LABEL_15;
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"longitude"];
    v7 = v12;
    if (v12)
    {
      [v12 doubleValue];
      if (v13 != self->_coordinates.longitude)
      {
        goto LABEL_15;
      }
    }

    v14 = [v5 objectForKeyedSubscript:@"radius"];
    v7 = v14;
    if (!v14 || ([v14 doubleValue], v15 == self->_radius))
    {
      v16 = 1;
    }

    else
    {
LABEL_15:
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (PGGraphBusinessNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  v7 = [propertiesCopy objectForKeyedSubscript:@"muid"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [propertiesCopy objectForKeyedSubscript:@"name"];
  v10 = [propertiesCopy objectForKeyedSubscript:@"venueCapacity"];
  integerValue = [v10 integerValue];

  if ([(__CFString *)v9 length])
  {
    v12 = [propertiesCopy objectForKeyedSubscript:@"latitude"];
    [v12 doubleValue];
    v14 = v13;

    v15 = [propertiesCopy objectForKeyedSubscript:@"longitude"];
    [v15 doubleValue];
    v17 = v16;

    v18 = CLLocationCoordinate2DMake(v14, v17);
    latitude = v18.latitude;
    longitude = v18.longitude;
    v21 = [propertiesCopy objectForKeyedSubscript:@"radius"];
    [v21 doubleValue];
    v23 = v22;
  }

  else
  {
    latitude = *MEMORY[0x277CE4278];
    longitude = *(MEMORY[0x277CE4278] + 8);
    v21 = v9;
    v9 = &stru_2843F5C58;
    v23 = 0.0;
  }

  v24 = [(PGGraphBusinessNode *)self initWithMuid:unsignedIntegerValue name:v9 venueCapacity:integerValue coordinates:latitude radius:longitude, v23];
  return v24;
}

- (PGGraphBusinessNode)initWithMuid:(unint64_t)muid name:(id)name venueCapacity:(int64_t)capacity coordinates:(CLLocationCoordinate2D)coordinates radius:(double)radius
{
  longitude = coordinates.longitude;
  latitude = coordinates.latitude;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = PGGraphBusinessNode;
  v15 = [(PGGraphNode *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_muid = muid;
    objc_storeStrong(&v15->_name, name);
    v16->_venueCapacity = capacity;
    v16->_coordinates.latitude = latitude;
    v16->_coordinates.longitude = longitude;
    v16->_radius = radius;
  }

  return v16;
}

+ (MARelation)momentOfBusiness
{
  v2 = +[PGGraphPlaceBusinessEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MARelation)publicEventOfBusiness
{
  v2 = +[PGGraphPublicEventBusinessEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MARelation)categoryOfBusiness
{
  v2 = +[PGGraphBusinessCategoryEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (id)filterWithMuid:(unint64_t)muid
{
  v11[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v10 = @"muid";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:muid];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [filter filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Business" domain:503];

  return v2;
}

@end