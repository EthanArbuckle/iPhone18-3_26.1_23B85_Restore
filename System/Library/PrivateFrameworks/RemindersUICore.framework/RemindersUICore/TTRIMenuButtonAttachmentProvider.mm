@interface TTRIMenuButtonAttachmentProvider
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (_TtC15RemindersUICore32TTRIMenuButtonAttachmentProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location;
- (void)loadView;
@end

@implementation TTRIMenuButtonAttachmentProvider

- (_TtC15RemindersUICore32TTRIMenuButtonAttachmentProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRIMenuButtonAttachmentProvider_lightBackgroundAlpha) = 0x3FB999999999999ALL;
  *(&self->super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRIMenuButtonAttachmentProvider_darkBackgroundAlpha) = 0x3FB999999999999ALL;
  v17.receiver = self;
  v17.super_class = ObjectType;
  attachmentCopy = attachment;
  viewCopy = view;
  managerCopy = manager;
  swift_unknownObjectRetain();
  v15 = [(NSTextAttachmentViewProvider *)&v17 initWithTextAttachment:attachmentCopy parentView:viewCopy textLayoutManager:managerCopy location:location];
  [(NSTextAttachmentViewProvider *)v15 setTracksTextAttachmentViewBounds:1, v17.receiver, v17.super_class];

  swift_unknownObjectRelease();
  return v15;
}

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  y = position.y;
  x = position.x;
  height = fragment.size.height;
  width = fragment.size.width;
  v11 = fragment.origin.y;
  v12 = fragment.origin.x;
  type metadata accessor for Key(0);
  sub_21D112874();
  v16 = sub_21DBF9E6C();
  swift_unknownObjectRetain();
  containerCopy = container;
  selfCopy = self;
  v19 = TTRIMenuButtonAttachmentProvider.attachmentBounds(for:location:textContainer:proposedLineFragment:position:)(v12, v11, width, height, x, y, v16, location, container);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  swift_unknownObjectRelease();

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)loadView
{
  selfCopy = self;
  TTRIMenuButtonAttachmentProvider.loadView()();
}

@end