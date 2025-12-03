@interface InternalSettingsObserver
- (_TtC12PhotosUICore24InternalSettingsObserver)init;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation InternalSettingsObserver

- (void)settings:(id)settings changedValueForKey:(id)key
{
  v5 = sub_1A524C674();
  v7 = v6;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore24InternalSettingsObserver_changeHandler);
  selfCopy = self;
  v8(v5, v7);
}

- (_TtC12PhotosUICore24InternalSettingsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end