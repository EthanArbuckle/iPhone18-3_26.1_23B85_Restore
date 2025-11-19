@interface SiriAnalyticsDataVault
- (id)vendAccessFor:(int64_t)a3 withEntitlements:(id)a4 auditToken:(id *)a5 readonly:(BOOL)a6 error:(id *)a7;
- (id)vendedResourceUrlFor:(int64_t)a3 error:(id *)a4;
- (void)migrate;
@end

@implementation SiriAnalyticsDataVault

- (void)migrate
{
  v2 = self;
  sub_1D98CB72C();
}

- (id)vendAccessFor:(int64_t)a3 withEntitlements:(id)a4 auditToken:(id *)a5 readonly:(BOOL)a6 error:(id *)a7
{
  v10 = *a5->var0;
  v11 = *&a5->var0[2];
  v12 = *&a5->var0[4];
  v13 = *&a5->var0[6];
  v14 = sub_1D992B7B4();
  v15 = self;
  sub_1D98CBC84(a3, v14, v10, v11, v12, v13, a6);

  v16 = sub_1D992B614();

  return v16;
}

- (id)vendedResourceUrlFor:(int64_t)a3 error:(id *)a4
{
  v6 = sub_1D992AD44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = self;
  sub_1D98CC100(a3, v10);

  v12 = sub_1D992ACD4();
  (*(v7 + 8))(v10, v6);

  return v12;
}

@end