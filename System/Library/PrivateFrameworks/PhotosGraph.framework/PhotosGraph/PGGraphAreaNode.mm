@interface PGGraphAreaNode
+ (MANodeFilter)blockedFilter;
+ (MANodeFilter)nonBlockedFilter;
+ (MARelation)addressOfArea;
+ (MARelation)countryOfArea;
+ (MARelation)countyOfArea;
+ (MARelation)stateOfArea;
+ (id)filter;
+ (id)filterWithName:(id)a3;
+ (id)filterWithNames:(id)a3;
+ (void)setPopularityScore:(double)a3 onNodeForIdentifier:(unint64_t)a4 inGraph:(id)a5;
- (BOOL)diameterIsLargerThanDiameter:(double)a3;
- (BOOL)hasProperties:(id)a3;
- (CLLocationCoordinate2D)centroidCoordinate;
- (CLLocationCoordinate2D)coordinate;
- (NSString)description;
- (NSString)featureIdentifier;
- (NSString)fullname;
- (PGGraphAreaNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (PGGraphAreaNode)initWithName:(id)a3 isBlocked:(BOOL)a4 popularityScore:(double)a5;
- (PGGraphAreaNodeCollection)collection;
- (PGGraphLocationNode)stateOrBiggerParentLocationNode;
- (id)addressNodes;
- (id)propertyDictionary;
- (id)propertyForKey:(id)a3;
@end

@implementation PGGraphAreaNode

- (CLLocationCoordinate2D)centroidCoordinate
{
  latitude = self->_centroidCoordinate.latitude;
  longitude = self->_centroidCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PGGraphAreaNode *)self name];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, v6];

  return v7;
}

- (PGGraphAreaNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphAreaNodeCollection alloc] initWithNode:self];

  return v2;
}

- (CLLocationCoordinate2D)coordinate
{
  p_centroidCoordinate = &self->_centroidCoordinate;
  if (!CLLocationCoordinate2DIsValid(self->_centroidCoordinate))
  {
    v4 = [(PGGraphAreaNode *)self collection];
    v5 = [v4 addressNodes];
    [v5 centroidCoordinate];
    p_centroidCoordinate->latitude = v6;
    p_centroidCoordinate->longitude = v7;
  }

  latitude = p_centroidCoordinate->latitude;
  longitude = p_centroidCoordinate->longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (id)addressNodes
{
  v2 = [(PGGraphAreaNode *)self collection];
  v3 = [v2 addressNodes];
  v4 = [v3 temporarySet];

  return v4;
}

- (BOOL)diameterIsLargerThanDiameter:(double)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [MEMORY[0x277CBEB58] set];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__PGGraphAreaNode_diameterIsLargerThanDiameter___block_invoke;
  v8[3] = &unk_278888A58;
  v8[4] = self;
  v6 = v5;
  v9 = v6;
  v10 = &v12;
  v11 = a3;
  [(MANode *)self enumerateNeighborNodesThroughEdgesWithLabel:@"AREA" domain:201 usingBlock:v8];
  LOBYTE(self) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return self;
}

void __48__PGGraphAreaNode_diameterIsLargerThanDiameter___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  [v5 coordinate];
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__PGGraphAreaNode_diameterIsLargerThanDiameter___block_invoke_2;
  v15[3] = &unk_278888A30;
  v12 = v5;
  v16 = v12;
  v13 = *(a1 + 40);
  v19 = v8;
  v20 = v10;
  v14 = *(a1 + 48);
  v17 = v13;
  v18 = v14;
  v21 = *(a1 + 56);
  v22 = a3;
  [v11 enumerateNeighborNodesThroughEdgesWithLabel:@"AREA" domain:201 usingBlock:v15];
  [*(a1 + 40) addObject:v12];

  objc_autoreleasePoolPop(v6);
}

void __48__PGGraphAreaNode_diameterIsLargerThanDiameter___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (![*(a1 + 32) isSameNodeAsNode:v5] || (objc_msgSend(*(a1 + 40), "containsObject:", v5) & 1) == 0)
  {
    [v5 coordinate];
    CLLocationCoordinate2DGetDistanceFrom();
    *(*(*(a1 + 48) + 8) + 24) = v6 > *(a1 + 72);
    *a3 = *(*(*(a1 + 48) + 8) + 24);
    **(a1 + 80) = *(*(*(a1 + 48) + 8) + 24);
  }
}

- (PGGraphLocationNode)stateOrBiggerParentLocationNode
{
  v2 = [(PGGraphAreaNode *)self collection];
  v3 = [v2 addressNodes];
  v4 = [v3 anyNode];

  if (v4)
  {
    do
    {
      if ([v4 locationMask] > 0x3F)
      {
        break;
      }

      v5 = [v4 locationNodeCollection];
      v6 = [v5 parentLocationNodes];
      v7 = [v6 anyNode];

      v4 = v7;
    }

    while (v7);
  }

  return v4;
}

