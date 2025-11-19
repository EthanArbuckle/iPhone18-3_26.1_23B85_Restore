@interface UAReplayAdvertisableItem
+ (id)replayableAdvertisableItemWithAdvertisableItem:(id)a3;
- (BOOL)wasResumedOnAnotherDeviceWithCompletionHandler:(id)a3;
- (UAReplayAdvertisableItem)initWithCoder:(id)a3;
- (UAReplayAdvertisableItem)initWithUUID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UAReplayAdvertisableItem

- (UAReplayAdvertisableItem)initWithUUID:(id)a3
{
  v7.receiver = self;
  v7.super_class = UAReplayAdvertisableItem;
  v3 = [(UAReplayAdvertisableItem *)&v7 initWithUUID:a3 type:1 options:0];
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    wasResumed = v3->_wasResumed;
    v3->_wasResumed = v4;
  }

  return v3;
}

- (UAReplayAdvertisableItem)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = UAReplayAdvertisableItem;
  v3 = [(UAReplayAdvertisableItem *)&v7 initWithCoder:a3];
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    wasResumed = v3->_wasResumed;
    v3->_wasResumed = v4;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = UAReplayAdvertisableItem;
  [(UAReplayAdvertisableItem *)&v3 encodeWithCoder:a3];
}

- (BOOL)wasResumedOnAnotherDeviceWithCompletionHandler:(id)a3
{
  v4 = [(UAReplayAdvertisableItem *)self wasResumed];

  if (v4)
  {
    v5 = [(UAReplayAdvertisableItem *)self wasResumed];
    dispatch_semaphore_signal(v5);
  }

  return 0;
}

+ (id)replayableAdvertisableItemWithAdvertisableItem:(id)a3
{
  v3 = a3;
  v4 = [[UAReplayAdvertisableItem alloc] initWithUserActivityInfo:v3];

  return v4;
}

@end