@interface JSDurationObject
- (_TtC10PodcastsUI16JSDurationObject)init;
- (id)format:(id)format :(id)a4;
@end

@implementation JSDurationObject

- (_TtC10PodcastsUI16JSDurationObject)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSDurationObject *)&v3 init];
}

- (id)format:(id)format :(id)a4
{
  swift_getObjectType();
  sub_21B460B84();
  formatCopy = format;
  v7 = a4;
  v8 = sub_21B4CA0C8();
  v9 = sub_21B4CA0D8();

  return v9;
}

@end