@interface PXLemonadeViewSwiftFactory
+ (id)sharedLibraryBannerViewForConfiguration:(id)configuration delegate:(id)delegate;
- (PXLemonadeViewSwiftFactory)init;
@end

@implementation PXLemonadeViewSwiftFactory

+ (id)sharedLibraryBannerViewForConfiguration:(id)configuration delegate:(id)delegate
{
  v6 = type metadata accessor for SharedLibraryBannerView();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v19 - v11);
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  sub_1A4281BD8(configurationCopy, v12);
  v14 = *(v7 + 40);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v12 + v14) = delegate;
  sub_1A4840AB4(v12, v9);
  sub_1A4840B18();
  v16 = objc_allocWithZone(v15);
  v17 = sub_1A52485F4();

  swift_unknownObjectRelease();
  sub_1A4840B7C(v12);

  return v17;
}

- (PXLemonadeViewSwiftFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PXLemonadeViewSwiftFactory *)&v3 init];
}

@end