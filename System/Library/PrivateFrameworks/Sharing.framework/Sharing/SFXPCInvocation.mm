@interface SFXPCInvocation
- (SFXPCInvocation)init;
- (SFXPCInvocation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (SFXPCInvocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1A98548EC(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  if (*&self->name[OBJC_IVAR___SFXPCInvocation_name])
  {
    v4 = *(&self->super.isa + OBJC_IVAR___SFXPCInvocation_name);
    coderCopy = coder;
    selfCopy = self;
    v6 = sub_1A99767E0();
    v7 = sub_1A99767E0();
    [coderCopy encodeObject:v6 forKey:v7];
  }
}

@end