@interface PXStoryDefaultAssetCollectionAnnotator
- (PXStoryDefaultAssetCollectionAnnotator)init;
- (id)sourceObject;
- (void)addTransientDraftAnnotationToMemoryCreationRequest:(id)a3;
- (void)setSourceObject:(id)a3;
@end

@implementation PXStoryDefaultAssetCollectionAnnotator

- (id)sourceObject
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSourceObject:(id)a3
{
  v5 = OBJC_IVAR___PXStoryDefaultAssetCollectionAnnotator_sourceObject;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)addTransientDraftAnnotationToMemoryCreationRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A4A2B3B4(v4);
}

- (PXStoryDefaultAssetCollectionAnnotator)init
{
  *(&self->super.isa + OBJC_IVAR___PXStoryDefaultAssetCollectionAnnotator_sourceObject) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for StoryDefaultAssetCollectionAnnotator();
  return [(PXStoryDefaultAssetCollectionAnnotator *)&v3 init];
}

@end