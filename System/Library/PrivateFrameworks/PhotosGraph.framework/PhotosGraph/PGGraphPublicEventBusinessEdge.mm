@interface PGGraphPublicEventBusinessEdge
+ (id)filter;
- (PGGraphPublicEventBusinessEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7;
@end

@implementation PGGraphPublicEventBusinessEdge

- (PGGraphPublicEventBusinessEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a7;
  v13 = [v12 objectForKeyedSubscript:@"confidence"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v12 objectForKeyedSubscript:@"routine"];
  v17 = [v16 BOOLValue];

  v18 = [v12 objectForKeyedSubscript:@"universalStartDate"];
  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v18 doubleValue];
    v20 = [v19 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v12 objectForKeyedSubscript:@"universalEndDate"];

  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v21 doubleValue];
    v23 = [v22 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v23 = 0;
  }

  v24 = [(PGGraphPublicEventBusinessEdge *)self initFromPublicEventNode:v10 toBusinessNode:v11 confidence:v17 hasRoutineInfo:v20 universalStartDate:v23 universalEndDate:v15];

  return v24;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"PUBLIC_EVENT_BUSINESS" domain:900];

  return v2;
}

@end