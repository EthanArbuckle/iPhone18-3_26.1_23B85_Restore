@interface ProfileActivation
- (NSString)description;
- (NSString)identifier;
- (_TtC13ShellSceneKit17ProfileActivation)init;
- (_TtC13ShellSceneKit17ProfileActivation)initWithIdentifier:(id)identifier inControl:(BOOL)control;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation ProfileActivation

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier);
  v3 = *(self + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier + 8);

  v4 = sub_265FEC0D0();

  return v4;
}

- (_TtC13ShellSceneKit17ProfileActivation)init
{
  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

- (_TtC13ShellSceneKit17ProfileActivation)initWithIdentifier:(id)identifier inControl:(BOOL)control
{
  ObjectType = swift_getObjectType();
  v7 = sub_265FEC0E0();
  v8 = (self + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier);
  *v8 = v7;
  v8[1] = v9;
  *(self + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_inControl) = control;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(ProfileActivation *)&v11 init];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5 = *(self + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier);
  v6 = *(self + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier + 8);
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_265FEC0D0();
  v9 = sub_265FEC0D0();
  [coder encodeObject:v8 forKey:v9];

  v10 = *(selfCopy + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_inControl);
  v11 = sub_265FEC0D0();
  [coder encodeBool:v10 forKey:v11];
  swift_unknownObjectRelease();
}

- (NSString)description
{
  selfCopy = self;
  ProfileActivation.description.getter();

  v3 = sub_265FEC0D0();

  return v3;
}

@end