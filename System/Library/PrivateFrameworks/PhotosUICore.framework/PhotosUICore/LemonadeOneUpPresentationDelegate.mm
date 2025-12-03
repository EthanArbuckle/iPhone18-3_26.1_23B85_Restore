@interface LemonadeOneUpPresentationDelegate
- (_TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate)init;
- (id)oneUpPresentation:(id)presentation presentingScrollViewForAssetReference:(id)reference;
- (id)oneUpPresentation:(id)presentation regionOfInterestForAssetReference:(id)reference;
- (id)oneUpPresentationInitialAssetReference:(id)reference;
- (void)oneUpPresentation:(id)presentation scrollAssetReferenceToVisible:(id)visible;
- (void)oneUpPresentation:(id)presentation setHiddenAssetReferences:(id)references;
@end

@implementation LemonadeOneUpPresentationDelegate

- (id)oneUpPresentation:(id)presentation regionOfInterestForAssetReference:(id)reference
{
  referenceCopy = reference;
  selfCopy = self;
  v7 = sub_1A41E0CD8(referenceCopy);

  return v7;
}

- (void)oneUpPresentation:(id)presentation scrollAssetReferenceToVisible:(id)visible
{
  presentationCopy = presentation;
  visibleCopy = visible;
  selfCopy = self;
  sub_1A41E0100(presentationCopy, visibleCopy);
}

- (void)oneUpPresentation:(id)presentation setHiddenAssetReferences:(id)references
{
  referencesCopy = references;
  if (references)
  {
    sub_1A3C52C70(0, &qword_1EB126B50);
    sub_1A41E3384();
    referencesCopy = sub_1A524CF44();
  }

  presentationCopy = presentation;
  selfCopy = self;
  sub_1A41E33EC(referencesCopy);
}

- (id)oneUpPresentationInitialAssetReference:(id)reference
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_assetsDataSourceManager);
  referenceCopy = reference;
  selfCopy = self;
  dataSource = [v4 dataSource];
  v8 = *(&selfCopy->super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_initialAsset);
  [dataSource indexPathForObjectID_];
  v12 = v15;
  v13 = v14;
  v9 = objc_allocWithZone(off_1E7721490);
  v14 = v13;
  v15 = v12;
  v10 = [v9 initWithSectionObject:0 itemObject:v8 subitemObject:0 indexPath:&v14];

  return v10;
}

- (id)oneUpPresentation:(id)presentation presentingScrollViewForAssetReference:(id)reference
{
  presentationCopy = presentation;
  referenceCopy = reference;
  selfCopy = self;
  v9 = sub_1A41E349C(referenceCopy);

  return v9;
}

- (_TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end