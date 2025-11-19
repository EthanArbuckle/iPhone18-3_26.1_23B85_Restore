@interface PGGraphFrequentLocationNode
+ (id)addressOfFrequentLocation;
+ (id)filter;
+ (id)momentOfFrequentLocation;
- (BOOL)hasProperties:(id)a3;
- (NSDate)universalEndDate;
- (NSDate)universalStartDate;
- (NSString)description;
- (NSString)featureIdentifier;
- (PGGraphAddressNode)addressNode;
- (PGGraphFrequentLocationNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (PGGraphFrequentLocationNode)initWithUniversalDateInterval:(id)a3;
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
  v6 = [(PGGraphFrequentLocationNode *)self universalStartDate];
  v7 = [(PGGraphFrequentLocationNode *)self universalEndDate];
  v8 = [v3 stringWithFormat:@"%@|%@|%@", v5, v6, v7];

  return v8;
}

- (PGGraphFrequentLocationNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphFrequentLocationNodeCollection alloc] initWithNode:self];

  return v2;
}

- (NSString)description
{
  v3 = [(PGGraphFrequentLocationNode *)self addressNode];
  [v3 coordinate];
  v5 = v4;
  v7 = v6;
  v8 = [(PGGraphFrequentLocationNode *)self universalDateInterval];
  v9 = [v3 keywordDescription];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v8 startDate];
  v14 = [v8 endDate];
  v15 = [v10 stringWithFormat:@"%@ ([%@ - %@] %@ <%f, %f> %zu moments)", v12, v13, v14, v9, v5, v7, -[PGGraphFrequentLocationNode numberOfMomentNodes](self, "numberOfMomentNodes")];

  return v15;
}

- (unint64_t)numberOfMomentNodes
{
  v2 = [(PGGraphFrequentLocationNode *)self collection];
  v3 = [v2 momentNodes];
  v4 = [v3 count];

  return v4;
}

- (PGGraphAddressNode)addressNode
{
  v2 = [(PGGraphFrequentLocationNode *)self collection];
  v3 = [v2 addressNodes];
  v4 = [v3 anyNode];

  return v4;
}

- (NSDate)universalEndDate
{
  v2 = [(PGGraphFrequentLocationNode *)self universalDateInterval];
  v3 = [v2 endDate];

  return v3;
}

- (NSDate)universalStartDate
{
  v2 = [(PGGraphFrequentLocationNode *)self universalDateInterval];
  v3 = [v2 startDate];

  return v3;
}

- (id)propertyDictionary
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"universalStartDate";
  v3 = MEMORY[0x277CCABB0];
  v4 = [(NSDateInterval *)self->_universalDateInterval startDate];
  [v4 timeIntervalSinceReferenceDate];
  v5 = [v3 numberWithDouble:?];
  v12[1] = @"universalEndDate";
  v13[0] = v5;
  v6 = MEMORY[0x277CCABB0];
  v7 = [(NSDateInterval *)self->_universalDateInterval endDate];
  [v7 timeIntervalSinceReferenceDate];
  v8 = [v6 numberWithDouble:?];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 count])
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
  v10 = [(NSDateInterval *)self->_universalDateInterval startDate];
  [v10 timeIntervalSinceReferenceDate];
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
      v18 = [(NSDateInterval *)self->_universalDateInterval endDate];
      [v18 timeIntervalSinceReferenceDate];
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

- (PGGraphFrequentLocationNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v6 = a5;
  v7 = [v6 objectForKeyedSubscript:@"universalStartDate"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v6 objectForKeyedSubscript:@"universalEndDate"];

  [v10 doubleValue];
  v12 = v11;

  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v12];
  v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v14];
  v16 = [(PGGraphFrequentLocationNode *)self initWithUniversalDateInterval:v15];

  return v16;
}

- (PGGraphFrequentLocationNode)initWithUniversalDateInterval:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphFrequentLocationNode;
  v6 = [(PGGraphNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_universalDateInterval, a3);
  }

  return v7;
}

+ (id)momentOfFrequentLocation
{
  v2 = +[PGGraphFrequentLocationInEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (id)addressOfFrequentLocation
{
  v2 = +[PGGraphFrequentLocationAtEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"FrequentLocation" domain:204];

  return v2;
}

@end