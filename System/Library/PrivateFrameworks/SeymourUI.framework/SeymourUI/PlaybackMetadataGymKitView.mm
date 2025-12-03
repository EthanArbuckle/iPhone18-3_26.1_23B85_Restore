@interface PlaybackMetadataGymKitView
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
@end

@implementation PlaybackMetadataGymKitView

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_imageView);
  selfCopy = self;
  [v2 intrinsicContentSize];
  v5 = v4;
  v6 = OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_titleLabel;
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_titleLabel) intrinsicContentSize];
  v8 = v5 + v7;
  [*(&selfCopy->super.super.super.isa + v6) intrinsicContentSize];
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20BB5174C();
}

@end