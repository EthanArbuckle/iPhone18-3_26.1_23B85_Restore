@interface PhotosSecondaryToolbarPageControl
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl)initWithCoder:(id)coder;
- (_TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PhotosSecondaryToolbarPageControl

- (_TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl)initWithCoder:(id)coder
{
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PhotosSecondaryToolbarPageControl();
  v2 = v6.receiver;
  [(PhotosSecondaryToolbarPageControl *)&v6 layoutSubviews];
  [v2 bounds];
  v3 = OBJC_IVAR____TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl_pageIndicator;
  numberOfPages = [*&v2[OBJC_IVAR____TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl_pageIndicator] numberOfPages];
  if (numberOfPages >= 6)
  {
    v5 = 6;
  }

  else
  {
    v5 = numberOfPages;
  }

  [*&v2[v3] sizeForNumberOfPages_];
  sub_1A524D9E4();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl_pageIndicator) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end