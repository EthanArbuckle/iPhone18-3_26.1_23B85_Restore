@interface SFMoveToAppShareSheet
- (SFMoveToAppShareSheet)init;
- (SFMoveToAppShareSheet)initWithCoder:(id)a3;
@end

@implementation SFMoveToAppShareSheet

- (SFMoveToAppShareSheet)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SFXPCInvocation *)&v3 init];
}

- (SFMoveToAppShareSheet)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1A98548EC(v3);

  return v4;
}

@end