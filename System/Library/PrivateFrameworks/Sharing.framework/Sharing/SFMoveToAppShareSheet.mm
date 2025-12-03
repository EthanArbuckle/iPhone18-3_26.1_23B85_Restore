@interface SFMoveToAppShareSheet
- (SFMoveToAppShareSheet)init;
- (SFMoveToAppShareSheet)initWithCoder:(id)coder;
@end

@implementation SFMoveToAppShareSheet

- (SFMoveToAppShareSheet)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SFXPCInvocation *)&v3 init];
}

- (SFMoveToAppShareSheet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1A98548EC(coderCopy);

  return v4;
}

@end