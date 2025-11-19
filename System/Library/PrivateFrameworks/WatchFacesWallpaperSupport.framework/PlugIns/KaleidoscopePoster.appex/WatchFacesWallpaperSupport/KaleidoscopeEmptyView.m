@interface KaleidoscopeEmptyView
- (_TtC18KaleidoscopePoster21KaleidoscopeEmptyView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation KaleidoscopeEmptyView

- (_TtC18KaleidoscopePoster21KaleidoscopeEmptyView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC18KaleidoscopePoster21KaleidoscopeEmptyView_emptyPosterLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UILabel) init];
  result = sub_100025018();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for KaleidoscopeEmptyView();
  v2 = v5.receiver;
  [(KaleidoscopeEmptyView *)&v5 layoutSubviews];
  v3 = OBJC_IVAR____TtC18KaleidoscopePoster21KaleidoscopeEmptyView_emptyPosterLabel;
  [*&v2[OBJC_IVAR____TtC18KaleidoscopePoster21KaleidoscopeEmptyView_emptyPosterLabel] sizeToFit];
  v4 = *&v2[v3];
  [v2 center];
  [v4 setCenter:?];
}

@end