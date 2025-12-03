@interface PhotosDetailsKnowledgeGraphWidget
- (NSString)snappableWidgetIdentifier;
- (PXPhotosDetailsContext)context;
- (PXWidgetInteractionDelegate)widgetInteractionDelegate;
- (_TtC12PhotosUICore33PhotosDetailsKnowledgeGraphWidget)init;
- (int64_t)contentLayoutStyle;
- (void)setContext:(id)context;
@end

@implementation PhotosDetailsKnowledgeGraphWidget

- (PXWidgetInteractionDelegate)widgetInteractionDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (PXPhotosDetailsContext)context
{
  selfCopy = self;
  v3 = sub_1A4110EF8();

  return v3;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1A4273264(contextCopy);
}

- (NSString)snappableWidgetIdentifier
{
  v2 = sub_1A524C634();

  return v2;
}

- (int64_t)contentLayoutStyle
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *self) + 0x168);
  selfCopy = self;
  if (v3())
  {

    return 2;
  }

  else
  {
    v6 = (*((*v2 & *selfCopy) + 0x108))();
    v7 = [v6 sizeClass] != 2;

    return 2 * v7;
  }
}

- (_TtC12PhotosUICore33PhotosDetailsKnowledgeGraphWidget)init
{
  swift_unknownObjectWeakInit();
  v3 = (self + OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsKnowledgeGraphWidget_contextObservation);
  v4 = type metadata accessor for PhotosDetailsKnowledgeGraphWidget();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(PXPhotosDetailsWidget *)&v6 init];
}

@end