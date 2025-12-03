@interface SummaryQueueCountView
- (CGSize)intrinsicContentSize;
@end

@implementation SummaryQueueCountView

- (CGSize)intrinsicContentSize
{
  v3 = OBJC_IVAR____TtC9SeymourUI21SummaryQueueCountView_countLabel;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21SummaryQueueCountView_countLabel);
  selfCopy = self;
  [v4 frame];
  Width = CGRectGetWidth(v14);
  if (qword_27C7607C8 != -1)
  {
    v12 = Width;
    swift_once();
    Width = v12;
  }

  v7 = Width + *&qword_27C79A978 + *&qword_27C79A988;
  [*(&self->super.super.super.isa + v3) frame];
  v8 = CGRectGetHeight(v15) + *&qword_27C79A970;
  v9 = *&qword_27C79A980;

  v10 = v8 + v9;
  v11 = v7;
  result.height = v10;
  result.width = v11;
  return result;
}

@end