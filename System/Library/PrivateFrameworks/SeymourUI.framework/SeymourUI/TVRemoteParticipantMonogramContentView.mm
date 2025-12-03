@interface TVRemoteParticipantMonogramContentView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI38TVRemoteParticipantMonogramContentView)initWithFrame:(CGRect)frame;
@end

@implementation TVRemoteParticipantMonogramContentView

- (CGSize)intrinsicContentSize
{
  v3 = OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_titleLabel;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_titleLabel);
  selfCopy = self;
  [v4 intrinsicContentSize];
  v7 = v6;
  v8 = OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_imageView;
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_imageView) intrinsicContentSize];
  if (v7 <= v9)
  {
    v7 = v9;
  }

  [*(&self->super.super.super.isa + v3) intrinsicContentSize];
  v11 = v10;
  [*(&selfCopy->super.super.super.isa + v8) intrinsicContentSize];
  v13 = v12;

  if (v11 > v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v15 = v7;
  result.height = v14;
  result.width = v15;
  return result;
}

- (_TtC9SeymourUI38TVRemoteParticipantMonogramContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end