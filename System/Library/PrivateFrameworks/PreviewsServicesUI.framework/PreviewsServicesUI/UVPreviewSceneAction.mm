@interface UVPreviewSceneAction
+ (id)new;
- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)init;
- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithCoder:(id)a3;
- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithInfo:(id)a3 responder:(id)a4;
- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithXPCDictionary:(id)a3;
- (id)keyDescriptionForSetting:(int64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(int64_t)a5;
@end

@implementation UVPreviewSceneAction

- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(UVPreviewSceneAction *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithXPCDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = [(UVPreviewSceneAction *)&v6 initWithXPCDictionary:a3];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
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

- (id)keyDescriptionForSetting:(int64_t)a3
{
  if (!a3 || a3 == 2 || a3 == 1)
  {
    v3 = sub_25F55F3E8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(int64_t)a5
{
  if (a4)
  {
    v7 = self;
    swift_unknownObjectRetain();
    sub_25F55F4E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v8 = self;
  }

  sub_25F54C8E4(v13, a5);
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

- (_TtC18PreviewsServicesUI20UVPreviewSceneAction)initWithInfo:(id)a3 responder:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end