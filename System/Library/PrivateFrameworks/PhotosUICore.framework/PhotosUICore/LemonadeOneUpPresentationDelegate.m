@interface LemonadeOneUpPresentationDelegate
- (_TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate)init;
- (id)oneUpPresentation:(id)a3 presentingScrollViewForAssetReference:(id)a4;
- (id)oneUpPresentation:(id)a3 regionOfInterestForAssetReference:(id)a4;
- (id)oneUpPresentationInitialAssetReference:(id)a3;
- (void)oneUpPresentation:(id)a3 scrollAssetReferenceToVisible:(id)a4;
- (void)oneUpPresentation:(id)a3 setHiddenAssetReferences:(id)a4;
@end

@implementation LemonadeOneUpPresentationDelegate

- (id)oneUpPresentation:(id)a3 regionOfInterestForAssetReference:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = sub_1A41E0CD8(v5);

  return v7;
}

- (void)oneUpPresentation:(id)a3 scrollAssetReferenceToVisible:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1A41E0100(v6, v7);
}

- (void)oneUpPresentation:(id)a3 setHiddenAssetReferences:(id)a4
{
  v4 = a4;
  if (a4)
  {
    sub_1A3C52C70(0, &qword_1EB126B50);
    sub_1A41E3384();
    v4 = sub_1A524CF44();
  }

  v7 = a3;
  v8 = self;
  sub_1A41E33EC(v4);
}

- (id)oneUpPresentationInitialAssetReference:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_assetsDataSourceManager);
  v5 = a3;
  v6 = self;
  v7 = [v4 dataSource];
  v8 = *(&v6->super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_initialAsset);
  [v7 indexPathForObjectID_];
  v12 = v15;
  v13 = v14;
  v9 = objc_allocWithZone(off_1E7721490);
  v14 = v13;
  v15 = v12;
  v10 = [v9 initWithSectionObject:0 itemObject:v8 subitemObject:0 indexPath:&v14];

  return v10;
}

- (id)oneUpPresentation:(id)a3 presentingScrollViewForAssetReference:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1A41E349C(v7);

  return v9;
}

- (_TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end