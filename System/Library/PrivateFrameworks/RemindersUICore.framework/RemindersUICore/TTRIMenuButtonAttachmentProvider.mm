@interface TTRIMenuButtonAttachmentProvider
- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7;
- (_TtC15RemindersUICore32TTRIMenuButtonAttachmentProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6;
- (void)loadView;
@end

@implementation TTRIMenuButtonAttachmentProvider

- (_TtC15RemindersUICore32TTRIMenuButtonAttachmentProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRIMenuButtonAttachmentProvider_lightBackgroundAlpha) = 0x3FB999999999999ALL;
  *(&self->super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRIMenuButtonAttachmentProvider_darkBackgroundAlpha) = 0x3FB999999999999ALL;
  v17.receiver = self;
  v17.super_class = ObjectType;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  swift_unknownObjectRetain();
  v15 = [(NSTextAttachmentViewProvider *)&v17 initWithTextAttachment:v12 parentView:v13 textLayoutManager:v14 location:a6];
  [(NSTextAttachmentViewProvider *)v15 setTracksTextAttachmentViewBounds:1, v17.receiver, v17.super_class];

  swift_unknownObjectRelease();
  return v15;
}

- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  height = a6.size.height;
  width = a6.size.width;
  v11 = a6.origin.y;
  v12 = a6.origin.x;
  type metadata accessor for Key(0);
  sub_21D112874();
  v16 = sub_21DBF9E6C();
  swift_unknownObjectRetain();
  v17 = a5;
  v18 = self;
  v19 = TTRIMenuButtonAttachmentProvider.attachmentBounds(for:location:textContainer:proposedLineFragment:position:)(v12, v11, width, height, x, y, v16, a4, a5);
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
  v2 = self;
  TTRIMenuButtonAttachmentProvider.loadView()();
}

@end