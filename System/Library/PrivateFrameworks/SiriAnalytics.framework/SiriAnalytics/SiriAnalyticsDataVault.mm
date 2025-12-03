@interface SiriAnalyticsDataVault
- (id)vendAccessFor:(int64_t)for withEntitlements:(id)entitlements auditToken:(id *)token readonly:(BOOL)readonly error:(id *)error;
- (id)vendedResourceUrlFor:(int64_t)for error:(id *)error;
- (void)migrate;
@end

@implementation SiriAnalyticsDataVault

- (void)migrate
{
  selfCopy = self;
  sub_1D98CB72C();
}

- (id)vendAccessFor:(int64_t)for withEntitlements:(id)entitlements auditToken:(id *)token readonly:(BOOL)readonly error:(id *)error
{
  v10 = *token->var0;
  v11 = *&token->var0[2];
  v12 = *&token->var0[4];
  v13 = *&token->var0[6];
  v14 = sub_1D992B7B4();
  selfCopy = self;
  sub_1D98CBC84(for, v14, v10, v11, v12, v13, readonly);

  v16 = sub_1D992B614();

  return v16;
}

- (id)vendedResourceUrlFor:(int64_t)for error:(id *)error
{
  v6 = sub_1D992AD44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1D98CC100(for, v10);

  v12 = sub_1D992ACD4();
  (*(v7 + 8))(v10, v6);

  return v12;
}

@end