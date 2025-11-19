@interface PhotosSearchNavigationBarPalette
- (_TtC12PhotosUICore32PhotosSearchNavigationBarPalette)initWithArrangedSubview:(id)a3;
- (_TtC12PhotosUICore32PhotosSearchNavigationBarPalette)initWithArrangedSubview:(id)a3 isNotification:(BOOL)a4;
@end

@implementation PhotosSearchNavigationBarPalette

- (_TtC12PhotosUICore32PhotosSearchNavigationBarPalette)initWithArrangedSubview:(id)a3 isNotification:(BOOL)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = type metadata accessor for PhotosSearchNavigationBarPalette();
  v6 = a3;
  v7 = [(PXNavigationBarPalette *)&v10 initWithArrangedSubview:v6 isNotification:v4];
  v8 = [(_UINavigationBarPalette *)v7 contentView:v10.receiver];
  [(UIView *)v8 setDirectionalLayoutMargins:8.0, 16.0, 8.0, 16.0];

  return v7;
}

- (_TtC12PhotosUICore32PhotosSearchNavigationBarPalette)initWithArrangedSubview:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end