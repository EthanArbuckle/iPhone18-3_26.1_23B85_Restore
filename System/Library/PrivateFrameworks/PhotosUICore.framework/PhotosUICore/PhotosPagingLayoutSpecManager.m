@interface PhotosPagingLayoutSpecManager
- (Class)specClass;
- (_TtC12PhotosUICore29PhotosPagingLayoutSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4;
- (id)createSpec;
@end

@implementation PhotosPagingLayoutSpecManager

- (id)createSpec
{
  v2 = self;
  v3 = [(PXFeatureSpecManager *)v2 extendedTraitCollection];
  v4 = [objc_allocWithZone(type metadata accessor for PhotosPagingLayoutSpec()) initWithExtendedTraitCollection:v3 options:{-[PXFeatureSpecManager options](v2, sel_options)}];

  if (v4)
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (Class)specClass
{
  type metadata accessor for PhotosPagingLayoutSpec();

  return swift_getObjCClassFromMetadata();
}

- (_TtC12PhotosUICore29PhotosPagingLayoutSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PhotosPagingLayoutSpecManager();
  return [(PXFeatureSpecManager *)&v7 initWithExtendedTraitCollection:a3 options:a4];
}

@end