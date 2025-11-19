@interface HVNotificationStacksContentStream
- (BOOL)pruneEventsWithError:(id *)a3 predicateBlock:(id)a4;
- (HVNotificationStacksContentStream)init;
- (HVNotificationStacksContentStream)initWithStreamIdentifier:(id)a3;
- (HVNotificationStacksContentStream)initWithStreamIdentifier:(id)a3 eventClass:(Class)a4;
- (id)publisherFromStartTime:(double)a3;
- (void)pruneWithPredicateBlock:(id)a3;
@end

@implementation HVNotificationStacksContentStream

- (BOOL)pruneEventsWithError:(id *)a3 predicateBlock:(id)a4
{
  stream = self->_stream;
  v5 = a4;
  v6 = [(BMStream *)stream pruner];
  [v6 deleteEventsPassingTest:v5];

  return 1;
}

- (void)pruneWithPredicateBlock:(id)a3
{
  stream = self->_stream;
  v4 = a3;
  v5 = [(BMStream *)stream pruner];
  [v5 deleteEventsPassingTest:v4];
}

- (id)publisherFromStartTime:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a3];
  v5 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v4 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v6 = [(BMStream *)self->_stream publisherWithOptions:v5];

  return v6;
}

- (HVNotificationStacksContentStream)initWithStreamIdentifier:(id)a3 eventClass:(Class)a4
{
  v10.receiver = self;
  v10.super_class = HVNotificationStacksContentStream;
  v4 = [(BMContentStream *)&v10 initWithStreamIdentifier:a3 eventClass:a4];
  if (v4)
  {
    v5 = BiomeLibrary();
    v6 = [v5 ProactiveHarvesting];
    v7 = [v6 NotificationStacks];
    stream = v4->_stream;
    v4->_stream = v7;
  }

  return v4;
}

- (HVNotificationStacksContentStream)initWithStreamIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HVNotificationStacksContentStream *)self initWithStreamIdentifier:v4 eventClass:objc_opt_class()];

  return v5;
}

- (HVNotificationStacksContentStream)init
{
  v3 = BiomeLibrary();
  v4 = [v3 ProactiveHarvesting];
  v5 = [v4 NotificationStacks];
  v6 = [v5 identifier];
  v7 = [(HVNotificationStacksContentStream *)self initWithStreamIdentifier:v6 eventClass:objc_opt_class()];

  return v7;
}

@end