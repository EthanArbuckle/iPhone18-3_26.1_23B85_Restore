@interface HomeScreenIconContentReusableViewConnector
- (_TtC11PosterBoard42HomeScreenIconContentReusableViewConnector)init;
@end

@implementation HomeScreenIconContentReusableViewConnector

- (_TtC11PosterBoard42HomeScreenIconContentReusableViewConnector)init
{
  *(&self->super.isa + OBJC_IVAR____TtC11PosterBoard42HomeScreenIconContentReusableViewConnector_homeScreenIconContentLayout) = 0;
  v3 = OBJC_IVAR____TtC11PosterBoard42HomeScreenIconContentReusableViewConnector_reusableHomeScreenIconContentViews;
  *(&self->super.isa + v3) = [objc_opt_self() strongToStrongObjectsMapTable];
  *(&self->super.isa + OBJC_IVAR____TtC11PosterBoard42HomeScreenIconContentReusableViewConnector_maximumNumberOfCachedIconContentViews) = 10;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomeScreenIconContentReusableViewConnector();
  return [(HomeScreenIconContentReusableViewConnector *)&v5 init];
}

@end