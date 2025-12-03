@interface PhotosPagingLayoutSpecManager
- (Class)specClass;
- (_TtC12PhotosUICore29PhotosPagingLayoutSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options;
- (id)createSpec;
@end

@implementation PhotosPagingLayoutSpecManager

- (id)createSpec
{
  selfCopy = self;
  extendedTraitCollection = [(PXFeatureSpecManager *)selfCopy extendedTraitCollection];
  v4 = [objc_allocWithZone(type metadata accessor for PhotosPagingLayoutSpec()) initWithExtendedTraitCollection:extendedTraitCollection options:{-[PXFeatureSpecManager options](selfCopy, sel_options)}];

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

- (_TtC12PhotosUICore29PhotosPagingLayoutSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PhotosPagingLayoutSpecManager();
  return [(PXFeatureSpecManager *)&v7 initWithExtendedTraitCollection:collection options:options];
}

@end