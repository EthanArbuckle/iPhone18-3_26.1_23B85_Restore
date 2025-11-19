@interface ButtonBarButtonVisualProvider.ButtonVisualProvider
- (id)_newImageViewWithFrame:(CGRect)a3;
- (id)_newLabelWithFrame:(CGRect)a3;
- (void)_updateImageView;
- (void)_updateTitleView;
- (void)layoutSubviews;
@end

@implementation ButtonBarButtonVisualProvider.ButtonVisualProvider

- (void)_updateImageView
{
  v2 = self;
  sub_1890A0B8C();
}

- (id)_newImageViewWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_188C5F1C8(x, y, width, height);

  return v8;
}

- (void)layoutSubviews
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188C57880;
  *(v5 + 24) = v4;
  v8[4] = sub_188A4B574;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188A4A968;
  v8[3] = &block_descriptor_100;
  v6 = _Block_copy(v8);
  v7 = self;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (void)_updateTitleView
{
  v2 = self;
  sub_1890A0D18();
}

- (id)_newLabelWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v7 = v10.receiver;
  v8 = [(UIButtonLegacyVisualProvider *)&v10 _newLabelWithFrame:x, y, width, height];
  [v8 setAdjustsFontForContentSizeCategory_];

  return v8;
}

@end