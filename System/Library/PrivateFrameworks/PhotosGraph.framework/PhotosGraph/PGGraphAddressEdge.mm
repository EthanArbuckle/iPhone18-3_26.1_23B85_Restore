@interface PGGraphAddressEdge
+ (id)filter;
+ (void)setRelevance:(double)relevance onAddressEdgeForIdentifier:(unint64_t)identifier inGraph:(id)graph;
+ (void)setUniversalEndDate:(id)date onAddressEdgeForIdentifier:(unint64_t)identifier inGraph:(id)graph;
+ (void)setUniversalStartDate:(id)date onAddressEdgeForIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (BOOL)hasProperties:(id)properties;
- (CLLocation)photoLocation;
- (CLLocationCoordinate2D)photoCoordinate;
- (MAEdgeFilter)uniquelyIdentifyingFilter;
- (PGGraphAddressEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (double)timestampUTCEnd;
- (double)timestampUTCStart;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)node toAddressNode:(id)addressNode relevance:(double)relevance universalStartDate:(id)date universalEndDate:(id)endDate photoCoordinate:(CLLocationCoordinate2D)coordinate numberOfAssets:(unint64_t)assets;
- (id)propertyDictionary;
@end

@implementation PGGraphAddressEdge

- (CLLocationCoordinate2D)photoCoordinate
{
  latitude = self->_photoCoordinate.latitude;
  longitude = self->_photoCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CLLocation)photoLocation
{
  latitude = self->_photoCoordinate.latitude;
  longitude = self->_photoCoordinate.longitude;
  v7.latitude = latitude;
  v7.longitude = longitude;
  if (CLLocationCoordinate2DIsValid(v7))
  {
    v4 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)timestampUTCEnd
{
  universalEndDate = self->_universalEndDate;
  if (!universalEndDate)
  {
    return 0.0;
  }

  [(NSDate *)universalEndDate timeIntervalSince1970];
  return result;
}

- (double)timestampUTCStart
{
  universalStartDate = self->_universalStartDate;
  if (!universalStartDate)
  {
    return 0.0;
  }

  [(NSDate *)universalStartDate timeIntervalSince1970];
  return result;
}

- (MAEdgeFilter)uniquelyIdentifyingFilter
{
  v2 = objc_opt_class();

  return [v2 filter];
}

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphAddressEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v7 edgeDescription];
  v5 = [v3 stringWithFormat:@"%@ (%.2f, (%.3f, %.3f))", edgeDescription, *&self->_relevance, *&self->_photoCoordinate.latitude, *&self->_photoCoordinate.longitude];

  return v5;
}

