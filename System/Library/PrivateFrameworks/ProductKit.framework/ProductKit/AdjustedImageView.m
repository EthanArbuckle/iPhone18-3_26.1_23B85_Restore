@interface AdjustedImageView
- (_TtC10ProductKit17AdjustedImageView)initWithCoder:(id)a3;
- (_TtC10ProductKit17AdjustedImageView)initWithFrame:(CGRect)a3;
- (_TtC10ProductKit17AdjustedImageView)initWithImage:(id)a3;
- (_TtC10ProductKit17AdjustedImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AdjustedImageView

- (_TtC10ProductKit17AdjustedImageView)initWithFrame:(CGRect)a3
{
  result = sub_260E69704();
  __break(1u);
  return result;
}

- (_TtC10ProductKit17AdjustedImageView)initWithCoder:(id)a3
{
  result = sub_260E69704();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  AdjustedImageView.traitCollectionDidChange(_:)(v9);
}

- (_TtC10ProductKit17AdjustedImageView)initWithImage:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10ProductKit17AdjustedImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end