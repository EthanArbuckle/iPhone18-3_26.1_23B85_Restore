@interface TouchPassthroughView
- (_TtC41_CommunicationsUICore_PosterBoardServices20TouchPassthroughView)initWithCoder:(id)coder;
- (_TtC41_CommunicationsUICore_PosterBoardServices20TouchPassthroughView)initWithEffect:(id)effect;
@end

@implementation TouchPassthroughView

- (_TtC41_CommunicationsUICore_PosterBoardServices20TouchPassthroughView)initWithEffect:(id)effect
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TouchPassthroughView();
  return [(TouchPassthroughView *)&v5 initWithEffect:effect];
}

- (_TtC41_CommunicationsUICore_PosterBoardServices20TouchPassthroughView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TouchPassthroughView();
  coderCopy = coder;
  v5 = [(TouchPassthroughView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end