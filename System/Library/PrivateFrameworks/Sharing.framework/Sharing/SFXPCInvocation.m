@interface SFXPCInvocation
- (SFXPCInvocation)init;
- (SFXPCInvocation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFXPCInvocation

- (SFXPCInvocation)init
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  v5 = sub_1A9976820();
  v7 = v6;

  v8 = (self + OBJC_IVAR___SFXPCInvocation_name);
  *v8 = v5;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SFXPCInvocation();
  return [(SFXPCInvocation *)&v10 init];
}

- (SFXPCInvocation)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1A98548EC(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  if (*&self->name[OBJC_IVAR___SFXPCInvocation_name])
  {
    v4 = *(&self->super.isa + OBJC_IVAR___SFXPCInvocation_name);
    v5 = a3;
    v8 = self;
    v6 = sub_1A99767E0();
    v7 = sub_1A99767E0();
    [v5 encodeObject:v6 forKey:v7];
  }
}

@end