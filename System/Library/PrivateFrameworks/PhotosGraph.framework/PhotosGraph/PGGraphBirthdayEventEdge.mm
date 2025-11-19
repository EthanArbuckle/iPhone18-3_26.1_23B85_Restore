@interface PGGraphBirthdayEventEdge
+ (id)filter;
+ (id)propertyDictionaryWithConfidence:(double)a3;
- (BOOL)hasProperties:(id)a3;
- (PGGraphBirthdayEventEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)a3 toPersonNode:(id)a4 confidence:(double)a5;
- (id)propertyDictionary;
@end

@implementation PGGraphBirthdayEventEdge

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphBirthdayEventEdge;
  v4 = [(PGGraphOptimizedEdge *)&v7 edgeDescription];
  v5 = [v3 stringWithFormat:@"%@ (%.2f)", v4, *&self->_confidence];

  return v5;
}

- (id)propertyDictionary
{
  v3 = objc_opt_class();
  confidence = self->_confidence;

  return [v3 propertyDictionaryWithConfidence:confidence];
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectForKeyedSubscript:@"confidence"];
    v7 = v6;
    v9 = 1;
    if (v6)
    {
      [v6 doubleValue];
      if (v8 != self->_confidence)
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (PGGraphBirthdayEventEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7
{
  v10 = a5;
  v11 = a4;
  v12 = [a7 objectForKeyedSubscript:@"confidence"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [(PGGraphBirthdayEventEdge *)self initFromMomentNode:v11 toPersonNode:v10 confidence:v14];
  return v15;
}

- (id)initFromMomentNode:(id)a3 toPersonNode:(id)a4 confidence:(double)a5
{
  v7.receiver = self;
  v7.super_class = PGGraphBirthdayEventEdge;
  result = [(PGGraphEdge *)&v7 initWithSourceNode:a3 targetNode:a4];
  if (result)
  {
    *(result + 5) = a5;
  }

  return result;
}

+ (id)propertyDictionaryWithConfidence:(double)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"confidence";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"BIRTHDAY" domain:301];

  return v2;
}

@end