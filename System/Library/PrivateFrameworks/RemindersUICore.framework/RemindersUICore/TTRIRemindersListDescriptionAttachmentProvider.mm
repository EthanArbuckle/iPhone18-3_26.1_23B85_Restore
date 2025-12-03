@interface TTRIRemindersListDescriptionAttachmentProvider
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (_TtC15RemindersUICore46TTRIRemindersListDescriptionAttachmentProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location;
- (void)loadView;
@end

@implementation TTRIRemindersListDescriptionAttachmentProvider

- (_TtC15RemindersUICore46TTRIRemindersListDescriptionAttachmentProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  attachmentCopy = attachment;
  viewCopy = view;
  managerCopy = manager;
  swift_unknownObjectRetain();
  v13 = [(NSTextAttachmentViewProvider *)&v15 initWithTextAttachment:attachmentCopy parentView:viewCopy textLayoutManager:managerCopy location:location];
  [(NSTextAttachmentViewProvider *)v13 setTracksTextAttachmentViewBounds:1, v15.receiver, v15.super_class];

  swift_unknownObjectRelease();
  return v13;
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
  v19 = sub_21DBC953C(v12, v11, width, height, x, y, v16, location, container);
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
  sub_21DBC97C0();
}

@end