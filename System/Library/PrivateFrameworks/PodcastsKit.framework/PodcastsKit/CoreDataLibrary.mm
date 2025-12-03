@interface CoreDataLibrary
- (PKSubscriptionController)subscriptionController;
- (_TtC11PodcastsKit15CoreDataLibrary)init;
- (void)fetchMatchesFor:(id)for limit:(int64_t)limit resultsHandler:(id)handler;
- (void)setSubscriptionController:(id)controller;
@end

@implementation CoreDataLibrary

- (PKSubscriptionController)subscriptionController
{
  selfCopy = self;
  v3 = sub_25EA0E3F4();

  return v3;
}

- (void)setSubscriptionController:(id)controller
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11PodcastsKit15CoreDataLibrary____lazy_storage___subscriptionController);
  *(&self->super.isa + OBJC_IVAR____TtC11PodcastsKit15CoreDataLibrary____lazy_storage___subscriptionController) = controller;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)fetchMatchesFor:(id)for limit:(int64_t)limit resultsHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_25EA1E648();
  v10 = v9;
  _Block_copy(v7);
  selfCopy = self;
  sub_25EA0EC98(v8, v10, limit, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (_TtC11PodcastsKit15CoreDataLibrary)init
{
  *(&self->super.isa + OBJC_IVAR____TtC11PodcastsKit15CoreDataLibrary____lazy_storage___subscriptionController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CoreDataLibrary();
  return [(CoreDataLibrary *)&v3 init];
}

@end