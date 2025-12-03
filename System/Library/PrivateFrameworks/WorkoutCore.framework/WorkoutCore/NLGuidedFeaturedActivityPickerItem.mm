@interface NLGuidedFeaturedActivityPickerItem
+ (id)guidedRunCanonical;
+ (id)guidedWalkCanonical;
- (BOOL)isEqual:(id)equal;
- (NLGuidedFeaturedActivityPickerItem)init;
- (NSString)description;
- (NSString)recencyTag;
- (NSString)symbolName;
- (_TtC11WorkoutCore26CompoundActivityPickerItem)compoundItem;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
@end

@implementation NLGuidedFeaturedActivityPickerItem

- (NSString)recencyTag
{
  v2 = *(self + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag + 8);
  if (v2)
  {
    v3 = *(self + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag);
    v4 = *(self + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag + 8);

    v5 = MEMORY[0x20F2E6C00](v3, v2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtC11WorkoutCore26CompoundActivityPickerItem)compoundItem
{
  v3 = *(self + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType);
  v4 = self | 0x8000000000000000;
  v5 = type metadata accessor for CompoundActivityPickerItem();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_type] = 5;
  *&v6[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType] = v3;
  *&v6[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value] = v4;
  v11.receiver = v6;
  v11.super_class = v5;
  selfCopy = self;
  v8 = v3;
  v9 = [(NLGuidedFeaturedActivityPickerItem *)&v11 init];

  return v9;
}

- (NLGuidedFeaturedActivityPickerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  GuidedFeaturedActivityPickerItem.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (NSString)symbolName
{
  if (*(self + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType) > 1u)
  {
    if (*(self + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType) - 2 < 2)
    {
      v2 = 0x656D2E656C707061;
      v3 = 0xEE00657461746964;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!*(self + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType))
  {
LABEL_5:
    v2 = 0xD000000000000012;
    v3 = 0x800000020B45B980;
    goto LABEL_7;
  }

  v3 = 0x800000020B45B9A0;
  v2 = 0xD00000000000001ELL;
LABEL_7:
  v4 = MEMORY[0x20F2E6C00](v2, v3);

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  v3 = GuidedFeaturedActivityPickerItem.description.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = GuidedFeaturedActivityPickerItem.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    selfCopy2 = self;
  }

  outlined init with copy of Artwork?(v11, v9, &_sypSgMd, &_sypSgMR);
  if (!v10)
  {
    outlined destroy of Artwork?(v9, &_sypSgMd, &_sypSgMR);
    goto LABEL_8;
  }

  type metadata accessor for GuidedFeaturedActivityPickerItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = specialized static GuidedFeaturedActivityPickerItem.== infix(_:_:)(self, v8);

LABEL_9:
  outlined destroy of Artwork?(v11, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

+ (id)guidedWalkCanonical
{
  swift_getObjCClassMetadata();
  v2 = static GuidedFeaturedActivityPickerItem.guidedWalkCanonical()();

  return v2;
}

+ (id)guidedRunCanonical
{
  swift_getObjCClassMetadata();
  v2 = static GuidedFeaturedActivityPickerItem.guidedRunCanonical()();

  return v2;
}

@end