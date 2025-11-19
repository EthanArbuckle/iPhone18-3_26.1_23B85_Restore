@interface TouchPassthroughView
- (_TtC41_CommunicationsUICore_PosterBoardServices20TouchPassthroughView)initWithCoder:(id)a3;
- (_TtC41_CommunicationsUICore_PosterBoardServices20TouchPassthroughView)initWithEffect:(id)a3;
@end

@implementation TouchPassthroughView

- (_TtC41_CommunicationsUICore_PosterBoardServices20TouchPassthroughView)initWithEffect:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TouchPassthroughView();
  return [(TouchPassthroughView *)&v5 initWithEffect:a3];
}

- (_TtC41_CommunicationsUICore_PosterBoardServices20TouchPassthroughView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TouchPassthroughView();
  v4 = a3;
  v5 = [(TouchPassthroughView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end