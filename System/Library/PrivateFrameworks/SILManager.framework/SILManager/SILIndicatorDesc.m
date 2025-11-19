@interface SILIndicatorDesc
+ (BOOL)isFaceIDIndicator:(int64_t)a3;
- (BOOL)isCameraIndicator;
- (BOOL)isMicrophoneAccessibilityIndicator;
- (BOOL)isMicrophoneIndicator;
- (NSArray)boundingBoxes;
- (NSArray)dynamicBoundingBoxes;
- (NSString)constraintsFile;
- (_TtC10SILManager14SILConstraints)constraints;
- (void)setConstraints:(id)a3;
@end

@implementation SILIndicatorDesc

- (NSString)constraintsFile
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *self->_TtC10SILManager12SILAssetDesc_opaque) + 0x138);
  v4 = self;
  result = v3();
  if (result)
  {
    v6 = result[3];

    v8 = (*((*v2 & *v6) + 0xA0))(v7);
    v10 = v9;

    v11 = MEMORY[0x26672FC40](v8, v10);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSArray)boundingBoxes
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC10SILManager12SILAssetDesc_opaque) + 0x138);
  v3 = self;
  result = v2();
  if (result)
  {
    v5 = result;

    v6 = v5[3].super.isa;

    type metadata accessor for CGRect(0);
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

    return v7.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSArray)dynamicBoundingBoxes
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC10SILManager12SILAssetDesc_opaque) + 0x138);
  v3 = self;
  result = v2();
  if (result)
  {
    v5 = result;

    v6 = v5[3].super.isa;

    type metadata accessor for CGRect(0);
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

    return v7.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC10SILManager14SILConstraints)constraints
{
  v3 = OBJC_IVAR____TtC10SILManager16SILIndicatorDesc_constraints;
  swift_beginAccess();
  return *&self->_TtC10SILManager12SILAssetDesc_opaque[v3];
}

- (void)setConstraints:(id)a3
{
  v5 = OBJC_IVAR____TtC10SILManager16SILIndicatorDesc_constraints;
  swift_beginAccess();
  v6 = *&self->_TtC10SILManager12SILAssetDesc_opaque[v5];
  *&self->_TtC10SILManager12SILAssetDesc_opaque[v5] = a3;
  v7 = a3;
}

+ (BOOL)isFaceIDIndicator:(int64_t)a3
{
  if (one-time initialization token for manifest != -1)
  {
    v8 = a3;
    swift_once();
    a3 = v8;
  }

  if (!static SILManifest.manifest)
  {
    return 0;
  }

  v3 = (*((*MEMORY[0x277D85000] & *static SILManifest.manifest) + 0xA8))(a3);
  v5 = *(v3 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_flipbook);
  v6 = v3;
  v7 = v5;

  if (!v5)
  {
    return 0;
  }

  return 1;
}

- (BOOL)isCameraIndicator
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC10SILManager12SILAssetDesc_opaque) + 0xA8);
  v3 = self;
  v4 = v2();

  return v4 == 0;
}

- (BOOL)isMicrophoneIndicator
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC10SILManager12SILAssetDesc_opaque) + 0xA8);
  v3 = self;
  v4 = v2();

  return (v4 - 1) < 2;
}

- (BOOL)isMicrophoneAccessibilityIndicator
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC10SILManager12SILAssetDesc_opaque) + 0xA8);
  v3 = self;
  v4 = v2();

  return v4 == 2;
}

@end