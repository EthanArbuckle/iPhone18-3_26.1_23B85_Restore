@interface UVPreviewSceneAction
+ (id)new;
- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)init;
- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithCoder:(id)coder;
- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithInfo:(id)info responder:(id)responder;
- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithXPCDictionary:(id)dictionary;
- (id)keyDescriptionForSetting:(int64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(int64_t)setting;
@end

@implementation UVPreviewSceneAction

- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(UVPreviewSceneAction *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = [(UVPreviewSceneAction *)&v6 initWithXPCDictionary:dictionary];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  result = sub_25F55F558();
  __break(1u);
  return result;
}

+ (id)new
{
  result = sub_25F55F558();
  __break(1u);
  return result;
}

- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)init
{
  result = sub_25F55F558();
  __break(1u);
  return result;
}

- (id)keyDescriptionForSetting:(int64_t)setting
{
  if (!setting || setting == 2 || setting == 1)
  {
    v3 = sub_25F55F3E8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(int64_t)setting
{
  if (object)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_25F55F4E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    selfCopy2 = self;
  }

  sub_25F54C8E4(v13, setting);
  v10 = v9;

  sub_25F54CBF4(v13, &qword_27FD9A730, &qword_25F560C58);
  if (v10)
  {
    v11 = sub_25F55F3E8();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithInfo:(id)info responder:(id)responder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end