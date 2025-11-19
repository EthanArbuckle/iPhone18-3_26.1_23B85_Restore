@interface ICSharedListeningConnectionReportEvent
- (ICSharedListeningConnectionReportEvent)initWithName:(id)a3;
- (double)duration;
- (void)addSubEvent:(id)a3;
@end

@implementation ICSharedListeningConnectionReportEvent

- (double)duration
{
  v3 = [(ICSharedListeningConnectionReportEvent *)self endDate];
  v4 = [(ICSharedListeningConnectionReportEvent *)self startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (void)addSubEvent:(id)a3
{
  v4 = a3;
  v5 = [(ICSharedListeningConnectionReportEvent *)self subEvents];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(ICSharedListeningConnectionReportEvent *)self setSubEvents:v6];
  }

  v7 = [(ICSharedListeningConnectionReportEvent *)self subEvents];
  [v7 addObject:v4];
}

- (ICSharedListeningConnectionReportEvent)initWithName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ICSharedListeningConnectionReportEvent;
  v6 = [(ICSharedListeningConnectionReportEvent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v8 = [MEMORY[0x1E695DF00] date];
    startDate = v7->_startDate;
    v7->_startDate = v8;
  }

  return v7;
}

@end