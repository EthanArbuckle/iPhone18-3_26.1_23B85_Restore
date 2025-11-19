@interface PGGraphAddressNode
+ (MANodeFilter)impreciseFilter;
+ (MANodeFilter)preciseFilter;
+ (MARelation)areaOfAddress;
+ (MARelation)cityOfAddress;
+ (MARelation)countryOfAddress;
+ (MARelation)countyOfAddress;
+ (MARelation)districtOfAddress;
+ (MARelation)frequentLocationOfAddress;
+ (MARelation)homeOfAddress;
+ (MARelation)homeWorkOfAddress;
+ (MARelation)languageOfAddress;
+ (MARelation)momentOfAddress;
+ (MARelation)numberOfAddress;
+ (MARelation)stateOfAddress;
+ (MARelation)streetOfAddress;
+ (MARelation)workOfAddress;
+ (id)continentOfAddress;
+ (id)filter;
+ (id)subcontinentOfAddress;
+ (void)setCoordinate:(CLLocationCoordinate2D)a3 onAddressNodeForIdentifier:(unint64_t)a4 inGraph:(id)a5;
- (BOOL)hasProperties:(id)a3;
- (BOOL)isPersonHomeOrWorkAddress;
- (CLLocation)location;
- (CLLocationCoordinate2D)coordinate;
- (MANodeFilter)uniquelyIdentifyingFilter;
- (NSString)description;
- (PGGraphAddressNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (PGGraphAddressNode)initWithLocationMode:(int64_t)a3 coordinate:(CLLocationCoordinate2D)a4 name:(id)a5;
- (PGGraphAddressNodeCollection)collection;
- (PPLocationNamedEntities)pg_locationNamedEntity;
- (id)featureIdentifier;
- (id)propertyDictionary;
- (id)propertyForKey:(id)a3;
@end

@implementation PGGraphAddressNode

- (PPLocationNamedEntities)pg_locationNamedEntity
{
  v3 = objc_alloc_init(MEMORY[0x277D3A3E0]);
  v4 = [(PGGraphAddressNode *)self collection];
  v5 = [v4 streetNodes];
  v6 = [v5 anyNode];
  v7 = [v6 name];
  [v3 setStreetAddress:v7];

  v8 = [v4 cityNodes];
  v9 = [v8 anyNode];
  v10 = [v9 name];
  [v3 setCity:v10];

  v11 = [v4 stateNodes];
  v12 = [v11 anyNode];
  v13 = [v12 name];
  [v3 setStateOrProvince:v13];

  v14 = [v4 countryNodes];
  v15 = [v14 anyNode];
  v16 = [v15 name];
  [v3 setCountry:v16];

  v17 = [(PGGraphAddressNode *)self location];
  [v3 setLocation:v17];

  return v3;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (id)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@|%@", v5, self->_uuid];

  return v6;
}

- (PGGraphAddressNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphAddressNodeCollection alloc] initWithNode:self];

  return v2;
}

- (BOOL)isPersonHomeOrWorkAddress
{
  v2 = [(MANode *)self anyEdgeWithLabel:@"IS_HOME_WORK" domain:202];
  v3 = v2 != 0;

  return v3;
}

- (CLLocation)location
{
  p_coordinate = &self->_coordinate;
  if (CLLocationCoordinate2DIsValid(self->_coordinate))
  {
    v3 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:p_coordinate->latitude longitude:p_coordinate->longitude];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MANodeFilter)uniquelyIdentifyingFilter
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = +[PGGraphAddressNode filter];
  uuid = self->_uuid;
  v9 = @"uuid";
  v10[0] = uuid;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v3 filterBySettingProperties:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSString)description
{
  locationMode = self->_locationMode;
  if (locationMode > 3)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_278886058[locationMode];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"PGGraphAddressNode (%@, <%f, %f>, %@)", self->_name, *&self->_coordinate.latitude, *&self->_coordinate.longitude, v5, v2, v3];
}

- (id)propertyForKey:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"lm"])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_locationMode];
LABEL_8:
    v8 = v5;
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"lat"])
  {
    v6 = MEMORY[0x277CCABB0];
    latitude = self->_coordinate.latitude;
LABEL_7:
    v5 = [v6 numberWithDouble:latitude];
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"lng"])
  {
    v6 = MEMORY[0x277CCABB0];
    latitude = self->_coordinate.longitude;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"name"])
  {
    v11 = 56;
LABEL_16:
    v5 = *(&self->super.super.super.super.super.isa + v11);
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"uuid"])
  {
    v11 = 64;
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Unsupported property '%@' accessed on PGGraphAddressNode.", &v12, 0xCu);
  }

  v8 = 0;
