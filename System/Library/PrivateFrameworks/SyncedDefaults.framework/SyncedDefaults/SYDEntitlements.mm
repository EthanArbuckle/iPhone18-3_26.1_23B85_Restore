@interface SYDEntitlements
- (NSString)storeIdentifier;
- (SYDEntitlements)init;
- (SYDEntitlements)initWithAuditToken:(id *)token;
- (SYDEntitlements)initWithBundleRecord:(id)record;
- (id)relatedApplicationsForStoreIdentifier:(id)identifier;
- (id)valueForEntitlement:(id)entitlement;
@end

@implementation SYDEntitlements

- (SYDEntitlements)initWithAuditToken:(id *)token
{
  v4 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &token);
  v6 = (&self->super.isa + OBJC_IVAR___SYDEntitlements_entitlements);
  if (v5)
  {
    v6[3] = &_s22SYDSecTaskEntitlementsVN;
    v6[4] = &off_1F4842730;
    *v6 = v5;
  }

  else
  {
    v6[3] = &_s17SYDNoEntitlementsVN;
    v6[4] = &off_1F4842740;
  }

  v8.receiver = self;
  v8.super_class = SYDEntitlements;
  return [(SYDEntitlements *)&v8 init];
}

- (id)valueForEntitlement:(id)entitlement
{
  v4 = sub_1C86395DC();
  v6 = v5;
  v7 = *&self->entitlements[OBJC_IVAR___SYDEntitlements_entitlements + 16];
  v8 = *&self->entitlements[OBJC_IVAR___SYDEntitlements_entitlements + 24];
  __swift_project_boxed_opaque_existential_0((&self->super.isa + OBJC_IVAR___SYDEntitlements_entitlements), v7);
  v9 = *(v8 + 8);
  selfCopy = self;
  v11 = v9(v4, v6, v7, v8);

  if (v11)
  {
    v14[3] = swift_getObjectType();

    v14[0] = v11;
    v12 = sub_1C863967C();
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

- (SYDEntitlements)init
{
  v3 = SecTaskCreateFromSelf(0);
  v4 = (&self->super.isa + OBJC_IVAR___SYDEntitlements_entitlements);
  if (v3)
  {
    v4[3] = &_s22SYDSecTaskEntitlementsVN;
    v4[4] = &off_1F4842730;
    *v4 = v3;
  }

  else
  {
    v4[3] = &_s17SYDNoEntitlementsVN;
    v4[4] = &off_1F4842740;
  }

  v6.receiver = self;
  v6.super_class = SYDEntitlements;
  return [(SYDEntitlements *)&v6 init];
}

- (SYDEntitlements)initWithBundleRecord:(id)record
{
  v3 = (&self->super.isa + OBJC_IVAR___SYDEntitlements_entitlements);
  v3[3] = &_s27SYDBundleRecordEntitlementsVN;
  v3[4] = &off_1F4842720;
  *v3 = record;
  v6.receiver = self;
  v6.super_class = SYDEntitlements;
  recordCopy = record;
  return [(SYDEntitlements *)&v6 init];
}

- (NSString)storeIdentifier
{
  selfCopy = self;
  SYDEntitlements.storeIdentifier.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1C86395CC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)relatedApplicationsForStoreIdentifier:(id)identifier
{
  v4 = sub_1C86395DC();
  v6 = v5;
  selfCopy = self;
  SYDEntitlements.relatedApplications(for:)(v4, v6);

  v8 = sub_1C86395FC();

  return v8;
}

@end