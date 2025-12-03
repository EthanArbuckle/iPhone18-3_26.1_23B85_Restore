@interface TTRIInlineButtonAttachmentTextViewButton
- (_TtC15RemindersUICore40TTRIInlineButtonAttachmentTextViewButton)initWithCoder:(id)coder;
- (_TtC15RemindersUICore40TTRIInlineButtonAttachmentTextViewButton)initWithFrame:(CGRect)frame;
@end

@implementation TTRIInlineButtonAttachmentTextViewButton

- (_TtC15RemindersUICore40TTRIInlineButtonAttachmentTextViewButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRIInlineButtonAttachmentTextViewButton();
  return [(TTRIInlineButtonAttachmentTextViewButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICore40TTRIInlineButtonAttachmentTextViewButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRIInlineButtonAttachmentTextViewButton();
  coderCopy = coder;
  v5 = [(TTRIInlineButtonAttachmentTextViewButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end