- (NSString)fullname
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v4 = [(PGGraphAreaNode *)self name];
  if ([v4 length])
  {
    [v3 addObject:v4];
  }

  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [(PGGraphAreaNode *)self collection];
  v7 = [v6 addressNodes];
  v8 = [v7 anyNode];

  if (v8)
  {
    *&v9 = 138412290;
    v22 = v9;
    do
    {
      v10 = [v8 locationMask];
      if (v10 >= 0x40)
      {
        v11 = v10;
        v12 = [v8 name];
        if (v11 == 128)
        {
          v13 = [v5 localizedStringForCountryCode:v12];

          v12 = v13;
        }

        if ([v12 length])
        {
          [v3 addObject:v12];
        }

        else
        {
          v14 = +[PGLogging sharedLogging];
          v15 = [v14 loggingConnection];

          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v24 = v8;
            _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "Empty location name for node %@", buf, 0xCu);
          }
        }
      }

      v16 = [v8 locationNodeCollection];
      v17 = [v16 parentLocationNodes];
      v18 = [v17 anyNode];

      v8 = v18;
    }

    while (v18);
  }

  v19 = [v3 componentsJoinedByString:{@", "}];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  name = self->_name;
  popularityScore = self->_popularityScore;
  if (popularityScore < 0.0)
  {
    v6 = &stru_2843F5C58;
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@", score: %.3f", *&self->_popularityScore];
  }

  if (*(self + 32))
  {
    v7 = @", blocked";
  }

  else
  {
    v7 = &stru_2843F5C58;
  }

  v8 = [v3 stringWithFormat:@"PGGraphAreaNode (%@%@)%@", name, v6, v7];
  if (popularityScore >= 0.0)
  {
  }

  return v8;
}

- (id)propertyForKey:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"blocked"])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 32) & 1];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"popularityScore"])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_popularityScore];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"name"])
  {
    v5 = self->_name;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Unsupported property '%@' accessed on PGGraphAreaNode.", &v9, 0xCu);
  }

  v6 = 0;
LABEL_8:

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)propertyDictionary
{
  v9[3] = *MEMORY[0x277D85DE8];
  v9[0] = self->_name;
  v8[0] = @"name";
  v8[1] = @"blocked";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 32) & 1];
  v9[1] = v3;
  v8[2] = @"popularityScore";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_popularityScore];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
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
      goto LABEL_9;
    }

    v8 = [v5 objectForKeyedSubscript:@"blocked"];
    v7 = v8;
    if (v8)
    {
      if ([v8 BOOLValue] != (*(self + 32) & 1))
      {
        goto LABEL_9;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"popularityScore"];
    v7 = v9;
    if (!v9 || ([v9 doubleValue], v10 == self->_popularityScore))
    {
      v11 = 1;
    }

    else
    {
LABEL_9:
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (PGGraphAreaNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v6 = a5;
  v7 = [v6 objectForKeyedSubscript:@"name"];
  v8 = [v6 objectForKeyedSubscript:@"blocked"];
  v9 = [v8 BOOLValue];

  v10 = [v6 objectForKeyedSubscript:@"popularityScore"];

  [v10 doubleValue];
  v12 = v11;

  v13 = [(PGGraphAreaNode *)self initWithName:v7 isBlocked:v9 popularityScore:v12];
  return v13;
}

- (PGGraphAreaNode)initWithName:(id)a3 isBlocked:(BOOL)a4 popularityScore:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = PGGraphAreaNode;
  v10 = [(PGGraphNode *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, a3);
    *(v11 + 32) = *(v11 + 32) & 0xFE | a4;
    v11->_centroidCoordinate = *MEMORY[0x277CE4278];
    v11->_popularityScore = a5;
  }

  return v11;
}

+ (MARelation)countryOfArea
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 addressOfArea];
  v9[0] = v3;
  v4 = +[PGGraphAddressNode countryOfAddress];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v2 chain:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (MARelation)stateOfArea
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 addressOfArea];
  v9[0] = v3;
  v4 = +[PGGraphAddressNode stateOfAddress];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v2 chain:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (MARelation)countyOfArea
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 addressOfArea];
  v9[0] = v3;
  v4 = +[PGGraphAddressNode countyOfAddress];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v2 chain:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (MARelation)addressOfArea
{
  v2 = +[PGGraphAreaEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (void)setPopularityScore:(double)a3 onNodeForIdentifier:(unint64_t)a4 inGraph:(id)a5
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a5;
  v9 = [v7 numberWithDouble:a3];
  [v8 persistModelProperty:v9 forKey:@"popularityScore" forNodeWithIdentifier:a4];
}

+ (id)filterWithNames:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 filter];
  v10 = @"name";
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [v5 filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filterWithName:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C78];
  v4 = a3;
  v5 = [v3 alloc];
  v10 = @"name";
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [v5 initWithLabel:@"Area" domain:201 properties:v6];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (MANodeFilter)nonBlockedFilter
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D22C78]);
  v7 = @"blocked";
  v8[0] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 initWithLabel:@"Area" domain:201 properties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (MANodeFilter)blockedFilter
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D22C78]);
  v7 = @"blocked";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 initWithLabel:@"Area" domain:201 properties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Area" domain:201];

  return v2;
}

@end