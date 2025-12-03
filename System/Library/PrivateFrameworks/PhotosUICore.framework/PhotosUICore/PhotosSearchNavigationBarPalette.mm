@interface PhotosSearchNavigationBarPalette
- (_TtC12PhotosUICore32PhotosSearchNavigationBarPalette)initWithArrangedSubview:(id)subview;
- (_TtC12PhotosUICore32PhotosSearchNavigationBarPalette)initWithArrangedSubview:(id)subview isNotification:(BOOL)notification;
@end

@implementation PhotosSearchNavigationBarPalette

- (_TtC12PhotosUICore32PhotosSearchNavigationBarPalette)initWithArrangedSubview:(id)subview isNotification:(BOOL)notification
{
  notificationCopy = notification;
  v10.receiver = self;
  v10.super_class = type metadata accessor for PhotosSearchNavigationBarPalette();
  subviewCopy = subview;
  v7 = [(PXNavigationBarPalette *)&v10 initWithArrangedSubview:subviewCopy isNotification:notificationCopy];
  v8 = [(_UINavigationBarPalette *)v7 contentView:v10.receiver];
  [(UIView *)v8 setDirectionalLayoutMargins:8.0, 16.0, 8.0, 16.0];

  return v7;
}

- (_TtC12PhotosUICore32PhotosSearchNavigationBarPalette)initWithArrangedSubview:(id)subview
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end