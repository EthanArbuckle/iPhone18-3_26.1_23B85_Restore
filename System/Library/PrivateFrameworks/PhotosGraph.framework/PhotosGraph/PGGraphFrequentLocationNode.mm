@interface PGGraphFrequentLocationNode
+ (id)addressOfFrequentLocation;
+ (id)filter;
+ (id)momentOfFrequentLocation;
- (BOOL)hasProperties:(id)properties;
- (NSDate)universalEndDate;
- (NSDate)universalStartDate;
- (NSString)description;
- (NSString)featureIdentifier;
- (PGGraphAddressNode)addressNode;
- (PGGraphFrequentLocationNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphFrequentLocationNode)initWithUniversalDateInterval:(id)interval;
- (PGGraphFrequentLocationNodeCollection)collection;
- (id)propertyDictionary;
- (unint64_t)numberOfMomentNodes;
@end

@implementation PGGraphFrequentLocationNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  universalStartDate = [(PGGraphFrequentLocationNode *)self universalStartDate];
  universalEndDate = [(PGGraphFrequentLocationNode *)self universalEndDate];
  v8 = [v3 stringWithFormat:@"%@|%@|%@", v5, universalStartDate, universalEndDate];

  return v8;
}

- (PGGraphFrequentLocationNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphFrequentLocationNodeCollection alloc] initWithNode:self];

  return v2;
}

- (NSString)description
{
  addressNode = [(PGGraphFrequentLocationNode *)self addressNode];
  [addressNode coordinate];
  v5 = v4;
  v7 = v6;
  universalDateInterval = [(PGGraphFrequentLocationNode *)self universalDateInterval];
  keywordDescription = [addressNode keywordDescription];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  startDate = [universalDateInterval startDate];
  endDate = [universalDateInterval endDate];
  v15 = [v10 stringWithFormat:@"%@ ([%@ - %@] %@ <%f, %f> %zu moments)", v12, startDate, endDate, keywordDescription, v5, v7, -[PGGraphFrequentLocationNode numberOfMomentNodes](self, "numberOfMomentNodes")];

  return v15;
}

- (unint64_t)numberOfMomentNodes
{
  collection = [(PGGraphFrequentLocationNode *)self collection];
  momentNodes = [collection momentNodes];
  v4 = [momentNodes count];

  return v4;
}

- (PGGraphAddressNode)addressNode
{
  collection = [(PGGraphFrequentLocationNode *)self collection];
  addressNodes = [collection addressNodes];
  anyNode = [addressNodes anyNode];

  return anyNode;
}

- (NSDate)universalEndDate
{
  universalDateInterval = [(PGGraphFrequentLocationNode *)self universalDateInterval];
  endDate = [universalDateInterval endDate];

  return endDate;
}

- (NSDate)universalStartDate
{
  universalDateInterval = [(PGGraphFrequentLocationNode *)self universalDateInterval];
  startDate = [universalDateInterval startDate];

  return startDate;
}

- (id)propertyDictionary
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"universalStartDate";
  v3 = MEMORY[0x277CCABB0];
  startDate = [(NSDateInterval *)self->_universalDateInterval startDate];
  [startDate timeIntervalSinceReferenceDate];
  v5 = [v3 numberWithDouble:?];
  v12[1] = @"universalEndDate";
  v13[0] = v5;
  v6 = MEMORY[0x277CCABB0];
  endDate = [(NSDateInterval *)self->_universalDateInterval endDate];
  [endDate timeIntervalSinceReferenceDate];
  v8 = [v6 numberWithDouble:?];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (!propertiesCopy || ![propertiesCopy count])
  {
    goto LABEL_8;
  }

  v6 = [v5 objectForKeyedSubscript:@"universalStartDate"];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  [v6 doubleValue];
  v9 = v8;
  startDate = [(NSDateInterval *)self->_universalDateInterval startDate];
  [startDate timeIntervalSinceReferenceDate];
  v12 = v11;

  if (v9 == v12)
  {
LABEL_6:
    v14 = [v5 objectForKeyedSubscript:@"universalEndDate"];
    if (v14)
    {
      v15 = v14;
      [v14 doubleValue];
      v17 = v16;
      endDate = [(NSDateInterval *)self->_universalDateInterval endDate];
      [endDate timeIntervalSinceReferenceDate];
      v13 = v17 == v19;

      goto LABEL_9;
    }

LABEL_8:
    v13 = 1;
    goto LABEL_9;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (PGGraphFrequentLocationNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  v7 = [propertiesCopy objectForKeyedSubscript:@"universalStartDate"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [propertiesCopy objectForKeyedSubscript:@"universalEndDate"];

  [v10 doubleValue];
  v12 = v11;

  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v12];
  v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v14];
  v16 = [(PGGraphFrequentLocationNode *)self initWithUniversalDateInterval:v15];

  return v16;
}

- (PGGraphFrequentLocationNode)initWithUniversalDateInterval:(id)interval
{
  intervalCopy = interval;
  v9.receiver = self;
  v9.super_class = PGGraphFrequentLocationNode;
  v6 = [(PGGraphNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_universalDateInterval, interval);
  }

  return v7;
}

+ (id)momentOfFrequentLocation
{
  v2 = +[PGGraphFrequentLocationInEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (id)addressOfFrequentLocation
{
  v2 = +[PGGraphFrequentLocationAtEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"FrequentLocation" domain:204];

  return v2;
}

@end