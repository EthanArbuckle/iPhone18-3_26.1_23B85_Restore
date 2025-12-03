@interface ATXPOICategoryGroupingResult
- (ATXPOICategoryGroupingResult)initWithEvents:(id)events finalPOIWithoutExit:(id)exit;
@end

@implementation ATXPOICategoryGroupingResult

- (ATXPOICategoryGroupingResult)initWithEvents:(id)events finalPOIWithoutExit:(id)exit
{
  eventsCopy = events;
  exitCopy = exit;
  v12.receiver = self;
  v12.super_class = ATXPOICategoryGroupingResult;
  v9 = [(ATXPOICategoryGroupingResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_events, events);
    objc_storeStrong(&v10->_finalPOIWithoutExit, exit);
  }

  return v10;
}

@end