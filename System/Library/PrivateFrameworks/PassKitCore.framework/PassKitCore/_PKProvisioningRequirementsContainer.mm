@interface _PKProvisioningRequirementsContainer
- (BOOL)containsNotManagedAccount;
- (NSString)provisioningSID;
- (_PKProvisioningRequirementsContainer)init;
- (id)containerMinus:(id)minus;
- (id)displayableError;
- (void)encodeWithCoder:(id)coder;
- (void)setProvisioningSID:(id)d;
@end

@implementation _PKProvisioningRequirementsContainer

- (NSString)provisioningSID
{
  v2 = self + OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_1ADB06370();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setProvisioningSID:(id)d
{
  if (d)
  {
    v4 = sub_1ADB063B0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (id)containerMinus:(id)minus
{
  minusCopy = minus;
  selfCopy = self;
  v6 = sub_1AD4F2FA4(minusCopy);

  return v6;
}

- (BOOL)containsNotManagedAccount
{
  selfCopy = self;
  sub_1AD4F31D4();
  v4 = v3;

  return v4 & 1;
}

- (id)displayableError
{
  selfCopy = self;
  v3 = sub_1AD4F3354();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1AD4F3B88(coderCopy);
}

- (_PKProvisioningRequirementsContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end