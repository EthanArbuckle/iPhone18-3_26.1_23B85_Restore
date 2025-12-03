@interface StackCollectionViewCompositionalLayout
+ (Class)layoutAttributesClass;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (_TtC8VideosUI38StackCollectionViewCompositionalLayout)initWithSection:(id)section configuration:(id)configuration;
- (_TtC8VideosUI38StackCollectionViewCompositionalLayout)initWithSectionProvider:(id)provider;
- (_TtC8VideosUI38StackCollectionViewCompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
@end

@implementation StackCollectionViewCompositionalLayout

+ (Class)layoutAttributesClass
{
  sub_1E37BDB4C(self, a2);

  return swift_getObjCClassFromMetadata();
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  OUTLINED_FUNCTION_0_8();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  v5 = sub_1E37BDB74();

  return v5 & 1;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  OUTLINED_FUNCTION_0_8();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  v5 = sub_1E37BDEB0();

  if (v5)
  {
    sub_1E37BE048();
    sub_1E42062A4();
    OUTLINED_FUNCTION_50();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FE804();
  selfCopy = self;
  v11 = sub_1E37BE680();

  (*(v6 + 8))(v9, v4);

  return v11;
}

- (_TtC8VideosUI38StackCollectionViewCompositionalLayout)initWithSection:(id)section configuration:(id)configuration
{
  sectionCopy = section;
  configurationCopy = configuration;
  return sub_1E37BE884();
}

- (_TtC8VideosUI38StackCollectionViewCompositionalLayout)initWithSectionProvider:(id)provider
{
  v3 = _Block_copy(provider);
  *(swift_allocObject() + 16) = v3;
  return sub_1E37BE9A4();
}

- (_TtC8VideosUI38StackCollectionViewCompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  v5 = _Block_copy(provider);
  *(swift_allocObject() + 16) = v5;
  configurationCopy = configuration;
  return sub_1E37BEB94();
}

@end