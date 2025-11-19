@interface CRLayoutParagraph
- (BOOL)canWrapToNextGroup;
- (CRNormalizedQuad)boundingQuad;
- (NSArray)subregions;
- (NSString)text;
- (NSUUID)uuid;
- (_TtC15TextRecognition17CRLayoutParagraph)init;
- (unint64_t)layoutDirection;
- (void)setBoundingQuad:(id)a3;
- (void)setCanWrapToNextGroup:(BOOL)a3;
- (void)setSubregions:(id)a3;
- (void)setText:(id)a3;
- (void)setUuid:(id)a3;
@end

@implementation CRLayoutParagraph

- (NSUUID)uuid
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_uuid;
  swift_beginAccess();
  sub_1B40DDA80(self + v7, v6);
  v8 = sub_1B429F6D8();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1B429F6A8();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setUuid:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v13 - v7;
  if (a3)
  {
    sub_1B429F6B8();
    v9 = sub_1B429F6D8();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1B429F6D8();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_uuid;
  swift_beginAccess();
  v12 = self;
  sub_1B41289B4(v8, self + v11);
  swift_endAccess();
}

- (NSString)text
{
  swift_beginAccess();

  v2 = sub_1B429FB88();

  return v2;
}

- (void)setText:(id)a3
{
  v4 = sub_1B429FB98();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_text);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSArray)subregions
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
  v2 = sub_1B429FDE8();

  return v2;
}

- (void)setSubregions:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
  v4 = sub_1B429FDF8();
  v5 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_subregions;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (CRNormalizedQuad)boundingQuad
{
  v3 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_boundingQuad;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBoundingQuad:(id)a3
{
  v5 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_boundingQuad;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (BOOL)canWrapToNextGroup
{
  v3 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_canWrapToNextGroup;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanWrapToNextGroup:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_canWrapToNextGroup;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unint64_t)layoutDirection
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0xA8);
  v3 = self;
  result = v2();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v7 = result;
  v8 = sub_1B42A0518();
  result = v7;
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1B8C72CD0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(result + 32);
    swift_unknownObjectRetain();
LABEL_6:

    v6 = [v5 layoutDirection];
    swift_unknownObjectRelease();
LABEL_9:

    return v6;
  }

  __break(1u);
  return result;
}

- (_TtC15TextRecognition17CRLayoutParagraph)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end