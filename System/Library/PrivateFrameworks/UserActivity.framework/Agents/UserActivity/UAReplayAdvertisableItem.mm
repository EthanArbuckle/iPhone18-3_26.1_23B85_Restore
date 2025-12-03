@interface UAReplayAdvertisableItem
+ (id)replayableAdvertisableItemWithAdvertisableItem:(id)item;
- (BOOL)wasResumedOnAnotherDeviceWithCompletionHandler:(id)handler;
- (UAReplayAdvertisableItem)initWithCoder:(id)coder;
- (UAReplayAdvertisableItem)initWithUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UAReplayAdvertisableItem

- (UAReplayAdvertisableItem)initWithUUID:(id)d
{
  v7.receiver = self;
  v7.super_class = UAReplayAdvertisableItem;
  v3 = [(UAReplayAdvertisableItem *)&v7 initWithUUID:d type:1 options:0];
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    wasResumed = v3->_wasResumed;
    v3->_wasResumed = v4;
  }

  return v3;
}

- (UAReplayAdvertisableItem)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = UAReplayAdvertisableItem;
  v3 = [(UAReplayAdvertisableItem *)&v7 initWithCoder:coder];
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    wasResumed = v3->_wasResumed;
    v3->_wasResumed = v4;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = UAReplayAdvertisableItem;
  [(UAReplayAdvertisableItem *)&v3 encodeWithCoder:coder];
}

- (BOOL)wasResumedOnAnotherDeviceWithCompletionHandler:(id)handler
{
  wasResumed = [(UAReplayAdvertisableItem *)self wasResumed];

  if (wasResumed)
  {
    wasResumed2 = [(UAReplayAdvertisableItem *)self wasResumed];
    dispatch_semaphore_signal(wasResumed2);
  }

  return 0;
}

+ (id)replayableAdvertisableItemWithAdvertisableItem:(id)item
{
  itemCopy = item;
  v4 = [[UAReplayAdvertisableItem alloc] initWithUserActivityInfo:itemCopy];

  return v4;
}

@end