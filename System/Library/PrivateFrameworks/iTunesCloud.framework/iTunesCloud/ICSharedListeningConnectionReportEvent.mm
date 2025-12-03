@interface ICSharedListeningConnectionReportEvent
- (ICSharedListeningConnectionReportEvent)initWithName:(id)name;
- (double)duration;
- (void)addSubEvent:(id)event;
@end

@implementation ICSharedListeningConnectionReportEvent

- (double)duration
{
  endDate = [(ICSharedListeningConnectionReportEvent *)self endDate];
  startDate = [(ICSharedListeningConnectionReportEvent *)self startDate];
  [endDate timeIntervalSinceDate:startDate];
  v6 = v5;

  return v6;
}

- (void)addSubEvent:(id)event
{
  eventCopy = event;
  subEvents = [(ICSharedListeningConnectionReportEvent *)self subEvents];

  if (!subEvents)
  {
    v6 = objc_opt_new();
    [(ICSharedListeningConnectionReportEvent *)self setSubEvents:v6];
  }

  subEvents2 = [(ICSharedListeningConnectionReportEvent *)self subEvents];
  [subEvents2 addObject:eventCopy];
}

- (ICSharedListeningConnectionReportEvent)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = ICSharedListeningConnectionReportEvent;
  v6 = [(ICSharedListeningConnectionReportEvent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    date = [MEMORY[0x1E695DF00] date];
    startDate = v7->_startDate;
    v7->_startDate = date;
  }

  return v7;
}

@end