- (id)propertyDictionary
{
  v15[6] = *MEMORY[0x277D85DE8];
  v14[0] = @"relevance";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_relevance];
  v15[0] = v3;
  v14[1] = @"utcs";
  v4 = MEMORY[0x277CCABB0];
  [(PGGraphAddressEdge *)self timestampUTCStart];
  v5 = [v4 numberWithDouble:?];
  v15[1] = v5;
  v14[2] = @"utce";
  v6 = MEMORY[0x277CCABB0];
  [(PGGraphAddressEdge *)self timestampUTCEnd];
  v7 = [v6 numberWithDouble:?];
  v15[2] = v7;
  v14[3] = @"lat";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_photoCoordinate.latitude];
  v15[3] = v8;
  v14[4] = @"lng";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_photoCoordinate.longitude];
  v15[4] = v9;
  v14[5] = @"noa";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfAssets];
  v15[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"relevance"];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      if (v8 != self->_relevance)
      {
        goto LABEL_17;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"utcs"];
    v7 = v9;
    if (v9)
    {
      [v9 doubleValue];
      v11 = v10;
      [(PGGraphAddressEdge *)self timestampUTCStart];
      if (v11 != v12)
      {
        goto LABEL_17;
      }
    }

    v13 = [v5 objectForKeyedSubscript:@"utce"];
    v7 = v13;
    if (v13)
    {
      [v13 doubleValue];
      v15 = v14;
      [(PGGraphAddressEdge *)self timestampUTCEnd];
      if (v15 != v16)
      {
        goto LABEL_17;
      }
    }

    v17 = [v5 objectForKeyedSubscript:@"lat"];
    v7 = v17;
    if (v17)
    {
      [v17 doubleValue];
      if (v18 != self->_photoCoordinate.latitude)
      {
        goto LABEL_17;
      }
    }

    v19 = [v5 objectForKeyedSubscript:@"lng"];
    v7 = v19;
    if (v19)
    {
      [v19 doubleValue];
      if (v20 != self->_photoCoordinate.longitude)
      {
        goto LABEL_17;
      }
    }

    v21 = [v5 objectForKeyedSubscript:@"noa"];
    v7 = v21;
    if (v21 && [v21 unsignedIntegerValue] != self->_numberOfAssets)
    {
LABEL_17:
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

- (PGGraphAddressEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  nodeCopy = node;
  targetNodeCopy = targetNode;
  propertiesCopy = properties;
  v13 = [propertiesCopy objectForKeyedSubscript:@"relevance"];
  v14 = v13;
  if (v13)
  {
    [v13 doubleValue];
    v16 = v15;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = [propertiesCopy objectForKeyedSubscript:@"utcs"];
  [v17 doubleValue];
  v19 = v18;

  v20 = [propertiesCopy objectForKeyedSubscript:@"utce"];
  [v20 doubleValue];
  v22 = v21;

  v23 = [propertiesCopy objectForKeyedSubscript:@"lat"];
  v24 = [propertiesCopy objectForKeyedSubscript:@"lng"];
  v25 = [propertiesCopy objectForKeyedSubscript:@"noa"];

  unsignedIntegerValue = [v25 unsignedIntegerValue];
  if (v23 && v24)
  {
    [v23 doubleValue];
    v28 = v27;
    [v24 doubleValue];
    v30 = CLLocationCoordinate2DMake(v28, v29);
    latitude = v30.latitude;
    longitude = v30.longitude;
  }

  else
  {
    latitude = *MEMORY[0x277CE4278];
    longitude = *(MEMORY[0x277CE4278] + 8);
  }

  if (v19 == 0.0)
  {
    v33 = 0;
  }

  else
  {
    v33 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v19];
  }

  if (v22 == 0.0)
  {
    v34 = 0;
  }

  else
  {
    v34 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22];
  }

  longitude = [(PGGraphAddressEdge *)self initFromMomentNode:nodeCopy toAddressNode:targetNodeCopy relevance:v33 universalStartDate:v34 universalEndDate:unsignedIntegerValue photoCoordinate:v16 numberOfAssets:latitude, longitude];

  return longitude;
}

- (id)initFromMomentNode:(id)node toAddressNode:(id)addressNode relevance:(double)relevance universalStartDate:(id)date universalEndDate:(id)endDate photoCoordinate:(CLLocationCoordinate2D)coordinate numberOfAssets:(unint64_t)assets
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  dateCopy = date;
  endDateCopy = endDate;
  v23.receiver = self;
  v23.super_class = PGGraphAddressEdge;
  v20 = [(PGGraphEdge *)&v23 initWithSourceNode:node targetNode:addressNode];
  v21 = v20;
  if (v20)
  {
    v20->_relevance = relevance;
    objc_storeStrong(&v20->_universalStartDate, date);
    objc_storeStrong(&v21->_universalEndDate, endDate);
    v21->_photoCoordinate.latitude = latitude;
    v21->_photoCoordinate.longitude = longitude;
    v21->_numberOfAssets = assets;
  }

  return v21;
}

+ (void)setUniversalEndDate:(id)date onAddressEdgeForIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graphCopy = graph;
  [date timeIntervalSince1970];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [graphCopy persistModelProperty:v8 forKey:@"utce" forEdgeWithIdentifier:identifier];
}

+ (void)setUniversalStartDate:(id)date onAddressEdgeForIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graphCopy = graph;
  [date timeIntervalSince1970];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [graphCopy persistModelProperty:v8 forKey:@"utcs" forEdgeWithIdentifier:identifier];
}

+ (void)setRelevance:(double)relevance onAddressEdgeForIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  v7 = MEMORY[0x277CCABB0];
  graphCopy = graph;
  v9 = [v7 numberWithDouble:relevance];
  [graphCopy persistModelProperty:v9 forKey:@"relevance" forEdgeWithIdentifier:identifier];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"ADDRESS" domain:200];

  return v2;
}

@end