@interface TTRIInlineButtonAttachmentTextViewButton
- (_TtC15RemindersUICore40TTRIInlineButtonAttachmentTextViewButton)initWithCoder:(id)a3;
- (_TtC15RemindersUICore40TTRIInlineButtonAttachmentTextViewButton)initWithFrame:(CGRect)a3;
@end

@implementation TTRIInlineButtonAttachmentTextViewButton

- (_TtC15RemindersUICore40TTRIInlineButtonAttachmentTextViewButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRIInlineButtonAttachmentTextViewButton();
  return [(TTRIInlineButtonAttachmentTextViewButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICore40TTRIInlineButtonAttachmentTextViewButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRIInlineButtonAttachmentTextViewButton();
  v4 = a3;
  v5 = [(TTRIInlineButtonAttachmentTextViewButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end