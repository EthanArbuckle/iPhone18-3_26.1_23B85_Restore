@interface VCCommandCollectionObjC
+ (id)allCollections;
- (BOOL)showInSettings;
- (NSString)identifier;
- (VCCommandCollectionObjC)init;
@end

@implementation VCCommandCollectionObjC

+ (id)allCollections
{
  if (qword_280400548 != -1)
  {
    a1 = swift_once();
  }

  type metadata accessor for VCCommandCollectionObjC(a1);
  v2 = sub_26B542C14();

  return v2;
}

- (NSString)identifier
{
  if (*(self + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 8))
  {
    v2 = *(self + OBJC_IVAR___VCCommandCollectionObjC_representedCollection);
    v3 = *(self + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 8);

    v4 = sub_26B542A74();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (BOOL)showInSettings
{
  if (*&self->representedCollection[OBJC_IVAR___VCCommandCollectionObjC_representedCollection])
  {
    LOWORD(self) = *&self->representedCollection[OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 32] & 1;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (VCCommandCollectionObjC)init
{
  v2 = (self + OBJC_IVAR___VCCommandCollectionObjC_representedCollection);
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 26) = 0u;
  v4.receiver = self;
  v4.super_class = VCCommandCollectionObjC;
  return [(VCCommandCollectionObjC *)&v4 init];
}

@end