LABEL_9:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)propertyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_locationMode];
  [v3 setObject:v4 forKeyedSubscript:@"lm"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_coordinate.latitude];
  [v3 setObject:v5 forKeyedSubscript:@"lat"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_coordinate.longitude];
  [v3 setObject:v6 forKeyedSubscript:@"lng"];

  [v3 setObject:self->_name forKeyedSubscript:@"name"];
  [v3 setObject:self->_uuid forKeyedSubscript:@"uuid"];

  return v3;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectForKeyedSubscript:@"lm"];
    v7 = v6;
    if (v6 && self->_locationMode != [v6 shortValue])
    {
      goto LABEL_15;
    }

    v8 = [v5 objectForKeyedSubscript:@"lat"];
    v7 = v8;
    if (v8)
    {
      [v8 doubleValue];
      if (v9 != self->_coordinate.latitude)
      {
        goto LABEL_15;
      }
    }

    v10 = [v5 objectForKeyedSubscript:@"lng"];
    v7 = v10;
    if (v10)
    {
      [v10 doubleValue];
      if (v11 != self->_coordinate.longitude)
      {
        goto LABEL_15;
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"name"];
    v7 = v12;
    if (v12)
    {
      if (![v12 isEqual:self->_name])
      {
        goto LABEL_15;
      }
    }

    v13 = [v5 objectForKeyedSubscript:@"uuid"];
    v7 = v13;
    if (v13 && ![v13 isEqual:self->_uuid])
    {
LABEL_15:
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (PGGraphAddressNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [v6 objectForKeyedSubscript:@"lm"];
  v8 = [v7 integerValue];

  v9 = [v6 objectForKeyedSubscript:@"lat"];
  v10 = [v6 objectForKeyedSubscript:@"lng"];
  v11 = v10;
  if (v9 && v10)
  {
    [v9 doubleValue];
    v13 = v12;
    [v11 doubleValue];
    v15 = CLLocationCoordinate2DMake(v13, v14);
    latitude = v15.latitude;
    longitude = v15.longitude;
  }

  else
  {
    latitude = *MEMORY[0x277CE4278];
    longitude = *(MEMORY[0x277CE4278] + 8);
  }

  v18 = [v6 objectForKeyedSubscript:@"name"];
  v19 = [v18 copy];

  v20 = [(PGGraphAddressNode *)self initWithLocationMode:v8 coordinate:v19 name:latitude, longitude];
  v21 = [v6 objectForKeyedSubscript:@"uuid"];
  v22 = v21;
  if (v21 && ([v21 isEqualToString:v20->_uuid] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      uuid = v20->_uuid;
      v26 = 138412546;
      v27 = uuid;
      v28 = 2112;
      v29 = v22;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Address node has a different uuid than expected, '%@' vs '%@'", &v26, 0x16u);
    }

    objc_storeStrong(&v20->_uuid, v22);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

- (PGGraphAddressNode)initWithLocationMode:(int64_t)a3 coordinate:(CLLocationCoordinate2D)a4 name:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = PGGraphAddressNode;
  v11 = [(PGGraphLocationNode *)&v20 init];
  v12 = v11;
  if (v11)
  {
    *(v11 + 6) = a3;
    v13 = v11 + 72;
    *(v11 + 9) = latitude;
    *(v11 + 10) = longitude;
    objc_storeStrong(v11 + 7, a5);
    name = v12->_name;
    locationMode = v12->_locationMode;
    if (locationMode > 3)
    {
      v16 = @"Unknown";
    }

    else
    {
      v16 = off_278886058[locationMode];
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%f, %f>|%@|%@", *v13, *&v12->_coordinate.longitude, v12->_name, v16];
    uuid = v12->_uuid;
    v12->_uuid = v17;
  }

  return v12;
}

+ (MARelation)frequentLocationOfAddress
{
  v2 = +[PGGraphFrequentLocationAtEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)areaOfAddress
{
  v2 = +[PGGraphAreaEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)momentOfAddress
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphAddressEdge filter];
  v4 = [v3 inRelation];
  v11[0] = v4;
  v5 = +[PGGraphMomentNode filter];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (MARelation)languageOfAddress
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 filter];
  v4 = [v3 relation];
  v5 = +[PGGraphLocationEdge filter];
  v6 = [v5 outRelation];
  v7 = [v6 transitiveClosure];
  v14[1] = v7;
  v8 = +[PGGraphLanguageEdge filter];
  v9 = [v8 outRelation];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v11 = [v2 chain:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)continentOfAddress
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 filter];
  v4 = [v3 relation];
  v5 = +[PGGraphLocationEdge filter];
  v6 = [v5 outRelation];
  v7 = [v6 transitiveClosure];
  v14[1] = v7;
  v8 = +[PGGraphLocationContinentNode filter];
  v9 = [v8 relation];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v11 = [v2 chain:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)subcontinentOfAddress
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 filter];
  v4 = [v3 relation];
  v5 = +[PGGraphLocationEdge filter];
  v6 = [v5 outRelation];
  v7 = [v6 transitiveClosure];
  v14[1] = v7;
  v8 = +[PGGraphLocationSubcontinentNode filter];
  v9 = [v8 relation];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v11 = [v2 chain:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (MARelation)countryOfAddress
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 filter];
  v4 = [v3 relation];
  v5 = +[PGGraphLocationEdge filter];
  v6 = [v5 outRelation];
  v7 = [v6 transitiveClosure];
  v14[1] = v7;
  v8 = +[PGGraphLocationCountryNode filter];
  v9 = [v8 relation];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v11 = [v2 chain:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (MARelation)stateOfAddress
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 filter];
  v4 = [v3 relation];
  v5 = +[PGGraphLocationEdge filter];
  v6 = [v5 outRelation];
  v7 = [v6 transitiveClosure];
  v14[1] = v7;
  v8 = +[PGGraphLocationStateNode filter];
  v9 = [v8 relation];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v11 = [v2 chain:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (MARelation)countyOfAddress
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 filter];
  v4 = [v3 relation];
  v5 = +[PGGraphLocationEdge filter];
  v6 = [v5 outRelation];
  v7 = [v6 transitiveClosure];
  v14[1] = v7;
  v8 = +[PGGraphLocationCountyNode filter];
  v9 = [v8 relation];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v11 = [v2 chain:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (MARelation)cityOfAddress
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 filter];
  v4 = [v3 relation];
  v5 = +[PGGraphLocationEdge filter];
  v6 = [v5 outRelation];
  v7 = [v6 transitiveClosure];
  v14[1] = v7;
  v8 = +[PGGraphLocationCityNode filter];
  v9 = [v8 relation];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v11 = [v2 chain:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (MARelation)districtOfAddress
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 filter];
  v4 = [v3 relation];
  v5 = +[PGGraphLocationEdge filter];
  v6 = [v5 outRelation];
  v7 = [v6 transitiveClosure];
  v14[1] = v7;
  v8 = +[PGGraphLocationDistrictNode filter];
  v9 = [v8 relation];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v11 = [v2 chain:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (MARelation)streetOfAddress
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 filter];
  v4 = [v3 relation];
  v5 = +[PGGraphLocationEdge filter];
  v6 = [v5 outRelation];
  v7 = [v6 transitiveClosure];
  v14[1] = v7;
  v8 = +[PGGraphLocationStreetNode filter];
  v9 = [v8 relation];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v11 = [v2 chain:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (MARelation)numberOfAddress
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphLocationEdge filter];
  v4 = [v3 outRelation];
  v11[0] = v4;
  v5 = +[PGGraphLocationNumberNode filter];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (MARelation)homeWorkOfAddress
{
  v2 = +[PGGraphIsHomeWorkEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)workOfAddress
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphIsHomeWorkEdge filter];
  v4 = [v3 outRelation];
  v11[0] = v4;
  v5 = +[PGGraphHomeWorkNode workFilter];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (MARelation)homeOfAddress
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphIsHomeWorkEdge filter];
  v4 = [v3 outRelation];
  v11[0] = v4;
  v5 = +[PGGraphHomeWorkNode homeFilter];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)setCoordinate:(CLLocationCoordinate2D)a3 onAddressNodeForIdentifier:(unint64_t)a4 inGraph:(id)a5
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"lat";
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v10 = [v8 numberWithDouble:latitude];
  v14[1] = @"lng";
  v15[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:longitude];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v9 persistModelProperties:v12 forNodeWithIdentifier:a4 clobberExisting:0];

  v13 = *MEMORY[0x277D85DE8];
}

+ (MANodeFilter)impreciseFilter
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 filter];
  v7 = @"lm";
  v8[0] = &unk_2844862A0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (MANodeFilter)preciseFilter
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 filter];
  v7 = @"lm";
  v8[0] = &unk_284486288;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Address" domain:200];

  return v2;
}

@end