@interface ProductKitCatalogInternal
+ (BOOL)isProductKitURL:(id)l;
- (void)updateCatalogWithCompletionHandler:(id)handler;
@end

@implementation ProductKitCatalogInternal

+ (BOOL)isProductKitURL:(id)l
{
  v3 = sub_260E68904();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E688C4();
  v8 = _s10ProductKit22MarketingPartNumberURLV7isValid3urlSb10Foundation0F0V_tFZ_0();
  (*(v4 + 8))(v7, v3);
  return v8;
}

- (void)updateCatalogWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_260E36E2C;
  *(v6 + 24) = v5;
  selfCopy = self;

  sub_260E62E28(sub_260E36F48, v6);
}

@end