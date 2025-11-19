@interface ATXPOICategoryGroupingResult
- (ATXPOICategoryGroupingResult)initWithEvents:(id)a3 finalPOIWithoutExit:(id)a4;
@end

@implementation ATXPOICategoryGroupingResult

- (ATXPOICategoryGroupingResult)initWithEvents:(id)a3 finalPOIWithoutExit:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXPOICategoryGroupingResult;
  v9 = [(ATXPOICategoryGroupingResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_events, a3);
    objc_storeStrong(&v10->_finalPOIWithoutExit, a4);
  }

  return v10;
}

@end