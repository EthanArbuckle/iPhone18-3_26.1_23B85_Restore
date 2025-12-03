@interface PXStoryDefaultAssetCollectionAnnotator
- (PXStoryDefaultAssetCollectionAnnotator)init;
- (id)sourceObject;
- (void)addTransientDraftAnnotationToMemoryCreationRequest:(id)request;
- (void)setSourceObject:(id)object;
@end

@implementation PXStoryDefaultAssetCollectionAnnotator

- (id)sourceObject
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSourceObject:(id)object
{
  v5 = OBJC_IVAR___PXStoryDefaultAssetCollectionAnnotator_sourceObject;
  swift_beginAccess();
  *(&self->super.isa + v5) = object;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)addTransientDraftAnnotationToMemoryCreationRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_1A4A2B3B4(requestCopy);
}

- (PXStoryDefaultAssetCollectionAnnotator)init
{
  *(&self->super.isa + OBJC_IVAR___PXStoryDefaultAssetCollectionAnnotator_sourceObject) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for StoryDefaultAssetCollectionAnnotator();
  return [(PXStoryDefaultAssetCollectionAnnotator *)&v3 init];
}

@end