@interface RTVisit(VisitManager)
- (uint64_t)initWithDefaultsDictionanry:()VisitManager;
@end

@implementation RTVisit(VisitManager)

- (uint64_t)initWithDefaultsDictionanry:()VisitManager
{
  v4 = a3;
  v5 = [v4 objectForKey:@"VisitIncidentDate"];
  v6 = MEMORY[0x277D01428];
  v7 = [v4 objectForKey:@"VisitIncidentType"];
  v8 = [v6 visitIncidentTypeFromString:v7];

  v9 = [v4 objectForKey:@"Latitude"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v4 objectForKey:@"Longitude"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v4 objectForKey:@"Uncertainty"];
  [v15 doubleValue];
  v17 = v16;

  v18 = [objc_alloc(MEMORY[0x277D01160]) initWithLatitude:v5 longitude:v11 horizontalUncertainty:v14 date:v17];
  v19 = [v4 objectForKey:@"VisitIncidentEntryDate"];
  v20 = [v4 objectForKey:@"VisitIncidentExitDate"];
  v21 = [v4 objectForKey:@"Confidence"];

  [v21 doubleValue];
  v23 = v22;

  v24 = [self initWithDate:v5 type:v8 location:v18 entry:v19 exit:v20 dataPointCount:0 confidence:v23 placeInference:0];
  return v24;
}

@end