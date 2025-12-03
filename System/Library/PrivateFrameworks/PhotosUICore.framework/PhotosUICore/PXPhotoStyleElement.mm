@interface PXPhotoStyleElement
- (BOOL)hasNonDefaultValues;
- (BOOL)updateWithTone:(double)tone color:(double)color intensity:(double)intensity;
- (NSString)cast;
- (NSString)defaultName;
- (PXPhotoStyleElement)init;
- (double)color;
- (double)defaultColor;
- (double)defaultIntensity;
- (double)defaultTone;
- (double)intensity;
- (double)tone;
- (id)copyWithZone:(void *)zone;
- (void)resetToDefaultValues;
@end

@implementation PXPhotoStyleElement

- (id)copyWithZone:(void *)zone
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  swift_beginAccess();
  v4 = objc_allocWithZone(ObjectType);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

- (BOOL)hasNonDefaultValues
{
  selfCopy = self;
  v3 = PhotoStyleElement.hasNonDefaultValues.getter();

  return v3 & 1;
}

- (void)resetToDefaultValues
{
  selfCopy = self;
  PhotoStyleElement.resetToDefaultValues()();
}

- (PXPhotoStyleElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)defaultName
{
  v2 = self + OBJC_IVAR___PXPhotoStyleElement_semanticStyle;
  swift_beginAccess();
  if (*(v2 + 1))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = sub_1A524C634();

  return v3;
}

- (double)tone
{
  v2 = (self + OBJC_IVAR___PXPhotoStyleElement_semanticStyle);
  swift_beginAccess();
  if (*(v2 + 1))
  {
    return v2[3];
  }

  else
  {
    return 0.0;
  }
}

- (double)color
{
  v2 = (self + OBJC_IVAR___PXPhotoStyleElement_semanticStyle);
  swift_beginAccess();
  if (*(v2 + 1))
  {
    return v2[4];
  }

  else
  {
    return 0.0;
  }
}

- (double)intensity
{
  v2 = (self + OBJC_IVAR___PXPhotoStyleElement_semanticStyle);
  swift_beginAccess();
  if (*(v2 + 1))
  {
    return v2[5];
  }

  else
  {
    return 1.0;
  }
}

- (NSString)cast
{
  v2 = self + OBJC_IVAR___PXPhotoStyleElement_semanticStyle;
  swift_beginAccess();
  if (*(v2 + 1))
  {
    v3 = (v2 + 16);
  }

  else
  {
    v3 = MEMORY[0x1E69BE120];
  }

  return *v3;
}

- (double)defaultTone
{
  selfCopy = self;
  v3 = sub_1A40D61C8();

  return v3;
}

- (double)defaultColor
{
  selfCopy = self;
  v3 = sub_1A40D6360();

  return v3;
}

- (double)defaultIntensity
{
  selfCopy = self;
  v3 = sub_1A40D64FC();

  return v3;
}

- (BOOL)updateWithTone:(double)tone color:(double)color intensity:(double)intensity
{
  selfCopy = self;
  v9 = sub_1A40D665C(tone, color, intensity);

  return v9 & 1;
}

@end