@interface PosterConfiguration
- (NSString)descriptorIdentifier;
- (NSString)role;
- (_TtC11PosterModel19PosterConfiguration)init;
- (_TtC11PosterModel19PosterConfiguration)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PosterConfiguration

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11PosterModel19PosterConfiguration_pathValidityExtension);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for PosterConfiguration();
  [(PosterConfiguration *)&v5 dealloc];
}

- (NSString)descriptorIdentifier
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path);
  selfCopy = self;
  serverIdentity = [v2 serverIdentity];
  if (serverIdentity && (v5 = serverIdentity, v6 = [serverIdentity descriptorIdentifier], v5, v6))
  {
    sub_25EDBC388();
  }

  else
  {
  }

  v7 = sub_25EDBC378();

  return v7;
}

- (NSString)role
{
  role = [*(&self->super.isa + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path) role];

  return role;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_25EDBC378();
  [coderCopy encodeObject:v4 forKey:v6];
}

- (_TtC11PosterModel19PosterConfiguration)initWithCoder:(id)coder
{
  sub_25EDB6A10();
  coderCopy = coder;
  v5 = sub_25EDBC3E8();
  if (v5)
  {
    v6 = v5;
    v7 = objc_allocWithZone(type metadata accessor for PosterConfiguration());
    v8 = sub_25EDB6920(v6);

    coderCopy = v6;
  }

  else
  {
    v8 = 0;
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (_TtC11PosterModel19PosterConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end